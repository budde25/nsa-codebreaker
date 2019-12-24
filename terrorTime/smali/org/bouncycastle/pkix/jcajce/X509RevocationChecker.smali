.class public Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;
.super Ljava/security/cert/PKIXCertPathChecker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;,
        Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$LocalCRLStore;
    }
.end annotation


# static fields
.field public static final CHAIN_VALIDITY_MODEL:I = 0x1

.field private static LOG:Ljava/util/logging/Logger;

.field public static final PKIX_VALIDITY_MODEL:I

.field private static final crlCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/bouncycastle/asn1/x509/GeneralName;",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/security/cert/X509CRL;",
            ">;>;"
        }
    .end annotation
.end field

.field protected static final crlReasons:[Ljava/lang/String;


# instance fields
.field private final canSoftFail:Z

.field private final crlCertStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/CertStore;",
            ">;"
        }
    .end annotation
.end field

.field private final crls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/util/Store<",
            "Ljava/security/cert/CRL;",
            ">;>;"
        }
    .end annotation
.end field

.field private final failHardMaxTime:J

.field private final failLogMaxTime:J

.field private final failures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final helper:Lorg/bouncycastle/pkix/jcajce/PKIXJcaJceHelper;

.field private final isCheckEEOnly:Z

.field private signingCert:Ljava/security/cert/X509Certificate;

.field private final trustAnchors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private workingIssuerName:Ljavax/security/auth/x500/X500Principal;

.field private workingPublicKey:Ljava/security/PublicKey;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-class v0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->crlCache:Ljava/util/Map;

    const-string v1, "unspecified"

    const-string v2, "keyCompromise"

    const-string v3, "cACompromise"

    const-string v4, "affiliationChanged"

    const-string v5, "superseded"

    const-string v6, "cessationOfOperation"

    const-string v7, "certificateHold"

    const-string v8, "unknown"

    const-string v9, "removeFromCRL"

    const-string v10, "privilegeWithdrawn"

    const-string v11, "aACompromise"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->crlReasons:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/security/cert/PKIXCertPathChecker;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->failures:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->access$100(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->crls:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->access$200(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->crlCertStores:Ljava/util/List;

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->access$300(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->isCheckEEOnly:Z

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->access$400(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->trustAnchors:Ljava/util/Set;

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->access$500(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->canSoftFail:Z

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->access$600(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->failLogMaxTime:J

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->access$700(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->failHardMaxTime:J

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->access$800(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/pkix/jcajce/PKIXProviderJcaJceHelper;

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->access$800(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Ljava/security/Provider;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/pkix/jcajce/PKIXProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->helper:Lorg/bouncycastle/pkix/jcajce/PKIXJcaJceHelper;

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->access$900(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/pkix/jcajce/PKIXNamedJcaJceHelper;

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;->access$900(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/pkix/jcajce/PKIXNamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/bouncycastle/pkix/jcajce/PKIXDefaultJcaJceHelper;

    invoke-direct {p1}, Lorg/bouncycastle/pkix/jcajce/PKIXDefaultJcaJceHelper;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->helper:Lorg/bouncycastle/pkix/jcajce/PKIXJcaJceHelper;

    :goto_1
    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;-><init>(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$Builder;)V

    return-void
.end method

.method private addIssuers(Ljava/util/List;Ljava/security/cert/CertStore;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;",
            "Ljava/security/cert/CertStore;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$1;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$1;-><init>(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    return-void
.end method

.method private addIssuers(Ljava/util/List;Lorg/bouncycastle/util/Store;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;",
            "Lorg/bouncycastle/util/Store<",
            "Ljava/security/cert/CRL;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$2;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$2;-><init>(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;Ljava/util/List;)V

    invoke-interface {p2, v0}, Lorg/bouncycastle/util/Store;->getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    return-void
.end method

.method private downloadCRLs(Ljavax/security/auth/x500/X500Principal;Ljava/util/Date;Lorg/bouncycastle/asn1/ASN1Primitive;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/security/cert/CRL;
    .locals 16

    move-object/from16 v1, p2

    invoke-static/range {p3 .. p3}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CRLDistPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lorg/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v0, v2

    const/4 v5, 0x0

    if-eq v4, v0, :cond_5

    aget-object v0, v2, v4

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lorg/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v6

    move v7, v3

    :goto_1
    array-length v0, v6

    if-eq v7, v0, :cond_4

    aget-object v0, v6, v7

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_3

    sget-object v8, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->crlCache:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/WeakReference;

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509CRL;

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v8}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v9

    if-nez v9, :cond_0

    return-object v8

    :cond_0
    sget-object v8, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->crlCache:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-string v9, "X.509"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v10, p4

    :try_start_2
    invoke-interface {v10, v9}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v9

    invoke-virtual {v8}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v11

    new-instance v12, Ljava/io/BufferedInputStream;

    invoke-direct {v12, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v9, v12}, Ljava/security/cert/CertificateFactory;->generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v9

    check-cast v9, Ljava/security/cert/X509CRL;

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    sget-object v11, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "downloaded CRL from CrlDP "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " for issuer \""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v14, p1

    :try_start_3
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, "\""

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    sget-object v11, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->crlCache:Ljava/util/Map;

    new-instance v12, Ljava/lang/ref/WeakReference;

    invoke-direct {v12, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v11, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object v9

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v14, p1

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v14, p1

    move-object/from16 v10, p4

    goto :goto_2

    :catch_3
    move-exception v0

    move-object/from16 v14, p1

    move-object/from16 v10, p4

    move-object v8, v5

    :goto_2
    sget-object v9, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v9, v11}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v9

    const-string v11, " ignored: "

    const-string v12, "CrlDP "

    if-eqz v9, :cond_2

    sget-object v9, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    sget-object v13, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v13, v8, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_2
    sget-object v9, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    sget-object v13, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v13, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move-object/from16 v14, p1

    move-object/from16 v10, p4

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_4
    move-object/from16 v14, p1

    move-object/from16 v10, p4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_5
    return-object v5
.end method

.method static getAdditionalStoresFromCRLDistributionPoint(Lorg/bouncycastle/asn1/x509/CRLDistPoint;Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/asn1/x509/CRLDistPoint;",
            "Ljava/util/Map<",
            "Lorg/bouncycastle/asn1/x509/GeneralName;",
            "Lorg/bouncycastle/jcajce/PKIXCRLStore;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/bouncycastle/jcajce/PKIXCRLStore;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
        }
    .end annotation

    if-eqz p0, :cond_3

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lorg/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lorg/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v3

    move v4, v1

    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_1

    aget-object v5, v3, v4

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/jcajce/PKIXCRLStore;

    if-eqz v5, :cond_0

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v0, "could not read distribution points could not be read"

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    check-cast p1, Ljava/security/cert/X509Certificate;

    iget-boolean p2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->isCheckEEOnly:Z

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingIssuerName:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingPublicKey:Ljava/security/PublicKey;

    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->signingCert:Ljava/security/cert/X509Certificate;

    return-void

    :cond_0
    const/4 p2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingIssuerName:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_5

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingIssuerName:Ljavax/security/auth/x500/X500Principal;

    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->trustAnchors:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/TrustAnchor;

    iget-object v2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingIssuerName:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingIssuerName:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    move-object p2, v1

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->signingCert:Ljava/security/cert/X509Certificate;

    iget-object p2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->signingCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingPublicKey:Ljava/security/PublicKey;

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/security/cert/CertPathValidatorException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no trust anchor found for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingIssuerName:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v8, Ljava/security/cert/PKIXParameters;

    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->trustAnchors:Ljava/util/Set;

    invoke-direct {v8, v0}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8, v1}, Ljava/security/cert/PKIXParameters;->setDate(Ljava/util/Date;)V

    move v1, v0

    :goto_2
    iget-object v2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->crlCertStores:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_7

    sget-object v2, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->crlCertStores:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/CertStore;

    invoke-direct {p0, p2, v2}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->addIssuers(Ljava/util/List;Ljava/security/cert/CertStore;)V

    :cond_6
    iget-object v2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->crlCertStores:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/CertStore;

    invoke-virtual {v8, v2}, Ljava/security/cert/PKIXParameters;->addCertStore(Ljava/security/cert/CertStore;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    new-instance v9, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    invoke-direct {v9, v8}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Ljava/security/cert/PKIXParameters;)V

    move v1, v0

    :goto_3
    iget-object v2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->crls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_9

    sget-object v2, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->crls:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/util/Store;

    invoke-direct {p0, p2, v2}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->addIssuers(Ljava/util/List;Lorg/bouncycastle/util/Store;)V

    :cond_8
    new-instance v2, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$LocalCRLStore;

    iget-object v3, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->crls:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/util/Store;

    invoke-direct {v2, p0, v3}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$LocalCRLStore;-><init>(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;Lorg/bouncycastle/util/Store;)V

    invoke-virtual {v9, v2}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->addCRLStore(Lorg/bouncycastle/jcajce/PKIXCRLStore;)Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v10, "\""

    if-eqz v1, :cond_a

    sget-object p2, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v1, "configured with 0 pre-loaded CRLs"

    invoke-virtual {p2, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    sget-object v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_c

    sget-object v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configuring with CRL for issuer \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_b
    sget-object v0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configured with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " pre-loaded CRLs"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_c
    :goto_5
    :try_start_1
    invoke-virtual {v9}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v1

    invoke-virtual {v8}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->signingCert:Ljava/security/cert/X509Certificate;

    iget-object v5, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingPublicKey:Ljava/security/PublicKey;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->helper:Lorg/bouncycastle/pkix/jcajce/PKIXJcaJceHelper;

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->checkCRLs(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;Lorg/bouncycastle/pkix/jcajce/PKIXJcaJceHelper;)V
    :try_end_1
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/bouncycastle/pkix/jcajce/CRLNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_8

    :catch_0
    move-exception p2

    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_13

    :try_start_2
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v8}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {p1, v2}, Lorg/bouncycastle/pkix/jcajce/RevocationUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->helper:Lorg/bouncycastle/pkix/jcajce/PKIXJcaJceHelper;

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->downloadCRLs(Ljavax/security/auth/x500/X500Principal;Ljava/util/Date;Lorg/bouncycastle/asn1/ASN1Primitive;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/security/cert/CRL;

    move-result-object v0
    :try_end_2
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v0, :cond_d

    :try_start_3
    new-instance v1, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$LocalCRLStore;

    new-instance v2, Lorg/bouncycastle/util/CollectionStore;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/bouncycastle/util/CollectionStore;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, p0, v2}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker$LocalCRLStore;-><init>(Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;Lorg/bouncycastle/util/Store;)V

    invoke-virtual {v9, v1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->addCRLStore(Lorg/bouncycastle/jcajce/PKIXCRLStore;)Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    invoke-virtual {v9}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v1

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    iget-object v4, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->signingCert:Ljava/security/cert/X509Certificate;

    iget-object v5, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingPublicKey:Ljava/security/PublicKey;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->helper:Lorg/bouncycastle/pkix/jcajce/PKIXJcaJceHelper;

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->checkCRLs(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;Lorg/bouncycastle/pkix/jcajce/PKIXJcaJceHelper;)V
    :try_end_3
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_8

    :catch_1
    move-exception p1

    new-instance p1, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {p2}, Lorg/bouncycastle/pkix/jcajce/CRLNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/pkix/jcajce/CRLNotFoundException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_d
    iget-boolean v0, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->canSoftFail:Z

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->failures:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->failHardMaxTime:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_f

    cmp-long v1, v4, v2

    if-ltz v1, :cond_e

    goto :goto_6

    :cond_e
    throw p2

    :cond_f
    :goto_6
    iget-wide v4, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->failLogMaxTime:J

    cmp-long p2, v2, v4

    const-string v1, "soft failing for issuer: \""

    if-gez p2, :cond_10

    sget-object p2, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_7

    :cond_10
    sget-object p2, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_7
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_8

    :cond_11
    iget-object p2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->failures:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->signingCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingPublicKey:Ljava/security/PublicKey;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingIssuerName:Ljavax/security/auth/x500/X500Principal;

    return-void

    :cond_12
    throw p2

    :catch_2
    move-exception p1

    new-instance p1, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {p2}, Lorg/bouncycastle/pkix/jcajce/CRLNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/pkix/jcajce/CRLNotFoundException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_13
    throw p2

    :catch_3
    move-exception p1

    new-instance p2, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {p1}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_4
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error setting up baseParams: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected checkCRLs(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;Lorg/bouncycastle/pkix/jcajce/PKIXJcaJceHelper;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkix/jcajce/AnnotatedException;,
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v11, p2

    invoke-static {v11, v0}, Lorg/bouncycastle/pkix/jcajce/RevocationUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CRLDistPoint;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    new-instance v1, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    move-object/from16 v12, p1

    invoke-direct {v1, v12}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)V

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getNamedCRLStoreMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->getAdditionalStoresFromCRLDistributionPoint(Lorg/bouncycastle/asn1/x509/CRLDistPoint;Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/jcajce/PKIXCRLStore;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->addCRLStore(Lorg/bouncycastle/jcajce/PKIXCRLStore;)Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :try_end_1
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    :cond_0
    new-instance v13, Lorg/bouncycastle/pkix/jcajce/CertStatus;

    invoke-direct {v13}, Lorg/bouncycastle/pkix/jcajce/CertStatus;-><init>()V

    new-instance v14, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;

    invoke-direct {v14}, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;-><init>()V

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v15

    const/16 v16, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/16 v8, 0xb

    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lorg/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v7, :cond_2

    move-object v0, v9

    move v6, v10

    move/from16 v17, v6

    :goto_1
    array-length v1, v7

    if-ge v6, v1, :cond_1

    invoke-virtual {v13}, Lorg/bouncycastle/pkix/jcajce/CertStatus;->getCertStatus()I

    move-result v1

    if-ne v1, v8, :cond_1

    invoke-virtual {v14}, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;->isAllReasons()Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_3
    aget-object v1, v7, v6
    :try_end_3
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v2, v15

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v18, v6

    move-object/from16 v6, p5

    move-object/from16 v19, v7

    move-object v7, v13

    move v11, v8

    move-object v8, v14

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    :try_start_4
    invoke-static/range {v1 .. v10}, Lorg/bouncycastle/pkix/jcajce/RFC3280CertPathUtilities;->checkCRL(Lorg/bouncycastle/asn1/x509/DistributionPoint;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/bouncycastle/pkix/jcajce/CertStatus;Lorg/bouncycastle/pkix/jcajce/ReasonsMask;Ljava/util/List;Lorg/bouncycastle/pkix/jcajce/PKIXJcaJceHelper;)V
    :try_end_4
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_0

    move/from16 v17, v16

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move/from16 v18, v6

    move-object/from16 v19, v7

    move v11, v8

    :goto_2
    add-int/lit8 v6, v18, 0x1

    move v8, v11

    move-object/from16 v7, v19

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v11, p2

    goto :goto_1

    :cond_1
    move v11, v8

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v1, v0

    new-instance v0, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v2, "cannot read distribution points"

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    move v11, v8

    const/4 v0, 0x0

    const/16 v17, 0x0

    :goto_3
    invoke-virtual {v13}, Lorg/bouncycastle/pkix/jcajce/CertStatus;->getCertStatus()I

    move-result v1

    if-ne v1, v11, :cond_3

    invoke-virtual {v14}, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;->isAllReasons()Z

    move-result v1

    if-nez v1, :cond_3

    :try_start_5
    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/asn1/x509/DistributionPoint;

    new-instance v3, Lorg/bouncycastle/asn1/x509/DistributionPointName;

    new-instance v4, Lorg/bouncycastle/asn1/x509/GeneralNames;

    new-instance v5, Lorg/bouncycastle/asn1/x509/GeneralName;

    const/4 v6, 0x4

    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-direct {v5, v6, v1}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/x509/GeneralNames;-><init>(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    const/4 v1, 0x0

    invoke-direct {v3, v1, v4}, Lorg/bouncycastle/asn1/x509/DistributionPointName;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x0

    invoke-direct {v2, v3, v1, v1}, Lorg/bouncycastle/asn1/x509/DistributionPoint;-><init>(Lorg/bouncycastle/asn1/x509/DistributionPointName;Lorg/bouncycastle/asn1/x509/ReasonFlags;Lorg/bouncycastle/asn1/x509/GeneralNames;)V

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    move-object v1, v2

    move-object v2, v3

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object v7, v13

    move-object v8, v14

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-static/range {v1 .. v10}, Lorg/bouncycastle/pkix/jcajce/RFC3280CertPathUtilities;->checkCRL(Lorg/bouncycastle/asn1/x509/DistributionPoint;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/bouncycastle/pkix/jcajce/CertStatus;Lorg/bouncycastle/pkix/jcajce/ReasonsMask;Ljava/util/List;Lorg/bouncycastle/pkix/jcajce/PKIXJcaJceHelper;)V
    :try_end_5
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_5 .. :try_end_5} :catch_3

    move/from16 v17, v16

    goto :goto_4

    :catch_3
    move-exception v0

    :cond_3
    :goto_4
    if-nez v17, :cond_5

    instance-of v1, v0, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v2, "no valid CRL found"

    if-eqz v1, :cond_4

    new-instance v1, Lorg/bouncycastle/pkix/jcajce/CRLNotFoundException;

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pkix/jcajce/CRLNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    new-instance v0, Lorg/bouncycastle/pkix/jcajce/CRLNotFoundException;

    invoke-direct {v0, v2}, Lorg/bouncycastle/pkix/jcajce/CRLNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {v13}, Lorg/bouncycastle/pkix/jcajce/CertStatus;->getCertStatus()I

    move-result v0

    if-ne v0, v11, :cond_8

    invoke-virtual {v14}, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;->isAllReasons()Z

    move-result v0

    const/16 v1, 0xc

    if-nez v0, :cond_6

    invoke-virtual {v13}, Lorg/bouncycastle/pkix/jcajce/CertStatus;->getCertStatus()I

    move-result v0

    if-ne v0, v11, :cond_6

    invoke-virtual {v13, v1}, Lorg/bouncycastle/pkix/jcajce/CertStatus;->setCertStatus(I)V

    :cond_6
    invoke-virtual {v13}, Lorg/bouncycastle/pkix/jcajce/CertStatus;->getCertStatus()I

    move-result v0

    if-eq v0, v1, :cond_7

    return-void

    :cond_7
    new-instance v0, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v1, "certificate status could not be determined"

    invoke-direct {v0, v1}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss Z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "certificate [issuer=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\",serialNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",subject=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\"] revoked after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lorg/bouncycastle/pkix/jcajce/CertStatus;->getRevocationDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", reason: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->crlReasons:[Ljava/lang/String;

    invoke-virtual {v13}, Lorg/bouncycastle/pkix/jcajce/CertStatus;->getCertStatus()I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_4
    move-exception v0

    new-instance v1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v2, "no additional CRL locations could be decoded from CRL distribution point extension"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_5
    move-exception v0

    new-instance v1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v2, "cannot read CRL distribution point extension"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public clone()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public getSupportedExtensions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/X509RevocationChecker;->workingIssuerName:Ljavax/security/auth/x500/X500Principal;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "forward processing not supported"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isForwardCheckingSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
