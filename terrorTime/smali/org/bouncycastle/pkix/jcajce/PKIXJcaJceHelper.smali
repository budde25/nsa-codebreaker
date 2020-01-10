.class interface abstract Lorg/bouncycastle/pkix/jcajce/PKIXJcaJceHelper;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/jcajce/util/JcaJceHelper;


# virtual methods
.method public abstract createCertPathBuilder(Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation
.end method
