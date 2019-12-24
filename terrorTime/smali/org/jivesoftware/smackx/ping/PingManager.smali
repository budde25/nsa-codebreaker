.class public final Lorg/jivesoftware/smackx/ping/PingManager;
.super Lorg/jivesoftware/smack/Manager;
.source "PingManager.java"


# static fields
.field private static final INSTANCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smackx/ping/PingManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static defaultPingInterval:I


# instance fields
.field private nextAutomaticPing:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final pingFailedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jivesoftware/smackx/ping/PingFailedListener;",
            ">;"
        }
    .end annotation
.end field

.field private pingInterval:I

.field private final pingServerRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    const-class v0, Lorg/jivesoftware/smackx/ping/PingManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smackx/ping/PingManager;->LOGGER:Ljava/util/logging/Logger;

    .line 69
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/ping/PingManager;->INSTANCES:Ljava/util/Map;

    .line 72
    new-instance v0, Lorg/jivesoftware/smackx/ping/PingManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/ping/PingManager$1;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/XMPPConnectionRegistry;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 100
    const/16 v0, 0x708

    sput v0, Lorg/jivesoftware/smackx/ping/PingManager;->defaultPingInterval:I

    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 8
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 121
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Manager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 111
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/ping/PingManager;->pingFailedListeners:Ljava/util/Set;

    .line 116
    sget v0, Lorg/jivesoftware/smackx/ping/PingManager;->defaultPingInterval:I

    iput v0, p0, Lorg/jivesoftware/smackx/ping/PingManager;->pingInterval:I

    .line 474
    new-instance v0, Lorg/jivesoftware/smackx/ping/PingManager$7;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/ping/PingManager$7;-><init>(Lorg/jivesoftware/smackx/ping/PingManager;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/ping/PingManager;->pingServerRunnable:Ljava/lang/Runnable;

    .line 122
    invoke-static {p1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    .line 123
    .local v0, "sdm":Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    const-string v1, "urn:xmpp:ping"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    .line 125
    new-instance v1, Lorg/jivesoftware/smackx/ping/PingManager$2;

    sget-object v6, Lorg/jivesoftware/smack/packet/IQ$Type;->get:Lorg/jivesoftware/smack/packet/IQ$Type;

    sget-object v7, Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;->async:Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;

    const-string v4, "ping"

    const-string v5, "urn:xmpp:ping"

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/jivesoftware/smackx/ping/PingManager$2;-><init>(Lorg/jivesoftware/smackx/ping/PingManager;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V

    invoke-interface {p1, v1}, Lorg/jivesoftware/smack/XMPPConnection;->registerIQRequestHandler(Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;)Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;

    .line 132
    new-instance v1, Lorg/jivesoftware/smackx/ping/PingManager$3;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smackx/ping/PingManager$3;-><init>(Lorg/jivesoftware/smackx/ping/PingManager;)V

    invoke-interface {p1, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 142
    invoke-direct {p0}, Lorg/jivesoftware/smackx/ping/PingManager;->maybeSchedulePingServerTask()V

    .line 143
    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smackx/ping/PingManager;)V
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smackx/ping/PingManager;

    .line 66
    invoke-direct {p0}, Lorg/jivesoftware/smackx/ping/PingManager;->maybeSchedulePingServerTask()V

    return-void
.end method

.method static synthetic access$100(Lorg/jivesoftware/smackx/ping/PingManager;)V
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smackx/ping/PingManager;

    .line 66
    invoke-direct {p0}, Lorg/jivesoftware/smackx/ping/PingManager;->maybeStopPingServerTask()V

    return-void
.end method

.method static synthetic access$200(Lorg/jivesoftware/smackx/ping/PingManager;Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/ping/PingManager;
    .param p1, "x1"    # Lorg/jxmpp/jid/Jid;
    .param p2, "x2"    # Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;

    .line 66
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smackx/ping/PingManager;->isValidErrorPong(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300()Ljava/util/logging/Logger;
    .locals 1

    .line 66
    sget-object v0, Lorg/jivesoftware/smackx/ping/PingManager;->LOGGER:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static declared-synchronized getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/ping/PingManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    const-class v0, Lorg/jivesoftware/smackx/ping/PingManager;

    monitor-enter v0

    .line 89
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/ping/PingManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/ping/PingManager;

    .line 90
    .local v1, "pingManager":Lorg/jivesoftware/smackx/ping/PingManager;
    if-nez v1, :cond_0

    .line 91
    new-instance v2, Lorg/jivesoftware/smackx/ping/PingManager;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/ping/PingManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    move-object v1, v2

    .line 92
    sget-object v2, Lorg/jivesoftware/smackx/ping/PingManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_0
    monitor-exit v0

    return-object v1

    .line 88
    .end local v1    # "pingManager":Lorg/jivesoftware/smackx/ping/PingManager;
    .end local p0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private isValidErrorPong(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;)Z
    .locals 5
    .param p1, "destinationJid"    # Lorg/jxmpp/jid/Jid;
    .param p2, "xmppErrorException"    # Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;

    .line 148
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/ping/PingManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getXMPPServiceDomain()Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/jxmpp/jid/Jid;->equals(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 149
    return v1

    .line 152
    :cond_0
    invoke-virtual {p2}, Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;->getStanzaError()Lorg/jivesoftware/smack/packet/StanzaError;

    move-result-object v0

    .line 170
    .local v0, "xmppError":Lorg/jivesoftware/smack/packet/StanzaError;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/StanzaError;->getType()Lorg/jivesoftware/smack/packet/StanzaError$Type;

    move-result-object v2

    .line 171
    .local v2, "type":Lorg/jivesoftware/smack/packet/StanzaError$Type;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/StanzaError;->getCondition()Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    move-result-object v3

    .line 172
    .local v3, "condition":Lorg/jivesoftware/smack/packet/StanzaError$Condition;
    sget-object v4, Lorg/jivesoftware/smack/packet/StanzaError$Type;->CANCEL:Lorg/jivesoftware/smack/packet/StanzaError$Type;

    if-ne v2, v4, :cond_1

    sget-object v4, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->feature_not_implemented:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private maybeSchedulePingServerTask()V
    .locals 1

    .line 379
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/ping/PingManager;->maybeSchedulePingServerTask(I)V

    .line 380
    return-void
.end method

.method private declared-synchronized maybeSchedulePingServerTask(I)V
    .locals 5
    .param p1, "delta"    # I

    monitor-enter p0

    .line 389
    :try_start_0
    invoke-direct {p0}, Lorg/jivesoftware/smackx/ping/PingManager;->maybeStopPingServerTask()V

    .line 390
    iget v0, p0, Lorg/jivesoftware/smackx/ping/PingManager;->pingInterval:I

    if-lez v0, :cond_0

    .line 391
    iget v0, p0, Lorg/jivesoftware/smackx/ping/PingManager;->pingInterval:I

    sub-int/2addr v0, p1

    .line 392
    .local v0, "nextPingIn":I
    sget-object v1, Lorg/jivesoftware/smackx/ping/PingManager;->LOGGER:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling ServerPingTask in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " seconds (pingInterval="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/jivesoftware/smackx/ping/PingManager;->pingInterval:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", delta="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 394
    iget-object v1, p0, Lorg/jivesoftware/smackx/ping/PingManager;->pingServerRunnable:Ljava/lang/Runnable;

    int-to-long v2, v0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3, v4}, Lorg/jivesoftware/smackx/ping/PingManager;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smackx/ping/PingManager;->nextAutomaticPing:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    .end local v0    # "nextPingIn":I
    .end local p0    # "this":Lorg/jivesoftware/smackx/ping/PingManager;
    :cond_0
    monitor-exit p0

    return-void

    .line 388
    .end local p1    # "delta":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private maybeStopPingServerTask()V
    .locals 2

    .line 399
    iget-object v0, p0, Lorg/jivesoftware/smackx/ping/PingManager;->nextAutomaticPing:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 400
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 401
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smackx/ping/PingManager;->nextAutomaticPing:Ljava/util/concurrent/ScheduledFuture;

    .line 403
    :cond_0
    return-void
.end method

.method public static setDefaultPingInterval(I)V
    .locals 0
    .param p0, "interval"    # I

    .line 108
    sput p0, Lorg/jivesoftware/smackx/ping/PingManager;->defaultPingInterval:I

    .line 109
    return-void
.end method


# virtual methods
.method public getPingInterval()I
    .locals 1

    .line 357
    iget v0, p0, Lorg/jivesoftware/smackx/ping/PingManager;->pingInterval:I

    return v0
.end method

.method public isPingSupported(Lorg/jxmpp/jid/Jid;)Z
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

    .line 273
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/ping/PingManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    const-string v1, "urn:xmpp:ping"

    invoke-virtual {v0, p1, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->supportsFeature(Lorg/jxmpp/jid/Jid;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public ping(Lorg/jxmpp/jid/Jid;)Z
    .locals 2
    .param p1, "jid"    # Lorg/jxmpp/jid/Jid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 259
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/ping/PingManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getReplyTimeout()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/jivesoftware/smackx/ping/PingManager;->ping(Lorg/jxmpp/jid/Jid;J)Z

    move-result v0

    return v0
.end method

.method public ping(Lorg/jxmpp/jid/Jid;J)Z
    .locals 4
    .param p1, "jid"    # Lorg/jxmpp/jid/Jid;
    .param p2, "pingTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 232
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/ping/PingManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 235
    .local v0, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    invoke-interface {v0}, Lorg/jivesoftware/smack/XMPPConnection;->isAuthenticated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    new-instance v1, Lorg/jivesoftware/smackx/ping/packet/Ping;

    invoke-direct {v1, p1}, Lorg/jivesoftware/smackx/ping/packet/Ping;-><init>(Lorg/jxmpp/jid/Jid;)V

    .line 240
    .local v1, "ping":Lorg/jivesoftware/smackx/ping/packet/Ping;
    :try_start_0
    invoke-interface {v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow(J)Lorg/jivesoftware/smack/packet/Stanza;
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException$XMPPErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    nop

    .line 245
    const/4 v2, 0x1

    return v2

    .line 242
    :catch_0
    move-exception v2

    .line 243
    .local v2, "e":Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
    invoke-direct {p0, p1, v2}, Lorg/jivesoftware/smackx/ping/PingManager;->isValidErrorPong(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;)Z

    move-result v3

    return v3

    .line 236
    .end local v1    # "ping":Lorg/jivesoftware/smackx/ping/packet/Ping;
    .end local v2    # "e":Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
    :cond_0
    new-instance v1, Lorg/jivesoftware/smack/SmackException$NotConnectedException;

    invoke-direct {v1}, Lorg/jivesoftware/smack/SmackException$NotConnectedException;-><init>()V

    throw v1
.end method

.method public pingAsync(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smack/SmackFuture;
    .locals 2
    .param p1, "jid"    # Lorg/jxmpp/jid/Jid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jxmpp/jid/Jid;",
            ")",
            "Lorg/jivesoftware/smack/SmackFuture<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    .line 176
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/ping/PingManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getReplyTimeout()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/jivesoftware/smackx/ping/PingManager;->pingAsync(Lorg/jxmpp/jid/Jid;J)Lorg/jivesoftware/smack/SmackFuture;

    move-result-object v0

    return-object v0
.end method

.method public pingAsync(Lorg/jxmpp/jid/Jid;J)Lorg/jivesoftware/smack/SmackFuture;
    .locals 4
    .param p1, "jid"    # Lorg/jxmpp/jid/Jid;
    .param p2, "pongTimeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jxmpp/jid/Jid;",
            "J)",
            "Lorg/jivesoftware/smack/SmackFuture<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    .line 180
    new-instance v0, Lorg/jivesoftware/smackx/ping/PingManager$4;

    invoke-direct {v0, p0, p1}, Lorg/jivesoftware/smackx/ping/PingManager$4;-><init>(Lorg/jivesoftware/smackx/ping/PingManager;Lorg/jxmpp/jid/Jid;)V

    .line 198
    .local v0, "future":Lorg/jivesoftware/smack/SmackFuture$InternalProcessStanzaSmackFuture;, "Lorg/jivesoftware/smack/SmackFuture$InternalProcessStanzaSmackFuture<Ljava/lang/Boolean;Ljava/lang/Exception;>;"
    new-instance v1, Lorg/jivesoftware/smackx/ping/packet/Ping;

    invoke-direct {v1, p1}, Lorg/jivesoftware/smackx/ping/packet/Ping;-><init>(Lorg/jxmpp/jid/Jid;)V

    .line 199
    .local v1, "ping":Lorg/jivesoftware/smackx/ping/packet/Ping;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/ping/PingManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v2

    invoke-interface {v2, v1, p2, p3}, Lorg/jivesoftware/smack/XMPPConnection;->sendIqRequestAsync(Lorg/jivesoftware/smack/packet/IQ;J)Lorg/jivesoftware/smack/SmackFuture;

    move-result-object v2

    new-instance v3, Lorg/jivesoftware/smackx/ping/PingManager$6;

    invoke-direct {v3, p0, v0}, Lorg/jivesoftware/smackx/ping/PingManager$6;-><init>(Lorg/jivesoftware/smackx/ping/PingManager;Lorg/jivesoftware/smack/SmackFuture$InternalProcessStanzaSmackFuture;)V

    .line 200
    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/SmackFuture;->onSuccess(Lorg/jivesoftware/smack/util/SuccessCallback;)Lorg/jivesoftware/smack/util/CallbackRecipient;

    move-result-object v2

    new-instance v3, Lorg/jivesoftware/smackx/ping/PingManager$5;

    invoke-direct {v3, p0, v0}, Lorg/jivesoftware/smackx/ping/PingManager$5;-><init>(Lorg/jivesoftware/smackx/ping/PingManager;Lorg/jivesoftware/smack/SmackFuture$InternalProcessStanzaSmackFuture;)V

    .line 206
    invoke-interface {v2, v3}, Lorg/jivesoftware/smack/util/CallbackRecipient;->onError(Lorg/jivesoftware/smack/util/ExceptionCallback;)Lorg/jivesoftware/smack/util/CallbackRecipient;

    .line 213
    return-object v0
.end method

.method public pingMyServer()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 288
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/ping/PingManager;->pingMyServer(Z)Z

    move-result v0

    return v0
.end method

.method public pingMyServer(Z)Z
    .locals 2
    .param p1, "notifyListeners"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 304
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/ping/PingManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getReplyTimeout()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/jivesoftware/smackx/ping/PingManager;->pingMyServer(ZJ)Z

    move-result v0

    return v0
.end method

.method public pingMyServer(ZJ)Z
    .locals 3
    .param p1, "notifyListeners"    # Z
    .param p2, "pingTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 323
    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/ping/PingManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getXMPPServiceDomain()Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/jivesoftware/smackx/ping/PingManager;->ping(Lorg/jxmpp/jid/Jid;J)Z

    move-result v0
    :try_end_0
    .catch Lorg/jivesoftware/smack/SmackException$NoResponseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    .local v0, "res":Z
    goto :goto_0

    .line 325
    .end local v0    # "res":Z
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Lorg/jivesoftware/smack/SmackException$NoResponseException;
    const/4 v0, 0x0

    .line 328
    .local v0, "res":Z
    :goto_0
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 329
    iget-object v1, p0, Lorg/jivesoftware/smackx/ping/PingManager;->pingFailedListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/ping/PingFailedListener;

    .line 330
    .local v2, "l":Lorg/jivesoftware/smackx/ping/PingFailedListener;
    invoke-interface {v2}, Lorg/jivesoftware/smackx/ping/PingFailedListener;->pingFailed()V

    .end local v2    # "l":Lorg/jivesoftware/smackx/ping/PingFailedListener;
    goto :goto_1

    .line 332
    :cond_0
    return v0
.end method

.method public declared-synchronized pingServerIfNecessary()V
    .locals 14

    monitor-enter p0

    .line 410
    const/16 v0, 0x3e8

    .line 411
    .local v0, "DELTA":I
    const/4 v1, 0x3

    .line 412
    .local v1, "TRIES":I
    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/ping/PingManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    .local v2, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    if-nez v2, :cond_0

    .line 416
    monitor-exit p0

    return-void

    .line 418
    :cond_0
    :try_start_1
    iget v3, p0, Lorg/jivesoftware/smackx/ping/PingManager;->pingInterval:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz v3, :cond_1

    .line 420
    monitor-exit p0

    return-void

    .line 422
    :cond_1
    :try_start_2
    invoke-interface {v2}, Lorg/jivesoftware/smack/XMPPConnection;->getLastStanzaReceived()J

    move-result-wide v3

    .line 423
    .local v3, "lastStanzaReceived":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    const-wide/16 v6, 0x3e8

    if-lez v5, :cond_2

    .line 424
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 426
    .local v8, "now":J
    sub-long v10, v8, v3

    div-long/2addr v10, v6

    long-to-int v5, v10

    .line 428
    .local v5, "deltaInSeconds":I
    iget v10, p0, Lorg/jivesoftware/smackx/ping/PingManager;->pingInterval:I

    if-ge v5, v10, :cond_2

    .line 429
    invoke-direct {p0, v5}, Lorg/jivesoftware/smackx/ping/PingManager;->maybeSchedulePingServerTask(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 430
    monitor-exit p0

    return-void

    .line 433
    .end local v5    # "deltaInSeconds":I
    .end local v8    # "now":J
    .end local p0    # "this":Lorg/jivesoftware/smackx/ping/PingManager;
    :cond_2
    :try_start_3
    invoke-interface {v2}, Lorg/jivesoftware/smack/XMPPConnection;->isAuthenticated()Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_8

    .line 434
    const/4 v5, 0x0

    .line 436
    .local v5, "res":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/4 v9, 0x3

    if-ge v8, v9, :cond_5

    .line 437
    if-eqz v8, :cond_3

    .line 439
    :try_start_4
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 444
    goto :goto_1

    .line 440
    :catch_0
    move-exception v6

    .line 443
    .local v6, "e":Ljava/lang/InterruptedException;
    monitor-exit p0

    return-void

    .line 447
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :cond_3
    :goto_1
    const/4 v9, 0x0

    :try_start_5
    invoke-virtual {p0, v9}, Lorg/jivesoftware/smackx/ping/PingManager;->pingMyServer(Z)Z

    move-result v9
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/jivesoftware/smack/SmackException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v5, v9

    .line 455
    goto :goto_3

    .line 449
    :catch_1
    move-exception v9

    goto :goto_2

    :catch_2
    move-exception v9

    .line 453
    .local v9, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_6
    sget-object v10, Lorg/jivesoftware/smackx/ping/PingManager;->LOGGER:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception while pinging server of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 454
    const/4 v5, 0x0

    .line 457
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_3
    if-eqz v5, :cond_4

    .line 458
    goto :goto_4

    .line 436
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 461
    .end local v8    # "i":I
    :cond_5
    :goto_4
    if-nez v5, :cond_7

    .line 462
    iget-object v6, p0, Lorg/jivesoftware/smackx/ping/PingManager;->pingFailedListeners:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jivesoftware/smackx/ping/PingFailedListener;

    .line 463
    .local v7, "l":Lorg/jivesoftware/smackx/ping/PingFailedListener;
    invoke-interface {v7}, Lorg/jivesoftware/smackx/ping/PingFailedListener;->pingFailed()V

    .line 464
    .end local v7    # "l":Lorg/jivesoftware/smackx/ping/PingFailedListener;
    goto :goto_5

    :cond_6
    goto :goto_6

    .line 467
    :cond_7
    invoke-direct {p0}, Lorg/jivesoftware/smackx/ping/PingManager;->maybeSchedulePingServerTask()V

    .line 469
    .end local v5    # "res":Z
    :goto_6
    goto :goto_7

    .line 470
    :cond_8
    sget-object v5, Lorg/jivesoftware/smackx/ping/PingManager;->LOGGER:Ljava/util/logging/Logger;

    const-string v6, "XMPPConnection was not authenticated"

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 472
    :goto_7
    monitor-exit p0

    return-void

    .line 409
    .end local v0    # "DELTA":I
    .end local v1    # "TRIES":I
    .end local v2    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    .end local v3    # "lastStanzaReceived":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerPingFailedListener(Lorg/jivesoftware/smackx/ping/PingFailedListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/jivesoftware/smackx/ping/PingFailedListener;

    .line 366
    iget-object v0, p0, Lorg/jivesoftware/smackx/ping/PingManager;->pingFailedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 367
    return-void
.end method

.method public setPingInterval(I)V
    .locals 0
    .param p1, "pingInterval"    # I

    .line 347
    iput p1, p0, Lorg/jivesoftware/smackx/ping/PingManager;->pingInterval:I

    .line 348
    invoke-direct {p0}, Lorg/jivesoftware/smackx/ping/PingManager;->maybeSchedulePingServerTask()V

    .line 349
    return-void
.end method

.method public unregisterPingFailedListener(Lorg/jivesoftware/smackx/ping/PingFailedListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/jivesoftware/smackx/ping/PingFailedListener;

    .line 375
    iget-object v0, p0, Lorg/jivesoftware/smackx/ping/PingManager;->pingFailedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 376
    return-void
.end method
