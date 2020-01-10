.class public Lorg/jivesoftware/smack/util/dns/minidns/MiniDnsDaneVerifier;
.super Ljava/lang/Object;
.source "MiniDnsDaneVerifier.java"

# interfaces
.implements Lorg/jivesoftware/smack/util/dns/SmackDaneVerifier;


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final VERIFIER:Lorg/minidns/dane/DaneVerifier;


# instance fields
.field private expectingTrustManager:Lorg/minidns/dane/ExpectingTrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lorg/jivesoftware/smack/util/dns/minidns/MiniDnsDaneVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/util/dns/minidns/MiniDnsDaneVerifier;->LOGGER:Ljava/util/logging/Logger;

    .line 40
    new-instance v0, Lorg/minidns/dane/DaneVerifier;

    invoke-direct {v0}, Lorg/minidns/dane/DaneVerifier;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/util/dns/minidns/MiniDnsDaneVerifier;->VERIFIER:Lorg/minidns/dane/DaneVerifier;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method


# virtual methods
.method public finish(Ljavax/net/ssl/SSLSocket;)V
    .locals 4
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 59
    sget-object v0, Lorg/jivesoftware/smack/util/dns/minidns/MiniDnsDaneVerifier;->VERIFIER:Lorg/minidns/dane/DaneVerifier;

    invoke-virtual {v0, p1}, Lorg/minidns/dane/DaneVerifier;->verify(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/util/dns/minidns/MiniDnsDaneVerifier;->expectingTrustManager:Lorg/minidns/dane/ExpectingTrustManager;

    invoke-virtual {v0}, Lorg/minidns/dane/ExpectingTrustManager;->hasException()Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    return-void

    .line 68
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lorg/jivesoftware/smack/util/dns/minidns/MiniDnsDaneVerifier;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v3, "Closing TLS socket failed"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    iget-object v0, p0, Lorg/jivesoftware/smack/util/dns/minidns/MiniDnsDaneVerifier;->expectingTrustManager:Lorg/minidns/dane/ExpectingTrustManager;

    invoke-virtual {v0}, Lorg/minidns/dane/ExpectingTrustManager;->getException()Ljava/security/cert/CertificateException;

    move-result-object v0

    throw v0
.end method

.method public init(Ljavax/net/ssl/SSLContext;[Ljavax/net/ssl/KeyManager;Ljavax/net/ssl/X509TrustManager;Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "context"    # Ljavax/net/ssl/SSLContext;
    .param p2, "km"    # [Ljavax/net/ssl/KeyManager;
    .param p3, "tm"    # Ljavax/net/ssl/X509TrustManager;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lorg/jivesoftware/smack/util/dns/minidns/MiniDnsDaneVerifier;->expectingTrustManager:Lorg/minidns/dane/ExpectingTrustManager;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lorg/minidns/dane/ExpectingTrustManager;

    invoke-direct {v0, p3}, Lorg/minidns/dane/ExpectingTrustManager;-><init>(Ljavax/net/ssl/X509TrustManager;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/util/dns/minidns/MiniDnsDaneVerifier;->expectingTrustManager:Lorg/minidns/dane/ExpectingTrustManager;

    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/jivesoftware/smack/util/dns/minidns/MiniDnsDaneVerifier;->expectingTrustManager:Lorg/minidns/dane/ExpectingTrustManager;

    aput-object v2, v0, v1

    invoke-virtual {p1, p2, v0, p4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 55
    return-void

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DaneProvider was initialized before. Use newInstance() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
