.class public final Lorg/jivesoftware/smackx/pep/PEPManager;
.super Lorg/jivesoftware/smack/Manager;
.source "PEPManager.java"


# static fields
.field private static final FROM_BARE_JID_WITH_EVENT_EXTENSION_FILTER:Lorg/jivesoftware/smack/filter/StanzaFilter;

.field private static final INSTANCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smackx/pep/PEPManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final REQUIRED_FEATURES:[Lorg/jivesoftware/smackx/pubsub/PubSubFeature;


# instance fields
.field private final asyncButOrdered:Lorg/jivesoftware/smack/AsyncButOrdered;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jivesoftware/smack/AsyncButOrdered<",
            "Lorg/jxmpp/jid/EntityBareJid;",
            ">;"
        }
    .end annotation
.end field

.field private final pepListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jivesoftware/smackx/pep/PEPListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 73
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/pep/PEPManager;->INSTANCES:Ljava/util/Map;

    .line 84
    new-instance v0, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v1, 0x2

    new-array v2, v1, [Lorg/jivesoftware/smack/filter/StanzaFilter;

    new-instance v3, Lorg/jivesoftware/smack/filter/jidtype/FromJidTypeFilter;

    sget-object v4, Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;->BareJid:Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/filter/jidtype/FromJidTypeFilter;-><init>(Lorg/jivesoftware/smack/filter/jidtype/AbstractJidTypeFilter$JidType;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lorg/jivesoftware/smackx/pubsub/filter/EventExtensionFilter;->INSTANCE:Lorg/jivesoftware/smackx/pubsub/filter/EventExtensionFilter;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-direct {v0, v2}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    sput-object v0, Lorg/jivesoftware/smackx/pep/PEPManager;->FROM_BARE_JID_WITH_EVENT_EXTENSION_FILTER:Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 164
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    sget-object v2, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->auto_create:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    aput-object v2, v0, v4

    sget-object v2, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->auto_subscribe:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    aput-object v2, v0, v5

    sget-object v2, Lorg/jivesoftware/smackx/pubsub/PubSubFeature;->filtered_notifications:Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    aput-object v2, v0, v1

    sput-object v0, Lorg/jivesoftware/smackx/pep/PEPManager;->REQUIRED_FEATURES:[Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 2
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 98
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Manager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 88
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/pep/PEPManager;->pepListeners:Ljava/util/Set;

    .line 90
    new-instance v0, Lorg/jivesoftware/smack/AsyncButOrdered;

    invoke-direct {v0}, Lorg/jivesoftware/smack/AsyncButOrdered;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/pep/PEPManager;->asyncButOrdered:Lorg/jivesoftware/smack/AsyncButOrdered;

    .line 99
    new-instance v0, Lorg/jivesoftware/smackx/pep/PEPManager$1;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/pep/PEPManager$1;-><init>(Lorg/jivesoftware/smackx/pep/PEPManager;)V

    .line 118
    .local v0, "packetListener":Lorg/jivesoftware/smack/StanzaListener;
    sget-object v1, Lorg/jivesoftware/smackx/pep/PEPManager;->FROM_BARE_JID_WITH_EVENT_EXTENSION_FILTER:Lorg/jivesoftware/smack/filter/StanzaFilter;

    invoke-interface {p1, v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addSyncStanzaListener(Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 119
    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smackx/pep/PEPManager;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/pep/PEPManager;

    .line 71
    iget-object v0, p0, Lorg/jivesoftware/smackx/pep/PEPManager;->pepListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100(Lorg/jivesoftware/smackx/pep/PEPManager;)Lorg/jivesoftware/smack/AsyncButOrdered;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/pep/PEPManager;

    .line 71
    iget-object v0, p0, Lorg/jivesoftware/smackx/pep/PEPManager;->asyncButOrdered:Lorg/jivesoftware/smack/AsyncButOrdered;

    return-object v0
.end method

.method public static declared-synchronized getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/pep/PEPManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    const-class v0, Lorg/jivesoftware/smackx/pep/PEPManager;

    monitor-enter v0

    .line 76
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/pep/PEPManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/pep/PEPManager;

    .line 77
    .local v1, "pepManager":Lorg/jivesoftware/smackx/pep/PEPManager;
    if-nez v1, :cond_0

    .line 78
    new-instance v2, Lorg/jivesoftware/smackx/pep/PEPManager;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/pep/PEPManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    move-object v1, v2

    .line 79
    sget-object v2, Lorg/jivesoftware/smackx/pep/PEPManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_0
    monitor-exit v0

    return-object v1

    .line 75
    .end local v1    # "pepManager":Lorg/jivesoftware/smackx/pep/PEPManager;
    .end local p0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public addPEPListener(Lorg/jivesoftware/smackx/pep/PEPListener;)Z
    .locals 1
    .param p1, "pepListener"    # Lorg/jivesoftware/smackx/pep/PEPListener;

    .line 129
    iget-object v0, p0, Lorg/jivesoftware/smackx/pep/PEPManager;->pepListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSupported()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 174
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pep/PEPManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 175
    .local v0, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    invoke-static {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v1

    .line 176
    .local v1, "serviceDiscoveryManager":Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    invoke-interface {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v2

    invoke-interface {v2}, Lorg/jxmpp/jid/EntityFullJid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v2

    .line 177
    .local v2, "localBareJid":Lorg/jxmpp/jid/BareJid;
    sget-object v3, Lorg/jivesoftware/smackx/pep/PEPManager;->REQUIRED_FEATURES:[Lorg/jivesoftware/smackx/pubsub/PubSubFeature;

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->supportsFeatures(Lorg/jxmpp/jid/Jid;[Ljava/lang/CharSequence;)Z

    move-result v3

    return v3
.end method

.method public publish(Lorg/jivesoftware/smackx/pubsub/Item;Ljava/lang/String;)V
    .locals 3
    .param p1, "item"    # Lorg/jivesoftware/smackx/pubsub/Item;
    .param p2, "node"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smackx/pubsub/PubSubException$NotAPubSubNodeException;
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pep/PEPManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 156
    .local v0, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    invoke-interface {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v1

    invoke-interface {v1}, Lorg/jxmpp/jid/EntityFullJid;->asEntityBareJid()Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->getInstance(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jxmpp/jid/BareJid;)Lorg/jivesoftware/smackx/pubsub/PubSubManager;

    move-result-object v1

    .line 157
    .local v1, "pubSubManager":Lorg/jivesoftware/smackx/pubsub/PubSubManager;
    invoke-virtual {v1, p2}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->getNode(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/Node;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/pubsub/LeafNode;

    .line 158
    .local v2, "pubSubNode":Lorg/jivesoftware/smackx/pubsub/LeafNode;
    invoke-virtual {v2, p1}, Lorg/jivesoftware/smackx/pubsub/LeafNode;->publish(Lorg/jivesoftware/smackx/pubsub/Item;)V

    .line 159
    return-void
.end method

.method public removePEPListener(Lorg/jivesoftware/smackx/pep/PEPListener;)Z
    .locals 1
    .param p1, "pepListener"    # Lorg/jivesoftware/smackx/pep/PEPListener;

    .line 139
    iget-object v0, p0, Lorg/jivesoftware/smackx/pep/PEPManager;->pepListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
