.class public final Lorg/jivesoftware/smackx/carbons/CarbonManager;
.super Lorg/jivesoftware/smack/Manager;
.source "CarbonManager.java"


# static fields
.field private static final CARBON_EXTENSION_FILTER:Lorg/jivesoftware/smack/filter/StanzaFilter;

.field private static INSTANCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smackx/carbons/CarbonManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final carbonsListener:Lorg/jivesoftware/smack/StanzaListener;

.field private final carbonsListenerAsyncButOrdered:Lorg/jivesoftware/smack/AsyncButOrdered;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jivesoftware/smack/AsyncButOrdered<",
            "Lorg/jxmpp/jid/BareJid;",
            ">;"
        }
    .end annotation
.end field

.field private volatile enabled_state:Z

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jivesoftware/smackx/carbons/CarbonCopyReceivedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 77
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/carbons/CarbonManager;->INSTANCES:Ljava/util/Map;

    .line 80
    new-instance v0, Lorg/jivesoftware/smackx/carbons/CarbonManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/carbons/CarbonManager$1;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/XMPPConnectionRegistry;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 88
    new-instance v0, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v1, 0x2

    new-array v2, v1, [Lorg/jivesoftware/smack/filter/StanzaFilter;

    new-instance v3, Lorg/jivesoftware/smack/filter/OrFilter;

    new-array v1, v1, [Lorg/jivesoftware/smack/filter/StanzaFilter;

    new-instance v4, Lorg/jivesoftware/smack/filter/StanzaExtensionFilter;

    sget-object v5, Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Direction;->sent:Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Direction;

    .line 92
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Direction;->name()Ljava/lang/String;

    move-result-object v5

    const-string v6, "urn:xmpp:carbons:2"

    invoke-direct {v4, v5, v6}, Lorg/jivesoftware/smack/filter/StanzaExtensionFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    aput-object v4, v1, v5

    new-instance v4, Lorg/jivesoftware/smack/filter/StanzaExtensionFilter;

    sget-object v7, Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Direction;->received:Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Direction;

    .line 93
    invoke-virtual {v7}, Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Direction;->name()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v6}, Lorg/jivesoftware/smack/filter/StanzaExtensionFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    aput-object v4, v1, v6

    invoke-direct {v3, v1}, Lorg/jivesoftware/smack/filter/OrFilter;-><init>([Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    aput-object v3, v2, v5

    sget-object v1, Lorg/jivesoftware/smack/filter/StanzaTypeFilter;->MESSAGE:Lorg/jivesoftware/smack/filter/StanzaTypeFilter;

    aput-object v1, v2, v6

    invoke-direct {v0, v2}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    sput-object v0, Lorg/jivesoftware/smackx/carbons/CarbonManager;->CARBON_EXTENSION_FILTER:Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 88
    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 2
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 108
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Manager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 99
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager;->listeners:Ljava/util/Set;

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager;->enabled_state:Z

    .line 105
    new-instance v0, Lorg/jivesoftware/smack/AsyncButOrdered;

    invoke-direct {v0}, Lorg/jivesoftware/smack/AsyncButOrdered;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager;->carbonsListenerAsyncButOrdered:Lorg/jivesoftware/smack/AsyncButOrdered;

    .line 109
    invoke-static {p1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    .line 110
    .local v0, "sdm":Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    const-string v1, "urn:xmpp:carbons:2"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    .line 112
    new-instance v1, Lorg/jivesoftware/smackx/carbons/CarbonManager$2;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smackx/carbons/CarbonManager$2;-><init>(Lorg/jivesoftware/smackx/carbons/CarbonManager;)V

    iput-object v1, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager;->carbonsListener:Lorg/jivesoftware/smack/StanzaListener;

    .line 133
    new-instance v1, Lorg/jivesoftware/smackx/carbons/CarbonManager$3;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smackx/carbons/CarbonManager$3;-><init>(Lorg/jivesoftware/smackx/carbons/CarbonManager;)V

    invoke-interface {p1, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 153
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/carbons/CarbonManager;->addCarbonsListener(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 154
    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smackx/carbons/CarbonManager;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/carbons/CarbonManager;

    .line 75
    iget-object v0, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager;->listeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100(Lorg/jivesoftware/smackx/carbons/CarbonManager;)Lorg/jivesoftware/smack/AsyncButOrdered;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/carbons/CarbonManager;

    .line 75
    iget-object v0, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager;->carbonsListenerAsyncButOrdered:Lorg/jivesoftware/smack/AsyncButOrdered;

    return-object v0
.end method

.method static synthetic access$202(Lorg/jivesoftware/smackx/carbons/CarbonManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smackx/carbons/CarbonManager;
    .param p1, "x1"    # Z

    .line 75
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager;->enabled_state:Z

    return p1
.end method

.method static synthetic access$300(Lorg/jivesoftware/smackx/carbons/CarbonManager;)Lorg/jivesoftware/smack/StanzaListener;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/carbons/CarbonManager;

    .line 75
    iget-object v0, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager;->carbonsListener:Lorg/jivesoftware/smack/StanzaListener;

    return-object v0
.end method

.method static synthetic access$400(Lorg/jivesoftware/smackx/carbons/CarbonManager;)Lorg/jivesoftware/smack/XMPPConnection;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/carbons/CarbonManager;

    .line 75
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/carbons/CarbonManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lorg/jivesoftware/smackx/carbons/CarbonManager;Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smackx/carbons/CarbonManager;
    .param p1, "x1"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 75
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/carbons/CarbonManager;->addCarbonsListener(Lorg/jivesoftware/smack/XMPPConnection;)V

    return-void
.end method

.method private addCarbonsListener(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 6
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 157
    invoke-interface {p1}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v0

    .line 158
    .local v0, "localAddress":Lorg/jxmpp/jid/EntityFullJid;
    if-nez v0, :cond_0

    .line 161
    return-void

    .line 168
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager;->carbonsListener:Lorg/jivesoftware/smack/StanzaListener;

    new-instance v2, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/jivesoftware/smack/filter/StanzaFilter;

    const/4 v4, 0x0

    sget-object v5, Lorg/jivesoftware/smackx/carbons/CarbonManager;->CARBON_EXTENSION_FILTER:Lorg/jivesoftware/smack/filter/StanzaFilter;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 169
    invoke-static {v0}, Lorg/jivesoftware/smack/filter/FromMatchesFilter;->createBare(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smack/filter/FromMatchesFilter;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 168
    invoke-interface {p1, v1, v2}, Lorg/jivesoftware/smack/XMPPConnection;->addSyncStanzaListener(Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 170
    return-void
.end method

.method private static carbonsEnabledIQ(Z)Lorg/jivesoftware/smack/packet/IQ;
    .locals 1
    .param p0, "new_state"    # Z

    .line 192
    if-eqz p0, :cond_0

    .line 193
    new-instance v0, Lorg/jivesoftware/smackx/carbons/packet/Carbon$Enable;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/carbons/packet/Carbon$Enable;-><init>()V

    .local v0, "request":Lorg/jivesoftware/smack/packet/IQ;
    goto :goto_0

    .line 195
    .end local v0    # "request":Lorg/jivesoftware/smack/packet/IQ;
    :cond_0
    new-instance v0, Lorg/jivesoftware/smackx/carbons/packet/Carbon$Disable;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/carbons/packet/Carbon$Disable;-><init>()V

    .line 197
    .restart local v0    # "request":Lorg/jivesoftware/smack/packet/IQ;
    :goto_0
    return-object v0
.end method

.method public static disableCarbons(Lorg/jivesoftware/smack/packet/Message;)V
    .locals 1
    .param p0, "msg"    # Lorg/jivesoftware/smack/packet/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 361
    sget-object v0, Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Private;->INSTANCE:Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Private;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 362
    return-void
.end method

.method public static declared-synchronized getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/carbons/CarbonManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    const-class v0, Lorg/jivesoftware/smackx/carbons/CarbonManager;

    monitor-enter v0

    .line 180
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/carbons/CarbonManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/carbons/CarbonManager;

    .line 182
    .local v1, "carbonManager":Lorg/jivesoftware/smackx/carbons/CarbonManager;
    if-nez v1, :cond_0

    .line 183
    new-instance v2, Lorg/jivesoftware/smackx/carbons/CarbonManager;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/carbons/CarbonManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    move-object v1, v2

    .line 184
    sget-object v2, Lorg/jivesoftware/smackx/carbons/CarbonManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :cond_0
    monitor-exit v0

    return-object v1

    .line 179
    .end local v1    # "carbonManager":Lorg/jivesoftware/smackx/carbons/CarbonManager;
    .end local p0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private sendUseCarbons(ZLorg/jivesoftware/smack/util/ExceptionCallback;)V
    .locals 3
    .param p1, "use"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/jivesoftware/smack/util/ExceptionCallback<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 284
    .local p2, "exceptionCallback":Lorg/jivesoftware/smack/util/ExceptionCallback;, "Lorg/jivesoftware/smack/util/ExceptionCallback<Ljava/lang/Exception;>;"
    invoke-static {p1}, Lorg/jivesoftware/smackx/carbons/CarbonManager;->carbonsEnabledIQ(Z)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    .line 286
    .local v0, "setIQ":Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/carbons/CarbonManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->sendIqRequestAsync(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/SmackFuture;

    move-result-object v1

    .line 288
    .local v1, "future":Lorg/jivesoftware/smack/SmackFuture;, "Lorg/jivesoftware/smack/SmackFuture<Lorg/jivesoftware/smack/packet/IQ;Ljava/lang/Exception;>;"
    new-instance v2, Lorg/jivesoftware/smackx/carbons/CarbonManager$4;

    invoke-direct {v2, p0, p1}, Lorg/jivesoftware/smackx/carbons/CarbonManager$4;-><init>(Lorg/jivesoftware/smackx/carbons/CarbonManager;Z)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/SmackFuture;->onSuccess(Lorg/jivesoftware/smack/util/SuccessCallback;)Lorg/jivesoftware/smack/util/CallbackRecipient;

    move-result-object v2

    .line 294
    invoke-interface {v2, p2}, Lorg/jivesoftware/smack/util/CallbackRecipient;->onError(Lorg/jivesoftware/smack/util/ExceptionCallback;)Lorg/jivesoftware/smack/util/CallbackRecipient;

    .line 295
    return-void
.end method


# virtual methods
.method public addCarbonCopyReceivedListener(Lorg/jivesoftware/smackx/carbons/CarbonCopyReceivedListener;)Z
    .locals 1
    .param p1, "listener"    # Lorg/jivesoftware/smackx/carbons/CarbonCopyReceivedListener;

    .line 208
    iget-object v0, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public disableCarbons()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;,
            Lorg/jivesoftware/smack/SmackException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 341
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/carbons/CarbonManager;->setCarbonsEnabled(Z)V

    .line 342
    return-void
.end method

.method public disableCarbonsAsync(Lorg/jivesoftware/smack/util/ExceptionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/util/ExceptionCallback<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 280
    .local p1, "exceptionCallback":Lorg/jivesoftware/smack/util/ExceptionCallback;, "Lorg/jivesoftware/smack/util/ExceptionCallback<Ljava/lang/Exception;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/jivesoftware/smackx/carbons/CarbonManager;->sendUseCarbons(ZLorg/jivesoftware/smack/util/ExceptionCallback;)V

    .line 281
    return-void
.end method

.method public enableCarbons()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;,
            Lorg/jivesoftware/smack/SmackException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 330
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/carbons/CarbonManager;->setCarbonsEnabled(Z)V

    .line 331
    return-void
.end method

.method public enableCarbonsAsync(Lorg/jivesoftware/smack/util/ExceptionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/util/ExceptionCallback<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 264
    .local p1, "exceptionCallback":Lorg/jivesoftware/smack/util/ExceptionCallback;, "Lorg/jivesoftware/smack/util/ExceptionCallback<Ljava/lang/Exception;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/jivesoftware/smackx/carbons/CarbonManager;->sendUseCarbons(ZLorg/jivesoftware/smack/util/ExceptionCallback;)V

    .line 265
    return-void
.end method

.method public getCarbonsEnabled()Z
    .locals 1

    .line 350
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager;->enabled_state:Z

    return v0
.end method

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

    .line 232
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/carbons/CarbonManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    const-string v1, "urn:xmpp:carbons:2"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->serverSupportsFeature(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public removeCarbonCopyReceivedListener(Lorg/jivesoftware/smackx/carbons/CarbonCopyReceivedListener;)Z
    .locals 1
    .param p1, "listener"    # Lorg/jivesoftware/smackx/carbons/CarbonCopyReceivedListener;

    .line 219
    iget-object v0, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public sendCarbonsEnabled(Z)V
    .locals 1
    .param p1, "new_state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 248
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/carbons/CarbonManager;->sendUseCarbons(ZLorg/jivesoftware/smack/util/ExceptionCallback;)V

    .line 249
    return-void
.end method

.method public declared-synchronized setCarbonsEnabled(Z)V
    .locals 2
    .param p1, "new_state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 313
    :try_start_0
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager;->enabled_state:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 314
    monitor-exit p0

    return-void

    .line 316
    :cond_0
    :try_start_1
    invoke-static {p1}, Lorg/jivesoftware/smackx/carbons/CarbonManager;->carbonsEnabledIQ(Z)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    .line 318
    .local v0, "setIQ":Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/carbons/CarbonManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    .line 319
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/carbons/CarbonManager;->enabled_state:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    monitor-exit p0

    return-void

    .line 312
    .end local v0    # "setIQ":Lorg/jivesoftware/smack/packet/IQ;
    .end local p0    # "this":Lorg/jivesoftware/smackx/carbons/CarbonManager;
    .end local p1    # "new_state":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
