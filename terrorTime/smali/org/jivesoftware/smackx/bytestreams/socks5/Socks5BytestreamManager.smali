.class public final Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;
.super Lorg/jivesoftware/smack/Manager;
.source "Socks5BytestreamManager.java"

# interfaces
.implements Lorg/jivesoftware/smackx/bytestreams/BytestreamManager;


# static fields
.field private static final SESSION_ID_PREFIX:Ljava/lang/String; = "js5_"

.field private static final managers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final randomGenerator:Ljava/util/Random;


# instance fields
.field private final allRequestListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;",
            ">;"
        }
    .end annotation
.end field

.field private final ignoredBytestreamRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final initiationListener:Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener;

.field private lastWorkingProxy:Lorg/jxmpp/jid/Jid;

.field private final proxyBlacklist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jxmpp/jid/Jid;",
            ">;"
        }
    .end annotation
.end field

.field private proxyConnectionTimeout:I

.field private proxyPrioritizationEnabled:Z

.field private targetResponseTimeout:I

.field private final userListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jxmpp/jid/Jid;",
            "Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    new-instance v0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager$1;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/XMPPConnectionRegistry;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 116
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->randomGenerator:Ljava/util/Random;

    .line 119
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->managers:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 1
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 185
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Manager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 125
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->userListeners:Ljava/util/Map;

    .line 131
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->allRequestListeners:Ljava/util/List;

    .line 137
    const/16 v0, 0x2710

    iput v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->targetResponseTimeout:I

    .line 140
    iput v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->proxyConnectionTimeout:I

    .line 143
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->proxyBlacklist:Ljava/util/Set;

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->proxyPrioritizationEnabled:Z

    .line 155
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->ignoredBytestreamRequests:Ljava/util/List;

    .line 186
    new-instance v0, Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener;-><init>(Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->initiationListener:Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener;

    .line 187
    invoke-direct {p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->activate()V

    .line 188
    return-void
.end method

.method private activate()V
    .locals 2

    .line 713
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->initiationListener:Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener;

    invoke-interface {v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->registerIQRequestHandler(Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;)Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;

    .line 716
    invoke-direct {p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->enableService()V

    .line 717
    return-void
.end method

.method private static createBytestreamInitiation(Ljava/lang/String;Lorg/jxmpp/jid/Jid;Ljava/util/List;)Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;
    .locals 3
    .param p0, "sessionID"    # Ljava/lang/String;
    .param p1, "targetJID"    # Lorg/jxmpp/jid/Jid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jxmpp/jid/Jid;",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;",
            ">;)",
            "Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;"
        }
    .end annotation

    .line 677
    .local p2, "streamHosts":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;>;"
    new-instance v0, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;-><init>(Ljava/lang/String;)V

    .line 680
    .local v0, "initiation":Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;

    .line 681
    .local v2, "streamHost":Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;
    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->addStreamHost(Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;)V

    .line 682
    .end local v2    # "streamHost":Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;
    goto :goto_0

    .line 684
    :cond_0
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 685
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 687
    return-object v0
.end method

.method private static createStreamHostRequest(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;
    .locals 2
    .param p0, "proxy"    # Lorg/jxmpp/jid/Jid;

    .line 621
    new-instance v0, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;-><init>()V

    .line 622
    .local v0, "request":Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->get:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 623
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 624
    return-object v0
.end method

.method private determineStreamHostInfos(Ljava/util/List;)Ljava/util/List;
    .locals 8
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

    .line 588
    .local p1, "proxies":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/jid/Jid;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 589
    .local v0, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 592
    .local v1, "streamHosts":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->getLocalStreamHost()Ljava/util/List;

    move-result-object v2

    .line 593
    .local v2, "localProxies":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;>;"
    if-eqz v2, :cond_0

    .line 594
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 598
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jxmpp/jid/Jid;

    .line 599
    .local v4, "proxy":Lorg/jxmpp/jid/Jid;
    invoke-static {v4}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->createStreamHostRequest(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    move-result-object v5

    .line 601
    .local v5, "streamHostRequest":Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;
    :try_start_0
    invoke-interface {v0, v5}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v6

    .line 602
    invoke-virtual {v6}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v6

    check-cast v6, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    .line 603
    .local v6, "response":Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;
    invoke-virtual {v6}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->getStreamHosts()Ljava/util/List;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    nop

    .end local v6    # "response":Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;
    goto :goto_1

    .line 605
    :catch_0
    move-exception v6

    .line 607
    .local v6, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->proxyBlacklist:Ljava/util/Set;

    invoke-interface {v7, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 609
    .end local v4    # "proxy":Lorg/jxmpp/jid/Jid;
    .end local v5    # "streamHostRequest":Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 611
    :cond_1
    return-object v1
.end method

.method private enableService()V
    .locals 2

    .line 723
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    .line 724
    .local v0, "manager":Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    const-string v1, "http://jabber.org/protocol/bytestreams"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    .line 725
    return-void
.end method

.method public static declared-synchronized getBytestreamManager(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    const-class v0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;

    monitor-enter v0

    .line 168
    if-nez p0, :cond_0

    .line 169
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 171
    :cond_0
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->managers:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;

    .line 172
    .local v1, "manager":Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;
    if-nez v1, :cond_1

    .line 173
    new-instance v2, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    move-object v1, v2

    .line 174
    sget-object v2, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->managers:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :cond_1
    monitor-exit v0

    return-object v1

    .line 167
    .end local v1    # "manager":Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;
    .end local p0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getNextSessionID()Ljava/lang/String;
    .locals 3

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 734
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, "js5_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    sget-object v1, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->randomGenerator:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 736
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private supportsSocks5(Lorg/jxmpp/jid/Jid;)Z
    .locals 2
    .param p1, "targetJID"    # Lorg/jxmpp/jid/Jid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 525
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    const-string v1, "http://jabber.org/protocol/bytestreams"

    invoke-virtual {v0, p1, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->supportsFeature(Lorg/jxmpp/jid/Jid;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addIncomingBytestreamListener(Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;

    .line 206
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->allRequestListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    return-void
.end method

.method public addIncomingBytestreamListener(Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;Lorg/jxmpp/jid/Jid;)V
    .locals 1
    .param p1, "listener"    # Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;
    .param p2, "initiatorJID"    # Lorg/jxmpp/jid/Jid;

    .line 240
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->userListeners:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    return-void
.end method

.method public determineProxies()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jxmpp/jid/Jid;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 539
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 540
    .local v0, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    invoke-static {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v1

    .line 542
    .local v1, "serviceDiscoveryManager":Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 545
    .local v2, "proxies":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/jid/Jid;>;"
    invoke-interface {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getXMPPServiceDomain()Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->discoverItems(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;

    move-result-object v3

    .line 548
    .local v3, "discoverItems":Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;

    .line 550
    .local v5, "item":Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;
    iget-object v6, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->proxyBlacklist:Ljava/util/Set;

    invoke-virtual {v5}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;->getEntityID()Lorg/jxmpp/jid/Jid;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 551
    goto :goto_0

    .line 556
    :cond_0
    :try_start_0
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;->getEntityID()Lorg/jxmpp/jid/Jid;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->discoverInfo(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    move-result-object v6
    :try_end_0
    .catch Lorg/jivesoftware/smack/SmackException$NoResponseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/jivesoftware/smack/XMPPException$XMPPErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    .local v6, "proxyInfo":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    nop

    .line 564
    const-string v7, "proxy"

    const-string v8, "bytestreams"

    invoke-virtual {v6, v7, v8}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->hasIdentity(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 565
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;->getEntityID()Lorg/jxmpp/jid/Jid;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 571
    :cond_1
    iget-object v7, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->proxyBlacklist:Ljava/util/Set;

    invoke-virtual {v5}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;->getEntityID()Lorg/jxmpp/jid/Jid;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 573
    .end local v5    # "item":Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;
    .end local v6    # "proxyInfo":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    :goto_1
    goto :goto_0

    .line 558
    .restart local v5    # "item":Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;
    :catch_0
    move-exception v6

    goto :goto_2

    :catch_1
    move-exception v6

    .line 560
    .local v6, "e":Ljava/lang/Exception;
    :goto_2
    iget-object v7, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->proxyBlacklist:Ljava/util/Set;

    invoke-virtual {v5}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;->getEntityID()Lorg/jxmpp/jid/Jid;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 561
    goto :goto_0

    .line 575
    .end local v5    # "item":Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v2
.end method

.method public declared-synchronized disableService()V
    .locals 3

    monitor-enter p0

    .line 276
    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 278
    .local v0, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->initiationListener:Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener;

    invoke-interface {v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->unregisterIQRequestHandler(Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;)Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;

    .line 281
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->initiationListener:Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener;->shutdown()V

    .line 284
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->allRequestListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 285
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->userListeners:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 288
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->lastWorkingProxy:Lorg/jxmpp/jid/Jid;

    .line 289
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->proxyBlacklist:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 290
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->ignoredBytestreamRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 293
    sget-object v1, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->managers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v1, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->managers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 297
    invoke-static {}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->getSocks5Proxy()Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->stop()V

    .line 301
    .end local p0    # "this":Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;
    :cond_0
    invoke-static {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v1

    .line 304
    .local v1, "serviceDiscoveryManager":Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    if-eqz v1, :cond_1

    .line 305
    const-string v2, "http://jabber.org/protocol/bytestreams"

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->removeFeature(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    :cond_1
    monitor-exit p0

    return-void

    .line 275
    .end local v0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    .end local v1    # "serviceDiscoveryManager":Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic establishSession(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/bytestreams/BytestreamSession;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException;
        }
    .end annotation

    .line 94
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->establishSession(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamSession;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic establishSession(Lorg/jxmpp/jid/Jid;Ljava/lang/String;)Lorg/jivesoftware/smackx/bytestreams/BytestreamSession;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException;
        }
    .end annotation

    .line 94
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->establishSession(Lorg/jxmpp/jid/Jid;Ljava/lang/String;)Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamSession;

    move-result-object p1

    return-object p1
.end method

.method public establishSession(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamSession;
    .locals 2
    .param p1, "targetJID"    # Lorg/jxmpp/jid/Jid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException;
        }
    .end annotation

    .line 399
    invoke-static {}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->getNextSessionID()Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "sessionID":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->establishSession(Lorg/jxmpp/jid/Jid;Ljava/lang/String;)Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamSession;

    move-result-object v1

    return-object v1
.end method

.method public establishSession(Lorg/jxmpp/jid/Jid;Ljava/lang/String;)Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamSession;
    .locals 20
    .param p1, "targetJID"    # Lorg/jxmpp/jid/Jid;
    .param p2, "sessionID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException;,
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .line 418
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v10

    .line 419
    .local v10, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    const/4 v2, 0x0

    .line 421
    .local v2, "discoveryException":Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
    invoke-direct/range {p0 .. p1}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->supportsSocks5(Lorg/jxmpp/jid/Jid;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 428
    .local v11, "proxies":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/jid/Jid;>;"
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->determineProxies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException$XMPPErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    move-object v12, v2

    goto :goto_0

    .line 429
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
    move-object v2, v0

    move-object v12, v2

    .line 436
    .end local v0    # "e":Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
    .end local v2    # "discoveryException":Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
    .local v12, "discoveryException":Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
    :goto_0
    invoke-direct {v1, v11}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->determineStreamHostInfos(Ljava/util/List;)Ljava/util/List;

    move-result-object v13

    .line 438
    .local v13, "streamHosts":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;>;"
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    if-eqz v12, :cond_0

    .line 440
    throw v12

    .line 442
    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/SmackException;

    const-string v2, "no SOCKS5 proxies available"

    invoke-direct {v0, v2}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_1
    invoke-interface {v10}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v0

    invoke-static {v9, v0, v8}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Utils;->createDigest(Ljava/lang/String;Lorg/jxmpp/jid/Jid;Lorg/jxmpp/jid/Jid;)Ljava/lang/String;

    move-result-object v14

    .line 450
    .local v14, "digest":Ljava/lang/String;
    iget-boolean v0, v1, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->proxyPrioritizationEnabled:Z

    if-eqz v0, :cond_4

    iget-object v0, v1, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->lastWorkingProxy:Lorg/jxmpp/jid/Jid;

    if-eqz v0, :cond_4

    .line 451
    const/4 v0, 0x0

    .line 452
    .local v0, "selectedStreamHost":Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;

    .line 453
    .local v3, "streamHost":Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;->getJID()Lorg/jxmpp/jid/Jid;

    move-result-object v4

    iget-object v5, v1, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->lastWorkingProxy:Lorg/jxmpp/jid/Jid;

    invoke-interface {v4, v5}, Lorg/jxmpp/jid/Jid;->equals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 454
    move-object v0, v3

    .line 455
    goto :goto_2

    .line 457
    .end local v3    # "streamHost":Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;
    :cond_2
    goto :goto_1

    .line 458
    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 459
    invoke-interface {v13, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 460
    const/4 v2, 0x0

    invoke-interface {v13, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 465
    .end local v0    # "selectedStreamHost":Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;
    :cond_4
    invoke-static {}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->getSocks5Proxy()Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;

    move-result-object v15

    .line 469
    .local v15, "socks5Proxy":Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;
    :try_start_1
    invoke-virtual {v15, v14}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->addTransfer(Ljava/lang/String;)V

    .line 472
    invoke-static {v9, v8, v13}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->createBytestreamInitiation(Ljava/lang/String;Lorg/jxmpp/jid/Jid;Ljava/util/List;)Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    move-result-object v0

    .line 475
    .local v0, "initiation":Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;
    invoke-interface {v10, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v2

    .line 476
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->getTargetResponseTimeout()I

    move-result v3

    int-to-long v3, v3

    .line 475
    invoke-virtual {v2, v3, v4}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow(J)Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v2

    move-object/from16 v16, v2

    .line 479
    .local v16, "response":Lorg/jivesoftware/smack/packet/Stanza;
    move-object/from16 v2, v16

    check-cast v2, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->getUsedHost()Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHostUsed;

    move-result-object v2

    move-object/from16 v17, v2

    .line 480
    .local v17, "streamHostUsed":Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHostUsed;
    invoke-virtual/range {v17 .. v17}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHostUsed;->getJID()Lorg/jxmpp/jid/Jid;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->getStreamHost(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;

    move-result-object v2

    move-object/from16 v18, v2

    .line 482
    .local v18, "usedStreamHost":Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;
    if-eqz v18, :cond_5

    .line 487
    new-instance v19, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5ClientForInitiator;

    move-object/from16 v2, v19

    move-object/from16 v3, v18

    move-object v4, v14

    move-object v5, v10

    move-object/from16 v6, p2

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5ClientForInitiator;-><init>(Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;Ljava/lang/String;Lorg/jivesoftware/smack/XMPPConnection;Ljava/lang/String;Lorg/jxmpp/jid/Jid;)V

    move-object/from16 v2, v19

    .line 491
    .local v2, "socks5Client":Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;
    invoke-virtual/range {p0 .. p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->getProxyConnectionTimeout()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;->getSocket(I)Ljava/net/Socket;

    move-result-object v3

    .line 494
    .local v3, "socket":Ljava/net/Socket;
    invoke-virtual/range {v18 .. v18}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;->getJID()Lorg/jxmpp/jid/Jid;

    move-result-object v4

    iput-object v4, v1, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->lastWorkingProxy:Lorg/jxmpp/jid/Jid;

    .line 497
    new-instance v4, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamSession;

    invoke-virtual/range {v18 .. v18}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;->getJID()Lorg/jxmpp/jid/Jid;

    move-result-object v5

    .line 498
    invoke-interface {v10}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v6

    .line 497
    invoke-interface {v5, v6}, Lorg/jxmpp/jid/Jid;->equals(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-direct {v4, v3, v5}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamSession;-><init>(Ljava/net/Socket;Z)V
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 508
    invoke-virtual {v15, v14}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->removeTransfer(Ljava/lang/String;)V

    .line 497
    return-object v4

    .line 483
    .end local v2    # "socks5Client":Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;
    .end local v3    # "socket":Ljava/net/Socket;
    :cond_5
    :try_start_2
    new-instance v2, Lorg/jivesoftware/smack/SmackException;

    const-string v3, "Remote user responded with unknown host"

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;)V

    .end local v10    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    .end local v11    # "proxies":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/jid/Jid;>;"
    .end local v12    # "discoveryException":Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
    .end local v13    # "streamHosts":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;>;"
    .end local v14    # "digest":Ljava/lang/String;
    .end local v15    # "socks5Proxy":Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;
    .end local p1    # "targetJID":Lorg/jxmpp/jid/Jid;
    .end local p2    # "sessionID":Ljava/lang/String;
    throw v2
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 508
    .end local v0    # "initiation":Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;
    .end local v16    # "response":Lorg/jivesoftware/smack/packet/Stanza;
    .end local v17    # "streamHostUsed":Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHostUsed;
    .end local v18    # "usedStreamHost":Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;
    .restart local v10    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    .restart local v11    # "proxies":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/jid/Jid;>;"
    .restart local v12    # "discoveryException":Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
    .restart local v13    # "streamHosts":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;>;"
    .restart local v14    # "digest":Ljava/lang/String;
    .restart local v15    # "socks5Proxy":Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;
    .restart local p1    # "targetJID":Lorg/jxmpp/jid/Jid;
    .restart local p2    # "sessionID":Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 501
    :catch_1
    move-exception v0

    .line 502
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    :try_start_3
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Timeout while connecting to SOCKS5 proxy"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v10    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    .end local v11    # "proxies":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/jid/Jid;>;"
    .end local v12    # "discoveryException":Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
    .end local v13    # "streamHosts":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;>;"
    .end local v14    # "digest":Ljava/lang/String;
    .end local v15    # "socks5Proxy":Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;
    .end local p1    # "targetJID":Lorg/jxmpp/jid/Jid;
    .end local p2    # "sessionID":Ljava/lang/String;
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 508
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    .restart local v10    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    .restart local v11    # "proxies":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/jid/Jid;>;"
    .restart local v12    # "discoveryException":Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
    .restart local v13    # "streamHosts":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;>;"
    .restart local v14    # "digest":Ljava/lang/String;
    .restart local v15    # "socks5Proxy":Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;
    .restart local p1    # "targetJID":Lorg/jxmpp/jid/Jid;
    .restart local p2    # "sessionID":Ljava/lang/String;
    :goto_3
    invoke-virtual {v15, v14}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->removeTransfer(Ljava/lang/String;)V

    throw v0

    .line 422
    .end local v11    # "proxies":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/jid/Jid;>;"
    .end local v12    # "discoveryException":Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
    .end local v13    # "streamHosts":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;>;"
    .end local v14    # "digest":Ljava/lang/String;
    .end local v15    # "socks5Proxy":Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;
    .local v2, "discoveryException":Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
    :cond_6
    new-instance v0, Lorg/jivesoftware/smack/SmackException$FeatureNotSupportedException;

    const-string v3, "SOCKS5 Bytestream"

    invoke-direct {v0, v3, v8}, Lorg/jivesoftware/smack/SmackException$FeatureNotSupportedException;-><init>(Ljava/lang/String;Lorg/jxmpp/jid/Jid;)V

    throw v0
.end method

.method protected getAllRequestListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;",
            ">;"
        }
    .end annotation

    .line 766
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->allRequestListeners:Ljava/util/List;

    return-object v0
.end method

.method protected getConnection()Lorg/jivesoftware/smack/XMPPConnection;
    .locals 1

    .line 745
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    return-object v0
.end method

.method protected getIgnoredBytestreamRequests()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 775
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->ignoredBytestreamRequests:Ljava/util/List;

    return-object v0
.end method

.method public getLocalStreamHost()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;",
            ">;"
        }
    .end annotation

    .line 635
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 637
    .local v0, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    invoke-static {}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->getSocks5Proxy()Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;

    move-result-object v1

    .line 639
    .local v1, "socks5Server":Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->isRunning()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 641
    return-object v3

    .line 643
    :cond_0
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->getLocalAddresses()Ljava/util/List;

    move-result-object v2

    .line 644
    .local v2, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 646
    return-object v3

    .line 648
    :cond_1
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->getPort()I

    move-result v3

    .line 650
    .local v3, "port":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 651
    .local v4, "streamHosts":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 653
    .local v6, "address":Ljava/lang/String;
    const-string v7, "127.0.0.1"

    const-string v8, "0:0:0:0:0:0:0:1"

    const-string v9, "::1"

    filled-new-array {v7, v8, v9}, [Ljava/lang/String;

    move-result-object v7

    .line 654
    .local v7, "loopbackAddresses":[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_3

    aget-object v10, v7, v9

    .line 657
    .local v10, "loopbackAddress":Ljava/lang/String;
    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 658
    goto :goto_0

    .line 654
    .end local v10    # "loopbackAddress":Ljava/lang/String;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 661
    :cond_3
    new-instance v8, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;

    invoke-interface {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v9

    invoke-direct {v8, v9, v6, v3}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;-><init>(Lorg/jxmpp/jid/Jid;Ljava/lang/String;I)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 662
    .end local v6    # "address":Ljava/lang/String;
    .end local v7    # "loopbackAddresses":[Ljava/lang/String;
    goto :goto_0

    .line 663
    :cond_4
    return-object v4
.end method

.method public getProxyConnectionTimeout()I
    .locals 1

    .line 340
    iget v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->proxyConnectionTimeout:I

    if-gtz v0, :cond_0

    .line 341
    const/16 v0, 0x2710

    iput v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->proxyConnectionTimeout:I

    .line 343
    :cond_0
    iget v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->proxyConnectionTimeout:I

    return v0
.end method

.method public getTargetResponseTimeout()I
    .locals 1

    .line 317
    iget v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->targetResponseTimeout:I

    if-gtz v0, :cond_0

    .line 318
    const/16 v0, 0x2710

    iput v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->targetResponseTimeout:I

    .line 320
    :cond_0
    iget v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->targetResponseTimeout:I

    return v0
.end method

.method protected getUserListener(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;
    .locals 1
    .param p1, "initiator"    # Lorg/jxmpp/jid/Jid;

    .line 756
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->userListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;

    return-object v0
.end method

.method public ignoreBytestreamRequestOnce(Ljava/lang/String;)V
    .locals 1
    .param p1, "sessionID"    # Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->ignoredBytestreamRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    return-void
.end method

.method public isProxyPrioritizationEnabled()Z
    .locals 1

    .line 363
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->proxyPrioritizationEnabled:Z

    return v0
.end method

.method public removeIncomingBytestreamListener(Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;

    .line 217
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->allRequestListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 218
    return-void
.end method

.method public removeIncomingBytestreamListener(Lorg/jxmpp/jid/Jid;)V
    .locals 1
    .param p1, "initiatorJID"    # Lorg/jxmpp/jid/Jid;

    .line 250
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->userListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    return-void
.end method

.method protected replyRejectPacket(Lorg/jivesoftware/smack/packet/IQ;)V
    .locals 3
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/IQ;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 702
    sget-object v0, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->not_acceptable:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    invoke-static {v0}, Lorg/jivesoftware/smack/packet/StanzaError;->getBuilder(Lorg/jivesoftware/smack/packet/StanzaError$Condition;)Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    move-result-object v0

    .line 703
    .local v0, "xmppError":Lorg/jivesoftware/smack/packet/StanzaError$Builder;
    invoke-static {p1, v0}, Lorg/jivesoftware/smack/packet/IQ;->createErrorResponse(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/StanzaError$Builder;)Lorg/jivesoftware/smack/packet/ErrorIQ;

    move-result-object v1

    .line 704
    .local v1, "errorIQ":Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/jivesoftware/smack/XMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 705
    return-void
.end method

.method public setProxyConnectionTimeout(I)V
    .locals 0
    .param p1, "proxyConnectionTimeout"    # I

    .line 353
    iput p1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->proxyConnectionTimeout:I

    .line 354
    return-void
.end method

.method public setProxyPrioritizationEnabled(Z)V
    .locals 0
    .param p1, "proxyPrioritizationEnabled"    # Z

    .line 374
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->proxyPrioritizationEnabled:Z

    .line 375
    return-void
.end method

.method public setTargetResponseTimeout(I)V
    .locals 0
    .param p1, "targetResponseTimeout"    # I

    .line 330
    iput p1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->targetResponseTimeout:I

    .line 331
    return-void
.end method
