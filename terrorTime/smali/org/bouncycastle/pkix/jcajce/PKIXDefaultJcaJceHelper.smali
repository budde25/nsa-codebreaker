.class Lorg/bouncycastle/pkix/jcajce/PKIXDefaultJcaJceHelper;
.super Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

# interfaces
.implements Lorg/bouncycastle/pkix/jcajce/PKIXJcaJceHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public createCertPathBuilder(Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-static {p1}, Ljava/security/cert/CertPathBuilder;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;

    move-result-object p1

    return-object p1
.end method
