.class Lorg/minidns/dnssec/algorithms/DsaSignatureVerifier;
.super Lorg/minidns/dnssec/algorithms/JavaSecSignatureVerifier;
.source "DsaSignatureVerifier.java"


# static fields
.field private static final LENGTH:I = 0x14


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 32
    const-string v0, "DSA"

    invoke-direct {p0, v0, p1}, Lorg/minidns/dnssec/algorithms/JavaSecSignatureVerifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected getPublicKey(Lorg/minidns/record/DNSKEY;)Ljava/security/PublicKey;
    .locals 11
    .param p1, "key"    # Lorg/minidns/record/DNSKEY;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/minidns/dnssec/DnssecValidationFailedException$DataMalformedException;,
            Lorg/minidns/dnssec/DnssecValidationFailedException$DnssecInvalidKeySpecException;
        }
    .end annotation

    .line 77
    invoke-virtual {p1}, Lorg/minidns/record/DNSKEY;->getKeyAsDataInputStream()Ljava/io/DataInputStream;

    move-result-object v0

    .line 81
    .local v0, "dis":Ljava/io/DataInput;
    :try_start_0
    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 83
    .local v1, "t":I
    const/16 v2, 0x14

    new-array v2, v2, [B

    .line 84
    .local v2, "subPrimeBytes":[B
    invoke-interface {v0, v2}, Ljava/io/DataInput;->readFully([B)V

    .line 85
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 87
    .local v3, "subPrime":Ljava/math/BigInteger;
    mul-int/lit8 v5, v1, 0x8

    add-int/lit8 v5, v5, 0x40

    new-array v5, v5, [B

    .line 88
    .local v5, "primeBytes":[B
    invoke-interface {v0, v5}, Ljava/io/DataInput;->readFully([B)V

    .line 89
    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v4, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 91
    .local v6, "prime":Ljava/math/BigInteger;
    mul-int/lit8 v7, v1, 0x8

    add-int/lit8 v7, v7, 0x40

    new-array v7, v7, [B

    .line 92
    .local v7, "baseBytes":[B
    invoke-interface {v0, v7}, Ljava/io/DataInput;->readFully([B)V

    .line 93
    new-instance v8, Ljava/math/BigInteger;

    invoke-direct {v8, v4, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 95
    .local v8, "base":Ljava/math/BigInteger;
    mul-int/lit8 v9, v1, 0x8

    add-int/lit8 v9, v9, 0x40

    new-array v9, v9, [B

    .line 96
    .local v9, "pubKeyBytes":[B
    invoke-interface {v0, v9}, Ljava/io/DataInput;->readFully([B)V

    .line 97
    new-instance v10, Ljava/math/BigInteger;

    invoke-direct {v10, v4, v9}, Ljava/math/BigInteger;-><init>(I[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v10

    .line 100
    .end local v2    # "subPrimeBytes":[B
    .end local v5    # "primeBytes":[B
    .end local v7    # "baseBytes":[B
    .end local v9    # "pubKeyBytes":[B
    .local v1, "pubKey":Ljava/math/BigInteger;
    nop

    .line 103
    :try_start_1
    invoke-virtual {p0}, Lorg/minidns/dnssec/algorithms/DsaSignatureVerifier;->getKeyFactory()Ljava/security/KeyFactory;

    move-result-object v2

    new-instance v4, Ljava/security/spec/DSAPublicKeySpec;

    invoke-direct {v4, v1, v6, v3, v8}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v2, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    .line 104
    :catch_0
    move-exception v2

    .line 105
    .local v2, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v4, Lorg/minidns/dnssec/DnssecValidationFailedException$DnssecInvalidKeySpecException;

    invoke-direct {v4, v2}, Lorg/minidns/dnssec/DnssecValidationFailedException$DnssecInvalidKeySpecException;-><init>(Ljava/security/spec/InvalidKeySpecException;)V

    throw v4

    .line 98
    .end local v1    # "pubKey":Ljava/math/BigInteger;
    .end local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    .end local v3    # "subPrime":Ljava/math/BigInteger;
    .end local v6    # "prime":Ljava/math/BigInteger;
    .end local v8    # "base":Ljava/math/BigInteger;
    :catch_1
    move-exception v1

    .line 99
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/minidns/dnssec/DnssecValidationFailedException$DataMalformedException;

    invoke-virtual {p1}, Lorg/minidns/record/DNSKEY;->getKey()[B

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lorg/minidns/dnssec/DnssecValidationFailedException$DataMalformedException;-><init>(Ljava/io/IOException;[B)V

    throw v2
.end method

.method protected getSignature(Lorg/minidns/record/RRSIG;)[B
    .locals 11
    .param p1, "rrsig"    # Lorg/minidns/record/RRSIG;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/minidns/dnssec/DnssecValidationFailedException$DataMalformedException;
        }
    .end annotation

    .line 37
    invoke-virtual {p1}, Lorg/minidns/record/RRSIG;->getSignatureAsDataInputStream()Ljava/io/DataInputStream;

    move-result-object v0

    .line 38
    .local v0, "dis":Ljava/io/DataInput;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 39
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 44
    .local v2, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-interface {v0}, Ljava/io/DataInput;->readByte()B

    move-result v3

    .line 46
    .local v3, "t":B
    const/16 v4, 0x14

    new-array v5, v4, [B

    .line 47
    .local v5, "r":[B
    invoke-interface {v0, v5}, Ljava/io/DataInput;->readFully([B)V

    .line 48
    const/4 v6, 0x0

    aget-byte v7, v5, v6

    const/16 v8, 0x15

    if-gez v7, :cond_0

    move v7, v8

    goto :goto_0

    :cond_0
    move v7, v4

    .line 50
    .local v7, "rlen":I
    :goto_0
    new-array v9, v4, [B

    .line 51
    .local v9, "s":[B
    invoke-interface {v0, v9}, Ljava/io/DataInput;->readFully([B)V

    .line 52
    aget-byte v10, v9, v6

    if-gez v10, :cond_1

    goto :goto_1

    :cond_1
    move v8, v4

    .line 54
    .local v8, "slen":I
    :goto_1
    const/16 v10, 0x30

    invoke-virtual {v2, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 55
    add-int v10, v7, v8

    add-int/lit8 v10, v10, 0x4

    invoke-virtual {v2, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 57
    const/4 v10, 0x2

    invoke-virtual {v2, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 58
    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 59
    if-le v7, v4, :cond_2

    .line 60
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 61
    :cond_2
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 63
    invoke-virtual {v2, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 64
    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 65
    if-le v8, v4, :cond_3

    .line 66
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 67
    :cond_3
    invoke-virtual {v2, v9}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v3    # "t":B
    .end local v5    # "r":[B
    .end local v7    # "rlen":I
    .end local v8    # "slen":I
    .end local v9    # "s":[B
    nop

    .line 72
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 68
    :catch_0
    move-exception v3

    .line 69
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Lorg/minidns/dnssec/DnssecValidationFailedException$DataMalformedException;

    invoke-virtual {p1}, Lorg/minidns/record/RRSIG;->getSignature()[B

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lorg/minidns/dnssec/DnssecValidationFailedException$DataMalformedException;-><init>(Ljava/io/IOException;[B)V

    throw v4
.end method
