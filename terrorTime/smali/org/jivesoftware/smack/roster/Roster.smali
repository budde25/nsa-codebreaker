.class public final Lorg/jivesoftware/smack/roster/Roster;
.super Lorg/jivesoftware/smack/Manager;
.source "Roster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/roster/Roster$RosterPushListener;,
        Lorg/jivesoftware/smack/roster/Roster$RosterResultListener;,
        Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;,
        Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;,
        Lorg/jivesoftware/smack/roster/Roster$RosterState;
    }
.end annotation


# static fields
.field public static final INITIAL_DEFAULT_NON_ROSTER_PRESENCE_MAP_SIZE:I = 0x400

.field private static final INSTANCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smack/roster/Roster;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final OUTGOING_USER_UNAVAILABLE_PRESENCE:Lorg/jivesoftware/smack/filter/StanzaFilter;

.field private static final PRESENCE_PACKET_FILTER:Lorg/jivesoftware/smack/filter/StanzaFilter;

.field private static defaultNonRosterPresenceMapMaxSize:I

.field private static defaultSubscriptionMode:Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;

.field private static rosterLoadedAtLoginDefault:Z


# instance fields
.field private final asyncButOrdered:Lorg/jivesoftware/smack/AsyncButOrdered;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jivesoftware/smack/AsyncButOrdered<",
            "Lorg/jxmpp/jid/BareJid;",
            ">;"
        }
    .end annotation
.end field

.field private final entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jxmpp/jid/BareJid;",
            "Lorg/jivesoftware/smack/roster/RosterEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final groups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smack/roster/RosterGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final nonRosterPresenceMap:Lorg/jxmpp/util/cache/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jxmpp/util/cache/LruCache<",
            "Lorg/jxmpp/jid/BareJid;",
            "Ljava/util/Map<",
            "Lorg/jxmpp/jid/parts/Resourcepart;",
            "Lorg/jivesoftware/smack/packet/Presence;",
            ">;>;"
        }
    .end annotation
.end field

.field private final presenceEventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jivesoftware/smack/roster/PresenceEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final presenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jxmpp/jid/BareJid;",
            "Ljava/util/Map<",
            "Lorg/jxmpp/jid/parts/Resourcepart;",
            "Lorg/jivesoftware/smack/packet/Presence;",
            ">;>;"
        }
    .end annotation
.end field

.field private final presencePacketListener:Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;

.field private previousSubscriptionMode:Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;

.field private final rosterListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jivesoftware/smack/roster/RosterListener;",
            ">;"
        }
    .end annotation
.end field

.field private final rosterListenersAndEntriesLock:Ljava/lang/Object;

.field private rosterLoadedAtLogin:Z

.field private final rosterLoadedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jivesoftware/smack/roster/RosterLoadedListener;",
            ">;"
        }
    .end annotation
.end field

.field private rosterState:Lorg/jivesoftware/smack/roster/Roster$RosterState;

.field private rosterStore:Lorg/jivesoftware/smack/roster/rosterstore/RosterStore;

.field private final subscribeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jivesoftware/smack/roster/SubscribeListener;",
            ">;"
        }
    .end annotation
.end field

.field private subscriptionMode:Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;

.field private final unfiledEntries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jivesoftware/smack/roster/RosterEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 96
    const-class v0, Lorg/jivesoftware/smack/roster/Roster;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/roster/Roster;->LOGGER:Ljava/util/logging/Logger;

    .line 99
    new-instance v0, Lorg/jivesoftware/smack/roster/Roster$1;

    invoke-direct {v0}, Lorg/jivesoftware/smack/roster/Roster$1;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/XMPPConnectionRegistry;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 107
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/roster/Roster;->INSTANCES:Ljava/util/Map;

    .line 131
    sget-object v0, Lorg/jivesoftware/smack/filter/StanzaTypeFilter;->PRESENCE:Lorg/jivesoftware/smack/filter/StanzaTypeFilter;

    sput-object v0, Lorg/jivesoftware/smack/roster/Roster;->PRESENCE_PACKET_FILTER:Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 133
    new-instance v0, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/jivesoftware/smack/filter/StanzaFilter;

    sget-object v2, Lorg/jivesoftware/smack/filter/PresenceTypeFilter;->UNAVAILABLE:Lorg/jivesoftware/smack/filter/PresenceTypeFilter;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lorg/jivesoftware/smack/filter/ToMatchesFilter;->MATCH_NO_TO_SET:Lorg/jivesoftware/smack/filter/ToMatchesFilter;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    sput-object v0, Lorg/jivesoftware/smack/roster/Roster;->OUTGOING_USER_UNAVAILABLE_PRESENCE:Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 135
    sput-boolean v3, Lorg/jivesoftware/smack/roster/Roster;->rosterLoadedAtLoginDefault:Z

    .line 141
    sget-object v0, Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;->reject_all:Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;

    sput-object v0, Lorg/jivesoftware/smack/roster/Roster;->defaultSubscriptionMode:Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;

    .line 149
    const/16 v0, 0x400

    sput v0, Lorg/jivesoftware/smack/roster/Roster;->defaultNonRosterPresenceMapMaxSize:I

    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 4
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 246
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Manager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 152
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->groups:Ljava/util/Map;

    .line 157
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->entries:Ljava/util/Map;

    .line 159
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->unfiledEntries:Ljava/util/Set;

    .line 160
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->rosterListeners:Ljava/util/Set;

    .line 162
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->presenceEventListeners:Ljava/util/Set;

    .line 168
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->presenceMap:Ljava/util/Map;

    .line 176
    new-instance v0, Lorg/jxmpp/util/cache/LruCache;

    sget v1, Lorg/jivesoftware/smack/roster/Roster;->defaultNonRosterPresenceMapMaxSize:I

    invoke-direct {v0, v1}, Lorg/jxmpp/util/cache/LruCache;-><init>(I)V

    iput-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->nonRosterPresenceMap:Lorg/jxmpp/util/cache/LruCache;

    .line 182
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->rosterLoadedListeners:Ljava/util/Set;

    .line 188
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->rosterListenersAndEntriesLock:Ljava/lang/Object;

    .line 199
    sget-object v0, Lorg/jivesoftware/smack/roster/Roster$RosterState;->uninitialized:Lorg/jivesoftware/smack/roster/Roster$RosterState;

    iput-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->rosterState:Lorg/jivesoftware/smack/roster/Roster$RosterState;

    .line 201
    new-instance v0, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;-><init>(Lorg/jivesoftware/smack/roster/Roster;Lorg/jivesoftware/smack/roster/Roster$1;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->presencePacketListener:Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;

    .line 206
    sget-boolean v0, Lorg/jivesoftware/smack/roster/Roster;->rosterLoadedAtLoginDefault:Z

    iput-boolean v0, p0, Lorg/jivesoftware/smack/roster/Roster;->rosterLoadedAtLogin:Z

    .line 208
    invoke-static {}, Lorg/jivesoftware/smack/roster/Roster;->getDefaultSubscriptionMode()Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->subscriptionMode:Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;

    .line 210
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->subscribeListeners:Ljava/util/Set;

    .line 238
    new-instance v0, Lorg/jivesoftware/smack/AsyncButOrdered;

    invoke-direct {v0}, Lorg/jivesoftware/smack/AsyncButOrdered;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->asyncButOrdered:Lorg/jivesoftware/smack/AsyncButOrdered;

    .line 251
    new-instance v0, Lorg/jivesoftware/smack/roster/Roster$RosterPushListener;

    invoke-direct {v0, p0, v1}, Lorg/jivesoftware/smack/roster/Roster$RosterPushListener;-><init>(Lorg/jivesoftware/smack/roster/Roster;Lorg/jivesoftware/smack/roster/Roster$1;)V

    invoke-interface {p1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->registerIQRequestHandler(Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;)Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;

    .line 253
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->presencePacketListener:Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;

    sget-object v1, Lorg/jivesoftware/smack/roster/Roster;->PRESENCE_PACKET_FILTER:Lorg/jivesoftware/smack/filter/StanzaFilter;

    invoke-interface {p1, v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addSyncStanzaListener(Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 255
    new-instance v0, Lorg/jivesoftware/smack/roster/Roster$2;

    invoke-direct {v0, p0, p1}, Lorg/jivesoftware/smack/roster/Roster$2;-><init>(Lorg/jivesoftware/smack/roster/Roster;Lorg/jivesoftware/smack/XMPPConnection;)V

    sget-object v1, Lorg/jivesoftware/smack/filter/PresenceTypeFilter;->SUBSCRIBE:Lorg/jivesoftware/smack/filter/PresenceTypeFilter;

    invoke-interface {p1, v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addAsyncStanzaListener(Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 311
    new-instance v0, Lorg/jivesoftware/smack/roster/Roster$3;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/roster/Roster$3;-><init>(Lorg/jivesoftware/smack/roster/Roster;)V

    invoke-interface {p1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 343
    new-instance v0, Lorg/jivesoftware/smack/roster/Roster$4;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/roster/Roster$4;-><init>(Lorg/jivesoftware/smack/roster/Roster;)V

    sget-object v1, Lorg/jivesoftware/smack/roster/Roster;->OUTGOING_USER_UNAVAILABLE_PRESENCE:Lorg/jivesoftware/smack/filter/StanzaFilter;

    invoke-interface {p1, v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addStanzaSendingListener(Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 356
    invoke-interface {p1}, Lorg/jivesoftware/smack/XMPPConnection;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/Roster;->reloadAndWait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/jivesoftware/smack/SmackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    goto :goto_1

    .line 360
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    sget-object v1, Lorg/jivesoftware/smack/roster/Roster;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Could not reload Roster"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 365
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-void
.end method

.method static synthetic access$1000(Lorg/jivesoftware/smack/roster/Roster;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/roster/Roster;

    .line 94
    iget-boolean v0, p0, Lorg/jivesoftware/smack/roster/Roster;->rosterLoadedAtLogin:Z

    return v0
.end method

.method static synthetic access$1100(Lorg/jivesoftware/smack/roster/Roster;)Lorg/jivesoftware/smack/XMPPConnection;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/roster/Roster;

    .line 94
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/Roster;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lorg/jivesoftware/smack/roster/Roster;Lorg/jxmpp/jid/BareJid;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/roster/Roster;
    .param p1, "x1"    # Lorg/jxmpp/jid/BareJid;

    .line 94
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/roster/Roster;->getOrCreatePresencesInternal(Lorg/jxmpp/jid/BareJid;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lorg/jivesoftware/smack/roster/Roster;Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smack/roster/Roster;
    .param p1, "x1"    # Lorg/jivesoftware/smack/packet/Presence;

    .line 94
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/roster/Roster;->fireRosterPresenceEvent(Lorg/jivesoftware/smack/packet/Presence;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/jivesoftware/smack/roster/Roster;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/roster/Roster;

    .line 94
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->presenceEventListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/jivesoftware/smack/roster/Roster;)Lorg/jivesoftware/smack/AsyncButOrdered;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/roster/Roster;

    .line 94
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->asyncButOrdered:Lorg/jivesoftware/smack/AsyncButOrdered;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/jivesoftware/smack/roster/Roster;)Lorg/jivesoftware/smack/XMPPConnection;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/roster/Roster;

    .line 94
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/Roster;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;

    .line 94
    invoke-static {p0}, Lorg/jivesoftware/smack/roster/Roster;->hasValidSubscriptionType(Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lorg/jivesoftware/smack/roster/Roster;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;Lorg/jivesoftware/smack/roster/RosterEntry;)V
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smack/roster/Roster;
    .param p1, "x1"    # Ljava/util/Collection;
    .param p2, "x2"    # Ljava/util/Collection;
    .param p3, "x3"    # Ljava/util/Collection;
    .param p4, "x4"    # Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    .param p5, "x5"    # Lorg/jivesoftware/smack/roster/RosterEntry;

    .line 94
    invoke-direct/range {p0 .. p5}, Lorg/jivesoftware/smack/roster/Roster;->addUpdateEntry(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;Lorg/jivesoftware/smack/roster/RosterEntry;)V

    return-void
.end method

.method static synthetic access$1900(Lorg/jivesoftware/smack/roster/Roster;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/roster/Roster;

    .line 94
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->entries:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lorg/jivesoftware/smack/roster/Roster;)Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/roster/Roster;

    .line 94
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->subscriptionMode:Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/jivesoftware/smack/roster/Roster;Ljava/util/Collection;Lorg/jivesoftware/smack/roster/RosterEntry;)V
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smack/roster/Roster;
    .param p1, "x1"    # Ljava/util/Collection;
    .param p2, "x2"    # Lorg/jivesoftware/smack/roster/RosterEntry;

    .line 94
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smack/roster/Roster;->deleteEntry(Ljava/util/Collection;Lorg/jivesoftware/smack/roster/RosterEntry;)V

    return-void
.end method

.method static synthetic access$2100(Lorg/jivesoftware/smack/roster/Roster;)Lorg/jivesoftware/smack/roster/rosterstore/RosterStore;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/roster/Roster;

    .line 94
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->rosterStore:Lorg/jivesoftware/smack/roster/rosterstore/RosterStore;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/jivesoftware/smack/roster/Roster;)V
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smack/roster/Roster;

    .line 94
    invoke-direct {p0}, Lorg/jivesoftware/smack/roster/Roster;->removeEmptyGroups()V

    return-void
.end method

.method static synthetic access$2300(Lorg/jivesoftware/smack/roster/Roster;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smack/roster/Roster;
    .param p1, "x1"    # Ljava/util/Collection;
    .param p2, "x2"    # Ljava/util/Collection;
    .param p3, "x3"    # Ljava/util/Collection;

    .line 94
    invoke-direct {p0, p1, p2, p3}, Lorg/jivesoftware/smack/roster/Roster;->fireRosterChangedEvent(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$2400(Lorg/jivesoftware/smack/roster/Roster;)Lorg/jivesoftware/smack/XMPPConnection;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/roster/Roster;

    .line 94
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/Roster;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/jivesoftware/smack/roster/Roster;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/roster/Roster;

    .line 94
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->subscribeListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lorg/jivesoftware/smack/roster/Roster;)V
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smack/roster/Roster;

    .line 94
    invoke-direct {p0}, Lorg/jivesoftware/smack/roster/Roster;->setOfflinePresencesAndResetLoaded()V

    return-void
.end method

.method static synthetic access$500()Ljava/util/logging/Logger;
    .locals 1

    .line 94
    sget-object v0, Lorg/jivesoftware/smack/roster/Roster;->LOGGER:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$600(Lorg/jivesoftware/smack/roster/Roster;)V
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smack/roster/Roster;

    .line 94
    invoke-direct {p0}, Lorg/jivesoftware/smack/roster/Roster;->setOfflinePresences()V

    return-void
.end method

.method static synthetic access$700(Lorg/jivesoftware/smack/roster/Roster;)Lorg/jivesoftware/smack/roster/Roster$RosterState;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/roster/Roster;

    .line 94
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->rosterState:Lorg/jivesoftware/smack/roster/Roster$RosterState;

    return-object v0
.end method

.method static synthetic access$702(Lorg/jivesoftware/smack/roster/Roster;Lorg/jivesoftware/smack/roster/Roster$RosterState;)Lorg/jivesoftware/smack/roster/Roster$RosterState;
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smack/roster/Roster;
    .param p1, "x1"    # Lorg/jivesoftware/smack/roster/Roster$RosterState;

    .line 94
    iput-object p1, p0, Lorg/jivesoftware/smack/roster/Roster;->rosterState:Lorg/jivesoftware/smack/roster/Roster$RosterState;

    return-object p1
.end method

.method static synthetic access$800(Lorg/jivesoftware/smack/roster/Roster;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/roster/Roster;

    .line 94
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->rosterLoadedListeners:Ljava/util/Set;

    return-object v0
.end method

.method private addUpdateEntry(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;Lorg/jivesoftware/smack/roster/RosterEntry;)V
    .locals 7
    .param p4, "item"    # Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    .param p5, "entry"    # Lorg/jivesoftware/smack/roster/RosterEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/jxmpp/jid/Jid;",
            ">;",
            "Ljava/util/Collection<",
            "Lorg/jxmpp/jid/Jid;",
            ">;",
            "Ljava/util/Collection<",
            "Lorg/jxmpp/jid/Jid;",
            ">;",
            "Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;",
            "Lorg/jivesoftware/smack/roster/RosterEntry;",
            ")V"
        }
    .end annotation

    .line 1289
    .local p1, "addedEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jxmpp/jid/Jid;>;"
    .local p2, "updatedEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jxmpp/jid/Jid;>;"
    .local p3, "unchangedEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jxmpp/jid/Jid;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->rosterListenersAndEntriesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1290
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/roster/Roster;->entries:Ljava/util/Map;

    invoke-virtual {p4}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->getJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v2

    invoke-interface {v1, v2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/roster/RosterEntry;

    .line 1291
    .local v1, "oldEntry":Lorg/jivesoftware/smack/roster/RosterEntry;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1292
    if-nez v1, :cond_0

    .line 1293
    invoke-virtual {p4}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->getJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v0

    .line 1294
    .local v0, "jid":Lorg/jxmpp/jid/BareJid;
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1296
    iget-object v2, p0, Lorg/jivesoftware/smack/roster/Roster;->nonRosterPresenceMap:Lorg/jxmpp/util/cache/LruCache;

    iget-object v3, p0, Lorg/jivesoftware/smack/roster/Roster;->presenceMap:Ljava/util/Map;

    invoke-static {v0, v2, v3}, Lorg/jivesoftware/smack/roster/Roster;->move(Lorg/jxmpp/jid/BareJid;Ljava/util/Map;Ljava/util/Map;)V

    .line 1297
    .end local v0    # "jid":Lorg/jxmpp/jid/BareJid;
    goto :goto_1

    .line 1299
    :cond_0
    invoke-static {v1}, Lorg/jivesoftware/smack/roster/RosterEntry;->toRosterItem(Lorg/jivesoftware/smack/roster/RosterEntry;)Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;

    move-result-object v0

    .line 1300
    .local v0, "oldItem":Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    invoke-virtual {v1, p5}, Lorg/jivesoftware/smack/roster/RosterEntry;->equalsDeep(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p4}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->getGroupNames()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->getGroupNames()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 1305
    :cond_1
    invoke-virtual {p4}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->getJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1301
    :cond_2
    :goto_0
    invoke-virtual {p4}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->getJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1302
    invoke-virtual {v1, p4}, Lorg/jivesoftware/smack/roster/RosterEntry;->updateItem(Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;)V

    .line 1310
    .end local v0    # "oldItem":Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    :goto_1
    invoke-virtual {p4}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->getGroupNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1311
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->unfiledEntries:Ljava/util/Set;

    invoke-interface {v0, p5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1314
    :cond_3
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->unfiledEntries:Ljava/util/Set;

    invoke-interface {v0, p5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1318
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1319
    .local v0, "newGroupNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p4}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->getGroupNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1321
    .local v3, "groupName":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1324
    invoke-virtual {p0, v3}, Lorg/jivesoftware/smack/roster/Roster;->getGroup(Ljava/lang/String;)Lorg/jivesoftware/smack/roster/RosterGroup;

    move-result-object v4

    .line 1325
    .local v4, "group":Lorg/jivesoftware/smack/roster/RosterGroup;
    if-nez v4, :cond_4

    .line 1326
    invoke-virtual {p0, v3}, Lorg/jivesoftware/smack/roster/Roster;->createGroup(Ljava/lang/String;)Lorg/jivesoftware/smack/roster/RosterGroup;

    move-result-object v4

    .line 1327
    iget-object v5, p0, Lorg/jivesoftware/smack/roster/Roster;->groups:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1330
    :cond_4
    invoke-virtual {v4, p5}, Lorg/jivesoftware/smack/roster/RosterGroup;->addEntryLocal(Lorg/jivesoftware/smack/roster/RosterEntry;)V

    .line 1331
    .end local v3    # "groupName":Ljava/lang/String;
    .end local v4    # "group":Lorg/jivesoftware/smack/roster/RosterGroup;
    goto :goto_3

    .line 1334
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1335
    .local v2, "oldGroupNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/Roster;->getGroups()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jivesoftware/smack/roster/RosterGroup;

    .line 1336
    .restart local v4    # "group":Lorg/jivesoftware/smack/roster/RosterGroup;
    invoke-virtual {v4}, Lorg/jivesoftware/smack/roster/RosterGroup;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1337
    .end local v4    # "group":Lorg/jivesoftware/smack/roster/RosterGroup;
    goto :goto_4

    .line 1338
    :cond_6
    invoke-interface {v2, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1340
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1341
    .local v4, "groupName":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lorg/jivesoftware/smack/roster/Roster;->getGroup(Ljava/lang/String;)Lorg/jivesoftware/smack/roster/RosterGroup;

    move-result-object v5

    .line 1342
    .local v5, "group":Lorg/jivesoftware/smack/roster/RosterGroup;
    invoke-virtual {v5, p5}, Lorg/jivesoftware/smack/roster/RosterGroup;->removeEntryLocal(Lorg/jivesoftware/smack/roster/RosterEntry;)V

    .line 1343
    invoke-virtual {v5}, Lorg/jivesoftware/smack/roster/RosterGroup;->getEntryCount()I

    move-result v6

    if-nez v6, :cond_7

    .line 1344
    iget-object v6, p0, Lorg/jivesoftware/smack/roster/Roster;->groups:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1346
    .end local v4    # "groupName":Ljava/lang/String;
    .end local v5    # "group":Lorg/jivesoftware/smack/roster/RosterGroup;
    :cond_7
    goto :goto_5

    .line 1347
    :cond_8
    return-void

    .line 1291
    .end local v0    # "newGroupNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "oldEntry":Lorg/jivesoftware/smack/roster/RosterEntry;
    .end local v2    # "oldGroupNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private deleteEntry(Ljava/util/Collection;Lorg/jivesoftware/smack/roster/RosterEntry;)V
    .locals 6
    .param p2, "entry"    # Lorg/jivesoftware/smack/roster/RosterEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/jxmpp/jid/Jid;",
            ">;",
            "Lorg/jivesoftware/smack/roster/RosterEntry;",
            ")V"
        }
    .end annotation

    .line 1350
    .local p1, "deletedEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jxmpp/jid/Jid;>;"
    invoke-virtual {p2}, Lorg/jivesoftware/smack/roster/RosterEntry;->getJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v0

    .line 1351
    .local v0, "user":Lorg/jxmpp/jid/BareJid;
    iget-object v1, p0, Lorg/jivesoftware/smack/roster/Roster;->entries:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1352
    iget-object v1, p0, Lorg/jivesoftware/smack/roster/Roster;->unfiledEntries:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1354
    iget-object v1, p0, Lorg/jivesoftware/smack/roster/Roster;->presenceMap:Ljava/util/Map;

    iget-object v2, p0, Lorg/jivesoftware/smack/roster/Roster;->nonRosterPresenceMap:Lorg/jxmpp/util/cache/LruCache;

    invoke-static {v0, v1, v2}, Lorg/jivesoftware/smack/roster/Roster;->move(Lorg/jxmpp/jid/BareJid;Ljava/util/Map;Ljava/util/Map;)V

    .line 1355
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1357
    iget-object v1, p0, Lorg/jivesoftware/smack/roster/Roster;->groups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1358
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/jivesoftware/smack/roster/RosterGroup;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/roster/RosterGroup;

    .line 1359
    .local v3, "group":Lorg/jivesoftware/smack/roster/RosterGroup;
    invoke-virtual {v3, p2}, Lorg/jivesoftware/smack/roster/RosterGroup;->removeEntryLocal(Lorg/jivesoftware/smack/roster/RosterEntry;)V

    .line 1360
    invoke-virtual {v3}, Lorg/jivesoftware/smack/roster/RosterGroup;->getEntryCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 1361
    iget-object v4, p0, Lorg/jivesoftware/smack/roster/Roster;->groups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1363
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/jivesoftware/smack/roster/RosterGroup;>;"
    .end local v3    # "group":Lorg/jivesoftware/smack/roster/RosterGroup;
    :cond_0
    goto :goto_0

    .line 1364
    :cond_1
    return-void
.end method

.method private fireRosterChangedEvent(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/jxmpp/jid/Jid;",
            ">;",
            "Ljava/util/Collection<",
            "Lorg/jxmpp/jid/Jid;",
            ">;",
            "Ljava/util/Collection<",
            "Lorg/jxmpp/jid/Jid;",
            ">;)V"
        }
    .end annotation

    .line 1258
    .local p1, "addedEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jxmpp/jid/Jid;>;"
    .local p2, "updatedEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jxmpp/jid/Jid;>;"
    .local p3, "deletedEntries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jxmpp/jid/Jid;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->rosterListenersAndEntriesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1259
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/roster/Roster;->rosterListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/roster/RosterListener;

    .line 1260
    .local v2, "listener":Lorg/jivesoftware/smack/roster/RosterListener;
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1261
    invoke-interface {v2, p1}, Lorg/jivesoftware/smack/roster/RosterListener;->entriesAdded(Ljava/util/Collection;)V

    .line 1263
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1264
    invoke-interface {v2, p2}, Lorg/jivesoftware/smack/roster/RosterListener;->entriesUpdated(Ljava/util/Collection;)V

    .line 1266
    :cond_1
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1267
    invoke-interface {v2, p3}, Lorg/jivesoftware/smack/roster/RosterListener;->entriesDeleted(Ljava/util/Collection;)V

    .line 1269
    .end local v2    # "listener":Lorg/jivesoftware/smack/roster/RosterListener;
    :cond_2
    goto :goto_0

    .line 1270
    :cond_3
    monitor-exit v0

    .line 1271
    return-void

    .line 1270
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private fireRosterPresenceEvent(Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 3
    .param p1, "presence"    # Lorg/jivesoftware/smack/packet/Presence;

    .line 1279
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->rosterListenersAndEntriesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1280
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/roster/Roster;->rosterListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/roster/RosterListener;

    .line 1281
    .local v2, "listener":Lorg/jivesoftware/smack/roster/RosterListener;
    invoke-interface {v2, p1}, Lorg/jivesoftware/smack/roster/RosterListener;->presenceChanged(Lorg/jivesoftware/smack/packet/Presence;)V

    .line 1282
    .end local v2    # "listener":Lorg/jivesoftware/smack/roster/RosterListener;
    goto :goto_0

    .line 1283
    :cond_0
    monitor-exit v0

    .line 1284
    return-void

    .line 1283
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getDefaultSubscriptionMode()Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;
    .locals 1

    .line 223
    sget-object v0, Lorg/jivesoftware/smack/roster/Roster;->defaultSubscriptionMode:Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;

    return-object v0
.end method

.method public static declared-synchronized getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smack/roster/Roster;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    const-class v0, Lorg/jivesoftware/smack/roster/Roster;

    monitor-enter v0

    .line 123
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smack/roster/Roster;->INSTANCES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/roster/Roster;

    .line 124
    .local v1, "roster":Lorg/jivesoftware/smack/roster/Roster;
    if-nez v1, :cond_0

    .line 125
    new-instance v2, Lorg/jivesoftware/smack/roster/Roster;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smack/roster/Roster;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    move-object v1, v2

    .line 126
    sget-object v2, Lorg/jivesoftware/smack/roster/Roster;->INSTANCES:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :cond_0
    monitor-exit v0

    return-object v1

    .line 122
    .end local v1    # "roster":Lorg/jivesoftware/smack/roster/Roster;
    .end local p0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized getOrCreatePresencesInternal(Lorg/jxmpp/jid/BareJid;)Ljava/util/Map;
    .locals 3
    .param p1, "entity"    # Lorg/jxmpp/jid/BareJid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jxmpp/jid/BareJid;",
            ")",
            "Ljava/util/Map<",
            "Lorg/jxmpp/jid/parts/Resourcepart;",
            "Lorg/jivesoftware/smack/packet/Presence;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 388
    :try_start_0
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/roster/Roster;->getPresencesInternal(Lorg/jxmpp/jid/BareJid;)Ljava/util/Map;

    move-result-object v0

    .line 389
    .local v0, "entityPresences":Ljava/util/Map;, "Ljava/util/Map<Lorg/jxmpp/jid/parts/Resourcepart;Lorg/jivesoftware/smack/packet/Presence;>;"
    if-nez v0, :cond_1

    .line 390
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/roster/Roster;->contains(Lorg/jxmpp/jid/BareJid;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v0, v1

    .line 392
    iget-object v1, p0, Lorg/jivesoftware/smack/roster/Roster;->presenceMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 395
    .end local p0    # "this":Lorg/jivesoftware/smack/roster/Roster;
    :cond_0
    new-instance v1, Lorg/jxmpp/util/cache/LruCache;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lorg/jxmpp/util/cache/LruCache;-><init>(I)V

    .line 396
    .local v1, "nonRosterEntityPresences":Lorg/jxmpp/util/cache/LruCache;, "Lorg/jxmpp/util/cache/LruCache<Lorg/jxmpp/jid/parts/Resourcepart;Lorg/jivesoftware/smack/packet/Presence;>;"
    iget-object v2, p0, Lorg/jivesoftware/smack/roster/Roster;->nonRosterPresenceMap:Lorg/jxmpp/util/cache/LruCache;

    invoke-virtual {v2, p1, v1}, Lorg/jxmpp/util/cache/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    move-object v0, v1

    .line 400
    .end local v1    # "nonRosterEntityPresences":Lorg/jxmpp/util/cache/LruCache;, "Lorg/jxmpp/util/cache/LruCache<Lorg/jxmpp/jid/parts/Resourcepart;Lorg/jivesoftware/smack/packet/Presence;>;"
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 387
    .end local v0    # "entityPresences":Ljava/util/Map;, "Ljava/util/Map<Lorg/jxmpp/jid/parts/Resourcepart;Lorg/jivesoftware/smack/packet/Presence;>;"
    .end local p1    # "entity":Lorg/jxmpp/jid/BareJid;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getPresencesInternal(Lorg/jxmpp/jid/BareJid;)Ljava/util/Map;
    .locals 2
    .param p1, "entity"    # Lorg/jxmpp/jid/BareJid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jxmpp/jid/BareJid;",
            ")",
            "Ljava/util/Map<",
            "Lorg/jxmpp/jid/parts/Resourcepart;",
            "Lorg/jivesoftware/smack/packet/Presence;",
            ">;"
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->presenceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 375
    .local v0, "entityPresences":Ljava/util/Map;, "Ljava/util/Map<Lorg/jxmpp/jid/parts/Resourcepart;Lorg/jivesoftware/smack/packet/Presence;>;"
    if-nez v0, :cond_0

    .line 376
    iget-object v1, p0, Lorg/jivesoftware/smack/roster/Roster;->nonRosterPresenceMap:Lorg/jxmpp/util/cache/LruCache;

    invoke-virtual {v1, p1}, Lorg/jxmpp/util/cache/LruCache;->lookup(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map;

    .line 378
    :cond_0
    return-object v0
.end method

.method private static hasValidSubscriptionType(Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;)Z
    .locals 3
    .param p0, "item"    # Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;

    .line 1403
    sget-object v0, Lorg/jivesoftware/smack/roster/Roster$6;->$SwitchMap$org$jivesoftware$smack$roster$packet$RosterPacket$ItemType:[I

    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->getItemType()Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 1410
    const/4 v0, 0x0

    return v0

    .line 1408
    :cond_0
    return v1
.end method

.method private static move(Lorg/jxmpp/jid/BareJid;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .param p0, "entity"    # Lorg/jxmpp/jid/BareJid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jxmpp/jid/BareJid;",
            "Ljava/util/Map<",
            "Lorg/jxmpp/jid/BareJid;",
            "Ljava/util/Map<",
            "Lorg/jxmpp/jid/parts/Resourcepart;",
            "Lorg/jivesoftware/smack/packet/Presence;",
            ">;>;",
            "Ljava/util/Map<",
            "Lorg/jxmpp/jid/BareJid;",
            "Ljava/util/Map<",
            "Lorg/jxmpp/jid/parts/Resourcepart;",
            "Lorg/jivesoftware/smack/packet/Presence;",
            ">;>;)V"
        }
    .end annotation

    .line 1391
    .local p1, "from":Ljava/util/Map;, "Ljava/util/Map<Lorg/jxmpp/jid/BareJid;Ljava/util/Map<Lorg/jxmpp/jid/parts/Resourcepart;Lorg/jivesoftware/smack/packet/Presence;>;>;"
    .local p2, "to":Ljava/util/Map;, "Ljava/util/Map<Lorg/jxmpp/jid/BareJid;Ljava/util/Map<Lorg/jxmpp/jid/parts/Resourcepart;Lorg/jivesoftware/smack/packet/Presence;>;>;"
    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1392
    .local v0, "presences":Ljava/util/Map;, "Ljava/util/Map<Lorg/jxmpp/jid/parts/Resourcepart;Lorg/jivesoftware/smack/packet/Presence;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1393
    invoke-interface {p2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1395
    :cond_0
    return-void
.end method

.method private removeEmptyGroups()V
    .locals 4

    .line 1376
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/Roster;->getGroups()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/roster/RosterGroup;

    .line 1377
    .local v1, "group":Lorg/jivesoftware/smack/roster/RosterGroup;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/roster/RosterGroup;->getEntryCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 1378
    iget-object v2, p0, Lorg/jivesoftware/smack/roster/Roster;->groups:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/roster/RosterGroup;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1380
    .end local v1    # "group":Lorg/jivesoftware/smack/roster/RosterGroup;
    :cond_0
    goto :goto_0

    .line 1381
    :cond_1
    return-void
.end method

.method public static setDefaultNonRosterPresenceMapMaxSize(I)V
    .locals 0
    .param p0, "maximumSize"    # I

    .line 1808
    sput p0, Lorg/jivesoftware/smack/roster/Roster;->defaultNonRosterPresenceMapMaxSize:I

    .line 1809
    return-void
.end method

.method public static setDefaultSubscriptionMode(Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;)V
    .locals 0
    .param p0, "subscriptionMode"    # Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;

    .line 235
    sput-object p0, Lorg/jivesoftware/smack/roster/Roster;->defaultSubscriptionMode:Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;

    .line 236
    return-void
.end method

.method private setOfflinePresences()V
    .locals 10

    .line 1210
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->presenceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jxmpp/jid/Jid;

    .line 1211
    .local v1, "user":Lorg/jxmpp/jid/Jid;
    iget-object v2, p0, Lorg/jivesoftware/smack/roster/Roster;->presenceMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1212
    .local v2, "resources":Ljava/util/Map;, "Ljava/util/Map<Lorg/jxmpp/jid/parts/Resourcepart;Lorg/jivesoftware/smack/packet/Presence;>;"
    if-eqz v2, :cond_1

    .line 1213
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jxmpp/jid/parts/Resourcepart;

    .line 1214
    .local v4, "resource":Lorg/jxmpp/jid/parts/Resourcepart;
    new-instance v5, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v6, Lorg/jivesoftware/smack/packet/Presence$Type;->unavailable:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 1215
    .local v5, "packetUnavailable":Lorg/jivesoftware/smack/packet/Presence;
    invoke-interface {v1}, Lorg/jxmpp/jid/Jid;->asEntityBareJidIfPossible()Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v6

    .line 1216
    .local v6, "bareUserJid":Lorg/jxmpp/jid/EntityBareJid;
    if-nez v6, :cond_0

    .line 1217
    sget-object v7, Lorg/jivesoftware/smack/roster/Roster;->LOGGER:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can not transform user JID to bare JID: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 1218
    goto :goto_1

    .line 1220
    :cond_0
    invoke-static {v6, v4}, Lorg/jxmpp/jid/impl/JidCreate;->fullFrom(Lorg/jxmpp/jid/EntityBareJid;Lorg/jxmpp/jid/parts/Resourcepart;)Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/jivesoftware/smack/packet/Presence;->setFrom(Lorg/jxmpp/jid/Jid;)V

    .line 1222
    :try_start_0
    iget-object v7, p0, Lorg/jivesoftware/smack/roster/Roster;->presencePacketListener:Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;

    invoke-virtual {v7, v5}, Lorg/jivesoftware/smack/roster/Roster$PresencePacketListener;->processStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/SmackException$NotConnectedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1231
    nop

    .line 1232
    .end local v4    # "resource":Lorg/jxmpp/jid/parts/Resourcepart;
    .end local v6    # "bareUserJid":Lorg/jxmpp/jid/EntityBareJid;
    goto :goto_1

    .line 1229
    .restart local v4    # "resource":Lorg/jxmpp/jid/parts/Resourcepart;
    .restart local v6    # "bareUserJid":Lorg/jxmpp/jid/EntityBareJid;
    :catch_0
    move-exception v0

    .line 1230
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_2

    .line 1224
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 1225
    .local v0, "e":Lorg/jivesoftware/smack/SmackException$NotConnectedException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v7, "presencePacketListener should never throw a NotConnectedException when processStanza is called with a presence of type unavailable"

    invoke-direct {v3, v7, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1234
    .end local v0    # "e":Lorg/jivesoftware/smack/SmackException$NotConnectedException;
    .end local v1    # "user":Lorg/jxmpp/jid/Jid;
    .end local v2    # "resources":Ljava/util/Map;, "Ljava/util/Map<Lorg/jxmpp/jid/parts/Resourcepart;Lorg/jivesoftware/smack/packet/Presence;>;"
    .end local v4    # "resource":Lorg/jxmpp/jid/parts/Resourcepart;
    .end local v5    # "packetUnavailable":Lorg/jivesoftware/smack/packet/Presence;
    .end local v6    # "bareUserJid":Lorg/jxmpp/jid/EntityBareJid;
    :cond_1
    goto :goto_0

    .line 1235
    :cond_2
    :goto_2
    return-void
.end method

.method private setOfflinePresencesAndResetLoaded()V
    .locals 1

    .line 1243
    invoke-direct {p0}, Lorg/jivesoftware/smack/roster/Roster;->setOfflinePresences()V

    .line 1244
    sget-object v0, Lorg/jivesoftware/smack/roster/Roster$RosterState;->uninitialized:Lorg/jivesoftware/smack/roster/Roster$RosterState;

    iput-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->rosterState:Lorg/jivesoftware/smack/roster/Roster$RosterState;

    .line 1245
    return-void
.end method

.method public static setRosterLoadedAtLoginDefault(Z)V
    .locals 0
    .param p0, "rosterLoadedAtLoginDefault"    # Z

    .line 1174
    sput-boolean p0, Lorg/jivesoftware/smack/roster/Roster;->rosterLoadedAtLoginDefault:Z

    .line 1175
    return-void
.end method


# virtual methods
.method public addPresenceEventListener(Lorg/jivesoftware/smack/roster/PresenceEventListener;)Z
    .locals 1
    .param p1, "presenceEventListener"    # Lorg/jivesoftware/smack/roster/PresenceEventListener;

    .line 591
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->presenceEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addRosterListener(Lorg/jivesoftware/smack/roster/RosterListener;)Z
    .locals 2
    .param p1, "rosterListener"    # Lorg/jivesoftware/smack/roster/RosterListener;

    .line 544
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->rosterListenersAndEntriesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 545
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/roster/Roster;->rosterListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 546
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addRosterLoadedListener(Lorg/jivesoftware/smack/roster/RosterLoadedListener;)Z
    .locals 1
    .param p1, "rosterLoadedListener"    # Lorg/jivesoftware/smack/roster/RosterLoadedListener;

    .line 571
    monitor-enter p1

    .line 572
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->rosterLoadedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p1

    return v0

    .line 573
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addSubscribeListener(Lorg/jivesoftware/smack/roster/SubscribeListener;)Z
    .locals 2
    .param p1, "subscribeListener"    # Lorg/jivesoftware/smack/roster/SubscribeListener;

    .line 726
    const-string v0, "SubscribeListener argument must not be null"

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 727
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->subscriptionMode:Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;

    sget-object v1, Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;->manual:Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;

    if-eq v0, v1, :cond_0

    .line 728
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->subscriptionMode:Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;

    iput-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->previousSubscriptionMode:Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;

    .line 729
    sget-object v0, Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;->manual:Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;

    iput-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->subscriptionMode:Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;

    .line 731
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->subscribeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public contains(Lorg/jxmpp/jid/BareJid;)Z
    .locals 1
    .param p1, "jid"    # Lorg/jxmpp/jid/BareJid;

    .line 878
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/roster/Roster;->getEntry(Lorg/jxmpp/jid/BareJid;)Lorg/jivesoftware/smack/roster/RosterEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public createEntry(Lorg/jxmpp/jid/BareJid;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "user"    # Lorg/jxmpp/jid/BareJid;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "groups"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 634
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/Roster;->getAuthenticatedConnectionOrThrow()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 637
    .local v0, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    new-instance v1, Lorg/jivesoftware/smack/roster/packet/RosterPacket;

    invoke-direct {v1}, Lorg/jivesoftware/smack/roster/packet/RosterPacket;-><init>()V

    .line 638
    .local v1, "rosterPacket":Lorg/jivesoftware/smack/roster/packet/RosterPacket;
    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/roster/packet/RosterPacket;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 639
    new-instance v2, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;

    invoke-direct {v2, p1, p2}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;-><init>(Lorg/jxmpp/jid/BareJid;Ljava/lang/String;)V

    .line 640
    .local v2, "item":Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    if-eqz p3, :cond_1

    .line 641
    array-length v3, p3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, p3, v4

    .line 642
    .local v5, "group":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 643
    invoke-virtual {v2, v5}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->addGroupName(Ljava/lang/String;)V

    .line 641
    .end local v5    # "group":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 647
    :cond_1
    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/roster/packet/RosterPacket;->addRosterItem(Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;)V

    .line 648
    invoke-interface {v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    .line 650
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/roster/Roster;->sendSubscriptionRequest(Lorg/jxmpp/jid/BareJid;)V

    .line 651
    return-void
.end method

.method public createGroup(Ljava/lang/String;)Lorg/jivesoftware/smack/roster/RosterGroup;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 609
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/Roster;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 610
    .local v0, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    iget-object v1, p0, Lorg/jivesoftware/smack/roster/Roster;->groups:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 611
    iget-object v1, p0, Lorg/jivesoftware/smack/roster/Roster;->groups:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/roster/RosterGroup;

    return-object v1

    .line 614
    :cond_0
    new-instance v1, Lorg/jivesoftware/smack/roster/RosterGroup;

    invoke-direct {v1, p1, v0}, Lorg/jivesoftware/smack/roster/RosterGroup;-><init>(Ljava/lang/String;Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 615
    .local v1, "group":Lorg/jivesoftware/smack/roster/RosterGroup;
    iget-object v2, p0, Lorg/jivesoftware/smack/roster/Roster;->groups:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    return-object v1
.end method

.method public getAllPresences(Lorg/jxmpp/jid/BareJid;)Ljava/util/List;
    .locals 5
    .param p1, "bareJid"    # Lorg/jxmpp/jid/BareJid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jxmpp/jid/BareJid;",
            ")",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/Presence;",
            ">;"
        }
    .end annotation

    .line 1036
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/roster/Roster;->getPresencesInternal(Lorg/jxmpp/jid/BareJid;)Ljava/util/Map;

    move-result-object v0

    .line 1038
    .local v0, "userPresences":Ljava/util/Map;, "Ljava/util/Map<Lorg/jxmpp/jid/parts/Resourcepart;Lorg/jivesoftware/smack/packet/Presence;>;"
    if-nez v0, :cond_0

    .line 1040
    new-instance v1, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v2, Lorg/jivesoftware/smack/packet/Presence$Type;->unavailable:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 1041
    .local v1, "unavailable":Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smack/packet/Presence;->setFrom(Lorg/jxmpp/jid/Jid;)V

    .line 1042
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/jivesoftware/smack/packet/Presence;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v2

    .line 1043
    .local v1, "res":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/Presence;>;"
    goto :goto_1

    .line 1044
    .end local v1    # "res":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/Presence;>;"
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1045
    .restart local v1    # "res":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/Presence;>;"
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/packet/Presence;

    .line 1046
    .local v3, "presence":Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/Presence;->clone()Lorg/jivesoftware/smack/packet/Presence;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1047
    .end local v3    # "presence":Lorg/jivesoftware/smack/packet/Presence;
    goto :goto_0

    .line 1049
    :cond_1
    :goto_1
    return-object v1
.end method

.method public getAvailablePresences(Lorg/jxmpp/jid/BareJid;)Ljava/util/List;
    .locals 5
    .param p1, "bareJid"    # Lorg/jxmpp/jid/BareJid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jxmpp/jid/BareJid;",
            ")",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/Presence;",
            ">;"
        }
    .end annotation

    .line 1060
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/roster/Roster;->getAllPresences(Lorg/jxmpp/jid/BareJid;)Ljava/util/List;

    move-result-object v0

    .line 1061
    .local v0, "allPresences":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/Presence;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1062
    .local v1, "res":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/Presence;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/packet/Presence;

    .line 1063
    .local v3, "presence":Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/Presence;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1065
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1067
    .end local v3    # "presence":Lorg/jivesoftware/smack/packet/Presence;
    :cond_0
    goto :goto_0

    .line 1068
    :cond_1
    return-object v1
.end method

.method public getEntries()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/jivesoftware/smack/roster/RosterEntry;",
            ">;"
        }
    .end annotation

    .line 825
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->rosterListenersAndEntriesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 826
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lorg/jivesoftware/smack/roster/Roster;->entries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 827
    .local v1, "allEntries":Ljava/util/Set;, "Ljava/util/Set<Lorg/jivesoftware/smack/roster/RosterEntry;>;"
    iget-object v2, p0, Lorg/jivesoftware/smack/roster/Roster;->entries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/roster/RosterEntry;

    .line 828
    .local v3, "entry":Lorg/jivesoftware/smack/roster/RosterEntry;
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 829
    nop

    .end local v3    # "entry":Lorg/jivesoftware/smack/roster/RosterEntry;
    goto :goto_0

    .line 830
    :cond_0
    monitor-exit v0

    .line 831
    return-object v1

    .line 830
    .end local v1    # "allEntries":Ljava/util/Set;, "Ljava/util/Set<Lorg/jivesoftware/smack/roster/RosterEntry;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getEntriesAndAddListener(Lorg/jivesoftware/smack/roster/RosterListener;Lorg/jivesoftware/smack/roster/RosterEntries;)V
    .locals 2
    .param p1, "rosterListener"    # Lorg/jivesoftware/smack/roster/RosterListener;
    .param p2, "rosterEntries"    # Lorg/jivesoftware/smack/roster/RosterEntries;

    .line 808
    const-string v0, "listener must not be null"

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 809
    const-string v0, "rosterEntries must not be null"

    invoke-static {p2, v0}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 811
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->rosterListenersAndEntriesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 812
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/roster/Roster;->entries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {p2, v1}, Lorg/jivesoftware/smack/roster/RosterEntries;->rosterEntries(Ljava/util/Collection;)V

    .line 813
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/roster/Roster;->addRosterListener(Lorg/jivesoftware/smack/roster/RosterListener;)Z

    .line 814
    monitor-exit v0

    .line 815
    return-void

    .line 814
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getEntry(Lorg/jxmpp/jid/BareJid;)Lorg/jivesoftware/smack/roster/RosterEntry;
    .locals 1
    .param p1, "jid"    # Lorg/jxmpp/jid/BareJid;

    .line 863
    if-nez p1, :cond_0

    .line 864
    const/4 v0, 0x0

    return-object v0

    .line 866
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/roster/RosterEntry;

    return-object v0
.end method

.method public getEntryCount()I
    .locals 1

    .line 787
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/Roster;->getEntries()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public getGroup(Ljava/lang/String;)Lorg/jivesoftware/smack/roster/RosterGroup;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 889
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->groups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/roster/RosterGroup;

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .line 898
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->groups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getGroups()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/jivesoftware/smack/roster/RosterGroup;",
            ">;"
        }
    .end annotation

    .line 907
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->groups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getPresence(Lorg/jxmpp/jid/BareJid;)Lorg/jivesoftware/smack/packet/Presence;
    .locals 8
    .param p1, "jid"    # Lorg/jxmpp/jid/BareJid;

    .line 941
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/roster/Roster;->getPresencesInternal(Lorg/jxmpp/jid/BareJid;)Ljava/util/Map;

    move-result-object v0

    .line 942
    .local v0, "userPresences":Ljava/util/Map;, "Ljava/util/Map<Lorg/jxmpp/jid/parts/Resourcepart;Lorg/jivesoftware/smack/packet/Presence;>;"
    if-nez v0, :cond_0

    .line 943
    new-instance v1, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v2, Lorg/jivesoftware/smack/packet/Presence$Type;->unavailable:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 944
    .local v1, "presence":Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smack/packet/Presence;->setFrom(Lorg/jxmpp/jid/Jid;)V

    .line 945
    return-object v1

    .line 950
    .end local v1    # "presence":Lorg/jivesoftware/smack/packet/Presence;
    :cond_0
    const/4 v1, 0x0

    .line 952
    .restart local v1    # "presence":Lorg/jivesoftware/smack/packet/Presence;
    const/4 v2, 0x0

    .line 954
    .local v2, "unavailable":Lorg/jivesoftware/smack/packet/Presence;
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jivesoftware/smack/packet/Presence;

    .line 955
    .local v4, "p":Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v4}, Lorg/jivesoftware/smack/packet/Presence;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 956
    move-object v2, v4

    .line 957
    goto :goto_0

    .line 960
    :cond_1
    if-eqz v1, :cond_5

    invoke-virtual {v4}, Lorg/jivesoftware/smack/packet/Presence;->getPriority()I

    move-result v5

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Presence;->getPriority()I

    move-result v6

    if-le v5, v6, :cond_2

    goto :goto_1

    .line 964
    :cond_2
    invoke-virtual {v4}, Lorg/jivesoftware/smack/packet/Presence;->getPriority()I

    move-result v5

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Presence;->getPriority()I

    move-result v6

    if-ne v5, v6, :cond_6

    .line 965
    invoke-virtual {v4}, Lorg/jivesoftware/smack/packet/Presence;->getMode()Lorg/jivesoftware/smack/packet/Presence$Mode;

    move-result-object v5

    .line 967
    .local v5, "pMode":Lorg/jivesoftware/smack/packet/Presence$Mode;
    if-nez v5, :cond_3

    .line 968
    sget-object v5, Lorg/jivesoftware/smack/packet/Presence$Mode;->available:Lorg/jivesoftware/smack/packet/Presence$Mode;

    .line 970
    :cond_3
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Presence;->getMode()Lorg/jivesoftware/smack/packet/Presence$Mode;

    move-result-object v6

    .line 972
    .local v6, "presenceMode":Lorg/jivesoftware/smack/packet/Presence$Mode;
    if-nez v6, :cond_4

    .line 973
    sget-object v6, Lorg/jivesoftware/smack/packet/Presence$Mode;->available:Lorg/jivesoftware/smack/packet/Presence$Mode;

    .line 975
    :cond_4
    invoke-virtual {v5, v6}, Lorg/jivesoftware/smack/packet/Presence$Mode;->compareTo(Ljava/lang/Enum;)I

    move-result v7

    if-gez v7, :cond_6

    .line 976
    move-object v1, v4

    goto :goto_2

    .line 961
    .end local v5    # "pMode":Lorg/jivesoftware/smack/packet/Presence$Mode;
    .end local v6    # "presenceMode":Lorg/jivesoftware/smack/packet/Presence$Mode;
    :cond_5
    :goto_1
    move-object v1, v4

    .line 979
    .end local v4    # "p":Lorg/jivesoftware/smack/packet/Presence;
    :cond_6
    :goto_2
    goto :goto_0

    .line 980
    :cond_7
    if-nez v1, :cond_9

    .line 981
    if-eqz v2, :cond_8

    .line 982
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Presence;->clone()Lorg/jivesoftware/smack/packet/Presence;

    move-result-object v3

    return-object v3

    .line 985
    :cond_8
    new-instance v3, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v4, Lorg/jivesoftware/smack/packet/Presence$Type;->unavailable:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    move-object v1, v3

    .line 986
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smack/packet/Presence;->setFrom(Lorg/jxmpp/jid/Jid;)V

    .line 987
    return-object v1

    .line 991
    :cond_9
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Presence;->clone()Lorg/jivesoftware/smack/packet/Presence;

    move-result-object v3

    return-object v3
.end method

.method public getPresenceResource(Lorg/jxmpp/jid/FullJid;)Lorg/jivesoftware/smack/packet/Presence;
    .locals 6
    .param p1, "userWithResource"    # Lorg/jxmpp/jid/FullJid;

    .line 1006
    invoke-interface {p1}, Lorg/jxmpp/jid/FullJid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v0

    .line 1007
    .local v0, "key":Lorg/jxmpp/jid/BareJid;
    invoke-interface {p1}, Lorg/jxmpp/jid/FullJid;->getResourcepart()Lorg/jxmpp/jid/parts/Resourcepart;

    move-result-object v1

    .line 1008
    .local v1, "resource":Lorg/jxmpp/jid/parts/Resourcepart;
    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/roster/Roster;->getPresencesInternal(Lorg/jxmpp/jid/BareJid;)Ljava/util/Map;

    move-result-object v2

    .line 1009
    .local v2, "userPresences":Ljava/util/Map;, "Ljava/util/Map<Lorg/jxmpp/jid/parts/Resourcepart;Lorg/jivesoftware/smack/packet/Presence;>;"
    if-nez v2, :cond_0

    .line 1010
    new-instance v3, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v4, Lorg/jivesoftware/smack/packet/Presence$Type;->unavailable:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 1011
    .local v3, "presence":Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v3, p1}, Lorg/jivesoftware/smack/packet/Presence;->setFrom(Lorg/jxmpp/jid/Jid;)V

    .line 1012
    return-object v3

    .line 1015
    .end local v3    # "presence":Lorg/jivesoftware/smack/packet/Presence;
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/packet/Presence;

    .line 1016
    .restart local v3    # "presence":Lorg/jivesoftware/smack/packet/Presence;
    if-nez v3, :cond_1

    .line 1017
    new-instance v4, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v5, Lorg/jivesoftware/smack/packet/Presence$Type;->unavailable:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    move-object v3, v4

    .line 1018
    invoke-virtual {v3, p1}, Lorg/jivesoftware/smack/packet/Presence;->setFrom(Lorg/jxmpp/jid/Jid;)V

    .line 1019
    return-object v3

    .line 1022
    :cond_1
    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/Presence;->clone()Lorg/jivesoftware/smack/packet/Presence;

    move-result-object v4

    return-object v4
.end method

.method public getPresences(Lorg/jxmpp/jid/BareJid;)Ljava/util/List;
    .locals 8
    .param p1, "jid"    # Lorg/jxmpp/jid/BareJid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jxmpp/jid/BareJid;",
            ")",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/Presence;",
            ">;"
        }
    .end annotation

    .line 1084
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/roster/Roster;->getPresencesInternal(Lorg/jxmpp/jid/BareJid;)Ljava/util/Map;

    move-result-object v0

    .line 1085
    .local v0, "userPresences":Ljava/util/Map;, "Ljava/util/Map<Lorg/jxmpp/jid/parts/Resourcepart;Lorg/jivesoftware/smack/packet/Presence;>;"
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1086
    new-instance v3, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v4, Lorg/jivesoftware/smack/packet/Presence$Type;->unavailable:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 1087
    .local v3, "presence":Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v3, p1}, Lorg/jivesoftware/smack/packet/Presence;->setFrom(Lorg/jxmpp/jid/Jid;)V

    .line 1088
    new-array v2, v2, [Lorg/jivesoftware/smack/packet/Presence;

    aput-object v3, v2, v1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1089
    .end local v3    # "presence":Lorg/jivesoftware/smack/packet/Presence;
    .local v1, "res":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/Presence;>;"
    goto :goto_2

    .line 1091
    .end local v1    # "res":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/Presence;>;"
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1093
    .local v3, "answer":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/Presence;>;"
    const/4 v4, 0x0

    .line 1094
    .local v4, "unavailable":Lorg/jivesoftware/smack/packet/Presence;
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jivesoftware/smack/packet/Presence;

    .line 1095
    .local v6, "presence":Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v6}, Lorg/jivesoftware/smack/packet/Presence;->isAvailable()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1096
    invoke-virtual {v6}, Lorg/jivesoftware/smack/packet/Presence;->clone()Lorg/jivesoftware/smack/packet/Presence;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1099
    :cond_1
    move-object v4, v6

    .line 1101
    .end local v6    # "presence":Lorg/jivesoftware/smack/packet/Presence;
    :goto_1
    goto :goto_0

    .line 1102
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1103
    move-object v1, v3

    .restart local v1    # "res":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/Presence;>;"
    goto :goto_2

    .line 1105
    .end local v1    # "res":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/Presence;>;"
    :cond_3
    if-eqz v4, :cond_4

    .line 1106
    new-array v2, v2, [Lorg/jivesoftware/smack/packet/Presence;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/packet/Presence;->clone()Lorg/jivesoftware/smack/packet/Presence;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .restart local v1    # "res":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/Presence;>;"
    goto :goto_2

    .line 1109
    .end local v1    # "res":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/Presence;>;"
    :cond_4
    new-instance v5, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v6, Lorg/jivesoftware/smack/packet/Presence$Type;->unavailable:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 1110
    .local v5, "presence":Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v5, p1}, Lorg/jivesoftware/smack/packet/Presence;->setFrom(Lorg/jxmpp/jid/Jid;)V

    .line 1111
    new-array v2, v2, [Lorg/jivesoftware/smack/packet/Presence;

    aput-object v5, v2, v1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1114
    .end local v3    # "answer":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/Presence;>;"
    .end local v4    # "unavailable":Lorg/jivesoftware/smack/packet/Presence;
    .end local v5    # "presence":Lorg/jivesoftware/smack/packet/Presence;
    .restart local v1    # "res":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/Presence;>;"
    :goto_2
    return-object v1
.end method

.method getRosterStore()Lorg/jivesoftware/smack/roster/rosterstore/RosterStore;
    .locals 1

    .line 1201
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->rosterStore:Lorg/jivesoftware/smack/roster/rosterstore/RosterStore;

    return-object v0
.end method

.method public getSubscriptionMode()Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;
    .locals 1

    .line 416
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->subscriptionMode:Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;

    return-object v0
.end method

.method public getUnfiledEntries()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/jivesoftware/smack/roster/RosterEntry;",
            ">;"
        }
    .end annotation

    .line 851
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->unfiledEntries:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getUnfiledEntryCount()I
    .locals 1

    .line 841
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->unfiledEntries:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public iAmSubscribedTo(Lorg/jxmpp/jid/Jid;)Z
    .locals 3
    .param p1, "jid"    # Lorg/jxmpp/jid/Jid;

    .line 1154
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1155
    return v0

    .line 1157
    :cond_0
    invoke-interface {p1}, Lorg/jxmpp/jid/Jid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v1

    .line 1158
    .local v1, "bareJid":Lorg/jxmpp/jid/BareJid;
    invoke-virtual {p0, v1}, Lorg/jivesoftware/smack/roster/Roster;->getEntry(Lorg/jxmpp/jid/BareJid;)Lorg/jivesoftware/smack/roster/RosterEntry;

    move-result-object v2

    .line 1159
    .local v2, "entry":Lorg/jivesoftware/smack/roster/RosterEntry;
    if-nez v2, :cond_1

    .line 1160
    return v0

    .line 1162
    :cond_1
    invoke-virtual {v2}, Lorg/jivesoftware/smack/roster/RosterEntry;->canSeeHisPresence()Z

    move-result v0

    return v0
.end method

.method public isLoaded()Z
    .locals 2

    .line 532
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->rosterState:Lorg/jivesoftware/smack/roster/Roster$RosterState;

    sget-object v1, Lorg/jivesoftware/smack/roster/Roster$RosterState;->loaded:Lorg/jivesoftware/smack/roster/Roster$RosterState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRosterLoadedAtLogin()Z
    .locals 1

    .line 1197
    iget-boolean v0, p0, Lorg/jivesoftware/smack/roster/Roster;->rosterLoadedAtLogin:Z

    return v0
.end method

.method public isRosterVersioningSupported()Z
    .locals 3

    .line 1420
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/Roster;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    const-string v1, "ver"

    const-string v2, "urn:xmpp:features:rosterver"

    invoke-interface {v0, v1, v2}, Lorg/jivesoftware/smack/XMPPConnection;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSubscribedToMyPresence(Lorg/jxmpp/jid/Jid;)Z
    .locals 3
    .param p1, "jid"    # Lorg/jxmpp/jid/Jid;

    .line 1132
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1133
    return v0

    .line 1135
    :cond_0
    invoke-interface {p1}, Lorg/jxmpp/jid/Jid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v1

    .line 1136
    .local v1, "bareJid":Lorg/jxmpp/jid/BareJid;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/Roster;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v2

    invoke-interface {v2}, Lorg/jivesoftware/smack/XMPPConnection;->getXMPPServiceDomain()Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/jxmpp/jid/DomainBareJid;->equals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1137
    const/4 v0, 0x1

    return v0

    .line 1139
    :cond_1
    invoke-virtual {p0, v1}, Lorg/jivesoftware/smack/roster/Roster;->getEntry(Lorg/jxmpp/jid/BareJid;)Lorg/jivesoftware/smack/roster/RosterEntry;

    move-result-object v2

    .line 1140
    .local v2, "entry":Lorg/jivesoftware/smack/roster/RosterEntry;
    if-nez v2, :cond_2

    .line 1141
    return v0

    .line 1143
    :cond_2
    invoke-virtual {v2}, Lorg/jivesoftware/smack/roster/RosterEntry;->canSeeMyPresence()Z

    move-result v0

    return v0
.end method

.method public isSubscriptionPreApprovalSupported()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;
        }
    .end annotation

    .line 703
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/Roster;->getAuthenticatedConnectionOrThrow()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 704
    .local v0, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    const-string v1, "sub"

    const-string v2, "urn:xmpp:features:pre-approval"

    invoke-interface {v0, v1, v2}, Lorg/jivesoftware/smack/XMPPConnection;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public preApprove(Lorg/jxmpp/jid/BareJid;)V
    .locals 3
    .param p1, "user"    # Lorg/jxmpp/jid/BareJid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$FeatureNotSupportedException;
        }
    .end annotation

    .line 685
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/Roster;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 686
    .local v0, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/Roster;->isSubscriptionPreApprovalSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 690
    new-instance v1, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v2, Lorg/jivesoftware/smack/packet/Presence$Type;->subscribed:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 691
    .local v1, "presencePacket":Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 692
    invoke-interface {v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 693
    return-void

    .line 687
    .end local v1    # "presencePacket":Lorg/jivesoftware/smack/packet/Presence;
    :cond_0
    new-instance v1, Lorg/jivesoftware/smack/SmackException$FeatureNotSupportedException;

    const-string v2, "Pre-approving"

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/SmackException$FeatureNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public preApproveAndCreateEntry(Lorg/jxmpp/jid/BareJid;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "user"    # Lorg/jxmpp/jid/BareJid;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "groups"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$FeatureNotSupportedException;
        }
    .end annotation

    .line 670
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/roster/Roster;->preApprove(Lorg/jxmpp/jid/BareJid;)V

    .line 671
    invoke-virtual {p0, p1, p2, p3}, Lorg/jivesoftware/smack/roster/Roster;->createEntry(Lorg/jxmpp/jid/BareJid;Ljava/lang/String;[Ljava/lang/String;)V

    .line 672
    return-void
.end method

.method public reload()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 444
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/Roster;->getAuthenticatedConnectionOrThrow()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 446
    .local v0, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    new-instance v1, Lorg/jivesoftware/smack/roster/packet/RosterPacket;

    invoke-direct {v1}, Lorg/jivesoftware/smack/roster/packet/RosterPacket;-><init>()V

    .line 447
    .local v1, "packet":Lorg/jivesoftware/smack/roster/packet/RosterPacket;
    iget-object v2, p0, Lorg/jivesoftware/smack/roster/Roster;->rosterStore:Lorg/jivesoftware/smack/roster/rosterstore/RosterStore;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/Roster;->isRosterVersioningSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 448
    iget-object v2, p0, Lorg/jivesoftware/smack/roster/Roster;->rosterStore:Lorg/jivesoftware/smack/roster/rosterstore/RosterStore;

    invoke-interface {v2}, Lorg/jivesoftware/smack/roster/rosterstore/RosterStore;->getRosterVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/roster/packet/RosterPacket;->setVersion(Ljava/lang/String;)V

    .line 450
    :cond_0
    sget-object v2, Lorg/jivesoftware/smack/roster/Roster$RosterState;->loading:Lorg/jivesoftware/smack/roster/Roster$RosterState;

    iput-object v2, p0, Lorg/jivesoftware/smack/roster/Roster;->rosterState:Lorg/jivesoftware/smack/roster/Roster$RosterState;

    .line 452
    invoke-interface {v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->sendIqRequestAsync(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/SmackFuture;

    move-result-object v2

    .line 454
    .local v2, "future":Lorg/jivesoftware/smack/SmackFuture;, "Lorg/jivesoftware/smack/SmackFuture<Lorg/jivesoftware/smack/packet/IQ;Ljava/lang/Exception;>;"
    new-instance v3, Lorg/jivesoftware/smack/roster/Roster$RosterResultListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lorg/jivesoftware/smack/roster/Roster$RosterResultListener;-><init>(Lorg/jivesoftware/smack/roster/Roster;Lorg/jivesoftware/smack/roster/Roster$1;)V

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/SmackFuture;->onSuccess(Lorg/jivesoftware/smack/util/SuccessCallback;)Lorg/jivesoftware/smack/util/CallbackRecipient;

    move-result-object v3

    new-instance v4, Lorg/jivesoftware/smack/roster/Roster$5;

    invoke-direct {v4, p0}, Lorg/jivesoftware/smack/roster/Roster$5;-><init>(Lorg/jivesoftware/smack/roster/Roster;)V

    invoke-interface {v3, v4}, Lorg/jivesoftware/smack/util/CallbackRecipient;->onError(Lorg/jivesoftware/smack/util/ExceptionCallback;)Lorg/jivesoftware/smack/util/CallbackRecipient;

    .line 472
    return-void
.end method

.method public reloadAndWait()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 483
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/Roster;->reload()V

    .line 484
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/Roster;->waitUntilLoaded()Z

    .line 485
    return-void
.end method

.method public removeEntry(Lorg/jivesoftware/smack/roster/RosterEntry;)V
    .locals 4
    .param p1, "entry"    # Lorg/jivesoftware/smack/roster/RosterEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 765
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/Roster;->getAuthenticatedConnectionOrThrow()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 769
    .local v0, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    iget-object v1, p0, Lorg/jivesoftware/smack/roster/Roster;->entries:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/roster/RosterEntry;->getJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 770
    return-void

    .line 772
    :cond_0
    new-instance v1, Lorg/jivesoftware/smack/roster/packet/RosterPacket;

    invoke-direct {v1}, Lorg/jivesoftware/smack/roster/packet/RosterPacket;-><init>()V

    .line 773
    .local v1, "packet":Lorg/jivesoftware/smack/roster/packet/RosterPacket;
    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/roster/packet/RosterPacket;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 774
    invoke-static {p1}, Lorg/jivesoftware/smack/roster/RosterEntry;->toRosterItem(Lorg/jivesoftware/smack/roster/RosterEntry;)Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;

    move-result-object v2

    .line 776
    .local v2, "item":Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    sget-object v3, Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;->remove:Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->setItemType(Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;)V

    .line 777
    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/roster/packet/RosterPacket;->addRosterItem(Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;)V

    .line 778
    invoke-interface {v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    .line 779
    return-void
.end method

.method public removePresenceEventListener(Lorg/jivesoftware/smack/roster/PresenceEventListener;)Z
    .locals 1
    .param p1, "presenceEventListener"    # Lorg/jivesoftware/smack/roster/PresenceEventListener;

    .line 595
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->presenceEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeRosterListener(Lorg/jivesoftware/smack/roster/RosterListener;)Z
    .locals 2
    .param p1, "rosterListener"    # Lorg/jivesoftware/smack/roster/RosterListener;

    .line 557
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->rosterListenersAndEntriesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 558
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/roster/Roster;->rosterListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 559
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeRosterLoadedListener(Lorg/jivesoftware/smack/roster/RosterLoadedListener;)Z
    .locals 1
    .param p1, "rosterLoadedListener"    # Lorg/jivesoftware/smack/roster/RosterLoadedListener;

    .line 585
    monitor-enter p1

    .line 586
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->rosterLoadedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p1

    return v0

    .line 587
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeSubscribeListener(Lorg/jivesoftware/smack/roster/SubscribeListener;)Z
    .locals 2
    .param p1, "subscribeListener"    # Lorg/jivesoftware/smack/roster/SubscribeListener;

    .line 744
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->subscribeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 745
    .local v0, "removed":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/jivesoftware/smack/roster/Roster;->subscribeListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 746
    iget-object v1, p0, Lorg/jivesoftware/smack/roster/Roster;->previousSubscriptionMode:Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smack/roster/Roster;->setSubscriptionMode(Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;)V

    .line 748
    :cond_0
    return v0
.end method

.method public sendSubscriptionRequest(Lorg/jxmpp/jid/BareJid;)V
    .locals 3
    .param p1, "jid"    # Lorg/jxmpp/jid/BareJid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 708
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/Roster;->getAuthenticatedConnectionOrThrow()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 711
    .local v0, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    new-instance v1, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v2, Lorg/jivesoftware/smack/packet/Presence$Type;->subscribe:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 712
    .local v1, "presencePacket":Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 713
    invoke-interface {v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 714
    return-void
.end method

.method public setNonRosterPresenceMapMaxSize(I)V
    .locals 1
    .param p1, "maximumSize"    # I

    .line 1819
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/Roster;->nonRosterPresenceMap:Lorg/jxmpp/util/cache/LruCache;

    invoke-virtual {v0, p1}, Lorg/jxmpp/util/cache/LruCache;->setMaxCacheSize(I)V

    .line 1820
    return-void
.end method

.method public setRosterLoadedAtLogin(Z)V
    .locals 0
    .param p1, "rosterLoadedAtLogin"    # Z

    .line 1185
    iput-boolean p1, p0, Lorg/jivesoftware/smack/roster/Roster;->rosterLoadedAtLogin:Z

    .line 1186
    return-void
.end method

.method public setRosterStore(Lorg/jivesoftware/smack/roster/rosterstore/RosterStore;)Z
    .locals 4
    .param p1, "rosterStore"    # Lorg/jivesoftware/smack/roster/rosterstore/RosterStore;

    .line 495
    iput-object p1, p0, Lorg/jivesoftware/smack/roster/Roster;->rosterStore:Lorg/jivesoftware/smack/roster/rosterstore/RosterStore;

    .line 497
    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/Roster;->reload()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/jivesoftware/smack/SmackException$NotLoggedInException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/jivesoftware/smack/SmackException$NotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    nop

    .line 503
    const/4 v0, 0x1

    return v0

    .line 499
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 500
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    sget-object v1, Lorg/jivesoftware/smack/roster/Roster;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v3, "Could not reload roster"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 501
    const/4 v1, 0x0

    return v1
.end method

.method public setSubscriptionMode(Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;)V
    .locals 0
    .param p1, "subscriptionMode"    # Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;

    .line 432
    iput-object p1, p0, Lorg/jivesoftware/smack/roster/Roster;->subscriptionMode:Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;

    .line 433
    return-void
.end method

.method protected waitUntilLoaded()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 507
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/Roster;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getReplyTimeout()J

    move-result-wide v0

    .line 508
    .local v0, "waitTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 509
    .local v2, "start":J
    :goto_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/Roster;->isLoaded()Z

    move-result v4

    if-nez v4, :cond_2

    .line 510
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    .line 511
    goto :goto_1

    .line 513
    :cond_0
    monitor-enter p0

    .line 514
    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/Roster;->isLoaded()Z

    move-result v4

    if-nez v4, :cond_1

    .line 515
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 517
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 519
    .local v4, "now":J
    sub-long v6, v4, v2

    sub-long/2addr v0, v6

    .line 520
    move-wide v2, v4

    .line 521
    .end local v4    # "now":J
    goto :goto_0

    .line 517
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 522
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/jivesoftware/smack/roster/Roster;->isLoaded()Z

    move-result v4

    return v4
.end method
