.class Lorg/minidns/dnssec/algorithms/RsaSignatureVerifier;
.super Lorg/minidns/dnssec/algorithms/JavaSecSignatureVerifier;
.source "RsaSignatureVerifier.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 28
    const-string v0, "RSA"

    invoke-direct {p0, v0, p1}, Lorg/minidns/dnssec/algorithms/JavaSecSignatureVerifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected getPublicKey(Lorg/minidns/record/DNSKEY;)Ljava/security/PublicKey;
    .locals 8
    .param p1, "key"    # Lorg/minidns/record/DNSKEY;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/minidns/dnssec/DnssecValidationFailedException$DataMalformedException;,
            Lorg/minidns/dnssec/DnssecValidationFailedException$DnssecInvalidKeySpecException;
        }
    .end annotation

    .line 33
    invoke-virtual {p1}, Lorg/minidns/record/DNSKEY;->getKeyAsDataInputStream()Ljava/io/DataInputStream;

    move-result-object v0

    .line 37
    .local v0, "dis":Ljava/io/DataInput;
    :try_start_0
    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    .line 38
    .local v1, "exponentLength":I
    const/4 v2, 0x1

    .line 39
    .local v2, "bytesRead":I
    if-nez v1, :cond_0

    .line 40
    add-int/lit8 v2, v2, 0x2

    .line 41
    invoke-interface {v0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v3

    move v1, v3

    .line 44
    :cond_0
    new-array v3, v1, [B

    .line 45
    .local v3, "exponentBytes":[B
    invoke-interface {v0, v3}, Ljava/io/DataInput;->readFully([B)V

    .line 46
    add-int/2addr v2, v1

    .line 47
    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 49
    .local v4, "exponent":Ljava/math/BigInteger;
    invoke-virtual {p1}, Lorg/minidns/record/DNSKEY;->getKeyLength()I

    move-result v6

    sub-int/2addr v6, v2

    new-array v6, v6, [B

    .line 50
    .local v6, "modulusBytes":[B
    invoke-interface {v0, v6}, Ljava/io/DataInput;->readFully([B)V

    .line 51
    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v5, v6}, Ljava/math/BigInteger;-><init>(I[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v7

    .line 54
    .end local v2    # "bytesRead":I
    .end local v3    # "exponentBytes":[B
    .end local v6    # "modulusBytes":[B
    .local v1, "modulus":Ljava/math/BigInteger;
    nop

    .line 57
    :try_start_1
    invoke-virtual {p0}, Lorg/minidns/dnssec/algorithms/RsaSignatureVerifier;->getKeyFactory()Ljava/security/KeyFactory;

    move-result-object v2

    new-instance v3, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v3, v1, v4}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    .line 58
    :catch_0
    move-exception v2

    .line 59
    .local v2, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v3, Lorg/minidns/dnssec/DnssecValidationFailedException$DnssecInvalidKeySpecException;

    invoke-direct {v3, v2}, Lorg/minidns/dnssec/DnssecValidationFailedException$DnssecInvalidKeySpecException;-><init>(Ljava/security/spec/InvalidKeySpecException;)V

    throw v3

    .line 52
    .end local v1    # "modulus":Ljava/math/BigInteger;
    .end local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    .end local v4    # "exponent":Ljava/math/BigInteger;
    :catch_1
    move-exception v1

    .line 53
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/minidns/dnssec/DnssecValidationFailedException$DataMalformedException;

    invoke-virtual {p1}, Lorg/minidns/record/DNSKEY;->getKey()[B

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lorg/minidns/dnssec/DnssecValidationFailedException$DataMalformedException;-><init>(Ljava/io/IOException;[B)V

    throw v2
.end method

.method protected getSignature(Lorg/minidns/record/RRSIG;)[B
    .locals 1
    .param p1, "rrsig"    # Lorg/minidns/record/RRSIG;

    .line 65
    invoke-virtual {p1}, Lorg/minidns/record/RRSIG;->getSignature()[B

    move-result-object v0

    return-object v0
.end method
