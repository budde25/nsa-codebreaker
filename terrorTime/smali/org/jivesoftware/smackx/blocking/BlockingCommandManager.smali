.class public final Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;
.super Lorg/jivesoftware/smack/Manager;
.source "BlockingCommandManager.java"


# static fields
.field private static final INSTANCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;",
            ">;"
        }
    .end annotation
.end field

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:blocking"


# instance fields
.field private final allJidsUnblockedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jivesoftware/smackx/blocking/AllJidsUnblockedListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile blockListCached:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jxmpp/jid/Jid;",
            ">;"
        }
    .end annotation
.end field

.field private final jidsBlockedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jivesoftware/smackx/blocking/JidsBlockedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final jidsUnblockedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jivesoftware/smackx/blocking/JidsUnblockedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager$1;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/XMPPConnectionRegistry;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 70
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;->INSTANCES:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 13
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 96
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Manager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 89
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;->allJidsUnblockedListeners:Ljava/util/Set;

    .line 91
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;->jidsBlockedListeners:Ljava/util/Set;

    .line 93
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;->jidsUnblockedListeners:Ljava/util/Set;

    .line 99
    new-instance v0, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager$2;

    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    sget-object v6, Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;->sync:Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;

    const-string v3, "block"

    const-string v4, "urn:xmpp:blocking"

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager$2;-><init>(Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V

    invoke-interface {p1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->registerIQRequestHandler(Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;)Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;

    .line 121
    new-instance v0, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager$3;

    sget-object v11, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    sget-object v12, Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;->sync:Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;

    const-string v9, "unblock"

    const-string v10, "urn:xmpp:blocking"

    move-object v7, v0

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager$3;-><init>(Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V

    invoke-interface {p1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->registerIQRequestHandler(Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;)Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;

    .line 148
    new-instance v0, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager$4;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager$4;-><init>(Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;)V

    invoke-interface {p1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 158
    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;

    .line 55
    iget-object v0, p0, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;->blockListCached:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;
    .param p1, "x1"    # Ljava/util/List;

    .line 55
    iput-object p1, p0, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;->blockListCached:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;

    .line 55
    iget-object v0, p0, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;->jidsBlockedListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;

    .line 55
    iget-object v0, p0, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;->allJidsUnblockedListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$300(Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;

    .line 55
    iget-object v0, p0, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;->jidsUnblockedListeners:Ljava/util/Set;

    return-object v0
.end method

.method public static declared-synchronized getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    const-class v0, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;

    monitor-enter v0

    .line 79
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;

    .line 81
    .local v1, "blockingCommandManager":Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;
    if-nez v1, :cond_0

    .line 82
    new-instance v2, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    move-object v1, v2

    .line 83
    sget-object v2, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_0
    monitor-exit v0

    return-object v1

    .line 78
    .end local v1    # "blockingCommandManager":Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;
    .end local p0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public addAllJidsUnblockedListener(Lorg/jivesoftware/smackx/blocking/AllJidsUnblockedListener;)V
    .locals 1
    .param p1, "allJidsUnblockedListener"    # Lorg/jivesoftware/smackx/blocking/AllJidsUnblockedListener;

    .line 256
    iget-object v0, p0, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;->allJidsUnblockedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 257
    return-void
.end method

.method public addJidsBlockedListener(Lorg/jivesoftware/smackx/blocking/JidsBlockedListener;)V
    .locals 1
    .param p1, "jidsBlockedListener"    # Lorg/jivesoftware/smackx/blocking/JidsBlockedListener;

    .line 240
    iget-object v0, p0, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;->jidsBlockedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    return-void
.end method

.method public addJidsUnblockedListener(Lorg/jivesoftware/smackx/blocking/JidsUnblockedListener;)V
    .locals 1
    .param p1, "jidsUnblockedListener"    # Lorg/jivesoftware/smackx/blocking/JidsUnblockedListener;

    .line 248
    iget-object v0, p0, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;->jidsUnblockedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 249
    return-void
.end method

.method public blockContacts(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jxmpp/jid/Jid;",
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

    .line 206
    .local p1, "jids":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/jid/Jid;>;"
    new-instance v0, Lorg/jivesoftware/smackx/blocking/element/BlockContactsIQ;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smackx/blocking/element/BlockContactsIQ;-><init>(Ljava/util/List;)V

    .line 207
    .local v0, "blockContactIQ":Lorg/jivesoftware/smackx/blocking/element/BlockContactsIQ;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    .line 208
    return-void
.end method

.method public getBlockList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jxmpp/jid/Jid;",
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

    .line 186
    iget-object v0, p0, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;->blockListCached:Ljava/util/List;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Lorg/jivesoftware/smackx/blocking/element/BlockListIQ;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/blocking/element/BlockListIQ;-><init>()V

    .line 188
    .local v0, "blockListIQ":Lorg/jivesoftware/smackx/blocking/element/BlockListIQ;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/blocking/element/BlockListIQ;

    .line 189
    .local v1, "blockListIQResult":Lorg/jivesoftware/smackx/blocking/element/BlockListIQ;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/blocking/element/BlockListIQ;->getBlockedJidsCopy()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;->blockListCached:Ljava/util/List;

    .line 192
    .end local v0    # "blockListIQ":Lorg/jivesoftware/smackx/blocking/element/BlockListIQ;
    .end local v1    # "blockListIQResult":Lorg/jivesoftware/smackx/blocking/element/BlockListIQ;
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;->blockListCached:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
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

    .line 171
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    const-string v1, "urn:xmpp:blocking"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->serverSupportsFeature(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public removeAllJidsUnblockedListener(Lorg/jivesoftware/smackx/blocking/AllJidsUnblockedListener;)V
    .locals 1
    .param p1, "allJidsUnblockedListener"    # Lorg/jivesoftware/smackx/blocking/AllJidsUnblockedListener;

    .line 260
    iget-object v0, p0, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;->allJidsUnblockedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 261
    return-void
.end method

.method public removeJidsBlockedListener(Lorg/jivesoftware/smackx/blocking/JidsBlockedListener;)V
    .locals 1
    .param p1, "jidsBlockedListener"    # Lorg/jivesoftware/smackx/blocking/JidsBlockedListener;

    .line 244
    iget-object v0, p0, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;->jidsBlockedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 245
    return-void
.end method

.method public removeJidsUnblockedListener(Lorg/jivesoftware/smackx/blocking/JidsUnblockedListener;)V
    .locals 1
    .param p1, "jidsUnblockedListener"    # Lorg/jivesoftware/smackx/blocking/JidsUnblockedListener;

    .line 252
    iget-object v0, p0, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;->jidsUnblockedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 253
    return-void
.end method

.method public unblockAll()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 235
    new-instance v0, Lorg/jivesoftware/smackx/blocking/element/UnblockContactsIQ;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/blocking/element/UnblockContactsIQ;-><init>()V

    .line 236
    .local v0, "unblockContactIQ":Lorg/jivesoftware/smackx/blocking/element/UnblockContactsIQ;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    .line 237
    return-void
.end method

.method public unblockContacts(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jxmpp/jid/Jid;",
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

    .line 221
    .local p1, "jids":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/jid/Jid;>;"
    new-instance v0, Lorg/jivesoftware/smackx/blocking/element/UnblockContactsIQ;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smackx/blocking/element/UnblockContactsIQ;-><init>(Ljava/util/List;)V

    .line 222
    .local v0, "unblockContactIQ":Lorg/jivesoftware/smackx/blocking/element/UnblockContactsIQ;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/blocking/BlockingCommandManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    .line 223
    return-void
.end method
