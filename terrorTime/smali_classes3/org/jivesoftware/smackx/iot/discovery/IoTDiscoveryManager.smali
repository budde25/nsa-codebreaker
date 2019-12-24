.class public final Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;
.super Lorg/jivesoftware/smack/Manager;
.source "IoTDiscoveryManager.java"


# static fields
.field private static final INSTANCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private preconfiguredRegistry:Lorg/jxmpp/jid/Jid;

.field private final things:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smackx/iot/element/NodeInfo;",
            "Lorg/jivesoftware/smackx/iot/discovery/ThingState;",
            ">;"
        }
    .end annotation
.end field

.field private final usedRegistries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jxmpp/jid/Jid;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    const-class v0, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->LOGGER:Ljava/util/logging/Logger;

    .line 74
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->INSTANCES:Ljava/util/Map;

    .line 78
    new-instance v0, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager$1;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/XMPPConnectionRegistry;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 85
    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 13
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 118
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Manager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 110
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->usedRegistries:Ljava/util/Set;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->things:Ljava/util/Map;

    .line 120
    new-instance v0, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager$2;

    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    sget-object v6, Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;->sync:Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;

    const-string v3, "claimed"

    const-string v4, "urn:xmpp:iot:discovery"

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager$2;-><init>(Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V

    invoke-interface {p1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->registerIQRequestHandler(Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;)Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;

    .line 150
    new-instance v0, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager$3;

    sget-object v11, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    sget-object v12, Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;->sync:Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;

    const-string v9, "disown"

    const-string v10, "urn:xmpp:iot:discovery"

    move-object v7, v0

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager$3;-><init>(Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V

    invoke-interface {p1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->registerIQRequestHandler(Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;)Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;

    .line 181
    new-instance v0, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager$4;

    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    sget-object v6, Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;->async:Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;

    const-string v3, "removed"

    const-string v4, "urn:xmpp:iot:discovery"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager$4;-><init>(Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V

    invoke-interface {p1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->registerIQRequestHandler(Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;)Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;

    .line 206
    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .line 70
    sget-object v0, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->LOGGER:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;Lorg/jivesoftware/smackx/iot/element/NodeInfo;)Lorg/jivesoftware/smackx/iot/discovery/ThingState;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;
    .param p1, "x1"    # Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    .line 70
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->getStateFor(Lorg/jivesoftware/smackx/iot/element/NodeInfo;)Lorg/jivesoftware/smackx/iot/discovery/ThingState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;)Lorg/jivesoftware/smack/XMPPConnection;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;

    .line 70
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;)Lorg/jivesoftware/smack/XMPPConnection;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;

    .line 70
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    const-class v0, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;

    monitor-enter v0

    .line 94
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;

    .line 95
    .local v1, "manager":Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;
    if-nez v1, :cond_0

    .line 96
    new-instance v2, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    move-object v1, v2

    .line 97
    sget-object v2, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :cond_0
    monitor-exit v0

    return-object v1

    .line 93
    .end local v1    # "manager":Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;
    .end local p0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getStateFor(Lorg/jivesoftware/smackx/iot/element/NodeInfo;)Lorg/jivesoftware/smackx/iot/discovery/ThingState;
    .locals 2
    .param p1, "nodeInfo"    # Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    .line 420
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->things:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/iot/discovery/ThingState;

    .line 421
    .local v0, "state":Lorg/jivesoftware/smackx/iot/discovery/ThingState;
    if-nez v0, :cond_0

    .line 422
    new-instance v1, Lorg/jivesoftware/smackx/iot/discovery/ThingState;

    invoke-direct {v1, p1}, Lorg/jivesoftware/smackx/iot/discovery/ThingState;-><init>(Lorg/jivesoftware/smackx/iot/element/NodeInfo;)V

    move-object v0, v1

    .line 423
    iget-object v1, p0, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->things:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    :cond_0
    return-object v0
.end method

.method private interactWithRegistry(Lorg/jxmpp/jid/Jid;)V
    .locals 3
    .param p1, "registry"    # Lorg/jxmpp/jid/Jid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 407
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->usedRegistries:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 408
    .local v0, "isNew":Z
    if-nez v0, :cond_0

    .line 409
    return-void

    .line 411
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-static {v1}, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;

    move-result-object v1

    .line 412
    .local v1, "iotProvisioningManager":Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;
    invoke-interface {p1}, Lorg/jxmpp/jid/Jid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;->sendFriendshipRequestIfRequired(Lorg/jxmpp/jid/BareJid;)V

    .line 413
    return-void
.end method


# virtual methods
.method public claimThing(Ljava/util/Collection;)Lorg/jivesoftware/smackx/iot/discovery/element/IoTClaimed;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/jivesoftware/smackx/iot/discovery/element/Tag;",
            ">;)",
            "Lorg/jivesoftware/smackx/iot/discovery/element/IoTClaimed;"
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

    .line 267
    .local p1, "metaTags":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jivesoftware/smackx/iot/discovery/element/Tag;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->claimThing(Ljava/util/Collection;Z)Lorg/jivesoftware/smackx/iot/discovery/element/IoTClaimed;

    move-result-object v0

    return-object v0
.end method

.method public claimThing(Ljava/util/Collection;Z)Lorg/jivesoftware/smackx/iot/discovery/element/IoTClaimed;
    .locals 2
    .param p2, "publicThing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/jivesoftware/smackx/iot/discovery/element/Tag;",
            ">;Z)",
            "Lorg/jivesoftware/smackx/iot/discovery/element/IoTClaimed;"
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

    .line 271
    .local p1, "metaTags":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jivesoftware/smackx/iot/discovery/element/Tag;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->findRegistry()Lorg/jxmpp/jid/Jid;

    move-result-object v0

    .line 272
    .local v0, "registry":Lorg/jxmpp/jid/Jid;
    invoke-virtual {p0, v0, p1, p2}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->claimThing(Lorg/jxmpp/jid/Jid;Ljava/util/Collection;Z)Lorg/jivesoftware/smackx/iot/discovery/element/IoTClaimed;

    move-result-object v1

    return-object v1
.end method

.method public claimThing(Lorg/jxmpp/jid/Jid;Ljava/util/Collection;Z)Lorg/jivesoftware/smackx/iot/discovery/element/IoTClaimed;
    .locals 5
    .param p1, "registry"    # Lorg/jxmpp/jid/Jid;
    .param p3, "publicThing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jxmpp/jid/Jid;",
            "Ljava/util/Collection<",
            "Lorg/jivesoftware/smackx/iot/discovery/element/Tag;",
            ">;Z)",
            "Lorg/jivesoftware/smackx/iot/discovery/element/IoTClaimed;"
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

    .line 290
    .local p2, "metaTags":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jivesoftware/smackx/iot/discovery/element/Tag;>;"
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->interactWithRegistry(Lorg/jxmpp/jid/Jid;)V

    .line 292
    new-instance v0, Lorg/jivesoftware/smackx/iot/discovery/element/IoTMine;

    invoke-direct {v0, p2, p3}, Lorg/jivesoftware/smackx/iot/discovery/element/IoTMine;-><init>(Ljava/util/Collection;Z)V

    .line 293
    .local v0, "iotMine":Lorg/jivesoftware/smackx/iot/discovery/element/IoTMine;
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/iot/discovery/element/IoTMine;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 294
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/iot/discovery/element/IoTClaimed;

    .line 297
    .local v1, "iotClaimed":Lorg/jivesoftware/smackx/iot/discovery/element/IoTClaimed;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/iot/discovery/element/IoTClaimed;->getJid()Lorg/jxmpp/jid/Jid;

    move-result-object v2

    .line 299
    .local v2, "thing":Lorg/jxmpp/jid/Jid;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v3

    invoke-static {v3}, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;

    move-result-object v3

    invoke-interface {v2}, Lorg/jxmpp/jid/Jid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;->sendFriendshipRequest(Lorg/jxmpp/jid/BareJid;)V

    .line 301
    return-object v1
.end method

.method public disownThing(Lorg/jxmpp/jid/Jid;)V
    .locals 1
    .param p1, "thing"    # Lorg/jxmpp/jid/Jid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 361
    sget-object v0, Lorg/jivesoftware/smackx/iot/element/NodeInfo;->EMPTY:Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->disownThing(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/iot/element/NodeInfo;)V

    .line 362
    return-void
.end method

.method public disownThing(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/iot/element/NodeInfo;)V
    .locals 1
    .param p1, "thing"    # Lorg/jxmpp/jid/Jid;
    .param p2, "nodeInfo"    # Lorg/jivesoftware/smackx/iot/element/NodeInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 366
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->findRegistry()Lorg/jxmpp/jid/Jid;

    move-result-object v0

    .line 367
    .local v0, "registry":Lorg/jxmpp/jid/Jid;
    invoke-virtual {p0, v0, p1, p2}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->disownThing(Lorg/jxmpp/jid/Jid;Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/iot/element/NodeInfo;)V

    .line 368
    return-void
.end method

.method public disownThing(Lorg/jxmpp/jid/Jid;Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/iot/element/NodeInfo;)V
    .locals 2
    .param p1, "registry"    # Lorg/jxmpp/jid/Jid;
    .param p2, "thing"    # Lorg/jxmpp/jid/Jid;
    .param p3, "nodeInfo"    # Lorg/jivesoftware/smackx/iot/element/NodeInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 372
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->interactWithRegistry(Lorg/jxmpp/jid/Jid;)V

    .line 374
    new-instance v0, Lorg/jivesoftware/smackx/iot/discovery/element/IoTDisown;

    invoke-direct {v0, p2, p3}, Lorg/jivesoftware/smackx/iot/discovery/element/IoTDisown;-><init>(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/iot/element/NodeInfo;)V

    .line 375
    .local v0, "iotDisown":Lorg/jivesoftware/smackx/iot/discovery/element/IoTDisown;
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/iot/discovery/element/IoTDisown;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 376
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    .line 377
    return-void
.end method

.method public findRegistry()Lorg/jxmpp/jid/Jid;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->preconfiguredRegistry:Lorg/jxmpp/jid/Jid;

    if-eqz v0, :cond_0

    .line 221
    return-object v0

    .line 224
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 225
    .local v0, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    invoke-static {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v1

    .line 226
    .local v1, "sdm":Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    const/4 v2, 0x1

    const-string v3, "urn:xmpp:iot:discovery"

    invoke-virtual {v1, v3, v2, v2}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->findServicesDiscoverInfo(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v2

    .line 227
    .local v2, "discoverInfos":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 228
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v3

    return-object v3

    .line 231
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public getStateFor(Lorg/jivesoftware/smackx/iot/Thing;)Lorg/jivesoftware/smackx/iot/discovery/ThingState;
    .locals 2
    .param p1, "thing"    # Lorg/jivesoftware/smackx/iot/Thing;

    .line 416
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->things:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/iot/Thing;->getNodeInfo()Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/iot/discovery/ThingState;

    return-object v0
.end method

.method public isRegistry(Lorg/jxmpp/jid/BareJid;)Z
    .locals 3
    .param p1, "jid"    # Lorg/jxmpp/jid/BareJid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 382
    const-string v0, "JID argument must not be null"

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 385
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->findRegistry()Lorg/jxmpp/jid/Jid;

    move-result-object v0

    .line 386
    .local v0, "registry":Lorg/jxmpp/jid/Jid;
    invoke-interface {p1, v0}, Lorg/jxmpp/jid/BareJid;->equals(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 387
    return v2

    .line 389
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->usedRegistries:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 390
    return v2

    .line 392
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public isRegistry(Lorg/jxmpp/jid/Jid;)Z
    .locals 5
    .param p1, "jid"    # Lorg/jxmpp/jid/Jid;

    .line 397
    :try_start_0
    invoke-interface {p1}, Lorg/jxmpp/jid/Jid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->isRegistry(Lorg/jxmpp/jid/BareJid;)Z

    move-result v0
    :try_end_0
    .catch Lorg/jivesoftware/smack/SmackException$NoResponseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/jivesoftware/smack/XMPPException$XMPPErrorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/jivesoftware/smack/SmackException$NotConnectedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 399
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    .line 401
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    sget-object v1, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not determine if "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is a registry"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 402
    const/4 v1, 0x0

    return v1
.end method

.method public registerThing(Lorg/jivesoftware/smackx/iot/Thing;)Lorg/jivesoftware/smackx/iot/discovery/ThingState;
    .locals 2
    .param p1, "thing"    # Lorg/jivesoftware/smackx/iot/Thing;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smackx/iot/discovery/IoTClaimedException;
        }
    .end annotation

    .line 238
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->findRegistry()Lorg/jxmpp/jid/Jid;

    move-result-object v0

    .line 239
    .local v0, "registry":Lorg/jxmpp/jid/Jid;
    invoke-virtual {p0, v0, p1}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->registerThing(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/iot/Thing;)Lorg/jivesoftware/smackx/iot/discovery/ThingState;

    move-result-object v1

    return-object v1
.end method

.method public registerThing(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/iot/Thing;)Lorg/jivesoftware/smackx/iot/discovery/ThingState;
    .locals 5
    .param p1, "registry"    # Lorg/jxmpp/jid/Jid;
    .param p2, "thing"    # Lorg/jivesoftware/smackx/iot/Thing;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smackx/iot/discovery/IoTClaimedException;
        }
    .end annotation

    .line 244
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 245
    .local v0, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    new-instance v1, Lorg/jivesoftware/smackx/iot/discovery/element/IoTRegister;

    invoke-virtual {p2}, Lorg/jivesoftware/smackx/iot/Thing;->getMetaTags()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {p2}, Lorg/jivesoftware/smackx/iot/Thing;->getNodeInfo()Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    move-result-object v3

    invoke-virtual {p2}, Lorg/jivesoftware/smackx/iot/Thing;->isSelfOwened()Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lorg/jivesoftware/smackx/iot/discovery/element/IoTRegister;-><init>(Ljava/util/Collection;Lorg/jivesoftware/smackx/iot/element/NodeInfo;Z)V

    .line 246
    .local v1, "iotRegister":Lorg/jivesoftware/smackx/iot/discovery/element/IoTRegister;
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smackx/iot/discovery/element/IoTRegister;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 247
    invoke-interface {v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/packet/IQ;

    .line 248
    .local v2, "result":Lorg/jivesoftware/smack/packet/IQ;
    instance-of v3, v2, Lorg/jivesoftware/smackx/iot/discovery/element/IoTClaimed;

    if-nez v3, :cond_0

    .line 253
    invoke-virtual {p2}, Lorg/jivesoftware/smackx/iot/Thing;->getNodeInfo()Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->getStateFor(Lorg/jivesoftware/smackx/iot/element/NodeInfo;)Lorg/jivesoftware/smackx/iot/discovery/ThingState;

    move-result-object v3

    .line 254
    .local v3, "state":Lorg/jivesoftware/smackx/iot/discovery/ThingState;
    invoke-interface {p1}, Lorg/jxmpp/jid/Jid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/iot/discovery/ThingState;->setRegistry(Lorg/jxmpp/jid/BareJid;)V

    .line 256
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->interactWithRegistry(Lorg/jxmpp/jid/Jid;)V

    .line 258
    invoke-static {v0}, Lorg/jivesoftware/smackx/iot/data/IoTDataManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/iot/data/IoTDataManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Lorg/jivesoftware/smackx/iot/data/IoTDataManager;->installThing(Lorg/jivesoftware/smackx/iot/Thing;)V

    .line 259
    invoke-static {v0}, Lorg/jivesoftware/smackx/iot/control/IoTControlManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/iot/control/IoTControlManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Lorg/jivesoftware/smackx/iot/control/IoTControlManager;->installThing(Lorg/jivesoftware/smackx/iot/Thing;)V

    .line 261
    return-object v3

    .line 249
    .end local v3    # "state":Lorg/jivesoftware/smackx/iot/discovery/ThingState;
    :cond_0
    move-object v3, v2

    check-cast v3, Lorg/jivesoftware/smackx/iot/discovery/element/IoTClaimed;

    .line 250
    .local v3, "iotClaimedResult":Lorg/jivesoftware/smackx/iot/discovery/element/IoTClaimed;
    new-instance v4, Lorg/jivesoftware/smackx/iot/discovery/IoTClaimedException;

    invoke-direct {v4, v3}, Lorg/jivesoftware/smackx/iot/discovery/IoTClaimedException;-><init>(Lorg/jivesoftware/smackx/iot/discovery/element/IoTClaimed;)V

    throw v4
.end method

.method public removeThing(Lorg/jxmpp/jid/BareJid;)V
    .locals 1
    .param p1, "thing"    # Lorg/jxmpp/jid/BareJid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 308
    sget-object v0, Lorg/jivesoftware/smackx/iot/element/NodeInfo;->EMPTY:Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->removeThing(Lorg/jxmpp/jid/BareJid;Lorg/jivesoftware/smackx/iot/element/NodeInfo;)V

    .line 309
    return-void
.end method

.method public removeThing(Lorg/jxmpp/jid/BareJid;Lorg/jivesoftware/smackx/iot/element/NodeInfo;)V
    .locals 1
    .param p1, "thing"    # Lorg/jxmpp/jid/BareJid;
    .param p2, "nodeInfo"    # Lorg/jivesoftware/smackx/iot/element/NodeInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 313
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->findRegistry()Lorg/jxmpp/jid/Jid;

    move-result-object v0

    .line 314
    .local v0, "registry":Lorg/jxmpp/jid/Jid;
    invoke-virtual {p0, v0, p1, p2}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->removeThing(Lorg/jxmpp/jid/Jid;Lorg/jxmpp/jid/BareJid;Lorg/jivesoftware/smackx/iot/element/NodeInfo;)V

    .line 315
    return-void
.end method

.method public removeThing(Lorg/jxmpp/jid/Jid;Lorg/jxmpp/jid/BareJid;Lorg/jivesoftware/smackx/iot/element/NodeInfo;)V
    .locals 2
    .param p1, "registry"    # Lorg/jxmpp/jid/Jid;
    .param p2, "thing"    # Lorg/jxmpp/jid/BareJid;
    .param p3, "nodeInfo"    # Lorg/jivesoftware/smackx/iot/element/NodeInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 319
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->interactWithRegistry(Lorg/jxmpp/jid/Jid;)V

    .line 321
    new-instance v0, Lorg/jivesoftware/smackx/iot/discovery/element/IoTRemove;

    invoke-direct {v0, p2, p3}, Lorg/jivesoftware/smackx/iot/discovery/element/IoTRemove;-><init>(Lorg/jxmpp/jid/BareJid;Lorg/jivesoftware/smackx/iot/element/NodeInfo;)V

    .line 322
    .local v0, "iotRemove":Lorg/jivesoftware/smackx/iot/discovery/element/IoTRemove;
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/iot/discovery/element/IoTRemove;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 323
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    .line 326
    return-void
.end method

.method public unregister()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 332
    sget-object v0, Lorg/jivesoftware/smackx/iot/element/NodeInfo;->EMPTY:Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->unregister(Lorg/jivesoftware/smackx/iot/element/NodeInfo;)V

    .line 333
    return-void
.end method

.method public unregister(Lorg/jivesoftware/smackx/iot/element/NodeInfo;)V
    .locals 1
    .param p1, "nodeInfo"    # Lorg/jivesoftware/smackx/iot/element/NodeInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 337
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->findRegistry()Lorg/jxmpp/jid/Jid;

    move-result-object v0

    .line 338
    .local v0, "registry":Lorg/jxmpp/jid/Jid;
    invoke-virtual {p0, v0, p1}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->unregister(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/iot/element/NodeInfo;)V

    .line 339
    return-void
.end method

.method public unregister(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/iot/element/NodeInfo;)V
    .locals 4
    .param p1, "registry"    # Lorg/jxmpp/jid/Jid;
    .param p2, "nodeInfo"    # Lorg/jivesoftware/smackx/iot/element/NodeInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 343
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->interactWithRegistry(Lorg/jxmpp/jid/Jid;)V

    .line 345
    new-instance v0, Lorg/jivesoftware/smackx/iot/discovery/element/IoTUnregister;

    invoke-direct {v0, p2}, Lorg/jivesoftware/smackx/iot/discovery/element/IoTUnregister;-><init>(Lorg/jivesoftware/smackx/iot/element/NodeInfo;)V

    .line 346
    .local v0, "iotUnregister":Lorg/jivesoftware/smackx/iot/discovery/element/IoTUnregister;
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/iot/discovery/element/IoTUnregister;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 347
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    .line 349
    invoke-direct {p0, p2}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->getStateFor(Lorg/jivesoftware/smackx/iot/element/NodeInfo;)Lorg/jivesoftware/smackx/iot/discovery/ThingState;

    move-result-object v1

    .line 350
    .local v1, "state":Lorg/jivesoftware/smackx/iot/discovery/ThingState;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/iot/discovery/ThingState;->setUnregistered()V

    .line 352
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v2

    .line 353
    .local v2, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    invoke-static {v2}, Lorg/jivesoftware/smackx/iot/data/IoTDataManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/iot/data/IoTDataManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Lorg/jivesoftware/smackx/iot/data/IoTDataManager;->uninstallThing(Lorg/jivesoftware/smackx/iot/element/NodeInfo;)Lorg/jivesoftware/smackx/iot/Thing;

    .line 354
    invoke-static {v2}, Lorg/jivesoftware/smackx/iot/control/IoTControlManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/iot/control/IoTControlManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Lorg/jivesoftware/smackx/iot/control/IoTControlManager;->uninstallThing(Lorg/jivesoftware/smackx/iot/element/NodeInfo;)Lorg/jivesoftware/smackx/iot/Thing;

    .line 355
    return-void
.end method
