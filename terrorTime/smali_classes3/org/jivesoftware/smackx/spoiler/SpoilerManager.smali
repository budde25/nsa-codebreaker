.class public final Lorg/jivesoftware/smackx/spoiler/SpoilerManager;
.super Lorg/jivesoftware/smack/Manager;
.source "SpoilerManager.java"


# static fields
.field private static final INSTANCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smackx/spoiler/SpoilerManager;",
            ">;"
        }
    .end annotation
.end field

.field public static final NAMESPACE_0:Ljava/lang/String; = "urn:xmpp:spoiler:0"


# instance fields
.field private final serviceDiscoveryManager:Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/spoiler/SpoilerManager;->INSTANCES:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 1
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 40
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Manager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 41
    invoke-static {p1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/spoiler/SpoilerManager;->serviceDiscoveryManager:Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    .line 42
    return-void
.end method

.method public static declared-synchronized getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/spoiler/SpoilerManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    const-class v0, Lorg/jivesoftware/smackx/spoiler/SpoilerManager;

    monitor-enter v0

    .line 65
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/spoiler/SpoilerManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/spoiler/SpoilerManager;

    .line 66
    .local v1, "manager":Lorg/jivesoftware/smackx/spoiler/SpoilerManager;
    if-nez v1, :cond_0

    .line 67
    new-instance v2, Lorg/jivesoftware/smackx/spoiler/SpoilerManager;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/spoiler/SpoilerManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    move-object v1, v2

    .line 68
    sget-object v2, Lorg/jivesoftware/smackx/spoiler/SpoilerManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_0
    monitor-exit v0

    return-object v1

    .line 64
    .end local v1    # "manager":Lorg/jivesoftware/smackx/spoiler/SpoilerManager;
    .end local p0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public startAnnounceSupport()V
    .locals 2

    .line 48
    iget-object v0, p0, Lorg/jivesoftware/smackx/spoiler/SpoilerManager;->serviceDiscoveryManager:Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    const-string v1, "urn:xmpp:spoiler:0"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public stopAnnounceSupport()V
    .locals 2

    .line 55
    iget-object v0, p0, Lorg/jivesoftware/smackx/spoiler/SpoilerManager;->serviceDiscoveryManager:Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    const-string v1, "urn:xmpp:spoiler:0"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->removeFeature(Ljava/lang/String;)V

    .line 56
    return-void
.end method
