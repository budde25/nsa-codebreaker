.class public Lorg/minidns/dnssec/algorithms/AlgorithmMap;
.super Ljava/lang/Object;
.source "AlgorithmMap.java"


# static fields
.field public static final INSTANCE:Lorg/minidns/dnssec/algorithms/AlgorithmMap;


# instance fields
.field private LOGGER:Ljava/util/logging/Logger;

.field private final dsDigestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;",
            "Lorg/minidns/dnssec/DigestCalculator;",
            ">;"
        }
    .end annotation
.end field

.field private final nsecDigestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/minidns/record/NSEC3$HashAlgorithm;",
            "Lorg/minidns/dnssec/DigestCalculator;",
            ">;"
        }
    .end annotation
.end field

.field private final signatureMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;",
            "Lorg/minidns/dnssec/SignatureVerifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;

    invoke-direct {v0}, Lorg/minidns/dnssec/algorithms/AlgorithmMap;-><init>()V

    sput-object v0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->INSTANCE:Lorg/minidns/dnssec/algorithms/AlgorithmMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 36
    const-string v0, "SHA-1"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-class v1, Lorg/minidns/dnssec/algorithms/AlgorithmMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    iput-object v1, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->LOGGER:Ljava/util/logging/Logger;

    .line 31
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->dsDigestMap:Ljava/util/Map;

    .line 32
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->signatureMap:Ljava/util/Map;

    .line 33
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->nsecDigestMap:Ljava/util/Map;

    .line 38
    :try_start_0
    iget-object v1, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->dsDigestMap:Ljava/util/Map;

    sget-object v2, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;->SHA1:Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    new-instance v3, Lorg/minidns/dnssec/algorithms/JavaSecDigestCalculator;

    invoke-direct {v3, v0}, Lorg/minidns/dnssec/algorithms/JavaSecDigestCalculator;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v1, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->nsecDigestMap:Ljava/util/Map;

    sget-object v2, Lorg/minidns/record/NSEC3$HashAlgorithm;->SHA1:Lorg/minidns/record/NSEC3$HashAlgorithm;

    new-instance v3, Lorg/minidns/dnssec/algorithms/JavaSecDigestCalculator;

    invoke-direct {v3, v0}, Lorg/minidns/dnssec/algorithms/JavaSecDigestCalculator;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_9

    .line 43
    nop

    .line 45
    :try_start_1
    iget-object v0, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->dsDigestMap:Ljava/util/Map;

    sget-object v1, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;->SHA256:Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    new-instance v2, Lorg/minidns/dnssec/algorithms/JavaSecDigestCalculator;

    const-string v3, "SHA-256"

    invoke-direct {v2, v3}, Lorg/minidns/dnssec/algorithms/JavaSecDigestCalculator;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_8

    .line 49
    nop

    .line 52
    :try_start_2
    iget-object v0, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->signatureMap:Ljava/util/Map;

    sget-object v1, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->RSAMD5:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    new-instance v2, Lorg/minidns/dnssec/algorithms/RsaSignatureVerifier;

    const-string v3, "MD5withRSA"

    invoke-direct {v2, v3}, Lorg/minidns/dnssec/algorithms/RsaSignatureVerifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0

    .line 56
    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    iget-object v1, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v3, "Platform does not support RSA/MD5"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    :try_start_3
    new-instance v0, Lorg/minidns/dnssec/algorithms/DsaSignatureVerifier;

    const-string v1, "SHA1withDSA"

    invoke-direct {v0, v1}, Lorg/minidns/dnssec/algorithms/DsaSignatureVerifier;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "sha1withDSA":Lorg/minidns/dnssec/algorithms/DsaSignatureVerifier;
    iget-object v1, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->signatureMap:Ljava/util/Map;

    sget-object v2, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->DSA:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v1, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->signatureMap:Ljava/util/Map;

    sget-object v2, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->DSA_NSEC3_SHA1:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1

    .line 64
    nop

    .end local v0    # "sha1withDSA":Lorg/minidns/dnssec/algorithms/DsaSignatureVerifier;
    goto :goto_1

    .line 61
    :catch_1
    move-exception v0

    .line 63
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    iget-object v1, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Platform does not support DSA/SHA-1"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_1
    :try_start_4
    new-instance v0, Lorg/minidns/dnssec/algorithms/RsaSignatureVerifier;

    const-string v1, "SHA1withRSA"

    invoke-direct {v0, v1}, Lorg/minidns/dnssec/algorithms/RsaSignatureVerifier;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, "sha1withRSA":Lorg/minidns/dnssec/algorithms/RsaSignatureVerifier;
    iget-object v1, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->signatureMap:Ljava/util/Map;

    sget-object v2, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->RSASHA1:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v1, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->signatureMap:Ljava/util/Map;

    sget-object v2, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->RSASHA1_NSEC3_SHA1:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_7

    .line 71
    nop

    .line 73
    .end local v0    # "sha1withRSA":Lorg/minidns/dnssec/algorithms/RsaSignatureVerifier;
    :try_start_5
    iget-object v0, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->signatureMap:Ljava/util/Map;

    sget-object v1, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->RSASHA256:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    new-instance v2, Lorg/minidns/dnssec/algorithms/RsaSignatureVerifier;

    const-string v3, "SHA256withRSA"

    invoke-direct {v2, v3}, Lorg/minidns/dnssec/algorithms/RsaSignatureVerifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_2

    .line 77
    goto :goto_2

    .line 74
    :catch_2
    move-exception v0

    .line 76
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    iget-object v1, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "Platform does not support RSA/SHA-256"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_2
    :try_start_6
    iget-object v0, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->signatureMap:Ljava/util/Map;

    sget-object v1, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->RSASHA512:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    new-instance v2, Lorg/minidns/dnssec/algorithms/RsaSignatureVerifier;

    const-string v3, "SHA512withRSA"

    invoke-direct {v2, v3}, Lorg/minidns/dnssec/algorithms/RsaSignatureVerifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_3

    .line 83
    goto :goto_3

    .line 80
    :catch_3
    move-exception v0

    .line 82
    .restart local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    iget-object v1, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "Platform does not support RSA/SHA-512"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_3
    :try_start_7
    iget-object v0, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->signatureMap:Ljava/util/Map;

    sget-object v1, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->ECC_GOST:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    new-instance v2, Lorg/minidns/dnssec/algorithms/EcgostSignatureVerifier;

    invoke-direct {v2}, Lorg/minidns/dnssec/algorithms/EcgostSignatureVerifier;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_4

    .line 89
    goto :goto_4

    .line 86
    :catch_4
    move-exception v0

    .line 88
    .restart local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    iget-object v1, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Platform does not support GOST R 34.10-2001"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_4
    :try_start_8
    iget-object v0, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->signatureMap:Ljava/util/Map;

    sget-object v1, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->ECDSAP256SHA256:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    new-instance v2, Lorg/minidns/dnssec/algorithms/EcdsaSignatureVerifier$P256SHA256;

    invoke-direct {v2}, Lorg/minidns/dnssec/algorithms/EcdsaSignatureVerifier$P256SHA256;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_5

    .line 95
    goto :goto_5

    .line 92
    :catch_5
    move-exception v0

    .line 94
    .restart local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    iget-object v1, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "Platform does not support ECDSA/SHA-256"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_5
    :try_start_9
    iget-object v0, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->signatureMap:Ljava/util/Map;

    sget-object v1, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->ECDSAP384SHA384:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    new-instance v2, Lorg/minidns/dnssec/algorithms/EcdsaSignatureVerifier$P384SHA284;

    invoke-direct {v2}, Lorg/minidns/dnssec/algorithms/EcdsaSignatureVerifier$P384SHA284;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_9} :catch_6

    .line 101
    goto :goto_6

    .line 98
    :catch_6
    move-exception v0

    .line 100
    .restart local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    iget-object v1, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "Platform does not support ECDSA/SHA-384"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_6
    return-void

    .line 69
    :catch_7
    move-exception v0

    .line 70
    .restart local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Lorg/minidns/dnssec/DnssecValidatorInitializationException;

    const-string v2, "Platform does not support RSA/SHA-1"

    invoke-direct {v1, v2, v0}, Lorg/minidns/dnssec/DnssecValidatorInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 46
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_8
    move-exception v0

    .line 48
    .restart local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Lorg/minidns/dnssec/DnssecValidatorInitializationException;

    const-string v2, "SHA-256 is mandatory"

    invoke-direct {v1, v2, v0}, Lorg/minidns/dnssec/DnssecValidatorInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 40
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_9
    move-exception v0

    .line 42
    .restart local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Lorg/minidns/dnssec/DnssecValidatorInitializationException;

    const-string v2, "SHA-1 is mandatory"

    invoke-direct {v1, v2, v0}, Lorg/minidns/dnssec/DnssecValidatorInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getDsDigestCalculator(Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;)Lorg/minidns/dnssec/DigestCalculator;
    .locals 1
    .param p1, "algorithm"    # Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    .line 105
    iget-object v0, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->dsDigestMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/minidns/dnssec/DigestCalculator;

    return-object v0
.end method

.method public getNsecDigestCalculator(Lorg/minidns/record/NSEC3$HashAlgorithm;)Lorg/minidns/dnssec/DigestCalculator;
    .locals 1
    .param p1, "algorithm"    # Lorg/minidns/record/NSEC3$HashAlgorithm;

    .line 113
    iget-object v0, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->nsecDigestMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/minidns/dnssec/DigestCalculator;

    return-object v0
.end method

.method public getSignatureVerifier(Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;)Lorg/minidns/dnssec/SignatureVerifier;
    .locals 1
    .param p1, "algorithm"    # Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 109
    iget-object v0, p0, Lorg/minidns/dnssec/algorithms/AlgorithmMap;->signatureMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/minidns/dnssec/SignatureVerifier;

    return-object v0
.end method
