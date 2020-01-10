.class public Lorg/jivesoftware/smack/util/TLSUtils;
.super Ljava/lang/Object;
.source "TLSUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/util/TLSUtils$AcceptAllTrustManager;
    }
.end annotation


# static fields
.field private static final DOES_NOT_VERIFY_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

.field public static final PROTO_SSL3:Ljava/lang/String; = "SSLv3"

.field public static final PROTO_TLSV1:Ljava/lang/String; = "TLSv1"

.field public static final PROTO_TLSV1_1:Ljava/lang/String; = "TLSv1.1"

.field public static final PROTO_TLSV1_2:Ljava/lang/String; = "TLSv1.2"

.field public static final SSL:Ljava/lang/String; = "SSL"

.field public static final TLS:Ljava/lang/String; = "TLS"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 113
    new-instance v0, Lorg/jivesoftware/smack/util/TLSUtils$1;

    invoke-direct {v0}, Lorg/jivesoftware/smack/util/TLSUtils$1;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/util/TLSUtils;->DOES_NOT_VERIFY_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acceptAllCertificates(Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lorg/jivesoftware/smack/ConnectionConfiguration$Builder<",
            "TB;*>;>(TB;)TB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 107
    .local p0, "builder":Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;, "TB;"
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 108
    .local v0, "context":Ljavax/net/ssl/SSLContext;
    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    new-instance v2, Lorg/jivesoftware/smack/util/TLSUtils$AcceptAllTrustManager;

    invoke-direct {v2}, Lorg/jivesoftware/smack/util/TLSUtils$AcceptAllTrustManager;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 109
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->setCustomSSLContext(Ljavax/net/ssl/SSLContext;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    .line 110
    return-object p0
.end method

.method public static disableHostnameVerificationForTlsCertificates(Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lorg/jivesoftware/smack/ConnectionConfiguration$Builder<",
            "TB;*>;>(TB;)TB;"
        }
    .end annotation

    .line 134
    .local p0, "builder":Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;, "TB;"
    sget-object v0, Lorg/jivesoftware/smack/util/TLSUtils;->DOES_NOT_VERIFY_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    .line 135
    return-object p0
.end method

.method public static getChannelBindingTlsServerEndPoint(Ljavax/net/ssl/SSLSession;)[B
    .locals 7
    .param p0, "sslSession"    # Ljavax/net/ssl/SSLSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;,
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 194
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 195
    .local v0, "peerCertificates":[Ljava/security/cert/Certificate;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    .line 196
    .local v2, "certificate":Ljava/security/cert/Certificate;
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, "certificateAlgorithm":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x1297e

    const/4 v6, 0x1

    if-eq v4, v5, :cond_2

    const v1, 0x4b35330

    if-eq v4, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v1, "SHA-1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    goto :goto_1

    :cond_2
    const-string v4, "MD5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_3

    if-eq v1, v6, :cond_3

    .line 206
    move-object v1, v3

    .local v1, "algorithm":Ljava/lang/String;
    goto :goto_2

    .line 203
    .end local v1    # "algorithm":Ljava/lang/String;
    :cond_3
    const-string v1, "SHA-256"

    .line 204
    .restart local v1    # "algorithm":Ljava/lang/String;
    nop

    .line 210
    :goto_2
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 211
    .local v4, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v5

    .line 212
    .local v5, "certificateDerEncoded":[B
    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 213
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    return-object v6
.end method

.method public static setEnabledProtocolsAndCiphers(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p0, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p1, "enabledProtocols"    # [Ljava/lang/String;
    .param p2, "enabledCiphers"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$SecurityNotPossibleException;
        }
    .end annotation

    .line 141
    const-string v0, "\' are supported."

    const-string v1, "\', but only \'"

    if-eqz p1, :cond_1

    .line 142
    new-instance v2, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 143
    .local v2, "enabledProtocolsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashSet;

    .line 144
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 145
    .local v3, "supportedProtocolsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 146
    .local v4, "protocolsIntersection":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4, v2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 147
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 156
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    new-array p1, v5, [Ljava/lang/String;

    .line 157
    invoke-interface {v4, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object p1, v5

    check-cast p1, [Ljava/lang/String;

    .line 158
    invoke-virtual {p0, p1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_0
    new-instance v5, Lorg/jivesoftware/smack/SmackException$SecurityNotPossibleException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Request to enable SSL/TLS protocols \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->collectionToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-static {v3}, Lorg/jivesoftware/smack/util/StringUtils;->collectionToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lorg/jivesoftware/smack/SmackException$SecurityNotPossibleException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 161
    .end local v2    # "enabledProtocolsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "supportedProtocolsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "protocolsIntersection":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 162
    new-instance v2, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 163
    .local v2, "enabledCiphersSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashSet;

    .line 164
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 165
    .local v3, "supportedCiphersSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 166
    .local v4, "ciphersIntersection":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4, v2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 167
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 175
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v0

    new-array p2, v0, [Ljava/lang/String;

    .line 176
    invoke-interface {v4, p2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object p2, v0

    check-cast p2, [Ljava/lang/String;

    .line 177
    invoke-virtual {p0, p2}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    goto :goto_1

    .line 168
    :cond_2
    new-instance v5, Lorg/jivesoftware/smack/SmackException$SecurityNotPossibleException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Request to enable SSL/TLS ciphers \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->collectionToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-static {v3}, Lorg/jivesoftware/smack/util/StringUtils;->collectionToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lorg/jivesoftware/smack/SmackException$SecurityNotPossibleException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 179
    .end local v2    # "enabledCiphersSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "supportedCiphersSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "ciphersIntersection":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    return-void
.end method

.method public static setSSLv3AndTLSOnly(Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lorg/jivesoftware/smack/ConnectionConfiguration$Builder<",
            "TB;*>;>(TB;)TB;"
        }
    .end annotation

    .line 88
    .local p0, "builder":Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;, "TB;"
    const-string v0, "TLSv1.2"

    const-string v1, "TLSv1.1"

    const-string v2, "TLSv1"

    const-string v3, "SSLv3"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->setEnabledSSLProtocols([Ljava/lang/String;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    .line 89
    return-object p0
.end method

.method public static setTLSOnly(Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Lorg/jivesoftware/smack/ConnectionConfiguration$Builder<",
            "TB;*>;>(TB;)TB;"
        }
    .end annotation

    .line 68
    .local p0, "builder":Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;, "TB;"
    const-string v0, "TLSv1.2"

    const-string v1, "TLSv1.1"

    const-string v2, "TLSv1"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->setEnabledSSLProtocols([Ljava/lang/String;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    .line 69
    return-object p0
.end method
