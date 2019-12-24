.class public Lorg/minidns/dane/ExpectingTrustManager;
.super Ljava/lang/Object;
.source "ExpectingTrustManager.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field private exception:Ljava/security/cert/CertificateException;

.field private final trustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/X509TrustManager;)V
    .locals 1
    .param p1, "trustManager"    # Ljavax/net/ssl/X509TrustManager;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-nez p1, :cond_0

    invoke-static {}, Lorg/minidns/dane/ExpectingTrustManager;->getDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lorg/minidns/dane/ExpectingTrustManager;->trustManager:Ljavax/net/ssl/X509TrustManager;

    .line 34
    return-void
.end method

.method private static getDefaultTrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 7

    .line 71
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 72
    .local v0, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/security/KeyStore;

    invoke-virtual {v0, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 73
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 74
    .local v5, "trustManager":Ljavax/net/ssl/TrustManager;
    instance-of v6, v5, Ljavax/net/ssl/X509TrustManager;

    if-eqz v6, :cond_0

    .line 75
    move-object v1, v5

    check-cast v1, Ljavax/net/ssl/X509TrustManager;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 73
    .end local v5    # "trustManager":Ljavax/net/ssl/TrustManager;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 79
    .end local v0    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :cond_1
    nop

    .line 80
    return-object v1

    .line 77
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 78
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "X.509 not supported."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 49
    :try_start_0
    iget-object v0, p0, Lorg/minidns/dane/ExpectingTrustManager;->trustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/security/cert/CertificateException;
    iput-object v0, p0, Lorg/minidns/dane/ExpectingTrustManager;->exception:Ljava/security/cert/CertificateException;

    .line 53
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :goto_0
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 58
    :try_start_0
    iget-object v0, p0, Lorg/minidns/dane/ExpectingTrustManager;->trustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/security/cert/CertificateException;
    iput-object v0, p0, Lorg/minidns/dane/ExpectingTrustManager;->exception:Ljava/security/cert/CertificateException;

    .line 62
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :goto_0
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/minidns/dane/ExpectingTrustManager;->trustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getException()Ljava/security/cert/CertificateException;
    .locals 2

    .line 41
    iget-object v0, p0, Lorg/minidns/dane/ExpectingTrustManager;->exception:Ljava/security/cert/CertificateException;

    .line 42
    .local v0, "e":Ljava/security/cert/CertificateException;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/minidns/dane/ExpectingTrustManager;->exception:Ljava/security/cert/CertificateException;

    .line 43
    return-object v0
.end method

.method public hasException()Z
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/minidns/dane/ExpectingTrustManager;->exception:Ljava/security/cert/CertificateException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
