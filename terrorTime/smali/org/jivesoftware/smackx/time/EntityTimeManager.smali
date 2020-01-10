.class public final Lorg/jivesoftware/smackx/time/EntityTimeManager;
.super Lorg/jivesoftware/smack/Manager;
.source "EntityTimeManager.java"


# static fields
.field private static final INSTANCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smackx/time/EntityTimeManager;",
            ">;"
        }
    .end annotation
.end field

.field private static autoEnable:Z


# instance fields
.field private enabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/time/EntityTimeManager;->INSTANCES:Ljava/util/Map;

    .line 44
    const/4 v0, 0x1

    sput-boolean v0, Lorg/jivesoftware/smackx/time/EntityTimeManager;->autoEnable:Z

    .line 47
    new-instance v0, Lorg/jivesoftware/smackx/time/EntityTimeManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/time/EntityTimeManager$1;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/XMPPConnectionRegistry;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 53
    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 7
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 71
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Manager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/time/EntityTimeManager;->enabled:Z

    .line 72
    sget-boolean v0, Lorg/jivesoftware/smackx/time/EntityTimeManager;->autoEnable:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/time/EntityTimeManager;->enable()V

    .line 75
    :cond_0
    new-instance v0, Lorg/jivesoftware/smackx/time/EntityTimeManager$2;

    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->get:Lorg/jivesoftware/smack/packet/IQ$Type;

    sget-object v6, Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;->async:Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;

    const-string v3, "time"

    const-string v4, "urn:xmpp:time"

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/jivesoftware/smackx/time/EntityTimeManager$2;-><init>(Lorg/jivesoftware/smackx/time/EntityTimeManager;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V

    invoke-interface {p1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->registerIQRequestHandler(Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;)Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smackx/time/EntityTimeManager;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/time/EntityTimeManager;

    .line 40
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/time/EntityTimeManager;->enabled:Z

    return v0
.end method

.method public static declared-synchronized getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/time/EntityTimeManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    const-class v0, Lorg/jivesoftware/smackx/time/EntityTimeManager;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/time/EntityTimeManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/time/EntityTimeManager;

    .line 61
    .local v1, "entityTimeManager":Lorg/jivesoftware/smackx/time/EntityTimeManager;
    if-nez v1, :cond_0

    .line 62
    new-instance v2, Lorg/jivesoftware/smackx/time/EntityTimeManager;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/time/EntityTimeManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    move-object v1, v2

    .line 63
    sget-object v2, Lorg/jivesoftware/smackx/time/EntityTimeManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_0
    monitor-exit v0

    return-object v1

    .line 59
    .end local v1    # "entityTimeManager":Lorg/jivesoftware/smackx/time/EntityTimeManager;
    .end local p0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setAutoEnable(Z)V
    .locals 0
    .param p0, "autoEnable"    # Z

    .line 56
    sput-boolean p0, Lorg/jivesoftware/smackx/time/EntityTimeManager;->autoEnable:Z

    .line 57
    return-void
.end method


# virtual methods
.method public declared-synchronized disable()V
    .locals 2

    monitor-enter p0

    .line 98
    :try_start_0
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/time/EntityTimeManager;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 99
    monitor-exit p0

    return-void

    .line 100
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/time/EntityTimeManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    .line 101
    .local v0, "sdm":Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    const-string v1, "urn:xmpp:time"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->removeFeature(Ljava/lang/String;)V

    .line 102
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jivesoftware/smackx/time/EntityTimeManager;->enabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    monitor-exit p0

    return-void

    .line 97
    .end local v0    # "sdm":Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    .end local p0    # "this":Lorg/jivesoftware/smackx/time/EntityTimeManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enable()V
    .locals 2

    monitor-enter p0

    .line 90
    :try_start_0
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/time/EntityTimeManager;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 91
    monitor-exit p0

    return-void

    .line 92
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/time/EntityTimeManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    .line 93
    .local v0, "sdm":Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    const-string v1, "urn:xmpp:time"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    .line 94
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jivesoftware/smackx/time/EntityTimeManager;->enabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    .line 89
    .end local v0    # "sdm":Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    .end local p0    # "this":Lorg/jivesoftware/smackx/time/EntityTimeManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTime(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/time/packet/Time;
    .locals 2
    .param p1, "jid"    # Lorg/jxmpp/jid/Jid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 110
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/time/EntityTimeManager;->isTimeSupported(Lorg/jxmpp/jid/Jid;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x0

    return-object v0

    .line 113
    :cond_0
    new-instance v0, Lorg/jivesoftware/smackx/time/packet/Time;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/time/packet/Time;-><init>()V

    .line 115
    .local v0, "request":Lorg/jivesoftware/smackx/time/packet/Time;
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/time/packet/Time;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 116
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/time/EntityTimeManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/time/packet/Time;

    return-object v1
.end method

.method public isTimeSupported(Lorg/jxmpp/jid/Jid;)Z
    .locals 2
    .param p1, "jid"    # Lorg/jxmpp/jid/Jid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 106
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/time/EntityTimeManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    const-string v1, "urn:xmpp:time"

    invoke-virtual {v0, p1, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->supportsFeature(Lorg/jxmpp/jid/Jid;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
