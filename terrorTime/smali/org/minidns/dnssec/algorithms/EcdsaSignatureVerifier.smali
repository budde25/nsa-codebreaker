.class abstract Lorg/minidns/dnssec/algorithms/EcdsaSignatureVerifier;
.super Lorg/minidns/dnssec/algorithms/JavaSecSignatureVerifier;
.source "EcdsaSignatureVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/minidns/dnssec/algorithms/EcdsaSignatureVerifier$P384SHA284;,
        Lorg/minidns/dnssec/algorithms/EcdsaSignatureVerifier$P256SHA256;
    }
.end annotation


# instance fields
.field private final length:I

.field private final spec:Ljava/security/spec/ECParameterSpec;


# direct methods
.method public constructor <init>(Ljava/security/spec/ECParameterSpec;ILjava/lang/String;)V
    .locals 1
    .param p1, "spec"    # Ljava/security/spec/ECParameterSpec;
    .param p2, "length"    # I
    .param p3, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 41
    const-string v0, "EC"

    invoke-direct {p0, v0, p3}, Lorg/minidns/dnssec/algorithms/JavaSecSignatureVerifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iput p2, p0, Lorg/minidns/dnssec/algorithms/EcdsaSignatureVerifier;->length:I

    .line 43
    iput-object p1, p0, Lorg/minidns/dnssec/algorithms/EcdsaSignatureVerifier;->spec:Ljava/security/spec/ECParameterSpec;

    .line 44
    return-void
.end method

.method public constructor <init>([Ljava/math/BigInteger;ILjava/lang/String;)V
    .locals 6
    .param p1, "spec"    # [Ljava/math/BigInteger;
    .param p2, "length"    # I
    .param p3, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    new-instance v1, Ljava/security/spec/EllipticCurve;

    new-instance v2, Ljava/security/spec/ECFieldFp;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-direct {v2, v3}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    const/4 v3, 0x1

    aget-object v4, p1, v3

    const/4 v5, 0x2

    aget-object v5, p1, v5

    invoke-direct {v1, v2, v4, v5}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v2, Ljava/security/spec/ECPoint;

    const/4 v4, 0x3

    aget-object v4, p1, v4

    const/4 v5, 0x4

    aget-object v5, p1, v5

    invoke-direct {v2, v4, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v4, 0x5

    aget-object v4, p1, v4

    invoke-direct {v0, v1, v2, v4, v3}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    invoke-direct {p0, v0, p2, p3}, Lorg/minidns/dnssec/algorithms/EcdsaSignatureVerifier;-><init>(Ljava/security/spec/ECParameterSpec;ILjava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected getPublicKey(Lorg/minidns/record/DNSKEY;)Ljava/security/PublicKey;
    .locals 7
    .param p1, "key"    # Lorg/minidns/record/DNSKEY;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/minidns/dnssec/DnssecValidationFailedException$DataMalformedException;,
            Lorg/minidns/dnssec/DnssecValidationFailedException$DnssecInvalidKeySpecException;
        }
    .end annotation

    .line 82
    invoke-virtual {p1}, Lorg/minidns/record/DNSKEY;->getKeyAsDataInputStream()Ljava/io/DataInputStream;

    move-result-object v0

    .line 86
    .local v0, "dis":Ljava/io/DataInput;
    :try_start_0
    iget v1, p0, Lorg/minidns/dnssec/algorithms/EcdsaSignatureVerifier;->length:I

    new-array v1, v1, [B

    .line 87
    .local v1, "xBytes":[B
    invoke-interface {v0, v1}, Ljava/io/DataInput;->readFully([B)V

    .line 88
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 90
    .local v2, "x":Ljava/math/BigInteger;
    iget v4, p0, Lorg/minidns/dnssec/algorithms/EcdsaSignatureVerifier;->length:I

    new-array v4, v4, [B

    .line 91
    .local v4, "yBytes":[B
    invoke-interface {v0, v4}, Ljava/io/DataInput;->readFully([B)V

    .line 92
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v3, v4}, Ljava/math/BigInteger;-><init>(I[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v5

    .line 95
    .end local v4    # "yBytes":[B
    .local v1, "y":Ljava/math/BigInteger;
    nop

    .line 98
    :try_start_1
    invoke-virtual {p0}, Lorg/minidns/dnssec/algorithms/EcdsaSignatureVerifier;->getKeyFactory()Ljava/security/KeyFactory;

    move-result-object v3

    new-instance v4, Ljava/security/spec/ECPublicKeySpec;

    new-instance v5, Ljava/security/spec/ECPoint;

    invoke-direct {v5, v2, v1}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iget-object v6, p0, Lorg/minidns/dnssec/algorithms/EcdsaSignatureVerifier;->spec:Ljava/security/spec/ECParameterSpec;

    invoke-direct {v4, v5, v6}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {v3, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    .line 99
    :catch_0
    move-exception v3

    .line 100
    .local v3, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v4, Lorg/minidns/dnssec/DnssecValidationFailedException$DnssecInvalidKeySpecException;

    invoke-direct {v4, v3}, Lorg/minidns/dnssec/DnssecValidationFailedException$DnssecInvalidKeySpecException;-><init>(Ljava/security/spec/InvalidKeySpecException;)V

    throw v4

    .line 93
    .end local v1    # "y":Ljava/math/BigInteger;
    .end local v2    # "x":Ljava/math/BigInteger;
    .end local v3    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_1
    move-exception v1

    .line 94
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/minidns/dnssec/DnssecValidationFailedException$DataMalformedException;

    invoke-virtual {p1}, Lorg/minidns/record/DNSKEY;->getKey()[B

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lorg/minidns/dnssec/DnssecValidationFailedException$DataMalformedException;-><init>(Ljava/io/IOException;[B)V

    throw v2
.end method

.method protected getSignature(Lorg/minidns/record/RRSIG;)[B
    .locals 10
    .param p1, "rrsig"    # Lorg/minidns/record/RRSIG;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/minidns/dnssec/DnssecValidationFailedException$DataMalformedException;
        }
    .end annotation

    .line 48
    invoke-virtual {p1}, Lorg/minidns/record/RRSIG;->getSignatureAsDataInputStream()Ljava/io/DataInputStream;

    move-result-object v0

    .line 49
    .local v0, "dis":Ljava/io/DataInput;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 50
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 53
    .local v2, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    iget v3, p0, Lorg/minidns/dnssec/algorithms/EcdsaSignatureVerifier;->length:I

    new-array v3, v3, [B

    .line 54
    .local v3, "r":[B
    invoke-interface {v0, v3}, Ljava/io/DataInput;->readFully([B)V

    .line 55
    const/4 v4, 0x0

    aget-byte v5, v3, v4

    if-gez v5, :cond_0

    iget v5, p0, Lorg/minidns/dnssec/algorithms/EcdsaSignatureVerifier;->length:I

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget v5, p0, Lorg/minidns/dnssec/algorithms/EcdsaSignatureVerifier;->length:I

    .line 57
    .local v5, "rlen":I
    :goto_0
    iget v6, p0, Lorg/minidns/dnssec/algorithms/EcdsaSignatureVerifier;->length:I

    new-array v6, v6, [B

    .line 58
    .local v6, "s":[B
    invoke-interface {v0, v6}, Ljava/io/DataInput;->readFully([B)V

    .line 59
    aget-byte v7, v6, v4

    if-gez v7, :cond_1

    iget v7, p0, Lorg/minidns/dnssec/algorithms/EcdsaSignatureVerifier;->length:I

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    iget v7, p0, Lorg/minidns/dnssec/algorithms/EcdsaSignatureVerifier;->length:I

    .line 61
    .local v7, "slen":I
    :goto_1
    const/16 v8, 0x30

    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 62
    add-int v8, v5, v7

    add-int/lit8 v8, v8, 0x4

    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 64
    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 65
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 66
    iget v9, p0, Lorg/minidns/dnssec/algorithms/EcdsaSignatureVerifier;->length:I

    if-le v5, v9, :cond_2

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 67
    :cond_2
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 69
    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 70
    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 71
    iget v8, p0, Lorg/minidns/dnssec/algorithms/EcdsaSignatureVerifier;->length:I

    if-le v7, v8, :cond_3

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 72
    :cond_3
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v3    # "r":[B
    .end local v5    # "rlen":I
    .end local v6    # "s":[B
    .end local v7    # "slen":I
    nop

    .line 77
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 73
    :catch_0
    move-exception v3

    .line 74
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Lorg/minidns/dnssec/DnssecValidationFailedException$DataMalformedException;

    invoke-virtual {p1}, Lorg/minidns/record/RRSIG;->getSignature()[B

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lorg/minidns/dnssec/DnssecValidationFailedException$DataMalformedException;-><init>(Ljava/io/IOException;[B)V

    throw v4
.end method
