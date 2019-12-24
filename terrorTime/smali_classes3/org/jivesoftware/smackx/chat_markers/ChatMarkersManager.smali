.class public final Lorg/jivesoftware/smackx/chat_markers/ChatMarkersManager;
.super Lorg/jivesoftware/smack/Manager;
.source "ChatMarkersManager.java"


# static fields
.field private static final INSTANCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smackx/chat_markers/ChatMarkersManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lorg/jivesoftware/smackx/chat_markers/ChatMarkersManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/chat_markers/ChatMarkersManager$1;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/XMPPConnectionRegistry;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 52
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/chat_markers/ChatMarkersManager;->INSTANCES:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 0
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 72
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Manager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 73
    return-void
.end method

.method public static declared-synchronized getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/chat_markers/ChatMarkersManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    const-class v0, Lorg/jivesoftware/smackx/chat_markers/ChatMarkersManager;

    monitor-enter v0

    .line 61
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/chat_markers/ChatMarkersManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/chat_markers/ChatMarkersManager;

    .line 63
    .local v1, "chatMarkersManager":Lorg/jivesoftware/smackx/chat_markers/ChatMarkersManager;
    if-nez v1, :cond_0

    .line 64
    new-instance v2, Lorg/jivesoftware/smackx/chat_markers/ChatMarkersManager;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/chat_markers/ChatMarkersManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    move-object v1, v2

    .line 65
    sget-object v2, Lorg/jivesoftware/smackx/chat_markers/ChatMarkersManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_0
    monitor-exit v0

    return-object v1

    .line 60
    .end local v1    # "chatMarkersManager":Lorg/jivesoftware/smackx/chat_markers/ChatMarkersManager;
    .end local p0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public isSupportedByServer()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/chat_markers/ChatMarkersManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    .line 87
    const-string v1, "urn:xmpp:chat-markers:0"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->serverSupportsFeature(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 86
    return v0
.end method
