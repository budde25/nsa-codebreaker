.class public final Lorg/jivesoftware/smackx/privacy/PrivacyListManager;
.super Lorg/jivesoftware/smack/Manager;
.source "PrivacyListManager.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final INSTANCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smackx/privacy/PrivacyListManager;",
            ">;"
        }
    .end annotation
.end field

.field public static final NAMESPACE:Ljava/lang/String; = "jabber:iq:privacy"

.field public static final PRIVACY_FILTER:Lorg/jivesoftware/smack/filter/StanzaFilter;

.field private static final PRIVACY_RESULT:Lorg/jivesoftware/smack/filter/StanzaFilter;


# instance fields
.field private volatile cachedActiveListName:Ljava/lang/String;

.field private volatile cachedDefaultListName:Ljava/lang/String;

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jivesoftware/smackx/privacy/PrivacyListListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 67
    nop

    .line 70
    new-instance v0, Lorg/jivesoftware/smack/filter/StanzaTypeFilter;

    const-class v1, Lorg/jivesoftware/smackx/privacy/packet/Privacy;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/StanzaTypeFilter;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;->PRIVACY_FILTER:Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 72
    new-instance v0, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/jivesoftware/smack/filter/StanzaFilter;

    const/4 v2, 0x0

    sget-object v3, Lorg/jivesoftware/smack/filter/IQTypeFilter;->RESULT:Lorg/jivesoftware/smack/filter/StanzaFilter;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;->PRIVACY_FILTER:Lorg/jivesoftware/smack/filter/StanzaFilter;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    sput-object v0, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;->PRIVACY_RESULT:Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 75
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;->INSTANCES:Ljava/util/Map;

    .line 81
    new-instance v0, Lorg/jivesoftware/smackx/privacy/PrivacyListManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/privacy/PrivacyListManager$1;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/XMPPConnectionRegistry;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 87
    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 7
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 101
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Manager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 77
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;->listeners:Ljava/util/Set;

    .line 103
    new-instance v0, Lorg/jivesoftware/smackx/privacy/PrivacyListManager$2;

    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    sget-object v6, Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;->sync:Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;

    const-string v3, "query"

    const-string v4, "jabber:iq:privacy"

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/jivesoftware/smackx/privacy/PrivacyListManager$2;-><init>(Lorg/jivesoftware/smackx/privacy/PrivacyListManager;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V

    invoke-interface {p1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->registerIQRequestHandler(Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;)Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;

    .line 129
    new-instance v0, Lorg/jivesoftware/smackx/privacy/PrivacyListManager$3;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/privacy/PrivacyListManager$3;-><init>(Lorg/jivesoftware/smackx/privacy/PrivacyListManager;)V

    sget-object v1, Lorg/jivesoftware/smackx/privacy/filter/SetActiveListFilter;->INSTANCE:Lorg/jivesoftware/smackx/privacy/filter/SetActiveListFilter;

    invoke-interface {p1, v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addStanzaSendingListener(Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 151
    new-instance v0, Lorg/jivesoftware/smackx/privacy/PrivacyListManager$4;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/privacy/PrivacyListManager$4;-><init>(Lorg/jivesoftware/smackx/privacy/PrivacyListManager;)V

    sget-object v1, Lorg/jivesoftware/smackx/privacy/filter/SetDefaultListFilter;->INSTANCE:Lorg/jivesoftware/smackx/privacy/filter/SetDefaultListFilter;

    invoke-interface {p1, v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addStanzaSendingListener(Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 173
    new-instance v0, Lorg/jivesoftware/smackx/privacy/PrivacyListManager$5;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/privacy/PrivacyListManager$5;-><init>(Lorg/jivesoftware/smackx/privacy/PrivacyListManager;)V

    sget-object v1, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;->PRIVACY_RESULT:Lorg/jivesoftware/smack/filter/StanzaFilter;

    invoke-interface {p1, v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addSyncStanzaListener(Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 189
    new-instance v0, Lorg/jivesoftware/smackx/privacy/PrivacyListManager$6;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/privacy/PrivacyListManager$6;-><init>(Lorg/jivesoftware/smackx/privacy/PrivacyListManager;)V

    invoke-interface {p1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 201
    invoke-static {p1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    const-string v1, "jabber:iq:privacy"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smackx/privacy/PrivacyListManager;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/privacy/PrivacyListManager;

    .line 67
    iget-object v0, p0, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;->listeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100(Lorg/jivesoftware/smackx/privacy/PrivacyListManager;)Lorg/jivesoftware/smack/XMPPConnection;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/privacy/PrivacyListManager;

    .line 67
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lorg/jivesoftware/smackx/privacy/PrivacyListManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smackx/privacy/PrivacyListManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;->cachedActiveListName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lorg/jivesoftware/smackx/privacy/PrivacyListManager;)Lorg/jivesoftware/smack/XMPPConnection;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/privacy/PrivacyListManager;

    .line 67
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Lorg/jivesoftware/smackx/privacy/PrivacyListManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smackx/privacy/PrivacyListManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;->cachedDefaultListName:Ljava/lang/String;

    return-object p1
.end method

.method public static declared-synchronized getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/privacy/PrivacyListManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    const-class v0, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;

    monitor-enter v0

    .line 211
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;

    .line 212
    .local v1, "plm":Lorg/jivesoftware/smackx/privacy/PrivacyListManager;
    if-nez v1, :cond_0

    .line 213
    new-instance v2, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    move-object v1, v2

    .line 215
    sget-object v2, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :cond_0
    monitor-exit v0

    return-object v1

    .line 210
    .end local v1    # "plm":Lorg/jivesoftware/smackx/privacy/PrivacyListManager;
    .end local p0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getPrivacyListItems(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "listName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;",
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

    .line 380
    nop

    .line 382
    new-instance v0, Lorg/jivesoftware/smackx/privacy/packet/Privacy;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/privacy/packet/Privacy;-><init>()V

    .line 383
    .local v0, "request":Lorg/jivesoftware/smackx/privacy/packet/Privacy;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v1}, Lorg/jivesoftware/smackx/privacy/packet/Privacy;->setPrivacyList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 386
    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;->getRequest(Lorg/jivesoftware/smackx/privacy/packet/Privacy;)Lorg/jivesoftware/smackx/privacy/packet/Privacy;

    move-result-object v1

    .line 388
    .local v1, "privacyAnswer":Lorg/jivesoftware/smackx/privacy/packet/Privacy;
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smackx/privacy/packet/Privacy;->getPrivacyList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private getPrivacyWithListNames()Lorg/jivesoftware/smackx/privacy/packet/Privacy;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 269
    new-instance v0, Lorg/jivesoftware/smackx/privacy/packet/Privacy;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/privacy/packet/Privacy;-><init>()V

    .line 272
    .local v0, "request":Lorg/jivesoftware/smackx/privacy/packet/Privacy;
    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;->getRequest(Lorg/jivesoftware/smackx/privacy/packet/Privacy;)Lorg/jivesoftware/smackx/privacy/packet/Privacy;

    move-result-object v1

    return-object v1
.end method

.method private getRequest(Lorg/jivesoftware/smackx/privacy/packet/Privacy;)Lorg/jivesoftware/smackx/privacy/packet/Privacy;
    .locals 1
    .param p1, "requestPrivacy"    # Lorg/jivesoftware/smackx/privacy/packet/Privacy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 234
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->get:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smackx/privacy/packet/Privacy;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 236
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/privacy/packet/Privacy;

    return-object v0
.end method

.method private setRequest(Lorg/jivesoftware/smackx/privacy/packet/Privacy;)Lorg/jivesoftware/smack/packet/Stanza;
    .locals 1
    .param p1, "requestPrivacy"    # Lorg/jivesoftware/smackx/privacy/packet/Privacy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 253
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smackx/privacy/packet/Privacy;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 255
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addListener(Lorg/jivesoftware/smackx/privacy/PrivacyListListener;)Z
    .locals 1
    .param p1, "listener"    # Lorg/jivesoftware/smackx/privacy/PrivacyListListener;

    .line 557
    iget-object v0, p0, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public createPrivacyList(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "listName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;",
            ">;)V"
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

    .line 507
    .local p2, "privacyItems":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;>;"
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;->updatePrivacyList(Ljava/lang/String;Ljava/util/List;)V

    .line 508
    return-void
.end method

.method public declineActiveList()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 455
    new-instance v0, Lorg/jivesoftware/smackx/privacy/packet/Privacy;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/privacy/packet/Privacy;-><init>()V

    .line 456
    .local v0, "request":Lorg/jivesoftware/smackx/privacy/packet/Privacy;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/privacy/packet/Privacy;->setDeclineActiveList(Z)V

    .line 459
    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;->setRequest(Lorg/jivesoftware/smackx/privacy/packet/Privacy;)Lorg/jivesoftware/smack/packet/Stanza;

    .line 460
    return-void
.end method

.method public declineDefaultList()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 489
    new-instance v0, Lorg/jivesoftware/smackx/privacy/packet/Privacy;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/privacy/packet/Privacy;-><init>()V

    .line 490
    .local v0, "request":Lorg/jivesoftware/smackx/privacy/packet/Privacy;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/privacy/packet/Privacy;->setDeclineDefaultList(Z)V

    .line 493
    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;->setRequest(Lorg/jivesoftware/smackx/privacy/packet/Privacy;)Lorg/jivesoftware/smack/packet/Stanza;

    .line 494
    return-void
.end method

.method public deletePrivacyList(Ljava/lang/String;)V
    .locals 2
    .param p1, "listName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 542
    new-instance v0, Lorg/jivesoftware/smackx/privacy/packet/Privacy;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/privacy/packet/Privacy;-><init>()V

    .line 543
    .local v0, "request":Lorg/jivesoftware/smackx/privacy/packet/Privacy;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v1}, Lorg/jivesoftware/smackx/privacy/packet/Privacy;->setPrivacyList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 546
    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;->setRequest(Lorg/jivesoftware/smackx/privacy/packet/Privacy;)Lorg/jivesoftware/smack/packet/Stanza;

    .line 547
    return-void
.end method

.method public getActiveList()Lorg/jivesoftware/smackx/privacy/PrivacyList;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 285
    invoke-direct {p0}, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;->getPrivacyWithListNames()Lorg/jivesoftware/smackx/privacy/packet/Privacy;

    move-result-object v0

    .line 286
    .local v0, "privacyAnswer":Lorg/jivesoftware/smackx/privacy/packet/Privacy;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/privacy/packet/Privacy;->getActiveName()Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, "listName":Ljava/lang/String;
    invoke-static {v1}, Lorg/jivesoftware/smack/util/StringUtils;->isNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    const/4 v2, 0x0

    return-object v2

    .line 290
    :cond_0
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/privacy/packet/Privacy;->getDefaultName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 291
    .local v3, "isDefaultAndActive":Z
    :goto_0
    new-instance v4, Lorg/jivesoftware/smackx/privacy/PrivacyList;

    invoke-direct {p0, v1}, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;->getPrivacyListItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v2, v3, v1, v5}, Lorg/jivesoftware/smackx/privacy/PrivacyList;-><init>(ZZLjava/lang/String;Ljava/util/List;)V

    return-object v4
.end method

.method public getActiveListName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;->cachedActiveListName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;->cachedActiveListName:Ljava/lang/String;

    return-object v0

    .line 308
    :cond_0
    invoke-direct {p0}, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;->getPrivacyWithListNames()Lorg/jivesoftware/smackx/privacy/packet/Privacy;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/privacy/packet/Privacy;->getActiveName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultList()Lorg/jivesoftware/smackx/privacy/PrivacyList;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 321
    invoke-direct {p0}, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;->getPrivacyWithListNames()Lorg/jivesoftware/smackx/privacy/packet/Privacy;

    move-result-object v0

    .line 322
    .local v0, "privacyAnswer":Lorg/jivesoftware/smackx/privacy/packet/Privacy;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/privacy/packet/Privacy;->getDefaultName()Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, "listName":Ljava/lang/String;
    invoke-static {v1}, Lorg/jivesoftware/smack/util/StringUtils;->isNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 324
    const/4 v2, 0x0

    return-object v2

    .line 326
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/privacy/packet/Privacy;->getActiveName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 327
    .local v2, "isDefaultAndActive":Z
    new-instance v3, Lorg/jivesoftware/smackx/privacy/PrivacyList;

    const/4 v4, 0x1

    invoke-direct {p0, v1}, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;->getPrivacyListItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v2, v4, v1, v5}, Lorg/jivesoftware/smackx/privacy/PrivacyList;-><init>(ZZLjava/lang/String;Ljava/util/List;)V

    return-object v3
.end method

.method public getDefaultListName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;->cachedDefaultListName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;->cachedDefaultListName:Ljava/lang/String;

    return-object v0

    .line 344
    :cond_0
    invoke-direct {p0}, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;->getPrivacyWithListNames()Lorg/jivesoftware/smackx/privacy/packet/Privacy;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/privacy/packet/Privacy;->getDefaultName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEffectiveListName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 362
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;->getActiveListName()Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, "activeListName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 364
    return-object v0

    .line 366
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;->getDefaultListName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPrivacyList(Ljava/lang/String;)Lorg/jivesoftware/smackx/privacy/PrivacyList;
    .locals 3
    .param p1, "listName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 402
    const-string v0, "List name must not be null"

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/StringUtils;->requireNotNullOrEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Ljava/lang/String;

    .line 403
    new-instance v0, Lorg/jivesoftware/smackx/privacy/PrivacyList;

    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;->getPrivacyListItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, p1, v1}, Lorg/jivesoftware/smackx/privacy/PrivacyList;-><init>(ZZLjava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public getPrivacyLists()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/privacy/PrivacyList;",
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

    .line 416
    invoke-direct {p0}, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;->getPrivacyWithListNames()Lorg/jivesoftware/smackx/privacy/packet/Privacy;

    move-result-object v0

    .line 417
    .local v0, "privacyAnswer":Lorg/jivesoftware/smackx/privacy/packet/Privacy;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/privacy/packet/Privacy;->getPrivacyListNames()Ljava/util/Set;

    move-result-object v1

    .line 418
    .local v1, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 419
    .local v2, "lists":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/privacy/PrivacyList;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 420
    .local v4, "listName":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/privacy/packet/Privacy;->getActiveName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 421
    .local v5, "isActiveList":Z
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/privacy/packet/Privacy;->getDefaultName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 422
    .local v6, "isDefaultList":Z
    new-instance v7, Lorg/jivesoftware/smackx/privacy/PrivacyList;

    .line 423
    invoke-direct {p0, v4}, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;->getPrivacyListItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v5, v6, v4, v8}, Lorg/jivesoftware/smackx/privacy/PrivacyList;-><init>(ZZLjava/lang/String;Ljava/util/List;)V

    .line 422
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    .end local v4    # "listName":Ljava/lang/String;
    .end local v5    # "isActiveList":Z
    .end local v6    # "isDefaultList":Z
    goto :goto_0

    .line 425
    :cond_0
    return-object v2
.end method

.method public isSupported()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 580
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    const-string v1, "jabber:iq:privacy"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->serverSupportsFeature(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public removeListener(Lorg/jivesoftware/smackx/privacy/PrivacyListListener;)Z
    .locals 1
    .param p1, "listener"    # Lorg/jivesoftware/smackx/privacy/PrivacyListListener;

    .line 567
    iget-object v0, p0, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setActiveListName(Ljava/lang/String;)V
    .locals 1
    .param p1, "listName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 439
    new-instance v0, Lorg/jivesoftware/smackx/privacy/packet/Privacy;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/privacy/packet/Privacy;-><init>()V

    .line 440
    .local v0, "request":Lorg/jivesoftware/smackx/privacy/packet/Privacy;
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/privacy/packet/Privacy;->setActiveName(Ljava/lang/String;)V

    .line 443
    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;->setRequest(Lorg/jivesoftware/smackx/privacy/packet/Privacy;)Lorg/jivesoftware/smack/packet/Stanza;

    .line 444
    return-void
.end method

.method public setDefaultListName(Ljava/lang/String;)V
    .locals 1
    .param p1, "listName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 473
    new-instance v0, Lorg/jivesoftware/smackx/privacy/packet/Privacy;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/privacy/packet/Privacy;-><init>()V

    .line 474
    .local v0, "request":Lorg/jivesoftware/smackx/privacy/packet/Privacy;
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/privacy/packet/Privacy;->setDefaultName(Ljava/lang/String;)V

    .line 477
    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;->setRequest(Lorg/jivesoftware/smackx/privacy/packet/Privacy;)Lorg/jivesoftware/smack/packet/Stanza;

    .line 478
    return-void
.end method

.method public updatePrivacyList(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "listName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;",
            ">;)V"
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

    .line 524
    .local p2, "privacyItems":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;>;"
    new-instance v0, Lorg/jivesoftware/smackx/privacy/packet/Privacy;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/privacy/packet/Privacy;-><init>()V

    .line 525
    .local v0, "request":Lorg/jivesoftware/smackx/privacy/packet/Privacy;
    invoke-virtual {v0, p1, p2}, Lorg/jivesoftware/smackx/privacy/packet/Privacy;->setPrivacyList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 528
    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/privacy/PrivacyListManager;->setRequest(Lorg/jivesoftware/smackx/privacy/packet/Privacy;)Lorg/jivesoftware/smack/packet/Stanza;

    .line 529
    return-void
.end method
