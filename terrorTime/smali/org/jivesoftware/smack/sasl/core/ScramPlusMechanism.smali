.class public abstract Lorg/jivesoftware/smack/sasl/core/ScramPlusMechanism;
.super Lorg/jivesoftware/smack/sasl/core/ScramMechanism;
.source "ScramPlusMechanism.java"


# direct methods
.method protected constructor <init>(Lorg/jivesoftware/smack/sasl/core/ScramHmac;)V
    .locals 0
    .param p1, "scramHmac"    # Lorg/jivesoftware/smack/sasl/core/ScramHmac;

    .line 37
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;-><init>(Lorg/jivesoftware/smack/sasl/core/ScramHmac;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected getChannelBindingData()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException;
        }
    .end annotation

    .line 54
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/sasl/core/ScramPlusMechanism;->sslSession:Ljavax/net/ssl/SSLSession;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/TLSUtils;->getChannelBindingTlsServerEndPoint(Ljavax/net/ssl/SSLSession;)[B

    move-result-object v0
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .local v0, "cbData":[B
    nop

    .line 59
    return-object v0

    .line 56
    .end local v0    # "cbData":[B
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Lorg/jivesoftware/smack/SmackException;

    invoke-direct {v1, v0}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected getChannelBindingName()Ljava/lang/String;
    .locals 1

    .line 47
    const-string v0, "p=tls-server-end-point"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/jivesoftware/smack/sasl/core/ScramMechanism;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-PLUS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
