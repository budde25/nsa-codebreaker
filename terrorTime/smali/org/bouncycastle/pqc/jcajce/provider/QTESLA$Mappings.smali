.class public Lorg/bouncycastle/pqc/jcajce/provider/QTESLA$Mappings;
.super Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/QTESLA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 7

    const-string v0, "KeyFactory.QTESLA"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.qtesla.QTESLAKeyFactorySpi"

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyPairGenerator.QTESLA"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.qtesla.KeyPairGeneratorSpi"

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Signature.QTESLA"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.qtesla.SignatureSpi$qTESLA"

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->qTESLA_I:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "QTESLA-I"

    const-string v2, "org.bouncycastle.pqc.jcajce.provider.qtesla.SignatureSpi$HeuristicI"

    invoke-virtual {p0, p1, v1, v2, v0}, Lorg/bouncycastle/pqc/jcajce/provider/QTESLA$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->qTESLA_III_size:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "QTESLA-III-SIZE"

    const-string v3, "org.bouncycastle.pqc.jcajce.provider.qtesla.SignatureSpi$HeuristicIIISize"

    invoke-virtual {p0, p1, v2, v3, v0}, Lorg/bouncycastle/pqc/jcajce/provider/QTESLA$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->qTESLA_III_speed:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "QTESLA-III-SPEED"

    const-string v4, "org.bouncycastle.pqc.jcajce.provider.qtesla.SignatureSpi$HeuristicIIISpeed"

    invoke-virtual {p0, p1, v3, v4, v0}, Lorg/bouncycastle/pqc/jcajce/provider/QTESLA$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->qTESLA_p_I:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "QTESLA-P-I"

    const-string v5, "org.bouncycastle.pqc.jcajce.provider.qtesla.SignatureSpi$ProvablySecureI"

    invoke-virtual {p0, p1, v4, v5, v0}, Lorg/bouncycastle/pqc/jcajce/provider/QTESLA$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->qTESLA_p_III:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "QTESLA-P-III"

    const-string v6, "org.bouncycastle.pqc.jcajce.provider.qtesla.SignatureSpi$ProvablySecureIII"

    invoke-virtual {p0, p1, v5, v6, v0}, Lorg/bouncycastle/pqc/jcajce/provider/QTESLA$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/QTESLAKeyFactorySpi;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/QTESLAKeyFactorySpi;-><init>()V

    sget-object v6, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->qTESLA_I:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v6, v1, v0}, Lorg/bouncycastle/pqc/jcajce/provider/QTESLA$Mappings;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v1, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->qTESLA_III_size:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v1, v2, v0}, Lorg/bouncycastle/pqc/jcajce/provider/QTESLA$Mappings;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v1, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->qTESLA_III_speed:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v1, v3, v0}, Lorg/bouncycastle/pqc/jcajce/provider/QTESLA$Mappings;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v1, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->qTESLA_p_I:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v1, v4, v0}, Lorg/bouncycastle/pqc/jcajce/provider/QTESLA$Mappings;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v1, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->qTESLA_p_III:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v1, v5, v0}, Lorg/bouncycastle/pqc/jcajce/provider/QTESLA$Mappings;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    return-void
.end method
