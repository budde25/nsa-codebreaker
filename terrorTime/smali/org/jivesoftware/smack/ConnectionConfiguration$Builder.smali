.class public abstract Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;
.super Ljava/lang/Object;
.source "ConnectionConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/ConnectionConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lorg/jivesoftware/smack/ConnectionConfiguration$Builder<",
        "TB;TC;>;C:",
        "Lorg/jivesoftware/smack/ConnectionConfiguration;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private allowEmptyOrNullUsername:Z

.field private authzid:Lorg/jxmpp/jid/EntityBareJid;

.field private callbackHandler:Ljavax/security/auth/callback/CallbackHandler;

.field private customSSLContext:Ljavax/net/ssl/SSLContext;

.field private customX509TrustManager:Ljavax/net/ssl/X509TrustManager;

.field private debuggerFactory:Lorg/jivesoftware/smack/debugger/SmackDebuggerFactory;

.field private dnssecMode:Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;

.field private enabledSSLCiphers:[Ljava/lang/String;

.field private enabledSSLProtocols:[Ljava/lang/String;

.field private enabledSaslMechanisms:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private host:Lorg/minidns/dnsname/DnsName;

.field private hostAddress:Ljava/net/InetAddress;

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private keystorePath:Ljava/lang/String;

.field private keystoreType:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private pkcs11Library:Ljava/lang/String;

.field private port:I

.field private proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

.field private resource:Lorg/jxmpp/jid/parts/Resourcepart;

.field private saslMechanismsSealed:Z

.field private securityMode:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

.field private sendPresence:Z

.field private socketFactory:Ljavax/net/SocketFactory;

.field private username:Ljava/lang/CharSequence;

.field private xmppServiceDomain:Lorg/jxmpp/jid/DomainBareJid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 530
    const-class v0, Lorg/jivesoftware/smack/ConnectionConfiguration;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 558
    .local p0, "this":Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;, "Lorg/jivesoftware/smack/ConnectionConfiguration$Builder<TB;TC;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    sget-object v0, Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;->ifpossible:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    iput-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->securityMode:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    .line 532
    sget-object v0, Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;->disabled:Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;

    iput-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->dnssecMode:Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;

    .line 533
    const-string v0, "javax.net.ssl.keyStore"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->keystorePath:Ljava/lang/String;

    .line 534
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->keystoreType:Ljava/lang/String;

    .line 535
    const-string v0, "pkcs11.config"

    iput-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->pkcs11Library:Ljava/lang/String;

    .line 544
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->sendPresence:Z

    .line 552
    const/16 v0, 0x1466

    iput v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->port:I

    .line 553
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->allowEmptyOrNullUsername:Z

    .line 559
    sget-boolean v0, Lorg/jivesoftware/smack/SmackConfiguration;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 560
    invoke-virtual {p0}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->enableDefaultDebugger()Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    .line 562
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;)Lorg/jxmpp/jid/EntityBareJid;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    .line 530
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->authzid:Lorg/jxmpp/jid/EntityBareJid;

    return-object v0
.end method

.method static synthetic access$100(Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    .line 530
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->username:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;)Ljavax/net/SocketFactory;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    .line 530
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;)Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    .line 530
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->dnssecMode:Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;)Ljavax/net/ssl/X509TrustManager;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    .line 530
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->customX509TrustManager:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;)Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    .line 530
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->securityMode:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    .line 530
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->keystoreType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    .line 530
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->keystorePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    .line 530
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->pkcs11Library:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;)Ljavax/net/ssl/SSLContext;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    .line 530
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->customSSLContext:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    .line 530
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->enabledSSLProtocols:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    .line 530
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->enabledSSLCiphers:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    .line 530
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->password:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;)Ljavax/net/ssl/HostnameVerifier;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    .line 530
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    .line 530
    iget-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->sendPresence:Z

    return v0
.end method

.method static synthetic access$2200(Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;)Lorg/jivesoftware/smack/debugger/SmackDebuggerFactory;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    .line 530
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->debuggerFactory:Lorg/jivesoftware/smack/debugger/SmackDebuggerFactory;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    .line 530
    iget-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->allowEmptyOrNullUsername:Z

    return v0
.end method

.method static synthetic access$2400(Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    .line 530
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->enabledSaslMechanisms:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$300(Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;)Ljavax/security/auth/callback/CallbackHandler;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    .line 530
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->callbackHandler:Ljavax/security/auth/callback/CallbackHandler;

    return-object v0
.end method

.method static synthetic access$400(Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;)Lorg/jxmpp/jid/parts/Resourcepart;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    .line 530
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->resource:Lorg/jxmpp/jid/parts/Resourcepart;

    return-object v0
.end method

.method static synthetic access$500(Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;)Lorg/jxmpp/jid/DomainBareJid;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    .line 530
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->xmppServiceDomain:Lorg/jxmpp/jid/DomainBareJid;

    return-object v0
.end method

.method static synthetic access$600(Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;)Ljava/net/InetAddress;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    .line 530
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->hostAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method static synthetic access$700(Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;)Lorg/minidns/dnsname/DnsName;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    .line 530
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->host:Lorg/minidns/dnsname/DnsName;

    return-object v0
.end method

.method static synthetic access$800(Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    .line 530
    iget v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->port:I

    return v0
.end method

.method static synthetic access$900(Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;)Lorg/jivesoftware/smack/proxy/ProxyInfo;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    .line 530
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    return-object v0
.end method

.method private throwIfEnabledSaslMechanismsSet()V
    .locals 2

    .line 953
    .local p0, "this":Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;, "Lorg/jivesoftware/smack/ConnectionConfiguration$Builder<TB;TC;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->enabledSaslMechanisms:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 956
    return-void

    .line 954
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Enabled SASL mechanisms found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addEnabledSaslMechanism(Ljava/lang/String;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;
    .locals 3
    .param p1, "saslMechanism"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 965
    .local p0, "this":Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;, "Lorg/jivesoftware/smack/ConnectionConfiguration$Builder<TB;TC;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "saslMechanism must not be null or empty"

    invoke-static {p1, v1}, Lorg/jivesoftware/smack/util/StringUtils;->requireNotNullOrEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->addEnabledSaslMechanism(Ljava/util/Collection;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addEnabledSaslMechanism(Ljava/util/Collection;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)TB;"
        }
    .end annotation

    .line 978
    .local p0, "this":Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;, "Lorg/jivesoftware/smack/ConnectionConfiguration$Builder<TB;TC;>;"
    .local p1, "saslMechanisms":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->saslMechanismsSealed:Z

    if-nez v0, :cond_4

    .line 981
    const-string v0, "saslMechanisms"

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/CollectionUtil;->requireNotEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 982
    invoke-static {}, Lorg/jivesoftware/smack/SASLAuthentication;->getBlacklistedSASLMechanisms()Ljava/util/Set;

    move-result-object v0

    .line 983
    .local v0, "blacklistedMechanisms":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 984
    .local v2, "mechanism":Ljava/lang/String;
    invoke-static {v2}, Lorg/jivesoftware/smack/SASLAuthentication;->isSaslMechanismRegistered(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 987
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 990
    .end local v2    # "mechanism":Ljava/lang/String;
    goto :goto_0

    .line 988
    .restart local v2    # "mechanism":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SALS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is blacklisted."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 985
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SASL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not available. Consider registering it with Smack"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 991
    .end local v2    # "mechanism":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->enabledSaslMechanisms:Ljava/util/Set;

    if-nez v1, :cond_3

    .line 992
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->enabledSaslMechanisms:Ljava/util/Set;

    .line 994
    :cond_3
    iget-object v1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->enabledSaslMechanisms:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 995
    invoke-virtual {p0}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->getThis()Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    move-result-object v1

    return-object v1

    .line 979
    .end local v0    # "blacklistedMechanisms":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The enabled SASL mechanisms are sealed, you can not add new ones"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public allowEmptyOrNullUsernames()Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 907
    .local p0, "this":Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;, "Lorg/jivesoftware/smack/ConnectionConfiguration$Builder<TB;TC;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->allowEmptyOrNullUsername:Z

    .line 908
    invoke-virtual {p0}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->getThis()Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public abstract build()Lorg/jivesoftware/smack/ConnectionConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method public enableDefaultDebugger()Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 859
    .local p0, "this":Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;, "Lorg/jivesoftware/smack/ConnectionConfiguration$Builder<TB;TC;>;"
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getDefaultSmackDebuggerFactory()Lorg/jivesoftware/smack/debugger/SmackDebuggerFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->debuggerFactory:Lorg/jivesoftware/smack/debugger/SmackDebuggerFactory;

    .line 860
    nop

    .line 861
    invoke-virtual {p0}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->getThis()Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getThis()Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public performSaslAnonymousAuthentication()Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 918
    .local p0, "this":Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;, "Lorg/jivesoftware/smack/ConnectionConfiguration$Builder<TB;TC;>;"
    const-string v0, "ANONYMOUS"

    invoke-static {v0}, Lorg/jivesoftware/smack/SASLAuthentication;->isSaslMechanismRegistered(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 921
    invoke-direct {p0}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->throwIfEnabledSaslMechanismsSet()V

    .line 923
    invoke-virtual {p0}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->allowEmptyOrNullUsernames()Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    .line 924
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->addEnabledSaslMechanism(Ljava/lang/String;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    .line 925
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->saslMechanismsSealed:Z

    .line 926
    invoke-virtual {p0}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->getThis()Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0

    .line 919
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SASL ANONYMOUS is not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public performSaslExternalAuthentication(Ljavax/net/ssl/SSLContext;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;
    .locals 2
    .param p1, "sslContext"    # Ljavax/net/ssl/SSLContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLContext;",
            ")TB;"
        }
    .end annotation

    .line 939
    .local p0, "this":Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;, "Lorg/jivesoftware/smack/ConnectionConfiguration$Builder<TB;TC;>;"
    const-string v0, "EXTERNAL"

    invoke-static {v0}, Lorg/jivesoftware/smack/SASLAuthentication;->isSaslMechanismRegistered(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 942
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->setCustomSSLContext(Ljavax/net/ssl/SSLContext;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    .line 943
    invoke-direct {p0}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->throwIfEnabledSaslMechanismsSet()V

    .line 945
    invoke-virtual {p0}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->allowEmptyOrNullUsernames()Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    .line 946
    sget-object v1, Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;->required:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->setSecurityMode(Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    .line 947
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->addEnabledSaslMechanism(Ljava/lang/String;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    .line 948
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->saslMechanismsSealed:Z

    .line 949
    invoke-virtual {p0}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->getThis()Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0

    .line 940
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SASL EXTERNAL is not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAuthzid(Lorg/jxmpp/jid/EntityBareJid;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;
    .locals 1
    .param p1, "authzid"    # Lorg/jxmpp/jid/EntityBareJid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jxmpp/jid/EntityBareJid;",
            ")TB;"
        }
    .end annotation

    .line 1013
    .local p0, "this":Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;, "Lorg/jivesoftware/smack/ConnectionConfiguration$Builder<TB;TC;>;"
    iput-object p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->authzid:Lorg/jxmpp/jid/EntityBareJid;

    .line 1014
    invoke-virtual {p0}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->getThis()Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCallbackHandler(Ljavax/security/auth/callback/CallbackHandler;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;
    .locals 1
    .param p1, "callbackHandler"    # Ljavax/security/auth/callback/CallbackHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/security/auth/callback/CallbackHandler;",
            ")TB;"
        }
    .end annotation

    .line 733
    .local p0, "this":Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;, "Lorg/jivesoftware/smack/ConnectionConfiguration$Builder<TB;TC;>;"
    iput-object p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->callbackHandler:Ljavax/security/auth/callback/CallbackHandler;

    .line 734
    invoke-virtual {p0}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->getThis()Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCustomSSLContext(Ljavax/net/ssl/SSLContext;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;
    .locals 1
    .param p1, "context"    # Ljavax/net/ssl/SSLContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLContext;",
            ")TB;"
        }
    .end annotation

    .line 806
    .local p0, "this":Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;, "Lorg/jivesoftware/smack/ConnectionConfiguration$Builder<TB;TC;>;"
    const-string v0, "The SSLContext must not be null"

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLContext;

    iput-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->customSSLContext:Ljavax/net/ssl/SSLContext;

    .line 807
    invoke-virtual {p0}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->getThis()Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCustomX509TrustManager(Ljavax/net/ssl/X509TrustManager;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;
    .locals 1
    .param p1, "x509TrustManager"    # Ljavax/net/ssl/X509TrustManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/X509TrustManager;",
            ")TB;"
        }
    .end annotation

    .line 743
    .local p0, "this":Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;, "Lorg/jivesoftware/smack/ConnectionConfiguration$Builder<TB;TC;>;"
    iput-object p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->customX509TrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 744
    invoke-virtual {p0}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->getThis()Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDebuggerFactory(Lorg/jivesoftware/smack/debugger/SmackDebuggerFactory;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;
    .locals 1
    .param p1, "debuggerFactory"    # Lorg/jivesoftware/smack/debugger/SmackDebuggerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/debugger/SmackDebuggerFactory;",
            ")TB;"
        }
    .end annotation

    .line 871
    .local p0, "this":Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;, "Lorg/jivesoftware/smack/ConnectionConfiguration$Builder<TB;TC;>;"
    iput-object p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->debuggerFactory:Lorg/jivesoftware/smack/debugger/SmackDebuggerFactory;

    .line 872
    invoke-virtual {p0}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->getThis()Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDnssecMode(Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;
    .locals 1
    .param p1, "dnssecMode"    # Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;",
            ")TB;"
        }
    .end annotation

    .line 738
    .local p0, "this":Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;, "Lorg/jivesoftware/smack/ConnectionConfiguration$Builder<TB;TC;>;"
    const-string v0, "DNSSEC mode must not be null"

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;

    iput-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->dnssecMode:Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;

    .line 739
    invoke-virtual {p0}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->getThis()Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setEnabledSSLCiphers([Ljava/lang/String;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;
    .locals 1
    .param p1, "enabledSSLCiphers"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 828
    .local p0, "this":Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;, "Lorg/jivesoftware/smack/ConnectionConfiguration$Builder<TB;TC;>;"
    iput-object p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->enabledSSLCiphers:[Ljava/lang/String;

    .line 829
    invoke-virtual {p0}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->getThis()Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setEnabledSSLProtocols([Ljava/lang/String;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;
    .locals 1
    .param p1, "enabledSSLProtocols"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 817
    .local p0, "this":Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;, "Lorg/jivesoftware/smack/ConnectionConfiguration$Builder<TB;TC;>;"
    iput-object p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->enabledSSLProtocols:[Ljava/lang/String;

    .line 818
    invoke-virtual {p0}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->getThis()Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setHost(Ljava/lang/String;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 669
    .local p0, "this":Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;, "Lorg/jivesoftware/smack/ConnectionConfiguration$Builder<TB;TC;>;"
    invoke-static {p1}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    move-result-object v0

    .line 670
    .local v0, "hostDnsName":Lorg/minidns/dnsname/DnsName;
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->setHost(Lorg/minidns/dnsname/DnsName;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    move-result-object v1

    return-object v1
.end method

.method public setHost(Lorg/minidns/dnsname/DnsName;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;
    .locals 1
    .param p1, "host"    # Lorg/minidns/dnsname/DnsName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsname/DnsName;",
            ")TB;"
        }
    .end annotation

    .line 682
    .local p0, "this":Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;, "Lorg/jivesoftware/smack/ConnectionConfiguration$Builder<TB;TC;>;"
    iput-object p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->host:Lorg/minidns/dnsname/DnsName;

    .line 683
    invoke-virtual {p0}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->getThis()Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setHostAddress(Ljava/net/InetAddress;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;
    .locals 1
    .param p1, "address"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            ")TB;"
        }
    .end annotation

    .line 656
    .local p0, "this":Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;, "Lorg/jivesoftware/smack/ConnectionConfiguration$Builder<TB;TC;>;"
    iput-object p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->hostAddress:Ljava/net/InetAddress;

    .line 657
    invoke-virtual {p0}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->getThis()Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setHostAddressByNameOrIp(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;
    .locals 3
    .param p1, "fqdnOrIp"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TB;"
        }
    .end annotation

    .line 696
    .local p0, "this":Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;, "Lorg/jivesoftware/smack/ConnectionConfiguration$Builder<TB;TC;>;"
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 697
    .local v0, "fqdnOrIpString":Ljava/lang/String;
    invoke-static {p1}, Lorg/minidns/util/InetAddressUtil;->isIpAddress(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 700
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 705
    .local v1, "hostInetAddress":Ljava/net/InetAddress;
    nop

    .line 706
    invoke-virtual {p0, v1}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->setHostAddress(Ljava/net/InetAddress;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    .line 707
    .end local v1    # "hostInetAddress":Ljava/net/InetAddress;
    goto :goto_0

    .line 702
    :catch_0
    move-exception v1

    .line 704
    .local v1, "e":Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 708
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :cond_0
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->setHost(Ljava/lang/String;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    .line 710
    :goto_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->getThis()Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    move-result-object v1

    return-object v1
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;
    .locals 1
    .param p1, "verifier"    # Ljavax/net/ssl/HostnameVerifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/HostnameVerifier;",
            ")TB;"
        }
    .end annotation

    .line 840
    .local p0, "this":Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;, "Lorg/jivesoftware/smack/ConnectionConfiguration$Builder<TB;TC;>;"
    iput-object p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 841
    invoke-virtual {p0}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->getThis()Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setKeystorePath(Ljava/lang/String;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;
    .locals 1
    .param p1, "keystorePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 768
    .local p0, "this":Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;, "Lorg/jivesoftware/smack/ConnectionConfiguration$Builder<TB;TC;>;"
    iput-object p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->keystorePath:Ljava/lang/String;

    .line 769
    invoke-virtual {p0}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->getThis()Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setKeystoreType(Ljava/lang/String;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;
    .locals 1
    .param p1, "keystoreType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 779
    .local p0, "this":Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;, "Lorg/jivesoftware/smack/ConnectionConfiguration$Builder<TB;TC;>;"
    iput-object p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->keystoreType:Ljava/lang/String;

    .line 780
    invoke-virtual {p0}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->getThis()Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPKCS11Library(Ljava/lang/String;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;
    .locals 1
    .param p1, "pkcs11Library"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 791
    .local p0, "this":Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;, "Lorg/jivesoftware/smack/ConnectionConfiguration$Builder<TB;TC;>;"
    iput-object p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->pkcs11Library:Ljava/lang/String;

    .line 792
    invoke-virtual {p0}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->getThis()Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPort(I)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;
    .locals 3
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 714
    .local p0, "this":Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;, "Lorg/jivesoftware/smack/ConnectionConfiguration$Builder<TB;TC;>;"
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    .line 718
    iput p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->port:I

    .line 719
    invoke-virtual {p0}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->getThis()Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0

    .line 715
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Port must be a 16-bit unsigned integer (i.e. between 0-65535. Port was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProxyInfo(Lorg/jivesoftware/smack/proxy/ProxyInfo;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;
    .locals 1
    .param p1, "proxyInfo"    # Lorg/jivesoftware/smack/proxy/ProxyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/proxy/ProxyInfo;",
            ")TB;"
        }
    .end annotation

    .line 894
    .local p0, "this":Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;, "Lorg/jivesoftware/smack/ConnectionConfiguration$Builder<TB;TC;>;"
    iput-object p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    .line 895
    invoke-virtual {p0}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->getThis()Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setResource(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;
    .locals 1
    .param p1, "resource"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 643
    .local p0, "this":Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;, "Lorg/jivesoftware/smack/ConnectionConfiguration$Builder<TB;TC;>;"
    const-string v0, "resource must not be null"

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 644
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jxmpp/jid/parts/Resourcepart;->from(Ljava/lang/String;)Lorg/jxmpp/jid/parts/Resourcepart;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->setResource(Lorg/jxmpp/jid/parts/Resourcepart;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setResource(Lorg/jxmpp/jid/parts/Resourcepart;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;
    .locals 1
    .param p1, "resource"    # Lorg/jxmpp/jid/parts/Resourcepart;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jxmpp/jid/parts/Resourcepart;",
            ")TB;"
        }
    .end annotation

    .line 630
    .local p0, "this":Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;, "Lorg/jivesoftware/smack/ConnectionConfiguration$Builder<TB;TC;>;"
    iput-object p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->resource:Lorg/jxmpp/jid/parts/Resourcepart;

    .line 631
    invoke-virtual {p0}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->getThis()Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setSecurityMode(Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;
    .locals 1
    .param p1, "securityMode"    # Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;",
            ")TB;"
        }
    .end annotation

    .line 755
    .local p0, "this":Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;, "Lorg/jivesoftware/smack/ConnectionConfiguration$Builder<TB;TC;>;"
    iput-object p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->securityMode:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    .line 756
    invoke-virtual {p0}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->getThis()Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setSendPresence(Z)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;
    .locals 1
    .param p1, "sendPresence"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 854
    .local p0, "this":Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;, "Lorg/jivesoftware/smack/ConnectionConfiguration$Builder<TB;TC;>;"
    iput-boolean p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->sendPresence:Z

    .line 855
    invoke-virtual {p0}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->getThis()Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setServiceName(Lorg/jxmpp/jid/DomainBareJid;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;
    .locals 1
    .param p1, "serviceName"    # Lorg/jxmpp/jid/DomainBareJid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jxmpp/jid/DomainBareJid;",
            ")TB;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 590
    .local p0, "this":Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;, "Lorg/jivesoftware/smack/ConnectionConfiguration$Builder<TB;TC;>;"
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->setXmppDomain(Lorg/jxmpp/jid/DomainBareJid;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setSocketFactory(Ljavax/net/SocketFactory;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;
    .locals 1
    .param p1, "socketFactory"    # Ljavax/net/SocketFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/SocketFactory;",
            ")TB;"
        }
    .end annotation

    .line 883
    .local p0, "this":Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;, "Lorg/jivesoftware/smack/ConnectionConfiguration$Builder<TB;TC;>;"
    iput-object p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->socketFactory:Ljavax/net/SocketFactory;

    .line 884
    invoke-virtual {p0}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->getThis()Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setUsernameAndPassword(Ljava/lang/CharSequence;Ljava/lang/String;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;
    .locals 1
    .param p1, "username"    # Ljava/lang/CharSequence;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 576
    .local p0, "this":Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;, "Lorg/jivesoftware/smack/ConnectionConfiguration$Builder<TB;TC;>;"
    iput-object p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->username:Ljava/lang/CharSequence;

    .line 577
    iput-object p2, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->password:Ljava/lang/String;

    .line 578
    invoke-virtual {p0}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->getThis()Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setXmppDomain(Ljava/lang/String;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;
    .locals 1
    .param p1, "xmppServiceDomain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 612
    .local p0, "this":Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;, "Lorg/jivesoftware/smack/ConnectionConfiguration$Builder<TB;TC;>;"
    invoke-static {p1}, Lorg/jxmpp/jid/impl/JidCreate;->domainBareFrom(Ljava/lang/String;)Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->xmppServiceDomain:Lorg/jxmpp/jid/DomainBareJid;

    .line 613
    invoke-virtual {p0}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->getThis()Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setXmppDomain(Lorg/jxmpp/jid/DomainBareJid;)Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;
    .locals 1
    .param p1, "xmppDomain"    # Lorg/jxmpp/jid/DomainBareJid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jxmpp/jid/DomainBareJid;",
            ")TB;"
        }
    .end annotation

    .line 600
    .local p0, "this":Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;, "Lorg/jivesoftware/smack/ConnectionConfiguration$Builder<TB;TC;>;"
    iput-object p1, p0, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->xmppServiceDomain:Lorg/jxmpp/jid/DomainBareJid;

    .line 601
    invoke-virtual {p0}, Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;->getThis()Lorg/jivesoftware/smack/ConnectionConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method
