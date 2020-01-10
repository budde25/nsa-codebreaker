.class public final Lorg/jivesoftware/smackx/jingle/JingleManager;
.super Lorg/jivesoftware/smack/Manager;
.source "JingleManager.java"


# static fields
.field private static final INSTANCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smackx/jingle/JingleManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final threadPool:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final descriptionHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/jingle/JingleHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final jingleSessionHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smackx/jingle/FullJidAndSessionId;",
            "Lorg/jivesoftware/smackx/jingle/JingleSessionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final jutil:Lorg/jivesoftware/smackx/jingle/JingleUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lorg/jivesoftware/smackx/jingle/JingleManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smackx/jingle/JingleManager;->LOGGER:Ljava/util/logging/Logger;

    .line 47
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/JingleManager;->INSTANCES:Ljava/util/Map;

    .line 49
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smackx/jingle/JingleManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 7
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 71
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Manager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 64
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleManager;->descriptionHandlers:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleManager;->jingleSessionHandlers:Ljava/util/Map;

    .line 73
    new-instance v0, Lorg/jivesoftware/smackx/jingle/JingleUtil;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smackx/jingle/JingleUtil;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleManager;->jutil:Lorg/jivesoftware/smackx/jingle/JingleUtil;

    .line 75
    new-instance v0, Lorg/jivesoftware/smackx/jingle/JingleManager$1;

    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    sget-object v6, Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;->async:Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;

    const-string v3, "jingle"

    const-string v4, "urn:xmpp:jingle:1"

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/jivesoftware/smackx/jingle/JingleManager$1;-><init>(Lorg/jivesoftware/smackx/jingle/JingleManager;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V

    invoke-interface {p1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->registerIQRequestHandler(Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;)Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;

    .line 112
    invoke-static {p1}, Lorg/jivesoftware/smackx/jingle/JingleTransportMethodManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/jingle/JingleTransportMethodManager;

    move-result-object v0

    .line 113
    .local v0, "transportMethodManager":Lorg/jivesoftware/smackx/jingle/JingleTransportMethodManager;
    invoke-static {p1}, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/jingle/JingleTransportMethodManager;->registerTransportManager(Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager;)V

    .line 114
    invoke-static {p1}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/JingleS5BTransportManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/jingle/JingleTransportMethodManager;->registerTransportManager(Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager;)V

    .line 115
    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smackx/jingle/JingleManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/jingle/JingleManager;

    .line 43
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleManager;->jingleSessionHandlers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lorg/jivesoftware/smackx/jingle/JingleManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/jingle/JingleManager;

    .line 43
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleManager;->descriptionHandlers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/logging/Logger;
    .locals 1

    .line 43
    sget-object v0, Lorg/jivesoftware/smackx/jingle/JingleManager;->LOGGER:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lorg/jivesoftware/smackx/jingle/JingleManager;)Lorg/jivesoftware/smackx/jingle/JingleUtil;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/jingle/JingleManager;

    .line 43
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleManager;->jutil:Lorg/jivesoftware/smackx/jingle/JingleUtil;

    return-object v0
.end method

.method public static declared-synchronized getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/jingle/JingleManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    const-class v0, Lorg/jivesoftware/smackx/jingle/JingleManager;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/jingle/JingleManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/jingle/JingleManager;

    .line 57
    .local v1, "jingleManager":Lorg/jivesoftware/smackx/jingle/JingleManager;
    if-nez v1, :cond_0

    .line 58
    new-instance v2, Lorg/jivesoftware/smackx/jingle/JingleManager;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/jingle/JingleManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    move-object v1, v2

    .line 59
    sget-object v2, Lorg/jivesoftware/smackx/jingle/JingleManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_0
    monitor-exit v0

    return-object v1

    .line 55
    .end local v1    # "jingleManager":Lorg/jivesoftware/smackx/jingle/JingleManager;
    .end local p0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 52
    sget-object v0, Lorg/jivesoftware/smackx/jingle/JingleManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static randomId()Ljava/lang/String;
    .locals 1

    .line 132
    const/16 v0, 0x18

    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->randomString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public registerDescriptionHandler(Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/JingleHandler;)Lorg/jivesoftware/smackx/jingle/JingleHandler;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "handler"    # Lorg/jivesoftware/smackx/jingle/JingleHandler;

    .line 118
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleManager;->descriptionHandlers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/JingleHandler;

    return-object v0
.end method

.method public registerJingleSessionHandler(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/JingleSessionHandler;)Lorg/jivesoftware/smackx/jingle/JingleSessionHandler;
    .locals 2
    .param p1, "otherJid"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "sessionHandler"    # Lorg/jivesoftware/smackx/jingle/JingleSessionHandler;

    .line 122
    new-instance v0, Lorg/jivesoftware/smackx/jingle/FullJidAndSessionId;

    invoke-direct {v0, p1, p2}, Lorg/jivesoftware/smackx/jingle/FullJidAndSessionId;-><init>(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;)V

    .line 123
    .local v0, "fullJidAndSessionId":Lorg/jivesoftware/smackx/jingle/FullJidAndSessionId;
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/JingleManager;->jingleSessionHandlers:Ljava/util/Map;

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/jingle/JingleSessionHandler;

    return-object v1
.end method

.method public unregisterJingleSessionHandler(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/JingleSessionHandler;)Lorg/jivesoftware/smackx/jingle/JingleSessionHandler;
    .locals 2
    .param p1, "otherJid"    # Lorg/jxmpp/jid/FullJid;
    .param p2, "sessionId"    # Ljava/lang/String;
    .param p3, "sessionHandler"    # Lorg/jivesoftware/smackx/jingle/JingleSessionHandler;

    .line 127
    new-instance v0, Lorg/jivesoftware/smackx/jingle/FullJidAndSessionId;

    invoke-direct {v0, p1, p2}, Lorg/jivesoftware/smackx/jingle/FullJidAndSessionId;-><init>(Lorg/jxmpp/jid/FullJid;Ljava/lang/String;)V

    .line 128
    .local v0, "fullJidAndSessionId":Lorg/jivesoftware/smackx/jingle/FullJidAndSessionId;
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/JingleManager;->jingleSessionHandlers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/jingle/JingleSessionHandler;

    return-object v1
.end method
