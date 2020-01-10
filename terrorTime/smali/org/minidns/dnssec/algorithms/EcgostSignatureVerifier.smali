.class Lorg/minidns/dnssec/algorithms/EcgostSignatureVerifier;
.super Lorg/minidns/dnssec/algorithms/JavaSecSignatureVerifier;
.source "EcgostSignatureVerifier.java"


# static fields
.field private static final LENGTH:I = 0x20

.field private static final SPEC:Ljava/security/spec/ECParameterSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 32
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    new-instance v1, Ljava/security/spec/EllipticCurve;

    new-instance v2, Ljava/security/spec/ECFieldFp;

    new-instance v3, Ljava/math/BigInteger;

    const/16 v4, 0x10

    const-string v5, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD97"

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v2, v3}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    new-instance v3, Ljava/math/BigInteger;

    const-string v5, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD94"

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "A6"

    invoke-direct {v5, v6, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v2, v3, v5}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v2, Ljava/security/spec/ECPoint;

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "8D91E471E0989CDA27DF505A453F2B7635294F2DDF23E3B122ACC99C9E9F1E14"

    invoke-direct {v5, v6, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v2, v3, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v3, Ljava/math/BigInteger;

    const-string v5, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C611070995AD10045841B09B761B893"

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    sput-object v0, Lorg/minidns/dnssec/algorithms/EcgostSignatureVerifier;->SPEC:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 44
    const-string v0, "ECGOST3410"

    const-string v1, "GOST3411withECGOST3410"

    invoke-direct {p0, v0, v1}, Lorg/minidns/dnssec/algorithms/JavaSecSignatureVerifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method private static reverse([B)V
    .locals 4
    .param p0, "array"    # [B

    .line 79
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    .line 80
    array-length v1, p0

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 81
    .local v1, "j":I
    aget-byte v2, p0, v0

    .line 82
    .local v2, "tmp":B
    aget-byte v3, p0, v1

    aput-byte v3, p0, v0

    .line 83
    aput-byte v2, p0, v1

    .line 79
    .end local v1    # "j":I
    .end local v2    # "tmp":B
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    .end local v0    # "i":I
    :cond_0
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

    .line 54
    invoke-virtual {p1}, Lorg/minidns/record/DNSKEY;->getKeyAsDataInputStream()Ljava/io/DataInputStream;

    move-result-object v0

    .line 58
    .local v0, "dis":Ljava/io/DataInput;
    const/16 v1, 0x20

    :try_start_0
    new-array v2, v1, [B

    .line 59
    .local v2, "xBytes":[B
    invoke-interface {v0, v2}, Ljava/io/DataInput;->readFully([B)V

    .line 60
    invoke-static {v2}, Lorg/minidns/dnssec/algorithms/EcgostSignatureVerifier;->reverse([B)V

    .line 61
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 63
    .local v3, "x":Ljava/math/BigInteger;
    new-array v1, v1, [B

    .line 64
    .local v1, "yBytes":[B
    invoke-interface {v0, v1}, Ljava/io/DataInput;->readFully([B)V

    .line 65
    invoke-static {v1}, Lorg/minidns/dnssec/algorithms/EcgostSignatureVerifier;->reverse([B)V

    .line 66
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v4, v1}, Ljava/math/BigInteger;-><init>(I[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v5

    .line 69
    .end local v2    # "xBytes":[B
    .local v1, "y":Ljava/math/BigInteger;
    nop

    .line 72
    :try_start_1
    invoke-virtual {p0}, Lorg/minidns/dnssec/algorithms/EcgostSignatureVerifier;->getKeyFactory()Ljava/security/KeyFactory;

    move-result-object v2

    new-instance v4, Ljava/security/spec/ECPublicKeySpec;

    new-instance v5, Ljava/security/spec/ECPoint;

    invoke-direct {v5, v3, v1}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    sget-object v6, Lorg/minidns/dnssec/algorithms/EcgostSignatureVerifier;->SPEC:Ljava/security/spec/ECParameterSpec;

    invoke-direct {v4, v5, v6}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {v2, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    .line 73
    :catch_0
    move-exception v2

    .line 74
    .local v2, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v4, Lorg/minidns/dnssec/DnssecValidationFailedException$DnssecInvalidKeySpecException;

    invoke-direct {v4, v2}, Lorg/minidns/dnssec/DnssecValidationFailedException$DnssecInvalidKeySpecException;-><init>(Ljava/security/spec/InvalidKeySpecException;)V

    throw v4

    .line 67
    .end local v1    # "y":Ljava/math/BigInteger;
    .end local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    .end local v3    # "x":Ljava/math/BigInteger;
    :catch_1
    move-exception v1

    .line 68
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

    .line 49
    invoke-virtual {p1}, Lorg/minidns/record/RRSIG;->getSignature()[B

    move-result-object v0

    return-object v0
.end method
