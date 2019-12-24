.class public final Lorg/jivesoftware/smackx/xdata/XDataManager;
.super Lorg/jivesoftware/smack/Manager;
.source "XDataManager.java"


# static fields
.field private static final INSTANCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smackx/xdata/XDataManager;",
            ">;"
        }
    .end annotation
.end field

.field public static final NAMESPACE:Ljava/lang/String; = "jabber:x:data"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lorg/jivesoftware/smackx/xdata/XDataManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/xdata/XDataManager$1;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/XMPPConnectionRegistry;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 51
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/xdata/XDataManager;->INSTANCES:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 2
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 69
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Manager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 70
    invoke-static {p1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    .line 71
    .local v0, "serviceDiscoveryManager":Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    const-string v1, "jabber:x:data"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static declared-synchronized getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/xdata/XDataManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    const-class v0, Lorg/jivesoftware/smackx/xdata/XDataManager;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/xdata/XDataManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/xdata/XDataManager;

    .line 61
    .local v1, "xDataManager":Lorg/jivesoftware/smackx/xdata/XDataManager;
    if-nez v1, :cond_0

    .line 62
    new-instance v2, Lorg/jivesoftware/smackx/xdata/XDataManager;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/xdata/XDataManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    move-object v1, v2

    .line 63
    sget-object v2, Lorg/jivesoftware/smackx/xdata/XDataManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_0
    monitor-exit v0

    return-object v1

    .line 59
    .end local v1    # "xDataManager":Lorg/jivesoftware/smackx/xdata/XDataManager;
    .end local p0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public isSupported(Lorg/jxmpp/jid/Jid;)Z
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

    .line 87
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/xdata/XDataManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    const-string v1, "jabber:x:data"

    invoke-virtual {v0, p1, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->supportsFeature(Lorg/jxmpp/jid/Jid;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
