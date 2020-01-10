.class public final Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;
.super Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager;
.source "JingleS5BTransportManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager<",
        "Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCES:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static useExternalCandidates:Z

.field private static useLocalCandidates:Z


# instance fields
.field private availableStreamHosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;",
            ">;"
        }
    .end annotation
.end field

.field private localStreamHosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;->LOGGER:Ljava/util/logging/Logger;

    .line 53
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;->INSTANCES:Ljava/util/WeakHashMap;

    .line 58
    const/4 v0, 0x1

    sput-boolean v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;->useLocalCandidates:Z

    .line 59
    sput-boolean v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;->useExternalCandidates:Z

    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 2
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 62
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;->localStreamHosts:Ljava/util/List;

    .line 56
    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;->availableStreamHosts:Ljava/util/List;

    .line 63
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;->getNamespace()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/provider/JingleS5BTransportProvider;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/provider/JingleS5BTransportProvider;-><init>()V

    invoke-static {v0, v1}, Lorg/jivesoftware/smackx/jingle/provider/JingleContentProviderManager;->addJingleContentTransportProvider(Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/provider/JingleContentTransportProvider;)Lorg/jivesoftware/smackx/jingle/provider/JingleContentTransportProvider;

    .line 64
    return-void
.end method

.method public static declared-synchronized getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    const-class v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;

    monitor-enter v0

    .line 67
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;->INSTANCES:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;

    .line 68
    .local v1, "manager":Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;
    if-nez v1, :cond_0

    .line 69
    new-instance v2, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    move-object v1, v2

    .line 70
    sget-object v2, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;->INSTANCES:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_0
    monitor-exit v0

    return-object v1

    .line 66
    .end local v1    # "manager":Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;
    .end local p0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isUseExternalCandidates()Z
    .locals 1

    .line 232
    sget-boolean v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;->useExternalCandidates:Z

    return v0
.end method

.method public static isUseLocalCandidates()Z
    .locals 1

    .line 228
    sget-boolean v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;->useLocalCandidates:Z

    return v0
.end method

.method private queryAvailableStreamHosts()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->getBytestreamManager(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;

    move-result-object v0

    .line 87
    .local v0, "s5m":Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->determineProxies()Ljava/util/List;

    move-result-object v1

    .line 88
    .local v1, "proxies":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/jid/Jid;>;"
    invoke-virtual {p0, v1}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;->determineStreamHostInfo(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private queryLocalStreamHosts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;",
            ">;"
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->getBytestreamManager(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->getLocalStreamHost()Ljava/util/List;

    move-result-object v0

    .line 92
    return-object v0
.end method

.method public static setUseExternalCandidates(Z)V
    .locals 0
    .param p0, "externalCandidates"    # Z

    .line 224
    sput-boolean p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;->useExternalCandidates:Z

    .line 225
    return-void
.end method

.method public static setUseLocalCandidates(Z)V
    .locals 0
    .param p0, "localCandidates"    # Z

    .line 220
    sput-boolean p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;->useLocalCandidates:Z

    .line 221
    return-void
.end method


# virtual methods
.method public authenticated(Lorg/jivesoftware/smack/XMPPConnection;Z)V
    .locals 5
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p2, "resumed"    # Z

    .line 135
    if-nez p2, :cond_1

    .line 136
    :try_start_0
    invoke-static {}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->getSocks5Proxy()Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;

    move-result-object v0

    .line 137
    .local v0, "socks5Proxy":Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->start()V

    .line 140
    :cond_0
    invoke-direct {p0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;->queryLocalStreamHosts()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;->localStreamHosts:Ljava/util/List;

    .line 141
    invoke-direct {p0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;->queryAvailableStreamHosts()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;->availableStreamHosts:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/jivesoftware/smack/SmackException$NoResponseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/jivesoftware/smack/SmackException$NotConnectedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/jivesoftware/smack/XMPPException$XMPPErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v0    # "socks5Proxy":Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;
    goto :goto_1

    .line 142
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    sget-object v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not query available StreamHosts: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public createCandidateActivated(Lorg/jxmpp/jid/FullJid;Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/Jingle;
    .locals 5
    .param p1, "remote"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "initiator"    # Lorg/jxmpp/jid/FullJid;
    .param p3, "sessionId"    # Ljava/lang/String;
    .param p4, "senders"    # Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;
    .param p5, "creator"    # Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "streamId"    # Ljava/lang/String;
    .param p8, "candidateId"    # Ljava/lang/String;

    .line 204
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->getBuilder()Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    move-result-object v0

    .line 205
    .local v0, "jb":Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->setInitiator(Lorg/jxmpp/jid/FullJid;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->setSessionId(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->transport_info:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->setAction(Lorg/jivesoftware/smackx/jingle/element/JingleAction;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    .line 207
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/element/JingleContent;->getBuilder()Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    move-result-object v1

    .line 208
    .local v1, "cb":Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;
    invoke-virtual {v1, p6}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->setName(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    move-result-object v2

    invoke-virtual {v2, p5}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->setCreator(Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    move-result-object v2

    invoke-virtual {v2, p4}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->setSenders(Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    .line 210
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;->getBuilder()Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;

    move-result-object v2

    .line 211
    .local v2, "tb":Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;
    invoke-virtual {v2, p7}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;->setStreamId(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;

    move-result-object v3

    invoke-virtual {v3, p8}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;->setCandidateActivated(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;

    .line 213
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;->build()Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->setTransport(Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->build()Lorg/jivesoftware/smackx/jingle/element/JingleContent;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->addJingleContent(Lorg/jivesoftware/smackx/jingle/element/JingleContent;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->build()Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v3

    .line 214
    .local v3, "jingle":Lorg/jivesoftware/smackx/jingle/element/Jingle;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v4

    invoke-interface {v4}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v4

    invoke-interface {v4}, Lorg/jxmpp/jid/EntityFullJid;->asFullJidOrThrow()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->setFrom(Lorg/jxmpp/jid/Jid;)V

    .line 215
    invoke-virtual {v3, p1}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 216
    return-object v3
.end method

.method public createCandidateError(Lorg/jxmpp/jid/FullJid;Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/Jingle;
    .locals 5
    .param p1, "remote"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "initiator"    # Lorg/jxmpp/jid/FullJid;
    .param p3, "sessionId"    # Ljava/lang/String;
    .param p4, "senders"    # Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;
    .param p5, "creator"    # Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "streamId"    # Ljava/lang/String;

    .line 167
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->getBuilder()Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    move-result-object v0

    .line 168
    .local v0, "jb":Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;
    invoke-virtual {v0, p3}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->setSessionId(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->setInitiator(Lorg/jxmpp/jid/FullJid;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->transport_info:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->setAction(Lorg/jivesoftware/smackx/jingle/element/JingleAction;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    .line 170
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/element/JingleContent;->getBuilder()Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    move-result-object v1

    .line 171
    .local v1, "cb":Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;
    invoke-virtual {v1, p6}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->setName(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    move-result-object v2

    invoke-virtual {v2, p5}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->setCreator(Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    move-result-object v2

    invoke-virtual {v2, p4}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->setSenders(Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    .line 173
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;->getBuilder()Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;

    move-result-object v2

    .line 174
    .local v2, "tb":Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;->setCandidateError()Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;

    move-result-object v3

    invoke-virtual {v3, p7}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;->setStreamId(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;

    .line 176
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;->build()Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->setTransport(Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->build()Lorg/jivesoftware/smackx/jingle/element/JingleContent;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->addJingleContent(Lorg/jivesoftware/smackx/jingle/element/JingleContent;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->build()Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v3

    .line 177
    .local v3, "jingle":Lorg/jivesoftware/smackx/jingle/element/Jingle;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v4

    invoke-interface {v4}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v4

    invoke-interface {v4}, Lorg/jxmpp/jid/EntityFullJid;->asFullJidOrThrow()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->setFrom(Lorg/jxmpp/jid/Jid;)V

    .line 178
    invoke-virtual {v3, p1}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 180
    return-object v3
.end method

.method public createCandidateUsed(Lorg/jxmpp/jid/FullJid;Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/Jingle;
    .locals 5
    .param p1, "recipient"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "initiator"    # Lorg/jxmpp/jid/FullJid;
    .param p3, "sessionId"    # Ljava/lang/String;
    .param p4, "contentSenders"    # Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;
    .param p5, "contentCreator"    # Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;
    .param p6, "contentName"    # Ljava/lang/String;
    .param p7, "streamId"    # Ljava/lang/String;
    .param p8, "candidateId"    # Ljava/lang/String;

    .line 150
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->getBuilder()Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    move-result-object v0

    .line 151
    .local v0, "jb":Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;
    invoke-virtual {v0, p3}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->setSessionId(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->setInitiator(Lorg/jxmpp/jid/FullJid;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->transport_info:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->setAction(Lorg/jivesoftware/smackx/jingle/element/JingleAction;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    .line 153
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/element/JingleContent;->getBuilder()Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    move-result-object v1

    .line 154
    .local v1, "cb":Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;
    invoke-virtual {v1, p6}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->setName(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    move-result-object v2

    invoke-virtual {v2, p5}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->setCreator(Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    move-result-object v2

    invoke-virtual {v2, p4}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->setSenders(Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    .line 156
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;->getBuilder()Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;

    move-result-object v2

    .line 157
    .local v2, "tb":Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;
    invoke-virtual {v2, p8}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;->setCandidateUsed(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;

    move-result-object v3

    invoke-virtual {v3, p7}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;->setStreamId(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;

    .line 159
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;->build()Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->setTransport(Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->build()Lorg/jivesoftware/smackx/jingle/element/JingleContent;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->addJingleContent(Lorg/jivesoftware/smackx/jingle/element/JingleContent;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->build()Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v3

    .line 160
    .local v3, "jingle":Lorg/jivesoftware/smackx/jingle/element/Jingle;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v4

    invoke-interface {v4}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v4

    invoke-interface {v4}, Lorg/jxmpp/jid/EntityFullJid;->asFullJidOrThrow()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->setFrom(Lorg/jxmpp/jid/Jid;)V

    .line 161
    invoke-virtual {v3, p1}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 163
    return-object v3
.end method

.method public createProxyError(Lorg/jxmpp/jid/FullJid;Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/Jingle;
    .locals 5
    .param p1, "remote"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "initiator"    # Lorg/jxmpp/jid/FullJid;
    .param p3, "sessionId"    # Ljava/lang/String;
    .param p4, "senders"    # Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;
    .param p5, "creator"    # Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "streamId"    # Ljava/lang/String;

    .line 186
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->getBuilder()Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    move-result-object v0

    .line 187
    .local v0, "jb":Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;
    invoke-virtual {v0, p3}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->setSessionId(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->transport_info:Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->setAction(Lorg/jivesoftware/smackx/jingle/element/JingleAction;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->setInitiator(Lorg/jxmpp/jid/FullJid;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    .line 189
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/element/JingleContent;->getBuilder()Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    move-result-object v1

    .line 190
    .local v1, "cb":Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;
    invoke-virtual {v1, p4}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->setSenders(Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    move-result-object v2

    invoke-virtual {v2, p5}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->setCreator(Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    move-result-object v2

    invoke-virtual {v2, p6}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->setName(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    .line 192
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;->getBuilder()Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;

    move-result-object v2

    .line 193
    .local v2, "tb":Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;
    invoke-virtual {v2, p3}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;->setStreamId(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;->setProxyError()Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;

    move-result-object v3

    invoke-virtual {v3, p7}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;->setStreamId(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;

    .line 195
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport$Builder;->build()Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->setTransport(Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->build()Lorg/jivesoftware/smackx/jingle/element/JingleContent;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->addJingleContent(Lorg/jivesoftware/smackx/jingle/element/JingleContent;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->build()Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v3

    .line 196
    .local v3, "jingle":Lorg/jivesoftware/smackx/jingle/element/Jingle;
    invoke-virtual {v3, p1}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 197
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v4

    invoke-interface {v4}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v4

    invoke-interface {v4}, Lorg/jxmpp/jid/EntityFullJid;->asFullJidOrThrow()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->setFrom(Lorg/jxmpp/jid/Jid;)V

    .line 198
    return-object v3
.end method

.method public determineStreamHostInfo(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jxmpp/jid/Jid;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;",
            ">;"
        }
    .end annotation

    .line 111
    .local p1, "proxies":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/jid/Jid;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 112
    .local v0, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v1, "streamHosts":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 115
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jxmpp/jid/Jid;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jxmpp/jid/Jid;

    .line 117
    .local v3, "proxy":Lorg/jxmpp/jid/Jid;
    new-instance v4, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;-><init>()V

    .line 118
    .local v4, "request":Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;
    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->get:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 119
    invoke-virtual {v4, v3}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 121
    :try_start_0
    invoke-interface {v0, v4}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v5

    check-cast v5, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    .line 122
    .local v5, "response":Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->getStreamHosts()Ljava/util/List;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    nop

    .end local v5    # "response":Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;
    goto :goto_1

    .line 124
    :catch_0
    move-exception v5

    .line 125
    .local v5, "e":Ljava/lang/Exception;
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 127
    .end local v3    # "proxy":Lorg/jxmpp/jid/Jid;
    .end local v4    # "request":Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 129
    :cond_0
    return-object v1
.end method

.method public getAvailableStreamHosts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;->availableStreamHosts:Ljava/util/List;

    if-nez v0, :cond_0

    .line 98
    invoke-direct {p0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;->queryAvailableStreamHosts()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;->availableStreamHosts:Ljava/util/List;

    .line 100
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;->availableStreamHosts:Ljava/util/List;

    return-object v0
.end method

.method public getLocalStreamHosts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;->localStreamHosts:Ljava/util/List;

    if-nez v0, :cond_0

    .line 105
    invoke-direct {p0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;->queryLocalStreamHosts()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;->localStreamHosts:Ljava/util/List;

    .line 107
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;->localStreamHosts:Ljava/util/List;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 77
    const-string v0, "urn:xmpp:jingle:transports:s5b:1"

    return-object v0
.end method

.method public transportSession(Lorg/jivesoftware/smackx/jingle/JingleSession;)Lorg/jivesoftware/smackx/jingle/transports/JingleTransportSession;
    .locals 1
    .param p1, "jingleSession"    # Lorg/jivesoftware/smackx/jingle/JingleSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smackx/jingle/JingleSession;",
            ")",
            "Lorg/jivesoftware/smackx/jingle/transports/JingleTransportSession<",
            "Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransport;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportSession;-><init>(Lorg/jivesoftware/smackx/jingle/JingleSession;)V

    return-object v0
.end method
