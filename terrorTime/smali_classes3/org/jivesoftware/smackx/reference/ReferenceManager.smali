.class public final Lorg/jivesoftware/smackx/reference/ReferenceManager;
.super Lorg/jivesoftware/smack/Manager;
.source "ReferenceManager.java"


# static fields
.field private static final INSTANCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smackx/reference/ReferenceManager;",
            ">;"
        }
    .end annotation
.end field

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:reference:0"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/reference/ReferenceManager;->INSTANCES:Ljava/util/Map;

    .line 35
    new-instance v0, Lorg/jivesoftware/smackx/reference/ReferenceManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/reference/ReferenceManager$1;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/XMPPConnectionRegistry;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 41
    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 2
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 44
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Manager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 45
    invoke-static {p1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    const-string v1, "urn:xmpp:reference:0"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static declared-synchronized getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/reference/ReferenceManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    const-class v0, Lorg/jivesoftware/smackx/reference/ReferenceManager;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/reference/ReferenceManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/reference/ReferenceManager;

    .line 56
    .local v1, "manager":Lorg/jivesoftware/smackx/reference/ReferenceManager;
    if-nez v1, :cond_0

    .line 57
    new-instance v2, Lorg/jivesoftware/smackx/reference/ReferenceManager;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/reference/ReferenceManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    move-object v1, v2

    .line 58
    sget-object v2, Lorg/jivesoftware/smackx/reference/ReferenceManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_0
    monitor-exit v0

    return-object v1

    .line 54
    .end local v1    # "manager":Lorg/jivesoftware/smackx/reference/ReferenceManager;
    .end local p0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
