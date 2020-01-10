.class public final Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;
.super Lorg/jivesoftware/smack/Manager;
.source "DeliveryReceiptManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;
    }
.end annotation


# static fields
.field private static final AUTO_ADD_DELIVERY_RECEIPT_REQUESTS_LISTENER:Lorg/jivesoftware/smack/StanzaListener;

.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final MESSAGES_TO_REQUEST_RECEIPTS_FOR:Lorg/jivesoftware/smack/filter/StanzaFilter;

.field private static final MESSAGES_WITH_DELIVERY_RECEIPT:Lorg/jivesoftware/smack/filter/StanzaFilter;

.field private static final NON_ERROR_GROUPCHAT_MESSAGES_WITH_DELIVERY_RECEIPT_REQUEST:Lorg/jivesoftware/smack/filter/StanzaFilter;

.field private static defaultAutoReceiptMode:Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;

.field private static final instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private autoReceiptMode:Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;

.field private final receiptReceivedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jivesoftware/smackx/receipts/ReceiptReceivedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 82
    new-instance v0, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v1, 0x3

    new-array v2, v1, [Lorg/jivesoftware/smack/filter/StanzaFilter;

    sget-object v3, Lorg/jivesoftware/smack/filter/StanzaTypeFilter;->MESSAGE:Lorg/jivesoftware/smack/filter/StanzaTypeFilter;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lorg/jivesoftware/smack/filter/StanzaExtensionFilter;

    new-instance v5, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptRequest;

    invoke-direct {v5}, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptRequest;-><init>()V

    invoke-direct {v3, v5}, Lorg/jivesoftware/smack/filter/StanzaExtensionFilter;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-instance v3, Lorg/jivesoftware/smack/filter/NotFilter;

    sget-object v6, Lorg/jivesoftware/smack/filter/MessageTypeFilter;->ERROR:Lorg/jivesoftware/smack/filter/StanzaFilter;

    invoke-direct {v3, v6}, Lorg/jivesoftware/smack/filter/NotFilter;-><init>(Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-direct {v0, v2}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    sput-object v0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->NON_ERROR_GROUPCHAT_MESSAGES_WITH_DELIVERY_RECEIPT_REQUEST:Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 87
    new-instance v0, Lorg/jivesoftware/smack/filter/AndFilter;

    new-array v2, v6, [Lorg/jivesoftware/smack/filter/StanzaFilter;

    sget-object v3, Lorg/jivesoftware/smack/filter/StanzaTypeFilter;->MESSAGE:Lorg/jivesoftware/smack/filter/StanzaTypeFilter;

    aput-object v3, v2, v4

    new-instance v3, Lorg/jivesoftware/smack/filter/StanzaExtensionFilter;

    const-string v7, "urn:xmpp:receipts"

    const-string v8, "received"

    invoke-direct {v3, v8, v7}, Lorg/jivesoftware/smack/filter/StanzaExtensionFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v2, v5

    invoke-direct {v0, v2}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    sput-object v0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->MESSAGES_WITH_DELIVERY_RECEIPT:Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 90
    const-class v0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->LOGGER:Ljava/util/logging/Logger;

    .line 92
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->instances:Ljava/util/Map;

    .line 95
    new-instance v0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$1;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/XMPPConnectionRegistry;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 127
    sget-object v0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;->ifIsSubscribed:Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;

    sput-object v0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->defaultAutoReceiptMode:Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;

    .line 265
    new-instance v0, Lorg/jivesoftware/smack/filter/AndFilter;

    new-array v1, v1, [Lorg/jivesoftware/smack/filter/StanzaFilter;

    sget-object v2, Lorg/jivesoftware/smack/filter/MessageTypeFilter;->NORMAL_OR_CHAT_OR_HEADLINE:Lorg/jivesoftware/smack/filter/StanzaFilter;

    aput-object v2, v1, v4

    new-instance v2, Lorg/jivesoftware/smack/filter/NotFilter;

    new-instance v3, Lorg/jivesoftware/smack/filter/StanzaExtensionFilter;

    invoke-direct {v3, v8, v7}, Lorg/jivesoftware/smack/filter/StanzaExtensionFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/NotFilter;-><init>(Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    aput-object v2, v1, v5

    sget-object v2, Lorg/jivesoftware/smack/filter/MessageWithBodiesFilter;->INSTANCE:Lorg/jivesoftware/smack/filter/StanzaFilter;

    aput-object v2, v1, v6

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    sput-object v0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->MESSAGES_TO_REQUEST_RECEIPTS_FOR:Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 273
    new-instance v0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$4;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$4;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->AUTO_ADD_DELIVERY_RECEIPT_REQUESTS_LISTENER:Lorg/jivesoftware/smack/StanzaListener;

    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 3
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 143
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Manager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 138
    sget-object v0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->defaultAutoReceiptMode:Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;

    iput-object v0, p0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->autoReceiptMode:Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;

    .line 140
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->receiptReceivedListeners:Ljava/util/Set;

    .line 144
    invoke-static {p1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    .line 145
    .local v0, "sdm":Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    const-string v1, "urn:xmpp:receipts"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    .line 148
    new-instance v1, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$2;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$2;-><init>(Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;)V

    sget-object v2, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->MESSAGES_WITH_DELIVERY_RECEIPT:Lorg/jivesoftware/smack/filter/StanzaFilter;

    invoke-interface {p1, v1, v2}, Lorg/jivesoftware/smack/XMPPConnection;->addAsyncStanzaListener(Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 160
    new-instance v1, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$3;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$3;-><init>(Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;)V

    sget-object v2, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->NON_ERROR_GROUPCHAT_MESSAGES_WITH_DELIVERY_RECEIPT_REQUEST:Lorg/jivesoftware/smack/filter/StanzaFilter;

    invoke-interface {p1, v1, v2}, Lorg/jivesoftware/smack/XMPPConnection;->addAsyncStanzaListener(Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 187
    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;

    .line 75
    iget-object v0, p0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->receiptReceivedListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100(Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;)Lorg/jivesoftware/smack/XMPPConnection;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;

    .line 75
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;)Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;

    .line 75
    iget-object v0, p0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->autoReceiptMode:Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/logging/Logger;
    .locals 1

    .line 75
    sget-object v0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->LOGGER:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static addDeliveryReceiptRequest(Lorg/jivesoftware/smack/packet/Message;)Ljava/lang/String;
    .locals 1
    .param p0, "m"    # Lorg/jivesoftware/smack/packet/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 327
    invoke-static {p0}, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptRequest;->addTo(Lorg/jivesoftware/smack/packet/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    const-class v0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;

    monitor-enter v0

    .line 197
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->instances:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;

    .line 199
    .local v1, "receiptManager":Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;
    if-nez v1, :cond_0

    .line 200
    new-instance v2, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    move-object v1, v2

    .line 201
    sget-object v2, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->instances:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :cond_0
    monitor-exit v0

    return-object v1

    .line 196
    .end local v1    # "receiptManager":Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;
    .end local p0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static hasDeliveryReceiptRequest(Lorg/jivesoftware/smack/packet/Message;)Z
    .locals 1
    .param p0, "message"    # Lorg/jivesoftware/smack/packet/Message;

    .line 312
    invoke-static {p0}, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptRequest;->from(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/receipts/DeliveryReceiptRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static receiptMessageFor(Lorg/jivesoftware/smack/packet/Message;)Lorg/jivesoftware/smack/packet/Message;
    .locals 4
    .param p0, "messageWithReceiptRequest"    # Lorg/jivesoftware/smack/packet/Message;

    .line 341
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Message;->getStanzaId()Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "stanzaId":Ljava/lang/String;
    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->isNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    const/4 v1, 0x0

    return-object v1

    .line 345
    :cond_0
    new-instance v1, Lorg/jivesoftware/smack/packet/Message;

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Message;->getType()Lorg/jivesoftware/smack/packet/Message$Type;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/jivesoftware/smack/packet/Message;-><init>(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smack/packet/Message$Type;)V

    .line 346
    .local v1, "message":Lorg/jivesoftware/smack/packet/Message;
    new-instance v2, Lorg/jivesoftware/smackx/receipts/DeliveryReceipt;

    invoke-direct {v2, v0}, Lorg/jivesoftware/smackx/receipts/DeliveryReceipt;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 347
    return-object v1
.end method

.method public static setDefaultAutoReceiptMode(Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;)V
    .locals 0
    .param p0, "autoReceiptMode"    # Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;

    .line 135
    sput-object p0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->defaultAutoReceiptMode:Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;

    .line 136
    return-void
.end method


# virtual methods
.method public addReceiptReceivedListener(Lorg/jivesoftware/smackx/receipts/ReceiptReceivedListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/jivesoftware/smackx/receipts/ReceiptReceivedListener;

    .line 247
    iget-object v0, p0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->receiptReceivedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 248
    return-void
.end method

.method public autoAddDeliveryReceiptRequests()V
    .locals 3

    .line 290
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    sget-object v1, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->AUTO_ADD_DELIVERY_RECEIPT_REQUESTS_LISTENER:Lorg/jivesoftware/smack/StanzaListener;

    sget-object v2, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->MESSAGES_TO_REQUEST_RECEIPTS_FOR:Lorg/jivesoftware/smack/filter/StanzaFilter;

    invoke-interface {v0, v1, v2}, Lorg/jivesoftware/smack/XMPPConnection;->addStanzaInterceptor(Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 292
    return-void
.end method

.method public dontAutoAddDeliveryReceiptRequests()V
    .locals 2

    .line 301
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    sget-object v1, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->AUTO_ADD_DELIVERY_RECEIPT_REQUESTS_LISTENER:Lorg/jivesoftware/smack/StanzaListener;

    invoke-interface {v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->removeStanzaInterceptor(Lorg/jivesoftware/smack/StanzaListener;)V

    .line 302
    return-void
.end method

.method public getAutoReceiptMode()Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;
    .locals 1

    .line 238
    iget-object v0, p0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->autoReceiptMode:Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;

    return-object v0
.end method

.method public isSupported(Lorg/jxmpp/jid/Jid;)Z
    .locals 2
    .param p1, "jid"    # Lorg/jxmpp/jid/Jid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException;,
            Lorg/jivesoftware/smack/XMPPException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 217
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    const-string v1, "urn:xmpp:receipts"

    invoke-virtual {v0, p1, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->supportsFeature(Lorg/jxmpp/jid/Jid;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public removeReceiptReceivedListener(Lorg/jivesoftware/smackx/receipts/ReceiptReceivedListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/jivesoftware/smackx/receipts/ReceiptReceivedListener;

    .line 256
    iget-object v0, p0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->receiptReceivedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 257
    return-void
.end method

.method public setAutoReceiptMode(Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;)V
    .locals 0
    .param p1, "autoReceiptMode"    # Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;

    .line 229
    iput-object p1, p0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;->autoReceiptMode:Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;

    .line 230
    return-void
.end method
