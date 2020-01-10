.class public final Lorg/jivesoftware/smackx/caps/EntityCapsManager;
.super Lorg/jivesoftware/smack/Manager;
.source "EntityCapsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/caps/EntityCapsManager$NodeVerHash;
    }
.end annotation


# static fields
.field static final CAPS_CACHE:Lorg/jxmpp/util/cache/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jxmpp/util/cache/LruCache<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static DEFAULT_ENTITY_NODE:Ljava/lang/String; = null

.field private static final DEFAULT_HASH:Ljava/lang/String; = "SHA-1"

.field public static final ELEMENT:Ljava/lang/String; = "c"

.field static final JID_TO_NODEVER_CACHE:Lorg/jxmpp/util/cache/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jxmpp/util/cache/LruCache<",
            "Lorg/jxmpp/jid/Jid;",
            "Lorg/jivesoftware/smackx/caps/EntityCapsManager$NodeVerHash;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGGER:Ljava/util/logging/Logger;

.field public static final NAMESPACE:Ljava/lang/String; = "http://jabber.org/protocol/caps"

.field private static final PRESENCES_WITH_CAPS:Lorg/jivesoftware/smack/filter/StanzaFilter;

.field private static final SUPPORTED_HASHES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/MessageDigest;",
            ">;"
        }
    .end annotation
.end field

.field private static autoEnableEntityCaps:Z

.field private static final instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smackx/caps/EntityCapsManager;",
            ">;"
        }
    .end annotation
.end field

.field protected static persistentCache:Lorg/jivesoftware/smackx/caps/cache/EntityCapsPersistentCache;


# instance fields
.field private currentCapsVersion:Lorg/jivesoftware/smackx/caps/CapsVersionAndHash;

.field private entityCapsEnabled:Z

.field private entityNode:Ljava/lang/String;

.field private final lastLocalCapsVersions:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/jivesoftware/smackx/caps/CapsVersionAndHash;",
            ">;"
        }
    .end annotation
.end field

.field private volatile presenceSend:Lorg/jivesoftware/smack/packet/Presence;

.field private final sdm:Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 83
    const-string v0, "SHA-1"

    const-class v1, Lorg/jivesoftware/smackx/caps/EntityCapsManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->LOGGER:Ljava/util/logging/Logger;

    .line 88
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->SUPPORTED_HASHES:Ljava/util/Map;

    .line 95
    const-string v1, "http://www.igniterealtime.org/projects/smack"

    sput-object v1, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->DEFAULT_ENTITY_NODE:Ljava/lang/String;

    .line 99
    const/4 v1, 0x1

    sput-boolean v1, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->autoEnableEntityCaps:Z

    .line 101
    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v2, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->instances:Ljava/util/Map;

    .line 103
    new-instance v2, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/jivesoftware/smack/filter/StanzaFilter;

    new-instance v4, Lorg/jivesoftware/smack/filter/StanzaTypeFilter;

    const-class v5, Lorg/jivesoftware/smack/packet/Presence;

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/filter/StanzaTypeFilter;-><init>(Ljava/lang/Class;)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Lorg/jivesoftware/smack/filter/StanzaExtensionFilter;

    const-string v5, "c"

    const-string v6, "http://jabber.org/protocol/caps"

    invoke-direct {v4, v5, v6}, Lorg/jivesoftware/smack/filter/StanzaExtensionFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v1

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    sput-object v2, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->PRESENCES_WITH_CAPS:Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 109
    new-instance v1, Lorg/jxmpp/util/cache/LruCache;

    const/16 v2, 0x3e8

    invoke-direct {v1, v2}, Lorg/jxmpp/util/cache/LruCache;-><init>(I)V

    sput-object v1, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->CAPS_CACHE:Lorg/jxmpp/util/cache/LruCache;

    .line 117
    new-instance v1, Lorg/jxmpp/util/cache/LruCache;

    const/16 v2, 0x2710

    invoke-direct {v1, v2}, Lorg/jxmpp/util/cache/LruCache;-><init>(I)V

    sput-object v1, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->JID_TO_NODEVER_CACHE:Lorg/jxmpp/util/cache/LruCache;

    .line 120
    new-instance v1, Lorg/jivesoftware/smackx/caps/EntityCapsManager$1;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/caps/EntityCapsManager$1;-><init>()V

    invoke-static {v1}, Lorg/jivesoftware/smack/XMPPConnectionRegistry;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 128
    :try_start_0
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 129
    .local v1, "sha1MessageDigest":Ljava/security/MessageDigest;
    sget-object v2, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->SUPPORTED_HASHES:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    nop

    .end local v1    # "sha1MessageDigest":Ljava/security/MessageDigest;
    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 134
    :goto_0
    new-instance v0, Lorg/jivesoftware/smackx/caps/EntityCapsManager$2;

    const/16 v1, 0x64

    const-string v2, "XEP-0115: Entity Capabilities"

    invoke-direct {v0, v2, v1}, Lorg/jivesoftware/smackx/caps/EntityCapsManager$2;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->addDiscoInfoLookupShortcutMechanism(Lorg/jivesoftware/smackx/disco/DiscoInfoLookupShortcutMechanism;)V

    .line 163
    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 3
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 311
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Manager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 297
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->lastLocalCapsVersions:Ljava/util/Queue;

    .line 308
    sget-object v0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->DEFAULT_ENTITY_NODE:Ljava/lang/String;

    iput-object v0, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->entityNode:Ljava/lang/String;

    .line 312
    invoke-static {p1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->sdm:Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    .line 313
    sget-object v0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->instances:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    new-instance v0, Lorg/jivesoftware/smackx/caps/EntityCapsManager$3;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/caps/EntityCapsManager$3;-><init>(Lorg/jivesoftware/smackx/caps/EntityCapsManager;)V

    invoke-interface {p1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 347
    invoke-direct {p0}, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->updateLocalEntityCaps()V

    .line 349
    sget-boolean v0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->autoEnableEntityCaps:Z

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->enableEntityCaps()V

    .line 352
    :cond_0
    new-instance v0, Lorg/jivesoftware/smackx/caps/EntityCapsManager$4;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/caps/EntityCapsManager$4;-><init>(Lorg/jivesoftware/smackx/caps/EntityCapsManager;)V

    sget-object v1, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->PRESENCES_WITH_CAPS:Lorg/jivesoftware/smack/filter/StanzaFilter;

    invoke-interface {p1, v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addAsyncStanzaListener(Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 367
    invoke-static {p1}, Lorg/jivesoftware/smack/roster/Roster;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smack/roster/Roster;

    move-result-object v0

    new-instance v1, Lorg/jivesoftware/smackx/caps/EntityCapsManager$5;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smackx/caps/EntityCapsManager$5;-><init>(Lorg/jivesoftware/smackx/caps/EntityCapsManager;)V

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/roster/Roster;->addPresenceEventListener(Lorg/jivesoftware/smack/roster/PresenceEventListener;)Z

    .line 374
    new-instance v0, Lorg/jivesoftware/smackx/caps/EntityCapsManager$6;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/caps/EntityCapsManager$6;-><init>(Lorg/jivesoftware/smackx/caps/EntityCapsManager;)V

    sget-object v1, Lorg/jivesoftware/smack/filter/PresenceTypeFilter;->OUTGOING_PRESENCE_BROADCAST:Lorg/jivesoftware/smack/filter/StanzaFilter;

    invoke-interface {p1, v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addStanzaSendingListener(Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 384
    new-instance v0, Lorg/jivesoftware/smackx/caps/EntityCapsManager$7;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/caps/EntityCapsManager$7;-><init>(Lorg/jivesoftware/smackx/caps/EntityCapsManager;)V

    .line 397
    .local v0, "packetInterceptor":Lorg/jivesoftware/smack/StanzaListener;
    sget-object v1, Lorg/jivesoftware/smack/filter/PresenceTypeFilter;->AVAILABLE:Lorg/jivesoftware/smack/filter/PresenceTypeFilter;

    invoke-interface {p1, v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addStanzaInterceptor(Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 400
    iget-object v1, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->sdm:Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    new-instance v2, Lorg/jivesoftware/smackx/caps/EntityCapsManager$8;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/caps/EntityCapsManager$8;-><init>(Lorg/jivesoftware/smackx/caps/EntityCapsManager;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->addEntityCapabilitiesChangedListener(Lorg/jivesoftware/smackx/disco/EntityCapabilitiesChangedListener;)Z

    .line 410
    return-void
.end method

.method static synthetic access$102(Lorg/jivesoftware/smackx/caps/EntityCapsManager;Lorg/jivesoftware/smack/packet/Presence;)Lorg/jivesoftware/smack/packet/Presence;
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smackx/caps/EntityCapsManager;
    .param p1, "x1"    # Lorg/jivesoftware/smack/packet/Presence;

    .line 82
    iput-object p1, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->presenceSend:Lorg/jivesoftware/smack/packet/Presence;

    return-object p1
.end method

.method static synthetic access$200(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/caps/packet/CapsExtension;)V
    .locals 0
    .param p0, "x0"    # Lorg/jxmpp/jid/Jid;
    .param p1, "x1"    # Lorg/jivesoftware/smackx/caps/packet/CapsExtension;

    .line 82
    invoke-static {p0, p1}, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->addCapsExtensionInfo(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/caps/packet/CapsExtension;)V

    return-void
.end method

.method static synthetic access$300(Lorg/jivesoftware/smackx/caps/EntityCapsManager;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/caps/EntityCapsManager;

    .line 82
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->entityCapsEnabled:Z

    return v0
.end method

.method static synthetic access$400(Lorg/jivesoftware/smackx/caps/EntityCapsManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/caps/EntityCapsManager;

    .line 82
    iget-object v0, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->entityNode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lorg/jivesoftware/smackx/caps/EntityCapsManager;)V
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smackx/caps/EntityCapsManager;

    .line 82
    invoke-direct {p0}, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->updateLocalEntityCaps()V

    return-void
.end method

.method static synthetic access$600(Lorg/jivesoftware/smackx/caps/EntityCapsManager;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/caps/EntityCapsManager;

    .line 82
    iget-object v0, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->sdm:Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    return-object v0
.end method

.method private static addCapsExtensionInfo(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/caps/packet/CapsExtension;)V
    .locals 7
    .param p0, "from"    # Lorg/jxmpp/jid/Jid;
    .param p1, "capsExtension"    # Lorg/jivesoftware/smackx/caps/packet/CapsExtension;

    .line 284
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/caps/packet/CapsExtension;->getHash()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "capsExtensionHash":Ljava/lang/String;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, "hashInUppercase":Ljava/lang/String;
    sget-object v2, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->SUPPORTED_HASHES:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 288
    return-void

    .line 289
    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, "hash":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/caps/packet/CapsExtension;->getNode()Ljava/lang/String;

    move-result-object v3

    .line 292
    .local v3, "node":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/caps/packet/CapsExtension;->getVer()Ljava/lang/String;

    move-result-object v4

    .line 294
    .local v4, "ver":Ljava/lang/String;
    sget-object v5, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->JID_TO_NODEVER_CACHE:Lorg/jxmpp/util/cache/LruCache;

    new-instance v6, Lorg/jivesoftware/smackx/caps/EntityCapsManager$NodeVerHash;

    invoke-direct {v6, v3, v4, v2}, Lorg/jivesoftware/smackx/caps/EntityCapsManager$NodeVerHash;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, p0, v6}, Lorg/jxmpp/util/cache/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    return-void
.end method

.method static addDiscoverInfoByNode(Ljava/lang/String;Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;)V
    .locals 1
    .param p0, "nodeVer"    # Ljava/lang/String;
    .param p1, "info"    # Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    .line 184
    sget-object v0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->CAPS_CACHE:Lorg/jxmpp/util/cache/LruCache;

    invoke-virtual {v0, p0, p1}, Lorg/jxmpp/util/cache/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->persistentCache:Lorg/jivesoftware/smackx/caps/cache/EntityCapsPersistentCache;

    if-eqz v0, :cond_0

    .line 187
    invoke-interface {v0, p0, p1}, Lorg/jivesoftware/smackx/caps/cache/EntityCapsPersistentCache;->addDiscoverInfoByNodePersistent(Ljava/lang/String;Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;)V

    .line 188
    :cond_0
    return-void
.end method

.method public static clearMemoryCache()V
    .locals 1

    .line 279
    sget-object v0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->JID_TO_NODEVER_CACHE:Lorg/jxmpp/util/cache/LruCache;

    invoke-virtual {v0}, Lorg/jxmpp/util/cache/LruCache;->clear()V

    .line 280
    sget-object v0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->CAPS_CACHE:Lorg/jxmpp/util/cache/LruCache;

    invoke-virtual {v0}, Lorg/jxmpp/util/cache/LruCache;->clear()V

    .line 281
    return-void
.end method

.method private static formFieldValuesToCaps(Ljava/util/List;Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 768
    .local p0, "i":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 769
    .local v0, "fvs":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/CharSequence;>;"
    invoke-interface {v0, p0}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    .line 770
    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 771
    .local v2, "fv":Ljava/lang/CharSequence;
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 772
    const/16 v3, 0x3c

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 773
    .end local v2    # "fv":Ljava/lang/CharSequence;
    goto :goto_0

    .line 774
    :cond_0
    return-void
.end method

.method protected static generateVerificationString(Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;)Lorg/jivesoftware/smackx/caps/CapsVersionAndHash;
    .locals 1
    .param p0, "discoverInfo"    # Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    .line 630
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->generateVerificationString(Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;Ljava/lang/String;)Lorg/jivesoftware/smackx/caps/CapsVersionAndHash;

    move-result-object v0

    return-object v0
.end method

.method protected static generateVerificationString(Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;Ljava/lang/String;)Lorg/jivesoftware/smackx/caps/CapsVersionAndHash;
    .locals 12
    .param p0, "discoverInfo"    # Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    .param p1, "hash"    # Ljava/lang/String;

    .line 646
    if-nez p1, :cond_0

    .line 647
    const-string p1, "SHA-1"

    .line 650
    :cond_0
    sget-object v0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->SUPPORTED_HASHES:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    .line 651
    .local v0, "md":Ljava/security/MessageDigest;
    if-nez v0, :cond_1

    .line 652
    const/4 v1, 0x0

    return-object v1

    .line 656
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 658
    invoke-static {p0}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->from(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    move-result-object v1

    .line 661
    .local v1, "extendedInfo":Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 670
    .local v2, "sb":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 672
    .local v3, "sortedIdentities":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->getIdentities()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    .line 676
    invoke-interface {v3}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/16 v6, 0x3c

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;

    .line 677
    .local v5, "identity":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->getCategory()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    const/16 v7, 0x2f

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 679
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 681
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->getLanguage()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2

    const-string v8, ""

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->getLanguage()Ljava/lang/String;

    move-result-object v8

    :goto_1
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 683
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->getName()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    const-string v7, ""

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->getName()Ljava/lang/String;

    move-result-object v7

    :goto_2
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 685
    .end local v5    # "identity":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;
    goto :goto_0

    .line 688
    :cond_4
    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    .line 689
    .local v4, "features":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->getFeatures()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Feature;

    .line 690
    .local v7, "f":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Feature;
    invoke-virtual {v7}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Feature;->getVar()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 694
    .end local v7    # "f":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Feature;
    :cond_5
    invoke-interface {v4}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 695
    .local v7, "f":Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 697
    .end local v7    # "f":Ljava/lang/String;
    goto :goto_4

    .line 702
    :cond_6
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->hasHiddenFormTypeField()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 703
    monitor-enter v1

    .line 707
    :try_start_0
    new-instance v5, Ljava/util/TreeSet;

    new-instance v7, Lorg/jivesoftware/smackx/caps/EntityCapsManager$10;

    invoke-direct {v7}, Lorg/jivesoftware/smackx/caps/EntityCapsManager$10;-><init>()V

    invoke-direct {v5, v7}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 714
    .local v5, "fs":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lorg/jivesoftware/smackx/xdata/FormField;>;"
    const/4 v7, 0x0

    .line 716
    .local v7, "ft":Lorg/jivesoftware/smackx/xdata/FormField;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->getFields()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/jivesoftware/smackx/xdata/FormField;

    .line 717
    .local v9, "f":Lorg/jivesoftware/smackx/xdata/FormField;
    invoke-virtual {v9}, Lorg/jivesoftware/smackx/xdata/FormField;->getVariable()Ljava/lang/String;

    move-result-object v10

    const-string v11, "FORM_TYPE"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 718
    invoke-interface {v5, v9}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 720
    :cond_7
    move-object v7, v9

    .line 722
    .end local v9    # "f":Lorg/jivesoftware/smackx/xdata/FormField;
    :goto_6
    goto :goto_5

    .line 725
    :cond_8
    if-eqz v7, :cond_9

    .line 726
    invoke-virtual {v7}, Lorg/jivesoftware/smackx/xdata/FormField;->getValues()Ljava/util/List;

    move-result-object v8

    invoke-static {v8, v2}, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->formFieldValuesToCaps(Ljava/util/List;Ljava/lang/StringBuilder;)V

    .line 736
    :cond_9
    invoke-interface {v5}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/jivesoftware/smackx/xdata/FormField;

    .line 737
    .restart local v9    # "f":Lorg/jivesoftware/smackx/xdata/FormField;
    invoke-virtual {v9}, Lorg/jivesoftware/smackx/xdata/FormField;->getVariable()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 739
    invoke-virtual {v9}, Lorg/jivesoftware/smackx/xdata/FormField;->getValues()Ljava/util/List;

    move-result-object v10

    invoke-static {v10, v2}, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->formFieldValuesToCaps(Ljava/util/List;Ljava/lang/StringBuilder;)V

    .line 740
    .end local v9    # "f":Lorg/jivesoftware/smackx/xdata/FormField;
    goto :goto_7

    .line 741
    .end local v5    # "fs":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lorg/jivesoftware/smackx/xdata/FormField;>;"
    .end local v7    # "ft":Lorg/jivesoftware/smackx/xdata/FormField;
    :cond_a
    monitor-exit v1

    goto :goto_8

    :catchall_0
    move-exception v5

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 754
    :cond_b
    :goto_8
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 758
    .local v5, "bytes":[B
    nop

    .line 760
    monitor-enter v0

    .line 761
    :try_start_2
    invoke-virtual {v0, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    .line 762
    .local v6, "digest":[B
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 763
    invoke-static {v6}, Lorg/jivesoftware/smack/util/stringencoder/Base64;->encodeToString([B)Ljava/lang/String;

    move-result-object v7

    .line 764
    .local v7, "version":Ljava/lang/String;
    new-instance v8, Lorg/jivesoftware/smackx/caps/CapsVersionAndHash;

    invoke-direct {v8, v7, p1}, Lorg/jivesoftware/smackx/caps/CapsVersionAndHash;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v8

    .line 762
    .end local v6    # "digest":[B
    .end local v7    # "version":Ljava/lang/String;
    :catchall_1
    move-exception v6

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    .line 756
    .end local v5    # "bytes":[B
    :catch_0
    move-exception v5

    .line 757
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6
.end method

.method public static getDiscoverInfoByUser(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    .locals 2
    .param p0, "user"    # Lorg/jxmpp/jid/Jid;

    .line 221
    sget-object v0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->JID_TO_NODEVER_CACHE:Lorg/jxmpp/util/cache/LruCache;

    invoke-virtual {v0, p0}, Lorg/jxmpp/util/cache/LruCache;->lookup(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/caps/EntityCapsManager$NodeVerHash;

    .line 222
    .local v0, "nvh":Lorg/jivesoftware/smackx/caps/EntityCapsManager$NodeVerHash;
    if-nez v0, :cond_0

    .line 223
    const/4 v1, 0x0

    return-object v1

    .line 225
    :cond_0
    invoke-static {v0}, Lorg/jivesoftware/smackx/caps/EntityCapsManager$NodeVerHash;->access$000(Lorg/jivesoftware/smackx/caps/EntityCapsManager$NodeVerHash;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->getDiscoveryInfoByNodeVer(Ljava/lang/String;)Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    move-result-object v1

    return-object v1
.end method

.method public static getDiscoveryInfoByNodeVer(Ljava/lang/String;)Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    .locals 2
    .param p0, "nodeVer"    # Ljava/lang/String;

    .line 237
    sget-object v0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->CAPS_CACHE:Lorg/jxmpp/util/cache/LruCache;

    invoke-virtual {v0, p0}, Lorg/jxmpp/util/cache/LruCache;->lookup(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    .line 240
    .local v0, "info":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    if-nez v0, :cond_0

    sget-object v1, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->persistentCache:Lorg/jivesoftware/smackx/caps/cache/EntityCapsPersistentCache;

    if-eqz v1, :cond_0

    .line 241
    invoke-interface {v1, p0}, Lorg/jivesoftware/smackx/caps/cache/EntityCapsPersistentCache;->lookup(Ljava/lang/String;)Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_0

    .line 244
    sget-object v1, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->CAPS_CACHE:Lorg/jxmpp/util/cache/LruCache;

    invoke-virtual {v1, p0, v0}, Lorg/jxmpp/util/cache/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    :cond_0
    if-eqz v0, :cond_1

    .line 250
    new-instance v1, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    invoke-direct {v1, v0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;-><init>(Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;)V

    move-object v0, v1

    .line 252
    :cond_1
    return-object v0
.end method

.method public static declared-synchronized getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/caps/EntityCapsManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    const-class v0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;

    monitor-enter v0

    .line 413
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->SUPPORTED_HASHES:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 416
    sget-object v1, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->instances:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/caps/EntityCapsManager;

    .line 418
    .local v1, "entityCapsManager":Lorg/jivesoftware/smackx/caps/EntityCapsManager;
    if-nez v1, :cond_0

    .line 419
    new-instance v2, Lorg/jivesoftware/smackx/caps/EntityCapsManager;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/caps/EntityCapsManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 422
    :cond_0
    monitor-exit v0

    return-object v1

    .line 414
    .end local v1    # "entityCapsManager":Lorg/jivesoftware/smackx/caps/EntityCapsManager;
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No supported hashes for EntityCapsManager"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    .end local p0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getNodeVerHashByJid(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/caps/EntityCapsManager$NodeVerHash;
    .locals 1
    .param p0, "jid"    # Lorg/jxmpp/jid/Jid;

    .line 208
    sget-object v0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->JID_TO_NODEVER_CACHE:Lorg/jxmpp/util/cache/LruCache;

    invoke-virtual {v0, p0}, Lorg/jxmpp/util/cache/LruCache;->lookup(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/caps/EntityCapsManager$NodeVerHash;

    return-object v0
.end method

.method public static getNodeVersionByJid(Lorg/jxmpp/jid/Jid;)Ljava/lang/String;
    .locals 2
    .param p0, "jid"    # Lorg/jxmpp/jid/Jid;

    .line 199
    sget-object v0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->JID_TO_NODEVER_CACHE:Lorg/jxmpp/util/cache/LruCache;

    invoke-virtual {v0, p0}, Lorg/jxmpp/util/cache/LruCache;->lookup(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/caps/EntityCapsManager$NodeVerHash;

    .line 200
    .local v0, "nvh":Lorg/jivesoftware/smackx/caps/EntityCapsManager$NodeVerHash;
    if-eqz v0, :cond_0

    .line 201
    invoke-static {v0}, Lorg/jivesoftware/smackx/caps/EntityCapsManager$NodeVerHash;->access$000(Lorg/jivesoftware/smackx/caps/EntityCapsManager$NodeVerHash;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 203
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static removeUserCapsNode(Lorg/jxmpp/jid/Jid;)V
    .locals 1
    .param p0, "user"    # Lorg/jxmpp/jid/Jid;

    .line 455
    sget-object v0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->JID_TO_NODEVER_CACHE:Lorg/jxmpp/util/cache/LruCache;

    invoke-virtual {v0, p0}, Lorg/jxmpp/util/cache/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    return-void
.end method

.method public static setDefaultEntityNode(Ljava/lang/String;)V
    .locals 0
    .param p0, "entityNode"    # Ljava/lang/String;

    .line 171
    sput-object p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->DEFAULT_ENTITY_NODE:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public static setMaxsCacheSizes(II)V
    .locals 1
    .param p0, "maxJidToNodeVerSize"    # I
    .param p1, "maxCapsCacheSize"    # I

    .line 271
    sget-object v0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->JID_TO_NODEVER_CACHE:Lorg/jxmpp/util/cache/LruCache;

    invoke-virtual {v0, p0}, Lorg/jxmpp/util/cache/LruCache;->setMaxCacheSize(I)V

    .line 272
    sget-object v0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->CAPS_CACHE:Lorg/jxmpp/util/cache/LruCache;

    invoke-virtual {v0, p1}, Lorg/jxmpp/util/cache/LruCache;->setMaxCacheSize(I)V

    .line 273
    return-void
.end method

.method public static setPersistentCache(Lorg/jivesoftware/smackx/caps/cache/EntityCapsPersistentCache;)V
    .locals 0
    .param p0, "cache"    # Lorg/jivesoftware/smackx/caps/cache/EntityCapsPersistentCache;

    .line 261
    sput-object p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->persistentCache:Lorg/jivesoftware/smackx/caps/cache/EntityCapsPersistentCache;

    .line 262
    return-void
.end method

.method private updateLocalEntityCaps()V
    .locals 8

    .line 518
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 520
    .local v0, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    new-instance v1, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;-><init>()V

    .line 521
    .local v1, "discoverInfo":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->result:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 522
    iget-object v2, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->sdm:Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->addDiscoverInfoTo(Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;)V

    .line 526
    invoke-static {v1}, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->generateVerificationString(Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;)Lorg/jivesoftware/smackx/caps/CapsVersionAndHash;

    move-result-object v2

    iput-object v2, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->currentCapsVersion:Lorg/jivesoftware/smackx/caps/CapsVersionAndHash;

    .line 527
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->getLocalNodeVer()Ljava/lang/String;

    move-result-object v2

    .line 528
    .local v2, "localNodeVer":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->setNode(Ljava/lang/String;)V

    .line 529
    invoke-static {v2, v1}, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->addDiscoverInfoByNode(Ljava/lang/String;Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;)V

    .line 530
    iget-object v3, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->lastLocalCapsVersions:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_0

    .line 531
    iget-object v3, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->lastLocalCapsVersions:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smackx/caps/CapsVersionAndHash;

    .line 532
    .local v3, "oldCapsVersion":Lorg/jivesoftware/smackx/caps/CapsVersionAndHash;
    iget-object v4, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->sdm:Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->entityNode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x23

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lorg/jivesoftware/smackx/caps/CapsVersionAndHash;->version:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->removeNodeInformationProvider(Ljava/lang/String;)V

    .line 534
    .end local v3    # "oldCapsVersion":Lorg/jivesoftware/smackx/caps/CapsVersionAndHash;
    :cond_0
    iget-object v3, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->lastLocalCapsVersions:Ljava/util/Queue;

    iget-object v4, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->currentCapsVersion:Lorg/jivesoftware/smackx/caps/CapsVersionAndHash;

    invoke-interface {v3, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 536
    if-eqz v0, :cond_1

    .line 537
    sget-object v3, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->JID_TO_NODEVER_CACHE:Lorg/jxmpp/util/cache/LruCache;

    invoke-interface {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v4

    new-instance v5, Lorg/jivesoftware/smackx/caps/EntityCapsManager$NodeVerHash;

    iget-object v6, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->entityNode:Ljava/lang/String;

    iget-object v7, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->currentCapsVersion:Lorg/jivesoftware/smackx/caps/CapsVersionAndHash;

    invoke-direct {v5, v6, v7}, Lorg/jivesoftware/smackx/caps/EntityCapsManager$NodeVerHash;-><init>(Ljava/lang/String;Lorg/jivesoftware/smackx/caps/CapsVersionAndHash;)V

    invoke-virtual {v3, v4, v5}, Lorg/jxmpp/util/cache/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    :cond_1
    new-instance v3, Ljava/util/LinkedList;

    invoke-static {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getIdentities()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 540
    .local v3, "identities":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;>;"
    iget-object v4, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->sdm:Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    new-instance v5, Lorg/jivesoftware/smackx/caps/EntityCapsManager$9;

    invoke-direct {v5, p0, v3}, Lorg/jivesoftware/smackx/caps/EntityCapsManager$9;-><init>(Lorg/jivesoftware/smackx/caps/EntityCapsManager;Ljava/util/List;)V

    invoke-virtual {v4, v2, v5}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->setNodeInformationProvider(Ljava/lang/String;Lorg/jivesoftware/smackx/disco/NodeInformationProvider;)V

    .line 562
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/jivesoftware/smack/XMPPConnection;->isAuthenticated()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->presenceSend:Lorg/jivesoftware/smack/packet/Presence;

    if-eqz v4, :cond_2

    .line 564
    :try_start_0
    iget-object v4, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->presenceSend:Lorg/jivesoftware/smack/packet/Presence;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/packet/Presence;->cloneWithNewId()Lorg/jivesoftware/smack/packet/Presence;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/jivesoftware/smack/XMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/jivesoftware/smack/SmackException$NotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    goto :goto_1

    .line 566
    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    .line 567
    .local v4, "e":Ljava/lang/Exception;
    :goto_0
    sget-object v5, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->LOGGER:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v7, "Could could not update presence with caps info"

    invoke-virtual {v5, v6, v7, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 570
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void
.end method

.method public static verifyDiscoverInfoVersion(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;)Z
    .locals 3
    .param p0, "ver"    # Ljava/lang/String;
    .param p1, "hash"    # Ljava/lang/String;
    .param p2, "info"    # Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    .line 586
    invoke-virtual {p2}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->containsDuplicateIdentities()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 587
    return v1

    .line 590
    :cond_0
    invoke-virtual {p2}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->containsDuplicateFeatures()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 591
    return v1

    .line 594
    :cond_1
    invoke-static {p2}, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->verifyPacketExtensions(Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 595
    return v1

    .line 597
    :cond_2
    invoke-static {p2, p1}, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->generateVerificationString(Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;Ljava/lang/String;)Lorg/jivesoftware/smackx/caps/CapsVersionAndHash;

    move-result-object v0

    iget-object v0, v0, Lorg/jivesoftware/smackx/caps/CapsVersionAndHash;->version:Ljava/lang/String;

    .line 599
    .local v0, "calculatedVer":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 600
    return v1

    .line 602
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method protected static verifyPacketExtensions(Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;)Z
    .locals 9
    .param p0, "info"    # Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    .line 611
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 612
    .local v0, "foundFormTypes":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/xdata/FormField;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->getExtensions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/packet/ExtensionElement;

    .line 613
    .local v2, "pe":Lorg/jivesoftware/smack/packet/ExtensionElement;
    invoke-interface {v2}, Lorg/jivesoftware/smack/packet/ExtensionElement;->getNamespace()Ljava/lang/String;

    move-result-object v3

    const-string v4, "jabber:x:data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 614
    move-object v3, v2

    check-cast v3, Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    .line 615
    .local v3, "df":Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->getFields()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jivesoftware/smackx/xdata/FormField;

    .line 616
    .local v5, "f":Lorg/jivesoftware/smackx/xdata/FormField;
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/xdata/FormField;->getVariable()Ljava/lang/String;

    move-result-object v6

    const-string v7, "FORM_TYPE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 617
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jivesoftware/smackx/xdata/FormField;

    .line 618
    .local v7, "fft":Lorg/jivesoftware/smackx/xdata/FormField;
    invoke-virtual {v5, v7}, Lorg/jivesoftware/smackx/xdata/FormField;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 619
    const/4 v1, 0x1

    return v1

    .line 620
    .end local v7    # "fft":Lorg/jivesoftware/smackx/xdata/FormField;
    :cond_0
    goto :goto_2

    .line 621
    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    .end local v5    # "f":Lorg/jivesoftware/smackx/xdata/FormField;
    :cond_2
    goto :goto_1

    .line 625
    .end local v2    # "pe":Lorg/jivesoftware/smack/packet/ExtensionElement;
    .end local v3    # "df":Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    :cond_3
    goto :goto_0

    .line 626
    :cond_4
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public areEntityCapsSupported(Lorg/jxmpp/jid/Jid;)Z
    .locals 2
    .param p1, "jid"    # Lorg/jxmpp/jid/Jid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 494
    iget-object v0, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->sdm:Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    const-string v1, "http://jabber.org/protocol/caps"

    invoke-virtual {v0, p1, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->supportsFeature(Lorg/jxmpp/jid/Jid;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public areEntityCapsSupportedByServer()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 507
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getXMPPServiceDomain()Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->areEntityCapsSupported(Lorg/jxmpp/jid/Jid;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized disableEntityCaps()V
    .locals 2

    monitor-enter p0

    .line 433
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->entityCapsEnabled:Z

    .line 434
    iget-object v0, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->sdm:Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    const-string v1, "http://jabber.org/protocol/caps"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->removeFeature(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    monitor-exit p0

    return-void

    .line 432
    .end local p0    # "this":Lorg/jivesoftware/smackx/caps/EntityCapsManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enableEntityCaps()V
    .locals 2

    monitor-enter p0

    .line 427
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->sdm:Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    const-string v1, "http://jabber.org/protocol/caps"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    .line 428
    invoke-direct {p0}, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->updateLocalEntityCaps()V

    .line 429
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->entityCapsEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    monitor-exit p0

    return-void

    .line 426
    .end local p0    # "this":Lorg/jivesoftware/smackx/caps/EntityCapsManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public entityCapsEnabled()Z
    .locals 1

    .line 438
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->entityCapsEnabled:Z

    return v0
.end method

.method public getCapsVersionAndHash()Lorg/jivesoftware/smackx/caps/CapsVersionAndHash;
    .locals 1

    .line 465
    iget-object v0, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->currentCapsVersion:Lorg/jivesoftware/smackx/caps/CapsVersionAndHash;

    return-object v0
.end method

.method public getLocalNodeVer()Ljava/lang/String;
    .locals 3

    .line 476
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->getCapsVersionAndHash()Lorg/jivesoftware/smackx/caps/CapsVersionAndHash;

    move-result-object v0

    .line 477
    .local v0, "capsVersionAndHash":Lorg/jivesoftware/smackx/caps/CapsVersionAndHash;
    if-nez v0, :cond_0

    .line 478
    const/4 v1, 0x0

    return-object v1

    .line 480
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->entityNode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lorg/jivesoftware/smackx/caps/CapsVersionAndHash;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setEntityNode(Ljava/lang/String;)V
    .locals 0
    .param p1, "entityNode"    # Ljava/lang/String;

    .line 442
    iput-object p1, p0, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->entityNode:Ljava/lang/String;

    .line 443
    invoke-direct {p0}, Lorg/jivesoftware/smackx/caps/EntityCapsManager;->updateLocalEntityCaps()V

    .line 444
    return-void
.end method
