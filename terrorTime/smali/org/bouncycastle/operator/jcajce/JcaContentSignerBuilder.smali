.class public Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;
.super Ljava/lang/Object;


# instance fields
.field private helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

.field private random:Ljava/security/SecureRandom;

.field private sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private sigAlgSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private signatureAlgorithm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v1}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->signatureAlgorithm:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;-><init>()V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->find(Ljava/lang/String;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->sigAlgSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v1}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->signatureAlgorithm:Ljava/lang/String;

    instance-of p1, p2, Ljava/security/spec/PSSParameterSpec;

    if-eqz p1, :cond_0

    check-cast p2, Ljava/security/spec/PSSParameterSpec;

    iput-object p2, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->sigAlgSpec:Ljava/security/spec/AlgorithmParameterSpec;

    new-instance p1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {p2}, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->createPSSParams(Ljava/security/spec/PSSParameterSpec;)Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown sigParamSpec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_1

    const-string p2, "null"

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static createPSSParams(Ljava/security/spec/PSSParameterSpec;)Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;
    .locals 7

    new-instance v0, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;-><init>()V

    invoke-virtual {p0}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;->find(Ljava/lang/String;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {p0}, Ljava/security/spec/PSSParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v2

    check-cast v2, Ljava/security/spec/MGF1ParameterSpec;

    invoke-virtual {v2}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;->find(Ljava/lang/String;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    new-instance v2, Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    new-instance v3, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v4, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v3, v4, v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Ljava/security/spec/PSSParameterSpec;->getSaltLength()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {v0, v4, v5}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    new-instance v4, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Ljava/security/spec/PSSParameterSpec;->getTrailerField()I

    move-result p0

    int-to-long v5, p0

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-direct {v2, v1, v3, v0, v4}, Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Integer;)V

    return-object v2
.end method


# virtual methods
.method public build(Ljava/security/PrivateKey;)Lorg/bouncycastle/operator/ContentSigner;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    iget-object v1, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->createSignature(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/security/Signature;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v2, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->random:Ljava/security/SecureRandom;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1, v2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    :goto_0
    new-instance p1, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder$1;

    invoke-direct {p1, p0, v0, v1}, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder$1;-><init>(Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;Ljava/security/Signature;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/bouncycastle/operator/OperatorCreationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot create signer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;
    .locals 2

    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;
    .locals 2

    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->random:Ljava/security/SecureRandom;

    return-object p0
.end method
