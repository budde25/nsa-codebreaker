.class public abstract Lorg/jivesoftware/smackx/pubsub/Node;
.super Ljava/lang/Object;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/pubsub/Node$EventContentFilter;,
        Lorg/jivesoftware/smackx/pubsub/Node$NodeConfigTranslator;,
        Lorg/jivesoftware/smackx/pubsub/Node$ItemDeleteTranslator;,
        Lorg/jivesoftware/smackx/pubsub/Node$ItemEventTranslator;
    }
.end annotation


# instance fields
.field protected configEventToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lorg/jivesoftware/smackx/pubsub/listener/NodeConfigListener;",
            "Lorg/jivesoftware/smack/StanzaListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final id:Ljava/lang/String;

.field protected itemDeleteToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lorg/jivesoftware/smackx/pubsub/listener/ItemDeleteListener;",
            "Lorg/jivesoftware/smack/StanzaListener;",
            ">;"
        }
    .end annotation
.end field

.field protected itemEventToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lorg/jivesoftware/smackx/pubsub/listener/ItemEventListener<",
            "Lorg/jivesoftware/smackx/pubsub/Item;",
            ">;",
            "Lorg/jivesoftware/smack/StanzaListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final pubSubManager:Lorg/jivesoftware/smackx/pubsub/PubSubManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/pubsub/PubSubManager;Ljava/lang/String;)V
    .locals 1
    .param p1, "pubSubManager"    # Lorg/jivesoftware/smackx/pubsub/PubSubManager;
    .param p2, "nodeId"    # Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/pubsub/Node;->itemEventToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/pubsub/Node;->itemDeleteToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/pubsub/Node;->configEventToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 65
    iput-object p1, p0, Lorg/jivesoftware/smackx/pubsub/Node;->pubSubManager:Lorg/jivesoftware/smackx/pubsub/PubSubManager;

    .line 66
    iput-object p2, p0, Lorg/jivesoftware/smackx/pubsub/Node;->id:Ljava/lang/String;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smack/packet/Stanza;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 49
    invoke-static {p0}, Lorg/jivesoftware/smackx/pubsub/Node;->getSubscriptionIds(Lorg/jivesoftware/smack/packet/Stanza;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getAffiliations(Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;
    .locals 5
    .param p1, "affiliationsNamespace"    # Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/ExtensionElement;",
            ">;",
            "Ljava/util/Collection<",
            "Lorg/jivesoftware/smack/packet/ExtensionElement;",
            ">;)",
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

    .line 327
    .local p2, "additionalExtensions":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/ExtensionElement;>;"
    .local p3, "returnedExtensions":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jivesoftware/smack/packet/ExtensionElement;>;"
    iget-object v0, p1, Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;->type:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    .line 329
    .local v0, "pubSubElementType":Lorg/jivesoftware/smackx/pubsub/PubSubElementType;
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->get:Lorg/jivesoftware/smack/packet/IQ$Type;

    new-instance v2, Lorg/jivesoftware/smackx/pubsub/NodeExtension;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/Node;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/Node;->createPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smackx/pubsub/NodeExtension;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    move-result-object v1

    .line 330
    .local v1, "pubSub":Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    if-eqz p2, :cond_0

    .line 331
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/packet/ExtensionElement;

    .line 332
    .local v3, "pe":Lorg/jivesoftware/smack/packet/ExtensionElement;
    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;->addExtension(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 333
    .end local v3    # "pe":Lorg/jivesoftware/smack/packet/ExtensionElement;
    goto :goto_0

    .line 335
    :cond_0
    invoke-virtual {p0, v1}, Lorg/jivesoftware/smackx/pubsub/Node;->sendPubsubPacket(Lorg/jivesoftware/smackx/pubsub/packet/PubSub;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    move-result-object v2

    .line 336
    .local v2, "reply":Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    if-eqz p3, :cond_1

    .line 337
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;->getExtensions()Ljava/util/List;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 339
    :cond_1
    invoke-virtual {v2, v0}, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;->getExtension(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smackx/pubsub/AffiliationsExtension;

    .line 340
    .local v3, "affilElem":Lorg/jivesoftware/smackx/pubsub/AffiliationsExtension;
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/pubsub/AffiliationsExtension;->getAffiliations()Ljava/util/List;

    move-result-object v4

    return-object v4
.end method

.method private static getSubscriptionIds(Lorg/jivesoftware/smack/packet/Stanza;)Ljava/util/List;
    .locals 5
    .param p0, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/packet/Stanza;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 583
    const-string v0, "headers"

    const-string v1, "http://jabber.org/protocol/shim"

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/packet/Stanza;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/shim/packet/HeadersExtension;

    .line 584
    .local v0, "headers":Lorg/jivesoftware/smackx/shim/packet/HeadersExtension;
    const/4 v1, 0x0

    .line 586
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 587
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/shim/packet/HeadersExtension;->getHeaders()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v2

    .line 589
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/shim/packet/HeadersExtension;->getHeaders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smackx/shim/packet/Header;

    .line 590
    .local v3, "header":Lorg/jivesoftware/smackx/shim/packet/Header;
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/shim/packet/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    .end local v3    # "header":Lorg/jivesoftware/smackx/shim/packet/Header;
    goto :goto_0

    .line 593
    :cond_0
    return-object v1
.end method

.method private getSubscriptions(Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;
    .locals 5
    .param p1, "subscriptionsNamespace"    # Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/ExtensionElement;",
            ">;",
            "Ljava/util/Collection<",
            "Lorg/jivesoftware/smack/packet/ExtensionElement;",
            ">;)",
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

    .line 208
    .local p2, "additionalExtensions":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/ExtensionElement;>;"
    .local p3, "returnedExtensions":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jivesoftware/smack/packet/ExtensionElement;>;"
    iget-object v0, p1, Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;->type:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    .line 210
    .local v0, "pubSubElementType":Lorg/jivesoftware/smackx/pubsub/PubSubElementType;
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->get:Lorg/jivesoftware/smack/packet/IQ$Type;

    new-instance v2, Lorg/jivesoftware/smackx/pubsub/NodeExtension;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/Node;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lorg/jivesoftware/smackx/pubsub/Node;->createPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smackx/pubsub/NodeExtension;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    move-result-object v1

    .line 211
    .local v1, "pubSub":Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    if-eqz p2, :cond_0

    .line 212
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/packet/ExtensionElement;

    .line 213
    .local v3, "pe":Lorg/jivesoftware/smack/packet/ExtensionElement;
    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;->addExtension(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 214
    .end local v3    # "pe":Lorg/jivesoftware/smack/packet/ExtensionElement;
    goto :goto_0

    .line 216
    :cond_0
    invoke-virtual {p0, v1}, Lorg/jivesoftware/smackx/pubsub/Node;->sendPubsubPacket(Lorg/jivesoftware/smackx/pubsub/packet/PubSub;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    move-result-object v2

    .line 217
    .local v2, "reply":Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    if-eqz p3, :cond_1

    .line 218
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;->getExtensions()Ljava/util/List;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 220
    :cond_1
    invoke-virtual {v2, v0}, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;->getExtension(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension;

    .line 221
    .local v3, "subElem":Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension;
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension;->getSubscriptions()Ljava/util/List;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public addConfigurationListener(Lorg/jivesoftware/smackx/pubsub/listener/NodeConfigListener;)V
    .locals 4
    .param p1, "listener"    # Lorg/jivesoftware/smackx/pubsub/listener/NodeConfigListener;

    .line 523
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/Node$NodeConfigTranslator;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smackx/pubsub/Node$NodeConfigTranslator;-><init>(Lorg/jivesoftware/smackx/pubsub/listener/NodeConfigListener;)V

    .line 524
    .local v0, "conListener":Lorg/jivesoftware/smack/StanzaListener;
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/Node;->configEventToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/Node;->pubSubManager:Lorg/jivesoftware/smackx/pubsub/PubSubManager;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    new-instance v2, Lorg/jivesoftware/smackx/pubsub/Node$EventContentFilter;

    sget-object v3, Lorg/jivesoftware/smackx/pubsub/EventElementType;->configuration:Lorg/jivesoftware/smackx/pubsub/EventElementType;

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/pubsub/EventElementType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lorg/jivesoftware/smackx/pubsub/Node$EventContentFilter;-><init>(Lorg/jivesoftware/smackx/pubsub/Node;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lorg/jivesoftware/smack/XMPPConnection;->addSyncStanzaListener(Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 526
    return-void
.end method

.method public addItemDeleteListener(Lorg/jivesoftware/smackx/pubsub/listener/ItemDeleteListener;)V
    .locals 7
    .param p1, "listener"    # Lorg/jivesoftware/smackx/pubsub/listener/ItemDeleteListener;

    .line 547
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/Node$ItemDeleteTranslator;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smackx/pubsub/Node$ItemDeleteTranslator;-><init>(Lorg/jivesoftware/smackx/pubsub/listener/ItemDeleteListener;)V

    .line 548
    .local v0, "delListener":Lorg/jivesoftware/smack/StanzaListener;
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/Node;->itemDeleteToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    new-instance v1, Lorg/jivesoftware/smackx/pubsub/Node$EventContentFilter;

    sget-object v2, Lorg/jivesoftware/smackx/pubsub/EventElementType;->items:Lorg/jivesoftware/smackx/pubsub/EventElementType;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/pubsub/EventElementType;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "retract"

    invoke-direct {v1, p0, v2, v3}, Lorg/jivesoftware/smackx/pubsub/Node$EventContentFilter;-><init>(Lorg/jivesoftware/smackx/pubsub/Node;Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    .local v1, "deleteItem":Lorg/jivesoftware/smackx/pubsub/Node$EventContentFilter;
    new-instance v2, Lorg/jivesoftware/smackx/pubsub/Node$EventContentFilter;

    sget-object v3, Lorg/jivesoftware/smackx/pubsub/EventElementType;->purge:Lorg/jivesoftware/smackx/pubsub/EventElementType;

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/pubsub/EventElementType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lorg/jivesoftware/smackx/pubsub/Node$EventContentFilter;-><init>(Lorg/jivesoftware/smackx/pubsub/Node;Ljava/lang/String;)V

    .line 553
    .local v2, "purge":Lorg/jivesoftware/smackx/pubsub/Node$EventContentFilter;
    iget-object v3, p0, Lorg/jivesoftware/smackx/pubsub/Node;->pubSubManager:Lorg/jivesoftware/smackx/pubsub/PubSubManager;

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v3

    new-instance v4, Lorg/jivesoftware/smack/filter/OrFilter;

    const/4 v5, 0x2

    new-array v5, v5, [Lorg/jivesoftware/smack/filter/StanzaFilter;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/OrFilter;-><init>([Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    invoke-interface {v3, v0, v4}, Lorg/jivesoftware/smack/XMPPConnection;->addSyncStanzaListener(Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 554
    return-void
.end method

.method public addItemEventListener(Lorg/jivesoftware/smackx/pubsub/listener/ItemEventListener;)V
    .locals 5
    .param p1, "listener"    # Lorg/jivesoftware/smackx/pubsub/listener/ItemEventListener;

    .line 499
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/Node$ItemEventTranslator;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smackx/pubsub/Node$ItemEventTranslator;-><init>(Lorg/jivesoftware/smackx/pubsub/listener/ItemEventListener;)V

    .line 500
    .local v0, "conListener":Lorg/jivesoftware/smack/StanzaListener;
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/Node;->itemEventToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/Node;->pubSubManager:Lorg/jivesoftware/smackx/pubsub/PubSubManager;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    new-instance v2, Lorg/jivesoftware/smackx/pubsub/Node$EventContentFilter;

    sget-object v3, Lorg/jivesoftware/smackx/pubsub/EventElementType;->items:Lorg/jivesoftware/smackx/pubsub/EventElementType;

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/pubsub/EventElementType;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "item"

    invoke-direct {v2, p0, v3, v4}, Lorg/jivesoftware/smackx/pubsub/Node$EventContentFilter;-><init>(Lorg/jivesoftware/smackx/pubsub/Node;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lorg/jivesoftware/smack/XMPPConnection;->addSyncStanzaListener(Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 502
    return-void
.end method

.method protected createPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smackx/pubsub/NodeExtension;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    .locals 1
    .param p1, "type"    # Lorg/jivesoftware/smack/packet/IQ$Type;
    .param p2, "ext"    # Lorg/jivesoftware/smackx/pubsub/NodeExtension;

    .line 574
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/Node;->pubSubManager:Lorg/jivesoftware/smackx/pubsub/PubSubManager;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->getServiceJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;->createPubsubPacket(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smackx/pubsub/NodeExtension;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    move-result-object v0

    return-object v0
.end method

.method public discoverInfo()Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 119
    new-instance v0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;-><init>()V

    .line 120
    .local v0, "info":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/Node;->pubSubManager:Lorg/jivesoftware/smackx/pubsub/PubSubManager;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->getServiceJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 121
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/Node;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->setNode(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/Node;->pubSubManager:Lorg/jivesoftware/smackx/pubsub/PubSubManager;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    return-object v1
.end method

.method public getAffiliations()Ljava/util/List;
    .locals 1
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

    .line 259
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lorg/jivesoftware/smackx/pubsub/Node;->getAffiliations(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAffiliations(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/ExtensionElement;",
            ">;",
            "Ljava/util/Collection<",
            "Lorg/jivesoftware/smack/packet/ExtensionElement;",
            ">;)",
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

    .line 281
    .local p1, "additionalExtensions":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/ExtensionElement;>;"
    .local p2, "returnedExtensions":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jivesoftware/smack/packet/ExtensionElement;>;"
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;->basic:Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;

    invoke-direct {p0, v0, p1, p2}, Lorg/jivesoftware/smackx/pubsub/Node;->getAffiliations(Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAffiliationsAsOwner()Ljava/util/List;
    .locals 1
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

    .line 298
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lorg/jivesoftware/smackx/pubsub/Node;->getAffiliationsAsOwner(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAffiliationsAsOwner(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/ExtensionElement;",
            ">;",
            "Ljava/util/Collection<",
            "Lorg/jivesoftware/smack/packet/ExtensionElement;",
            ">;)",
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

    .line 321
    .local p1, "additionalExtensions":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/ExtensionElement;>;"
    .local p2, "returnedExtensions":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jivesoftware/smack/packet/ExtensionElement;>;"
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;->owner:Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;

    invoke-direct {p0, v0, p1, p2}, Lorg/jivesoftware/smackx/pubsub/Node;->getAffiliations(Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/Node;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeConfiguration()Lorg/jivesoftware/smackx/pubsub/ConfigureForm;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 88
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->get:Lorg/jivesoftware/smack/packet/IQ$Type;

    new-instance v1, Lorg/jivesoftware/smackx/pubsub/NodeExtension;

    sget-object v2, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->CONFIGURE_OWNER:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    .line 89
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/Node;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/Node;->createPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smackx/pubsub/NodeExtension;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    move-result-object v0

    .line 90
    .local v0, "pubSub":Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/pubsub/Node;->sendPubsubPacket(Lorg/jivesoftware/smackx/pubsub/packet/PubSub;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    move-result-object v1

    .line 91
    .local v1, "reply":Lorg/jivesoftware/smack/packet/Stanza;
    sget-object v2, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->CONFIGURE_OWNER:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-static {v1, v2}, Lorg/jivesoftware/smackx/pubsub/util/NodeUtils;->getFormFromPacket(Lorg/jivesoftware/smack/packet/Stanza;Lorg/jivesoftware/smackx/pubsub/PubSubElementType;)Lorg/jivesoftware/smackx/pubsub/ConfigureForm;

    move-result-object v2

    return-object v2
.end method

.method public getSubscriptionOptions(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/SubscribeForm;
    .locals 1
    .param p1, "jid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 467
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smackx/pubsub/Node;->getSubscriptionOptions(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/SubscribeForm;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriptionOptions(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/SubscribeForm;
    .locals 4
    .param p1, "jid"    # Ljava/lang/String;
    .param p2, "subscriptionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 485
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->get:Lorg/jivesoftware/smack/packet/IQ$Type;

    new-instance v1, Lorg/jivesoftware/smackx/pubsub/OptionsExtension;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/Node;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, p2}, Lorg/jivesoftware/smackx/pubsub/OptionsExtension;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/Node;->createPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smackx/pubsub/NodeExtension;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/pubsub/Node;->sendPubsubPacket(Lorg/jivesoftware/smackx/pubsub/packet/PubSub;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    move-result-object v0

    .line 486
    .local v0, "packet":Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->OPTIONS:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;->getExtension(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/pubsub/FormNode;

    .line 487
    .local v1, "ext":Lorg/jivesoftware/smackx/pubsub/FormNode;
    new-instance v2, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/pubsub/FormNode;->getForm()Lorg/jivesoftware/smackx/xdata/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jivesoftware/smackx/pubsub/SubscribeForm;-><init>(Lorg/jivesoftware/smackx/xdata/Form;)V

    return-object v2
.end method

.method public getSubscriptions()Ljava/util/List;
    .locals 1
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

    .line 136
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lorg/jivesoftware/smackx/pubsub/Node;->getSubscriptions(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriptions(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/ExtensionElement;",
            ">;",
            "Ljava/util/Collection<",
            "Lorg/jivesoftware/smack/packet/ExtensionElement;",
            ">;)",
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

    .line 157
    .local p1, "additionalExtensions":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/ExtensionElement;>;"
    .local p2, "returnedExtensions":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jivesoftware/smack/packet/ExtensionElement;>;"
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;->basic:Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;

    invoke-direct {p0, v0, p1, p2}, Lorg/jivesoftware/smackx/pubsub/Node;->getSubscriptions(Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriptionsAsOwner()Ljava/util/List;
    .locals 1
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

    .line 173
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lorg/jivesoftware/smackx/pubsub/Node;->getSubscriptionsAsOwner(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriptionsAsOwner(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/ExtensionElement;",
            ">;",
            "Ljava/util/Collection<",
            "Lorg/jivesoftware/smack/packet/ExtensionElement;",
            ">;)",
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

    .line 202
    .local p1, "additionalExtensions":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/ExtensionElement;>;"
    .local p2, "returnedExtensions":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jivesoftware/smack/packet/ExtensionElement;>;"
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;->owner:Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;

    invoke-direct {p0, v0, p1, p2}, Lorg/jivesoftware/smackx/pubsub/Node;->getSubscriptions(Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public modifyAffiliationAsOwner(Ljava/util/List;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/pubsub/Affiliation;",
            ">;)",
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

    .line 361
    .local p1, "affiliations":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/pubsub/Affiliation;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/pubsub/Affiliation;

    .line 362
    .local v1, "affiliation":Lorg/jivesoftware/smackx/pubsub/Affiliation;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/pubsub/Affiliation;->getPubSubNamespace()Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    move-result-object v2

    sget-object v3, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->owner:Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    if-ne v2, v3, :cond_0

    .line 365
    .end local v1    # "affiliation":Lorg/jivesoftware/smackx/pubsub/Affiliation;
    goto :goto_0

    .line 363
    .restart local v1    # "affiliation":Lorg/jivesoftware/smackx/pubsub/Affiliation;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must use Affiliation(BareJid, Type) affiliations"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    .end local v1    # "affiliation":Lorg/jivesoftware/smackx/pubsub/Affiliation;
    :cond_1
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    new-instance v1, Lorg/jivesoftware/smackx/pubsub/AffiliationsExtension;

    sget-object v2, Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;->owner:Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/Node;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3}, Lorg/jivesoftware/smackx/pubsub/AffiliationsExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/Affiliation$AffiliationNamespace;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/Node;->createPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smackx/pubsub/NodeExtension;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    move-result-object v0

    .line 368
    .local v0, "pubSub":Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/pubsub/Node;->sendPubsubPacket(Lorg/jivesoftware/smackx/pubsub/packet/PubSub;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    move-result-object v1

    return-object v1
.end method

.method public modifySubscriptionsAsOwner(Ljava/util/List;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/pubsub/Subscription;",
            ">;)",
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

    .line 243
    .local p1, "changedSubs":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/pubsub/Subscription;>;"
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    new-instance v1, Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension;

    sget-object v2, Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;->owner:Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;

    .line 244
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/Node;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;Ljava/lang/String;Ljava/util/List;)V

    .line 243
    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/Node;->createPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smackx/pubsub/NodeExtension;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    move-result-object v0

    .line 245
    .local v0, "pubSub":Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/pubsub/Node;->sendPubsubPacket(Lorg/jivesoftware/smackx/pubsub/packet/PubSub;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    move-result-object v1

    return-object v1
.end method

.method public removeConfigurationListener(Lorg/jivesoftware/smackx/pubsub/listener/NodeConfigListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/jivesoftware/smackx/pubsub/listener/NodeConfigListener;

    .line 534
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/Node;->configEventToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/StanzaListener;

    .line 536
    .local v0, "conListener":Lorg/jivesoftware/smack/StanzaListener;
    if-eqz v0, :cond_0

    .line 537
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/Node;->pubSubManager:Lorg/jivesoftware/smackx/pubsub/PubSubManager;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->removeSyncStanzaListener(Lorg/jivesoftware/smack/StanzaListener;)Z

    .line 538
    :cond_0
    return-void
.end method

.method public removeItemDeleteListener(Lorg/jivesoftware/smackx/pubsub/listener/ItemDeleteListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/jivesoftware/smackx/pubsub/listener/ItemDeleteListener;

    .line 562
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/Node;->itemDeleteToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/StanzaListener;

    .line 564
    .local v0, "conListener":Lorg/jivesoftware/smack/StanzaListener;
    if-eqz v0, :cond_0

    .line 565
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/Node;->pubSubManager:Lorg/jivesoftware/smackx/pubsub/PubSubManager;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->removeSyncStanzaListener(Lorg/jivesoftware/smack/StanzaListener;)Z

    .line 566
    :cond_0
    return-void
.end method

.method public removeItemEventListener(Lorg/jivesoftware/smackx/pubsub/listener/ItemEventListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/jivesoftware/smackx/pubsub/listener/ItemEventListener;

    .line 510
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/Node;->itemEventToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/StanzaListener;

    .line 512
    .local v0, "conListener":Lorg/jivesoftware/smack/StanzaListener;
    if-eqz v0, :cond_0

    .line 513
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/Node;->pubSubManager:Lorg/jivesoftware/smackx/pubsub/PubSubManager;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->removeSyncStanzaListener(Lorg/jivesoftware/smack/StanzaListener;)Z

    .line 514
    :cond_0
    return-void
.end method

.method public sendConfigurationForm(Lorg/jivesoftware/smackx/xdata/Form;)V
    .locals 4
    .param p1, "submitForm"    # Lorg/jivesoftware/smackx/xdata/Form;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 104
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    new-instance v1, Lorg/jivesoftware/smackx/pubsub/FormNode;

    sget-object v2, Lorg/jivesoftware/smackx/pubsub/FormNodeType;->CONFIGURE_OWNER:Lorg/jivesoftware/smackx/pubsub/FormNodeType;

    .line 105
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/Node;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Lorg/jivesoftware/smackx/pubsub/FormNode;-><init>(Lorg/jivesoftware/smackx/pubsub/FormNodeType;Ljava/lang/String;Lorg/jivesoftware/smackx/xdata/Form;)V

    .line 104
    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/Node;->createPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smackx/pubsub/NodeExtension;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    move-result-object v0

    .line 106
    .local v0, "packet":Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/Node;->pubSubManager:Lorg/jivesoftware/smackx/pubsub/PubSubManager;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    .line 107
    return-void
.end method

.method protected sendPubsubPacket(Lorg/jivesoftware/smackx/pubsub/packet/PubSub;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    .locals 1
    .param p1, "packet"    # Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 578
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/Node;->pubSubManager:Lorg/jivesoftware/smackx/pubsub/PubSubManager;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->sendPubsubPacket(Lorg/jivesoftware/smackx/pubsub/packet/PubSub;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    move-result-object v0

    return-object v0
.end method

.method public subscribe(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/Subscription;
    .locals 3
    .param p1, "jid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 390
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    new-instance v1, Lorg/jivesoftware/smackx/pubsub/SubscribeExtension;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/Node;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/jivesoftware/smackx/pubsub/SubscribeExtension;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/Node;->createPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smackx/pubsub/NodeExtension;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    move-result-object v0

    .line 391
    .local v0, "pubSub":Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/pubsub/Node;->sendPubsubPacket(Lorg/jivesoftware/smackx/pubsub/packet/PubSub;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    move-result-object v1

    .line 392
    .local v1, "reply":Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    sget-object v2, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->SUBSCRIPTION:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;->getExtension(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/pubsub/Subscription;

    return-object v2
.end method

.method public subscribe(Ljava/lang/String;Lorg/jivesoftware/smackx/pubsub/SubscribeForm;)Lorg/jivesoftware/smackx/pubsub/Subscription;
    .locals 3
    .param p1, "jid"    # Ljava/lang/String;
    .param p2, "subForm"    # Lorg/jivesoftware/smackx/pubsub/SubscribeForm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 418
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    new-instance v1, Lorg/jivesoftware/smackx/pubsub/SubscribeExtension;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/Node;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/jivesoftware/smackx/pubsub/SubscribeExtension;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/Node;->createPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smackx/pubsub/NodeExtension;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    move-result-object v0

    .line 419
    .local v0, "request":Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    new-instance v1, Lorg/jivesoftware/smackx/pubsub/FormNode;

    sget-object v2, Lorg/jivesoftware/smackx/pubsub/FormNodeType;->OPTIONS:Lorg/jivesoftware/smackx/pubsub/FormNodeType;

    invoke-direct {v1, v2, p2}, Lorg/jivesoftware/smackx/pubsub/FormNode;-><init>(Lorg/jivesoftware/smackx/pubsub/FormNodeType;Lorg/jivesoftware/smackx/xdata/Form;)V

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;->addExtension(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 420
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/pubsub/Node;->sendPubsubPacket(Lorg/jivesoftware/smackx/pubsub/packet/PubSub;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    move-result-object v1

    .line 421
    .local v1, "reply":Lorg/jivesoftware/smackx/pubsub/packet/PubSub;
    sget-object v2, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->SUBSCRIPTION:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/pubsub/packet/PubSub;->getExtension(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/pubsub/Subscription;

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/Node;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unsubscribe(Ljava/lang/String;)V
    .locals 1
    .param p1, "jid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 437
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smackx/pubsub/Node;->unsubscribe(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    return-void
.end method

.method public unsubscribe(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "jid"    # Ljava/lang/String;
    .param p2, "subscriptionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 451
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    new-instance v1, Lorg/jivesoftware/smackx/pubsub/UnsubscribeExtension;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/Node;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, p2}, Lorg/jivesoftware/smackx/pubsub/UnsubscribeExtension;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smackx/pubsub/Node;->createPubsubPacket(Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smackx/pubsub/NodeExtension;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/pubsub/Node;->sendPubsubPacket(Lorg/jivesoftware/smackx/pubsub/packet/PubSub;)Lorg/jivesoftware/smackx/pubsub/packet/PubSub;

    .line 452
    return-void
.end method
