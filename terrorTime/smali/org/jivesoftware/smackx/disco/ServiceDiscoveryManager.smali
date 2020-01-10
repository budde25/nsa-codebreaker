.class public final Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
.super Lorg/jivesoftware/smack/Manager;
.source "ServiceDiscoveryManager.java"


# static fields
.field private static final DEFAULT_IDENTITY_CATEGORY:Ljava/lang/String; = "client"

.field private static final DEFAULT_IDENTITY_NAME:Ljava/lang/String; = "Smack"

.field private static final DEFAULT_IDENTITY_TYPE:Ljava/lang/String; = "pc"

.field private static defaultIdentity:Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;

.field private static final discoInfoLookupShortcutMechanisms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/disco/DiscoInfoLookupShortcutMechanism;",
            ">;"
        }
    .end annotation
.end field

.field private static final instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final entityCapabilitiesChangedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jivesoftware/smackx/disco/EntityCapabilitiesChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private extendedInfo:Lorg/jivesoftware/smackx/xdata/packet/DataForm;

.field private final features:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final identities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;",
            ">;"
        }
    .end annotation
.end field

.field private identity:Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;

.field private final nodeInformationProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/disco/NodeInformationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final services:Lorg/jxmpp/util/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jxmpp/util/cache/Cache<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->discoInfoLookupShortcutMechanisms:Ljava/util/List;

    .line 79
    new-instance v0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;

    const-string v1, "client"

    const-string v2, "Smack"

    const-string v3, "pc"

    invoke-direct {v0, v1, v2, v3}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->defaultIdentity:Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;

    .line 87
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->instances:Ljava/util/Map;

    .line 95
    new-instance v0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager$1;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/XMPPConnectionRegistry;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 101
    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 13
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 121
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Manager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->identities:Ljava/util/Set;

    .line 83
    sget-object v0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->defaultIdentity:Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;

    iput-object v0, p0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->identity:Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;

    .line 85
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->entityCapabilitiesChangedListeners:Ljava/util/Set;

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->features:Ljava/util/Set;

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->extendedInfo:Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    .line 91
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->nodeInformationProviders:Ljava/util/Map;

    .line 751
    new-instance v0, Lorg/jxmpp/util/cache/ExpirationCache;

    const/16 v1, 0x19

    const-wide/32 v2, 0x5265c00

    invoke-direct {v0, v1, v2, v3}, Lorg/jxmpp/util/cache/ExpirationCache;-><init>(IJ)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->services:Lorg/jxmpp/util/cache/Cache;

    .line 123
    const-string v0, "http://jabber.org/protocol/disco#info"

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    .line 124
    const-string v0, "http://jabber.org/protocol/disco#items"

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    .line 127
    new-instance v0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager$2;

    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->get:Lorg/jivesoftware/smack/packet/IQ$Type;

    sget-object v6, Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;->async:Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;

    const-string v3, "query"

    const-string v4, "http://jabber.org/protocol/disco#items"

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager$2;-><init>(Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V

    invoke-interface {p1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->registerIQRequestHandler(Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;)Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;

    .line 157
    new-instance v0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager$3;

    sget-object v11, Lorg/jivesoftware/smack/packet/IQ$Type;->get:Lorg/jivesoftware/smack/packet/IQ$Type;

    sget-object v12, Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;->async:Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;

    const-string v9, "query"

    const-string v10, "http://jabber.org/protocol/disco#info"

    move-object v7, v0

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager$3;-><init>(Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V

    invoke-interface {p1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->registerIQRequestHandler(Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;)Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;

    .line 193
    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;Ljava/lang/String;)Lorg/jivesoftware/smackx/disco/NodeInformationProvider;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 71
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getNodeInformationProvider(Ljava/lang/String;)Lorg/jivesoftware/smackx/disco/NodeInformationProvider;

    move-result-object v0

    return-object v0
.end method

.method public static addDiscoInfoLookupShortcutMechanism(Lorg/jivesoftware/smackx/disco/DiscoInfoLookupShortcutMechanism;)V
    .locals 2
    .param p0, "discoInfoLookupShortcutMechanism"    # Lorg/jivesoftware/smackx/disco/DiscoInfoLookupShortcutMechanism;

    .line 941
    sget-object v0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->discoInfoLookupShortcutMechanisms:Ljava/util/List;

    monitor-enter v0

    .line 942
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->discoInfoLookupShortcutMechanisms:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 943
    sget-object v1, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->discoInfoLookupShortcutMechanisms:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 944
    monitor-exit v0

    .line 945
    return-void

    .line 944
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static canPublishItems(Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;)Z
    .locals 1
    .param p0, "info"    # Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 608
    const-string v0, "http://jabber.org/protocol/disco#publish"

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->containsFeature(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    const-class v0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    monitor-enter v0

    .line 286
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->instances:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    .line 287
    .local v1, "sdm":Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    if-nez v1, :cond_0

    .line 288
    new-instance v2, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    move-object v1, v2

    .line 290
    sget-object v2, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->instances:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    :cond_0
    monitor-exit v0

    return-object v1

    .line 285
    .end local v1    # "sdm":Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    .end local p0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getNodeInformationProvider(Ljava/lang/String;)Lorg/jivesoftware/smackx/disco/NodeInformationProvider;
    .locals 1
    .param p1, "node"    # Ljava/lang/String;

    .line 325
    if-nez p1, :cond_0

    .line 326
    const/4 v0, 0x0

    return-object v0

    .line 328
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->nodeInformationProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/disco/NodeInformationProvider;

    return-object v0
.end method

.method public static removeDiscoInfoLookupShortcutMechanism(Lorg/jivesoftware/smackx/disco/DiscoInfoLookupShortcutMechanism;)V
    .locals 2
    .param p0, "discoInfoLookupShortcutMechanism"    # Lorg/jivesoftware/smackx/disco/DiscoInfoLookupShortcutMechanism;

    .line 948
    sget-object v0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->discoInfoLookupShortcutMechanisms:Ljava/util/List;

    monitor-enter v0

    .line 949
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->discoInfoLookupShortcutMechanisms:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 950
    monitor-exit v0

    .line 951
    return-void

    .line 950
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private renewEntityCapsVersion()V
    .locals 2

    .line 935
    iget-object v0, p0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->entityCapabilitiesChangedListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/disco/EntityCapabilitiesChangedListener;

    .line 936
    .local v1, "entityCapabilitiesChangedListener":Lorg/jivesoftware/smackx/disco/EntityCapabilitiesChangedListener;
    invoke-interface {v1}, Lorg/jivesoftware/smackx/disco/EntityCapabilitiesChangedListener;->onEntityCapailitiesChanged()V

    .line 937
    .end local v1    # "entityCapabilitiesChangedListener":Lorg/jivesoftware/smackx/disco/EntityCapabilitiesChangedListener;
    goto :goto_0

    .line 938
    :cond_0
    return-void
.end method

.method public static setDefaultIdentity(Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;)V
    .locals 0
    .param p0, "identity"    # Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;

    .line 110
    sput-object p0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->defaultIdentity:Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;

    .line 111
    return-void
.end method


# virtual methods
.method public accountSupportsFeatures(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)Z"
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

    .line 714
    .local p1, "features":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v0

    invoke-interface {v0}, Lorg/jxmpp/jid/EntityFullJid;->asEntityBareJid()Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v0

    .line 715
    .local v0, "accountJid":Lorg/jxmpp/jid/EntityBareJid;
    invoke-virtual {p0, v0, p1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->supportsFeatures(Lorg/jxmpp/jid/Jid;Ljava/util/Collection;)Z

    move-result v1

    return v1
.end method

.method public varargs accountSupportsFeatures([Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "features"    # [Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 697
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->accountSupportsFeatures(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized addDiscoverInfoTo(Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;)V
    .locals 2
    .param p1, "response"    # Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    monitor-enter p0

    .line 304
    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getIdentities()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->addIdentities(Ljava/util/Collection;)V

    .line 307
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getFeatures()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 308
    .local v1, "feature":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->addFeature(Ljava/lang/String;)Z

    .line 309
    nop

    .end local v1    # "feature":Ljava/lang/String;
    goto :goto_0

    .line 310
    .end local p0    # "this":Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->extendedInfo:Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->addExtension(Lorg/jivesoftware/smack/packet/ExtensionElement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    monitor-exit p0

    return-void

    .line 303
    .end local p1    # "response":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addEntityCapabilitiesChangedListener(Lorg/jivesoftware/smackx/disco/EntityCapabilitiesChangedListener;)Z
    .locals 1
    .param p1, "entityCapabilitiesChangedListener"    # Lorg/jivesoftware/smackx/disco/EntityCapabilitiesChangedListener;

    .line 928
    iget-object v0, p0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->entityCapabilitiesChangedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized addFeature(Ljava/lang/String;)V
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;

    monitor-enter p0

    .line 386
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->features:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 389
    invoke-direct {p0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->renewEntityCapsVersion()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    monitor-exit p0

    return-void

    .line 385
    .end local p0    # "this":Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    .end local p1    # "feature":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addIdentity(Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;)V
    .locals 1
    .param p1, "identity"    # Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;

    monitor-enter p0

    .line 245
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->identities:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-direct {p0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->renewEntityCapsVersion()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    monitor-exit p0

    return-void

    .line 244
    .end local p0    # "this":Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    .end local p1    # "identity":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public canPublishItems(Lorg/jxmpp/jid/Jid;)Z
    .locals 2
    .param p1, "entityID"    # Lorg/jxmpp/jid/Jid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 591
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->discoverInfo(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    move-result-object v0

    .line 592
    .local v0, "info":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    invoke-static {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->canPublishItems(Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;)Z

    move-result v1

    return v1
.end method

.method public discoverInfo(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    .locals 5
    .param p1, "entityID"    # Lorg/jxmpp/jid/Jid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 490
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 491
    invoke-virtual {p0, v0, v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->discoverInfo(Lorg/jxmpp/jid/Jid;Ljava/lang/String;)Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    move-result-object v0

    return-object v0

    .line 493
    :cond_0
    sget-object v1, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->discoInfoLookupShortcutMechanisms:Ljava/util/List;

    monitor-enter v1

    .line 494
    :try_start_0
    sget-object v2, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->discoInfoLookupShortcutMechanisms:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smackx/disco/DiscoInfoLookupShortcutMechanism;

    .line 495
    .local v3, "discoInfoLookupShortcutMechanism":Lorg/jivesoftware/smackx/disco/DiscoInfoLookupShortcutMechanism;
    invoke-virtual {v3, p0, p1}, Lorg/jivesoftware/smackx/disco/DiscoInfoLookupShortcutMechanism;->getDiscoverInfoByUser(Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    move-result-object v4

    .line 496
    .local v4, "info":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    if-eqz v4, :cond_1

    .line 499
    monitor-exit v1

    return-object v4

    .line 501
    .end local v3    # "discoInfoLookupShortcutMechanism":Lorg/jivesoftware/smackx/disco/DiscoInfoLookupShortcutMechanism;
    .end local v4    # "info":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    :cond_1
    goto :goto_0

    .line 502
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->discoverInfo(Lorg/jxmpp/jid/Jid;Ljava/lang/String;)Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    move-result-object v0

    return-object v0

    .line 502
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public discoverInfo(Lorg/jxmpp/jid/Jid;Ljava/lang/String;)Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    .locals 3
    .param p1, "entityID"    # Lorg/jxmpp/jid/Jid;
    .param p2, "node"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 526
    new-instance v0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;-><init>()V

    .line 527
    .local v0, "disco":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->get:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 528
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 529
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->setNode(Ljava/lang/String;)V

    .line 531
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v1

    .line 533
    .local v1, "result":Lorg/jivesoftware/smack/packet/Stanza;
    move-object v2, v1

    check-cast v2, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    return-object v2
.end method

.method public discoverItems(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;
    .locals 1
    .param p1, "entityID"    # Lorg/jxmpp/jid/Jid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 547
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->discoverItems(Lorg/jxmpp/jid/Jid;Ljava/lang/String;)Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;

    move-result-object v0

    return-object v0
.end method

.method public discoverItems(Lorg/jxmpp/jid/Jid;Ljava/lang/String;)Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;
    .locals 3
    .param p1, "entityID"    # Lorg/jxmpp/jid/Jid;
    .param p2, "node"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 565
    new-instance v0, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;-><init>()V

    .line 566
    .local v0, "disco":Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->get:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 567
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 568
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;->setNode(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v1

    .line 571
    .local v1, "result":Lorg/jivesoftware/smack/packet/Stanza;
    move-object v2, v1

    check-cast v2, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;

    return-object v2
.end method

.method public findService(Ljava/lang/String;Z)Lorg/jxmpp/jid/DomainBareJid;
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "useCache"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 924
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->findService(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v0

    return-object v0
.end method

.method public findService(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lorg/jxmpp/jid/DomainBareJid;
    .locals 7
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "useCache"    # Z
    .param p3, "category"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 900
    invoke-static {p3}, Lorg/jivesoftware/smack/util/StringUtils;->isNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 901
    .local v0, "noCategory":Z
    invoke-static {p4}, Lorg/jivesoftware/smack/util/StringUtils;->isNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 902
    .local v1, "noType":Z
    if-ne v1, v0, :cond_3

    .line 906
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, p2}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->findServicesDiscoverInfo(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v3

    .line 907
    .local v3, "services":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 908
    const/4 v2, 0x0

    return-object v2

    .line 911
    :cond_0
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 912
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    .line 913
    .local v5, "info":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    invoke-virtual {v5, p3, p4}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->hasIdentity(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 914
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v2

    invoke-interface {v2}, Lorg/jxmpp/jid/Jid;->asDomainBareJid()Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v2

    return-object v2

    .line 916
    .end local v5    # "info":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    :cond_1
    goto :goto_0

    .line 919
    :cond_2
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v2

    invoke-interface {v2}, Lorg/jxmpp/jid/Jid;->asDomainBareJid()Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v2

    return-object v2

    .line 903
    .end local v3    # "services":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;>;"
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Must specify either both, category and type, or none"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public findServices(Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 5
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "stopOnFirst"    # Z
    .param p3, "useCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Lorg/jxmpp/jid/DomainBareJid;",
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

    .line 889
    invoke-virtual {p0, p1, p2, p3}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->findServicesDiscoverInfo(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 890
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 891
    .local v1, "res":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/jid/DomainBareJid;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    .line 892
    .local v3, "info":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v4

    invoke-interface {v4}, Lorg/jxmpp/jid/Jid;->asDomainBareJid()Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 893
    .end local v3    # "info":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    goto :goto_0

    .line 894
    :cond_0
    return-object v1
.end method

.method public findServicesDiscoverInfo(Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "stopOnFirst"    # Z
    .param p3, "useCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;",
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

    .line 768
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->findServicesDiscoverInfo(Ljava/lang/String;ZZLjava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findServicesDiscoverInfo(Ljava/lang/String;ZZLjava/util/Map;)Ljava/util/List;
    .locals 7
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "stopOnFirst"    # Z
    .param p3, "useCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/Map<",
            "-",
            "Lorg/jxmpp/jid/Jid;",
            "Ljava/lang/Exception;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;",
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

    .line 787
    .local p4, "encounteredExceptions":Ljava/util/Map;, "Ljava/util/Map<-Lorg/jxmpp/jid/Jid;Ljava/lang/Exception;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getXMPPServiceDomain()Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v0

    .line 788
    .local v0, "serviceName":Lorg/jxmpp/jid/DomainBareJid;
    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->findServicesDiscoverInfo(Lorg/jxmpp/jid/DomainBareJid;Ljava/lang/String;ZZLjava/util/Map;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public findServicesDiscoverInfo(Lorg/jxmpp/jid/DomainBareJid;Ljava/lang/String;ZZLjava/util/Map;)Ljava/util/List;
    .locals 7
    .param p1, "serviceName"    # Lorg/jxmpp/jid/DomainBareJid;
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "stopOnFirst"    # Z
    .param p4, "useCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jxmpp/jid/DomainBareJid;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/Map<",
            "-",
            "Lorg/jxmpp/jid/Jid;",
            "Ljava/lang/Exception;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;",
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

    .line 810
    .local p5, "encounteredExceptions":Ljava/util/Map;, "Ljava/util/Map<-Lorg/jxmpp/jid/Jid;Ljava/lang/Exception;>;"
    if-eqz p4, :cond_0

    .line 811
    iget-object v0, p0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->services:Lorg/jxmpp/util/cache/Cache;

    invoke-interface {v0, p2}, Lorg/jxmpp/util/cache/Cache;->lookup(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 812
    .local v0, "serviceDiscoInfo":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;>;"
    if-eqz v0, :cond_0

    .line 813
    return-object v0

    .line 816
    .end local v0    # "serviceDiscoInfo":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;>;"
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 820
    .restart local v0    # "serviceDiscoInfo":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->discoverInfo(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    move-result-object v1
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException$XMPPErrorException; {:try_start_0 .. :try_end_0} :catch_3

    .line 826
    .local v1, "info":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    nop

    .line 828
    invoke-virtual {v1, p2}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->containsFeature(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 829
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 830
    if-eqz p3, :cond_2

    .line 831
    if-eqz p4, :cond_1

    .line 833
    iget-object v2, p0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->services:Lorg/jxmpp/util/cache/Cache;

    invoke-interface {v2, p2, v0}, Lorg/jxmpp/util/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    :cond_1
    return-object v0

    .line 841
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->discoverItems(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;

    move-result-object v2
    :try_end_1
    .catch Lorg/jivesoftware/smack/XMPPException$XMPPErrorException; {:try_start_1 .. :try_end_1} :catch_2

    .line 847
    .local v2, "items":Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;
    nop

    .line 848
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;

    .line 849
    .local v4, "item":Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;
    invoke-virtual {v4}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;->getEntityID()Lorg/jxmpp/jid/Jid;

    move-result-object v5

    .line 854
    .local v5, "address":Lorg/jxmpp/jid/Jid;
    :try_start_2
    invoke-virtual {p0, v5}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->discoverInfo(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    move-result-object v6
    :try_end_2
    .catch Lorg/jivesoftware/smack/XMPPException$XMPPErrorException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/jivesoftware/smack/SmackException$NoResponseException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v6

    .line 861
    nop

    .line 862
    invoke-virtual {v1, p2}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->containsFeature(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 863
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 864
    if-eqz p3, :cond_3

    .line 865
    goto :goto_2

    .line 868
    .end local v4    # "item":Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;
    .end local v5    # "address":Lorg/jxmpp/jid/Jid;
    :cond_3
    goto :goto_0

    .line 856
    .restart local v4    # "item":Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;
    .restart local v5    # "address":Lorg/jxmpp/jid/Jid;
    :catch_0
    move-exception v6

    goto :goto_1

    :catch_1
    move-exception v6

    .line 857
    .local v6, "e":Ljava/lang/Exception;
    :goto_1
    if-eqz p5, :cond_4

    .line 858
    invoke-interface {p5, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    :cond_4
    goto :goto_0

    .line 869
    .end local v4    # "item":Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;
    .end local v5    # "address":Lorg/jxmpp/jid/Jid;
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_2
    if-eqz p4, :cond_6

    .line 871
    iget-object v3, p0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->services:Lorg/jxmpp/util/cache/Cache;

    invoke-interface {v3, p2, v0}, Lorg/jxmpp/util/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    :cond_6
    return-object v0

    .line 842
    .end local v2    # "items":Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;
    :catch_2
    move-exception v2

    .line 843
    .local v2, "e":Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
    if-eqz p5, :cond_7

    .line 844
    invoke-interface {p5, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    :cond_7
    return-object v0

    .line 821
    .end local v1    # "info":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    .end local v2    # "e":Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
    :catch_3
    move-exception v1

    .line 822
    .local v1, "e":Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
    if-eqz p5, :cond_8

    .line 823
    invoke-interface {p5, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    :cond_8
    return-object v0
.end method

.method public getExtendedInfo()Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    .locals 1

    .line 446
    iget-object v0, p0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->extendedInfo:Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    return-object v0
.end method

.method public getExtendedInfoAsList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/ExtensionElement;",
            ">;"
        }
    .end annotation

    .line 456
    const/4 v0, 0x0

    .line 457
    .local v0, "res":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/ExtensionElement;>;"
    iget-object v1, p0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->extendedInfo:Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    if-eqz v1, :cond_0

    .line 458
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v1

    .line 459
    iget-object v1, p0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->extendedInfo:Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    :cond_0
    return-object v0
.end method

.method public declared-synchronized getFeatures()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 371
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->features:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getIdentities()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;",
            ">;"
        }
    .end annotation

    .line 273
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->identities:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 275
    .local v0, "res":Ljava/util/Set;, "Ljava/util/Set<Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;>;"
    iget-object v1, p0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->identity:Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public getIdentity()Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;
    .locals 1

    .line 224
    iget-object v0, p0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->identity:Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;

    return-object v0
.end method

.method public getIdentityName()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->identity:Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdentityType()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->identity:Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized includesFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;

    monitor-enter p0

    .line 414
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->features:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    .end local p1    # "feature":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public publishItems(Lorg/jxmpp/jid/Jid;Ljava/lang/String;Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;)V
    .locals 1
    .param p1, "entityID"    # Lorg/jxmpp/jid/Jid;
    .param p2, "node"    # Ljava/lang/String;
    .param p3, "discoverItems"    # Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 649
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p3, v0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 650
    invoke-virtual {p3, p1}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 651
    invoke-virtual {p3, p2}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;->setNode(Ljava/lang/String;)V

    .line 653
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-interface {v0, p3}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    .line 654
    return-void
.end method

.method public publishItems(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;)V
    .locals 1
    .param p1, "entityID"    # Lorg/jxmpp/jid/Jid;
    .param p2, "discoverItems"    # Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 628
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->publishItems(Lorg/jxmpp/jid/Jid;Ljava/lang/String;Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;)V

    .line 629
    return-void
.end method

.method public declared-synchronized removeExtendedInfo()V
    .locals 1

    monitor-enter p0

    .line 472
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->extendedInfo:Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    .line 475
    invoke-direct {p0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->renewEntityCapsVersion()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    monitor-exit p0

    return-void

    .line 471
    .end local p0    # "this":Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeFeature(Ljava/lang/String;)V
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;

    monitor-enter p0

    .line 401
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->features:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 404
    invoke-direct {p0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->renewEntityCapsVersion()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    monitor-exit p0

    return-void

    .line 400
    .end local p0    # "this":Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    .end local p1    # "feature":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeIdentity(Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;)Z
    .locals 1
    .param p1, "identity"    # Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;

    monitor-enter p0

    .line 259
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->identity:Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 260
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->identities:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 263
    invoke-direct {p0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->renewEntityCapsVersion()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 258
    .end local p0    # "this":Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    .end local p1    # "identity":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeNodeInformationProvider(Ljava/lang/String;)V
    .locals 1
    .param p1, "node"    # Ljava/lang/String;

    .line 359
    iget-object v0, p0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->nodeInformationProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    return-void
.end method

.method public serverSupportsFeature(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1, "feature"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 669
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->serverSupportsFeatures([Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public serverSupportsFeatures(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)Z"
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

    .line 680
    .local p1, "features":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getXMPPServiceDomain()Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->supportsFeatures(Lorg/jxmpp/jid/Jid;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public varargs serverSupportsFeatures([Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "features"    # [Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 674
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->serverSupportsFeatures(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setExtendedInfo(Lorg/jivesoftware/smackx/xdata/packet/DataForm;)V
    .locals 0
    .param p1, "info"    # Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    monitor-enter p0

    .line 433
    :try_start_0
    iput-object p1, p0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->extendedInfo:Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    .line 436
    invoke-direct {p0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->renewEntityCapsVersion()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    monitor-exit p0

    return-void

    .line 432
    .end local p0    # "this":Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    .end local p1    # "info":Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setIdentity(Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;)V
    .locals 1
    .param p1, "identity"    # Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;

    monitor-enter p0

    .line 212
    :try_start_0
    const-string v0, "Identity can not be null"

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;

    iput-object v0, p0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->identity:Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;

    .line 215
    invoke-direct {p0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->renewEntityCapsVersion()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    monitor-exit p0

    return-void

    .line 211
    .end local p0    # "this":Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    .end local p1    # "identity":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setNodeInformationProvider(Ljava/lang/String;Lorg/jivesoftware/smackx/disco/NodeInformationProvider;)V
    .locals 1
    .param p1, "node"    # Ljava/lang/String;
    .param p2, "listener"    # Lorg/jivesoftware/smackx/disco/NodeInformationProvider;

    .line 345
    iget-object v0, p0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->nodeInformationProviders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    return-void
.end method

.method public supportsFeature(Lorg/jxmpp/jid/Jid;Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1, "jid"    # Lorg/jxmpp/jid/Jid;
    .param p2, "feature"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 730
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->supportsFeatures(Lorg/jxmpp/jid/Jid;[Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public supportsFeatures(Lorg/jxmpp/jid/Jid;Ljava/util/Collection;)Z
    .locals 4
    .param p1, "jid"    # Lorg/jxmpp/jid/Jid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jxmpp/jid/Jid;",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)Z"
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

    .line 738
    .local p2, "features":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/CharSequence;>;"
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->discoverInfo(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    move-result-object v0

    .line 739
    .local v0, "result":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 740
    .local v2, "feature":Ljava/lang/CharSequence;
    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->containsFeature(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 741
    const/4 v1, 0x0

    return v1

    .line 743
    .end local v2    # "feature":Ljava/lang/CharSequence;
    :cond_0
    goto :goto_0

    .line 744
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public varargs supportsFeatures(Lorg/jxmpp/jid/Jid;[Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "jid"    # Lorg/jxmpp/jid/Jid;
    .param p2, "features"    # [Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 734
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->supportsFeatures(Lorg/jxmpp/jid/Jid;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method
