.class public final Lorg/jivesoftware/smackx/sid/StableUniqueStanzaIdManager;
.super Lorg/jivesoftware/smack/Manager;
.source "StableUniqueStanzaIdManager.java"


# static fields
.field private static final ADD_ORIGIN_ID_INTERCEPTOR:Lorg/jivesoftware/smack/StanzaListener;

.field private static final INSTANCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smackx/sid/StableUniqueStanzaIdManager;",
            ">;"
        }
    .end annotation
.end field

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:sid:0"

.field private static final OUTGOING_FILTER:Lorg/jivesoftware/smack/filter/StanzaFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 41
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/sid/StableUniqueStanzaIdManager;->INSTANCES:Ljava/util/Map;

    .line 44
    new-instance v0, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/jivesoftware/smack/filter/StanzaFilter;

    sget-object v2, Lorg/jivesoftware/smack/filter/MessageTypeFilter;->NORMAL_OR_CHAT_OR_HEADLINE:Lorg/jivesoftware/smack/filter/StanzaFilter;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lorg/jivesoftware/smack/filter/ToTypeFilter;->ENTITY_FULL_OR_BARE_JID:Lorg/jivesoftware/smack/filter/StanzaFilter;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    sput-object v0, Lorg/jivesoftware/smackx/sid/StableUniqueStanzaIdManager;->OUTGOING_FILTER:Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 49
    new-instance v0, Lorg/jivesoftware/smackx/sid/StableUniqueStanzaIdManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/sid/StableUniqueStanzaIdManager$1;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/sid/StableUniqueStanzaIdManager;->ADD_ORIGIN_ID_INTERCEPTOR:Lorg/jivesoftware/smack/StanzaListener;

    .line 58
    new-instance v0, Lorg/jivesoftware/smackx/sid/StableUniqueStanzaIdManager$2;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/sid/StableUniqueStanzaIdManager$2;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/XMPPConnectionRegistry;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 64
    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 0
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 71
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Manager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 72
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/sid/StableUniqueStanzaIdManager;->enable()V

    .line 73
    return-void
.end method

.method public static declared-synchronized getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/sid/StableUniqueStanzaIdManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    const-class v0, Lorg/jivesoftware/smackx/sid/StableUniqueStanzaIdManager;

    monitor-enter v0

    .line 82
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/sid/StableUniqueStanzaIdManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/sid/StableUniqueStanzaIdManager;

    .line 83
    .local v1, "manager":Lorg/jivesoftware/smackx/sid/StableUniqueStanzaIdManager;
    if-nez v1, :cond_0

    .line 84
    new-instance v2, Lorg/jivesoftware/smackx/sid/StableUniqueStanzaIdManager;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/sid/StableUniqueStanzaIdManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    move-object v1, v2

    .line 85
    sget-object v2, Lorg/jivesoftware/smackx/sid/StableUniqueStanzaIdManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_0
    monitor-exit v0

    return-object v1

    .line 81
    .end local v1    # "manager":Lorg/jivesoftware/smackx/sid/StableUniqueStanzaIdManager;
    .end local p0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public declared-synchronized disable()V
    .locals 2

    monitor-enter p0

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/sid/StableUniqueStanzaIdManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    const-string v1, "urn:xmpp:sid:0"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->removeFeature(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/sid/StableUniqueStanzaIdManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    sget-object v1, Lorg/jivesoftware/smackx/sid/StableUniqueStanzaIdManager;->ADD_ORIGIN_ID_INTERCEPTOR:Lorg/jivesoftware/smack/StanzaListener;

    invoke-interface {v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->removeStanzaInterceptor(Lorg/jivesoftware/smack/StanzaListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    .line 102
    .end local p0    # "this":Lorg/jivesoftware/smackx/sid/StableUniqueStanzaIdManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enable()V
    .locals 5

    monitor-enter p0

    .line 94
    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/sid/StableUniqueStanzaIdManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    const-string v1, "urn:xmpp:sid:0"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    .line 95
    new-instance v0, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/jivesoftware/smack/filter/StanzaFilter;

    const/4 v2, 0x0

    sget-object v3, Lorg/jivesoftware/smackx/sid/StableUniqueStanzaIdManager;->OUTGOING_FILTER:Lorg/jivesoftware/smack/filter/StanzaFilter;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/jivesoftware/smack/filter/NotFilter;

    sget-object v4, Lorg/jivesoftware/smackx/sid/StableUniqueStanzaIdManager;->OUTGOING_FILTER:Lorg/jivesoftware/smack/filter/StanzaFilter;

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/filter/NotFilter;-><init>(Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 96
    .local v0, "filter":Lorg/jivesoftware/smack/filter/StanzaFilter;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/sid/StableUniqueStanzaIdManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smackx/sid/StableUniqueStanzaIdManager;->ADD_ORIGIN_ID_INTERCEPTOR:Lorg/jivesoftware/smack/StanzaListener;

    invoke-interface {v1, v2, v0}, Lorg/jivesoftware/smack/XMPPConnection;->addStanzaInterceptor(Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    .line 93
    .end local v0    # "filter":Lorg/jivesoftware/smack/filter/StanzaFilter;
    .end local p0    # "this":Lorg/jivesoftware/smackx/sid/StableUniqueStanzaIdManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEnabled()Z
    .locals 2

    monitor-enter p0

    .line 113
    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/sid/StableUniqueStanzaIdManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    .line 114
    .local v0, "disco":Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    const-string v1, "urn:xmpp:sid:0"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->includesFeature(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 112
    .end local v0    # "disco":Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    .end local p0    # "this":Lorg/jivesoftware/smackx/sid/StableUniqueStanzaIdManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
