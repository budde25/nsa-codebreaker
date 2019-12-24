.class public final Lorg/jivesoftware/smackx/pubsub/PubSubManager;
.super Lorg/jivesoftware/smack/Manager;
.source "PubSubManager.java"


# static fields
.field public static final AUTO_CREATE_FEATURE:Ljava/lang/String; = "http://jabber.org/protocol/pubsub#auto-create"

.field private static final INSTANCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Ljava/util/Map<",
            "Lorg/jxmpp/jid/BareJid;",
            "Lorg/jivesoftware/smackx/pubsub/PubSubManager;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private final nodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/pubsub/Node;",
            ">;"
        }
    .end annotation
.end field

.field private final pubSubService:Lorg/jxmpp/jid/BareJid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    const-class v0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->LOGGER:Ljava/util/logging/Logger;

    .line 72
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->INSTANCES:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jxmpp/jid/BareJid;)V
    .locals 1
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p2, "toAddress"    # Lorg/jxmpp/jid/BareJid;

    .line 145
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Manager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 83
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->nodeMap:Ljava/util/Map;

    .line 146
    iput-object p2, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->pubSubService:Lorg/jxmpp/jid/BareJid;

    .line 147
    return-void
.end method

.method public static getInstance(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/pubsub/PubSubManager;
    .locals 5
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "pubSubService":Lorg/jxmpp/jid/DomainBareJid;
    invoke-interface {p0}, Lorg/jivesoftware/smack/XMPPConnection;->isAuthenticated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    :try_start_0
    invoke-static {p0}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->getPubSubService(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v1
    :try_end_0
    .catch Lorg/jivesoftware/smack/SmackException$NoResponseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/jivesoftware/smack/XMPPException$XMPPErrorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/jivesoftware/smack/SmackException$NotConnectedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 102
    :goto_0
    goto :goto_2

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/InterruptedException;
    sget-object v2, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Interrupted while trying to determine PubSub service"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 97
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    sget-object v2, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Could not determine PubSub service"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 104
    :cond_0
    :goto_2
    if-nez v0, :cond_1

    .line 107
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pubsub."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/jivesoftware/smack/XMPPConnection;->getXMPPServiceDomain()Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jxmpp/jid/impl/JidCreate;->domainBareFrom(Ljava/lang/String;)Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v1
    :try_end_1
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v0, v1

    .line 111
    goto :goto_3

    .line 109
    :catch_4
    move-exception v1

    .line 110
    .local v1, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 113
    .end local v1    # "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    :cond_1
    :goto_3
    invoke-static {p0, v0}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->getInstance(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jxmpp/jid/BareJid;)Lorg/jivesoftware/smackx/pubsub/PubSubManager;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized getInstance(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jxmpp/jid/BareJid;)Lorg/jivesoftware/smackx/pubsub/PubSubManager;
    .locals 4
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p1, "pubSubService"    # Lorg/jxmpp/jid/BareJid;

    const-class v0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;

    monitor-enter v0

    .line 124
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 125
    .local v1, "managers":Ljava/util/Map;, "Ljava/util/Map<Lorg/jxmpp/jid/BareJid;Lorg/jivesoftware/smackx/pubsub/PubSubManager;>;"
    if-nez v1, :cond_0

    .line 126
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v1, v2

    .line 127
    sget-object v2, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/pubsub/PubSubManager;

    .line 130
    .local v2, "pubSubManager":Lorg/jivesoftware/smackx/pubsub/PubSubManager;
    if-nez v2, :cond_1

    .line 131
    new-instance v3, Lorg/jivesoftware/smackx/pubsub/PubSubManager;

    invoke-direct {v3, p0, p1}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jxmpp/jid/BareJid;)V

    move-object v2, v3

    .line 132
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :cond_1
    monitor-exit v0

    return-object v2

    .line 123
    .end local v1    # "managers":Ljava/util/Map;, "Ljava/util/Map<Lorg/jxmpp/jid/BareJid;Lorg/jivesoftware/smackx/pubsub/PubSubManager;>;"
    .end local v2    # "pubSubManager":Lorg/jivesoftware/smackx/pubsub/PubSubManager;
    .end local p0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    .end local p1    # "pubSubService":Lorg/jxmpp/jid/BareJid;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getLeafNodeProsodyWorkaround(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/LeafNode;
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smackx/pubsub/PubSubException$NotALeafNodeException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
        }
    .end annotation

    .line 347
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/LeafNode;

    invoke-direct {v0, p0, p1}, Lorg/jivesoftware/smackx/pubsub/LeafNode;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubManager;Ljava/lang/String;)V

    .line 350
    .local v0, "leafNode":Lorg/jivesoftware/smackx/pubsub/LeafNode;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/pubsub/LeafNode;->getItems(I)Ljava/util/List;
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException$XMPPErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    nop

    .line 361
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->nodeMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    return-object v0

    .line 351
    :catch_0
    move-exception v1

    .line 352
    .local v1, "e":Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;->getStanzaError()Lorg/jivesoftware/smack/packet/StanzaError;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/StanzaError;->getCondition()Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    move-result-object v2

    .line 353
    .local v2, "condition":Lorg/jivesoftware/smack/packet/StanzaError$Condition;
    sget-object v3, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->feature_not_implemented:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    if-ne v2, v3, :cond_0

    .line 355
    new-instance v3, Lorg/jivesoftware/smackx/pubsub/PubSubException$NotALeafNodeException;

    iget-object v4, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->pubSubService:Lorg/jxmpp/jid/BareJid;

    invoke-direct {v3, p1, v4}, Lorg/jivesoftware/smackx/pubsub/PubSubException$NotALeafNodeException;-><init>(Ljava/lang/String;Lorg/jxmpp/jid/BareJid;)V

    throw v3

    .line 358
    :cond_0
    throw v1
.end method

.method private getOrCreateLeafNodeProsodyWorkaround(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/LeafNode;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smackx/pubsub/PubSubException$NotALeafNodeException;
        }
    .end annotation

    .line 369
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->createNode(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/LeafNode;

    move-result-object v0
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException$XMPPErrorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e1":Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;->getStanzaError()Lorg/jivesoftware/smack/packet/StanzaError;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/StanzaError;->getCondition()Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->conflict:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    if-ne v1, v2, :cond_0

    .line 373
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->getLeafNodeProsodyWorkaround(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/LeafNode;

    move-result-object v1

    return-object v1

    .line 375
    :cond_0
    throw v0
.end method

.method public static getPubSubService(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jxmpp/jid/DomainBareJid;
    .locals 5
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 618
    invoke-static {p0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    const-string v1, "http://jabber.org/protocol/pubsub"

    const/4 v2, 0x1

    const-string v3, "pubsub"

    const-string v4, "service"

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->findService(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v0

    return-object v0
.end method

.method private sendPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/packet/ExtensionElement;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    .locals 2
    .param p1, "type"    # Lorg/jivesoftware/smack/packet/IQ$Type;
    .param p2, "ext"    # Lorg/jivesoftware/smack/packet/ExtensionElement;
    .param p3, "ns"    # Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 573
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->pubSubService:Lorg/jxmpp/jid/BareJid;

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1, p3}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->sendPubsubPacket(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smack/packet/IQ$Type;Ljava/util/List;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public canCreateNodesAndPublishItems()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
        }
    .end annotation

    .line 554
    const/4 v0, 0x0

    .line 556
    .local v0, "leafNode":Lorg/jivesoftware/smackx/pubsub/LeafNode;
    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->createNode()Lorg/jivesoftware/smackx/pubsub/LeafNode;

    move-result-object v1
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException$XMPPErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 564
    if-eqz v0, :cond_0

    .line 565
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/LeafNode;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->deleteNode(Ljava/lang/String;)V

    .line 568
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 564
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 558
    :catch_0
    move-exception v1

    .line 559
    .local v1, "e":Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
    :try_start_1
    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;->getStanzaError()Lorg/jivesoftware/smack/packet/StanzaError;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/StanzaError;->getCondition()Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    move-result-object v2

    sget-object v3, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->forbidden:Lorg/jivesoftware/smack/packet/StanzaError$Condition;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v3, :cond_2

    .line 560
    const/4 v2, 0x0

    .line 564
    if-eqz v0, :cond_1

    .line 565
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/LeafNode;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->deleteNode(Ljava/lang/String;)V

    .line 560
    :cond_1
    return v2

    .line 562
    :cond_2
    nop

    .end local v0    # "leafNode":Lorg/jivesoftware/smackx/pubsub/LeafNode;
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 564
    .end local v1    # "e":Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
    .restart local v0    # "leafNode":Lorg/jivesoftware/smackx/pubsub/LeafNode;
    :goto_0
    if-eqz v0, :cond_3

    .line 565
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/LeafNode;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->deleteNode(Ljava/lang/String;)V

    :cond_3
    throw v1
.end method

.method public createNode()Lorg/jivesoftware/smackx/pubsub/LeafNode;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 159
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    new-instance v1, Lorg/jivesoftware/smackx/pubsub/NodeExtension;

    sget-object v2, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->CREATE:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;)V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->sendPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/packet/ExtensionElement;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    move-result-object v0

    .line 160
    .local v0, "reply":Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    sget-object v1, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->basic:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->getXmlns()Ljava/lang/String;

    move-result-object v1

    const-string v2, "create"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/pubsub/NodeExtension;

    .line 162
    .local v1, "elem":Lorg/jivesoftware/smackx/pubsub/NodeExtension;
    new-instance v2, Lorg/jivesoftware/smackx/pubsub/LeafNode;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;->getNode()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lorg/jivesoftware/smackx/pubsub/LeafNode;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubManager;Ljava/lang/String;)V

    .line 163
    .local v2, "newNode":Lorg/jivesoftware/smackx/pubsub/LeafNode;
    iget-object v3, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->nodeMap:Ljava/util/Map;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/pubsub/LeafNode;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    return-object v2
.end method

.method public createNode(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/LeafNode;
    .locals 1
    .param p1, "nodeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 180
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->createNode(Ljava/lang/String;Lorg/jivesoftware/smackx/xdata/Form;)Lorg/jivesoftware/smackx/pubsub/Node;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/pubsub/LeafNode;

    return-object v0
.end method

.method public createNode(Ljava/lang/String;Lorg/jivesoftware/smackx/xdata/Form;)Lorg/jivesoftware/smackx/pubsub/Node;
    .locals 5
    .param p1, "nodeId"    # Ljava/lang/String;
    .param p2, "config"    # Lorg/jivesoftware/smackx/xdata/Form;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->pubSubService:Lorg/jxmpp/jid/BareJid;

    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    new-instance v2, Lorg/jivesoftware/smackx/pubsub/NodeExtension;

    sget-object v3, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->CREATE:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-direct {v2, v3, p1}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;->createPubsubPacket(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smackx/pubsub/NodeExtension;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    move-result-object v0

    .line 199
    .local v0, "request":Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    const/4 v1, 0x1

    .line 201
    .local v1, "isLeafNode":Z
    if-eqz p2, :cond_0

    .line 202
    new-instance v2, Lorg/jivesoftware/smackx/pubsub/FormNode;

    sget-object v3, Lorg/jivesoftware/smackx/pubsub/FormNodeType;->CONFIGURE:Lorg/jivesoftware/smackx/pubsub/FormNodeType;

    invoke-direct {v2, v3, p2}, Lorg/jivesoftware/smackx/pubsub/FormNode;-><init>(Lorg/jivesoftware/smackx/pubsub/FormNodeType;Lorg/jivesoftware/smackx/xdata/Form;)V

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;->addExtension(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 203
    sget-object v2, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->node_type:Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/pubsub/ConfigureNodeFields;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/jivesoftware/smackx/xdata/Form;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/xdata/FormField;

    move-result-object v2

    .line 205
    .local v2, "nodeTypeField":Lorg/jivesoftware/smackx/xdata/FormField;
    if-eqz v2, :cond_0

    .line 206
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/xdata/FormField;->getValues()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    sget-object v4, Lorg/jivesoftware/smackx/pubsub/NodeType;->leaf:Lorg/jivesoftware/smackx/pubsub/NodeType;

    invoke-virtual {v4}, Lorg/jivesoftware/smackx/pubsub/NodeType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 211
    .end local v2    # "nodeTypeField":Lorg/jivesoftware/smackx/xdata/FormField;
    :cond_0
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->sendPubsubPacket(Lorg/jivesoftware/smackx/pubsub/packet/PubSub;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    .line 212
    if-eqz v1, :cond_1

    new-instance v2, Lorg/jivesoftware/smackx/pubsub/LeafNode;

    invoke-direct {v2, p0, p1}, Lorg/jivesoftware/smackx/pubsub/LeafNode;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lorg/jivesoftware/smackx/pubsub/CollectionNode;

    invoke-direct {v2, p0, p1}, Lorg/jivesoftware/smackx/pubsub/CollectionNode;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubManager;Ljava/lang/String;)V

    .line 213
    .local v2, "newNode":Lorg/jivesoftware/smackx/pubsub/Node;
    :goto_0
    iget-object v3, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->nodeMap:Ljava/util/Map;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/pubsub/Node;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    return-object v2
.end method

.method public deleteNode(Ljava/lang/String;)V
    .locals 3
    .param p1, "nodeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 476
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    new-instance v1, Lorg/jivesoftware/smackx/pubsub/NodeExtension;

    sget-object v2, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->DELETE:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-direct {v1, v2, p1}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;Ljava/lang/String;)V

    sget-object v2, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->DELETE:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->getNamespace()Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->sendPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/packet/ExtensionElement;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    .line 477
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->nodeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    return-void
.end method

.method public discoverNodes(Ljava/lang/String;)Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;
    .locals 2
    .param p1, "nodeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 426
    new-instance v0, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;-><init>()V

    .line 428
    .local v0, "items":Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;
    if-eqz p1, :cond_0

    .line 429
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;->setNode(Ljava/lang/String;)V

    .line 430
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->pubSubService:Lorg/jxmpp/jid/BareJid;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 431
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;

    .line 432
    .local v1, "nodeItems":Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;
    return-object v1
.end method

.method public getAffiliations()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/pubsub/Affiliation;",
            ">;"
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

    .line 461
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->get:Lorg/jivesoftware/smack/packet/IQ$Type;

    new-instance v1, Lorg/jivesoftware/smackx/pubsub/NodeExtension;

    sget-object v2, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->AFFILIATIONS:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;)V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->sendPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/packet/ExtensionElement;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    move-result-object v0

    .line 462
    .local v0, "reply":Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->AFFILIATIONS:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;->getExtension(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/pubsub/AffiliationsExtension;

    .line 463
    .local v1, "listElem":Lorg/jivesoftware/smackx/pubsub/AffiliationsExtension;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/pubsub/AffiliationsExtension;->getAffiliations()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method getConnection()Lorg/jivesoftware/smack/XMPPConnection;
    .locals 1

    .line 577
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultConfiguration()Lorg/jivesoftware/smackx/pubsub/ConfigureForm;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 492
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->get:Lorg/jivesoftware/smack/packet/IQ$Type;

    new-instance v1, Lorg/jivesoftware/smackx/pubsub/NodeExtension;

    sget-object v2, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->DEFAULT:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;)V

    sget-object v2, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->DEFAULT:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->getNamespace()Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->sendPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/packet/ExtensionElement;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    move-result-object v0

    .line 493
    .local v0, "reply":Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->DEFAULT:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-static {v0, v1}, Lorg/jivesoftware/smackx/pubsub/util/NodeUtils;->getFormFromPacket(Lorg/jivesoftware/smack/packet/Stanza;Lorg/jivesoftware/smackx/pubsub/PubSubElementType;)Lorg/jivesoftware/smackx/pubsub/ConfigureForm;

    move-result-object v1

    return-object v1
.end method

.method public getLeafNode(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/LeafNode;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smackx/pubsub/PubSubException$NotALeafNodeException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smackx/pubsub/PubSubException$NotAPubSubNodeException;
        }
    .end annotation

    .line 326
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->getNode(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/Node;

    move-result-object v0
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException$XMPPErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    .local v0, "node":Lorg/jivesoftware/smackx/pubsub/Node;
    nop

    .line 338
    instance-of v1, v0, Lorg/jivesoftware/smackx/pubsub/LeafNode;

    if-eqz v1, :cond_0

    .line 339
    move-object v1, v0

    check-cast v1, Lorg/jivesoftware/smackx/pubsub/LeafNode;

    return-object v1

    .line 342
    :cond_0
    new-instance v1, Lorg/jivesoftware/smackx/pubsub/PubSubException$NotALeafNodeException;

    iget-object v2, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->pubSubService:Lorg/jxmpp/jid/BareJid;

    invoke-direct {v1, p1, v2}, Lorg/jivesoftware/smackx/pubsub/PubSubException$NotALeafNodeException;-><init>(Ljava/lang/String;Lorg/jxmpp/jid/BareJid;)V

    throw v1

    .line 328
    .end local v0    # "node":Lorg/jivesoftware/smackx/pubsub/Node;
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;->getStanzaError()Lorg/jivesoftware/smack/packet/StanzaError;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/StanzaError;->getCondition()Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->service_unavailable:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    if-ne v1, v2, :cond_1

    .line 333
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->getLeafNodeProsodyWorkaround(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/LeafNode;

    move-result-object v1

    return-object v1

    .line 335
    :cond_1
    throw v0
.end method

.method public getNode(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/Node;
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/jivesoftware/smackx/pubsub/Node;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smackx/pubsub/PubSubException$NotAPubSubNodeException;
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->nodeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/pubsub/Node;

    .line 235
    .local v0, "node":Lorg/jivesoftware/smackx/pubsub/Node;
    if-nez v0, :cond_2

    .line 236
    new-instance v1, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;-><init>()V

    .line 237
    .local v1, "info":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    iget-object v2, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->pubSubService:Lorg/jxmpp/jid/BareJid;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 238
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->setNode(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    .line 242
    .local v2, "infoReply":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    const-string v3, "pubsub"

    const-string v4, "leaf"

    invoke-virtual {v2, v3, v4}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->hasIdentity(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 243
    new-instance v3, Lorg/jivesoftware/smackx/pubsub/LeafNode;

    invoke-direct {v3, p0, p1}, Lorg/jivesoftware/smackx/pubsub/LeafNode;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubManager;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    .line 245
    :cond_0
    const-string v4, "collection"

    invoke-virtual {v2, v3, v4}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->hasIdentity(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 246
    new-instance v3, Lorg/jivesoftware/smackx/pubsub/CollectionNode;

    invoke-direct {v3, p0, p1}, Lorg/jivesoftware/smackx/pubsub/CollectionNode;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubManager;Ljava/lang/String;)V

    move-object v0, v3

    .line 251
    :goto_0
    iget-object v3, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->nodeMap:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 249
    :cond_1
    new-instance v3, Lorg/jivesoftware/smackx/pubsub/PubSubException$NotAPubSubNodeException;

    invoke-direct {v3, p1, v2}, Lorg/jivesoftware/smackx/pubsub/PubSubException$NotAPubSubNodeException;-><init>(Ljava/lang/String;Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;)V

    throw v3

    .line 254
    .end local v1    # "info":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    .end local v2    # "infoReply":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    :cond_2
    :goto_1
    move-object v1, v0

    .line 255
    .local v1, "res":Lorg/jivesoftware/smackx/pubsub/Node;, "TT;"
    return-object v1
.end method

.method public getOrCreateLeafNode(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/LeafNode;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smackx/pubsub/PubSubException$NotALeafNodeException;
        }
    .end annotation

    .line 273
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->getNode(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/Node;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/pubsub/LeafNode;
    :try_end_0
    .catch Lorg/jivesoftware/smackx/pubsub/PubSubException$NotAPubSubNodeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/jivesoftware/smack/XMPPException$XMPPErrorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e1":Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;->getStanzaError()Lorg/jivesoftware/smack/packet/StanzaError;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/StanzaError;->getCondition()Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->item_not_found:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    if-ne v1, v2, :cond_1

    .line 281
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->createNode(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/LeafNode;

    move-result-object v1
    :try_end_1
    .catch Lorg/jivesoftware/smack/XMPPException$XMPPErrorException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 283
    :catch_1
    move-exception v1

    .line 284
    .local v1, "e2":Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;->getStanzaError()Lorg/jivesoftware/smack/packet/StanzaError;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/StanzaError;->getCondition()Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    move-result-object v2

    sget-object v3, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->conflict:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    if-ne v2, v3, :cond_0

    .line 287
    :try_start_2
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->getNode(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/Node;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/pubsub/LeafNode;
    :try_end_2
    .catch Lorg/jivesoftware/smackx/pubsub/PubSubException$NotAPubSubNodeException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v2

    .line 289
    :catch_2
    move-exception v2

    .line 291
    .local v2, "e":Lorg/jivesoftware/smackx/pubsub/PubSubException$NotAPubSubNodeException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 294
    .end local v2    # "e":Lorg/jivesoftware/smackx/pubsub/PubSubException$NotAPubSubNodeException;
    :cond_0
    throw v1

    .line 297
    .end local v1    # "e2":Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
    :cond_1
    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;->getStanzaError()Lorg/jivesoftware/smack/packet/StanzaError;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/StanzaError;->getCondition()Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->service_unavailable:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    if-ne v1, v2, :cond_2

    .line 301
    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->LOGGER:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The PubSub service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->pubSubService:Lorg/jxmpp/jid/BareJid;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " threw an DiscoInfoNodeAssertionError, trying workaround for Prosody bug #805 (https://prosody.im/issues/issue/805)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 303
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->getOrCreateLeafNodeProsodyWorkaround(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/LeafNode;

    move-result-object v1

    return-object v1

    .line 305
    :cond_2
    throw v0

    .line 275
    .end local v0    # "e1":Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
    :catch_3
    move-exception v0

    .line 276
    .local v0, "e":Lorg/jivesoftware/smackx/pubsub/PubSubException$NotAPubSubNodeException;
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->createNode(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/LeafNode;

    move-result-object v1

    return-object v1
.end method

.method public getServiceJid()Lorg/jxmpp/jid/BareJid;
    .locals 1

    .line 502
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->pubSubService:Lorg/jxmpp/jid/BareJid;

    return-object v0
.end method

.method public getSubscriptions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/pubsub/Subscription;",
            ">;"
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

    .line 445
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->get:Lorg/jivesoftware/smack/packet/IQ$Type;

    new-instance v1, Lorg/jivesoftware/smackx/pubsub/NodeExtension;

    sget-object v2, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->SUBSCRIPTIONS:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;)V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->sendPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/packet/ExtensionElement;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    move-result-object v0

    .line 446
    .local v0, "reply":Lorg/jivesoftware/smack/packet/Stanza;
    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->SUBSCRIPTIONS:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->getElementName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->SUBSCRIPTIONS:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->getNamespace()Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->getXmlns()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/packet/Stanza;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension;

    .line 447
    .local v1, "subElem":Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension;->getSubscriptions()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getSupportedFeatures()Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 516
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    .line 517
    .local v0, "mgr":Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->pubSubService:Lorg/jxmpp/jid/BareJid;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->discoverInfo(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    move-result-object v1

    return-object v1
.end method

.method sendPubsubPacket(Lorg/jivesoftware/smackx/pubsub/packet/PubSub;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    .locals 2
    .param p1, "packet"    # Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 594
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/IQ;

    .line 595
    .local v0, "resultIQ":Lorg/jivesoftware/smack/packet/IQ;
    instance-of v1, v0, Lorg/jivesoftware/smack/packet/EmptyResultIQ;

    if-eqz v1, :cond_0

    .line 596
    const/4 v1, 0x0

    return-object v1

    .line 598
    :cond_0
    move-object v1, v0

    check-cast v1, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    return-object v1
.end method

.method sendPubsubPacket(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smack/packet/IQ$Type;Ljava/util/List;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    .locals 3
    .param p1, "to"    # Lorg/jxmpp/jid/Jid;
    .param p2, "type"    # Lorg/jivesoftware/smack/packet/IQ$Type;
    .param p4, "ns"    # Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jxmpp/jid/Jid;",
            "Lorg/jivesoftware/smack/packet/IQ$Type;",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/ExtensionElement;",
            ">;",
            "Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;",
            ")",
            "Lorg/jivesoftware/smackx/pubsub/packet/PubSub;"
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

    .line 584
    .local p3, "extList":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/ExtensionElement;>;"
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    invoke-direct {v0, p1, p2, p4}, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;-><init>(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;)V

    .line 585
    .local v0, "pubSub":Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/packet/ExtensionElement;

    .line 586
    .local v2, "pe":Lorg/jivesoftware/smack/packet/ExtensionElement;
    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;->addExtension(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 587
    .end local v2    # "pe":Lorg/jivesoftware/smack/packet/ExtensionElement;
    goto :goto_0

    .line 589
    :cond_0
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->sendPubsubPacket(Lorg/jivesoftware/smackx/pubsub/packet/PubSub;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    move-result-object v1

    return-object v1
.end method

.method public supportsAutomaticNodeCreation()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 533
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    .line 534
    .local v0, "sdm":Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->pubSubService:Lorg/jxmpp/jid/BareJid;

    const-string v2, "http://jabber.org/protocol/pubsub#auto-create"

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->supportsFeature(Lorg/jxmpp/jid/Jid;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public tryToPublishAndPossibleAutoCreate(Ljava/lang/String;Lorg/jivesoftware/smackx/pubsub/Item;)Lorg/jivesoftware/smackx/pubsub/LeafNode;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Lorg/jivesoftware/smackx/pubsub/Item;",
            ">(",
            "Ljava/lang/String;",
            "TI;)",
            "Lorg/jivesoftware/smackx/pubsub/LeafNode;"
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

    .line 399
    .local p2, "item":Lorg/jivesoftware/smackx/pubsub/Item;, "TI;"
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/LeafNode;

    invoke-direct {v0, p0, p1}, Lorg/jivesoftware/smackx/pubsub/LeafNode;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubManager;Ljava/lang/String;)V

    .line 400
    .local v0, "leafNode":Lorg/jivesoftware/smackx/pubsub/LeafNode;
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/pubsub/LeafNode;->publish(Lorg/jivesoftware/smackx/pubsub/Item;)V

    .line 404
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->nodeMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    return-object v0
.end method
