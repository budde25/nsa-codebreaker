.class public final Lorg/jivesoftware/smackx/bob/BoBManager;
.super Lorg/jivesoftware/smack/Manager;
.source "BoBManager.java"


# static fields
.field private static final BOB_CACHE:Lorg/jxmpp/util/cache/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jxmpp/util/cache/LruCache<",
            "Lorg/jivesoftware/smackx/bob/BoBHash;",
            "Lorg/jivesoftware/smackx/bob/BoBData;",
            ">;"
        }
    .end annotation
.end field

.field private static final INSTANCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smackx/bob/BoBManager;",
            ">;"
        }
    .end annotation
.end field

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:bob"


# instance fields
.field private final bobs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smackx/bob/BoBHash;",
            "Lorg/jivesoftware/smackx/bob/BoBInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Lorg/jivesoftware/smackx/bob/BoBManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/bob/BoBManager$1;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/XMPPConnectionRegistry;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 66
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/bob/BoBManager;->INSTANCES:Ljava/util/Map;

    .line 84
    new-instance v0, Lorg/jxmpp/util/cache/LruCache;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lorg/jxmpp/util/cache/LruCache;-><init>(I)V

    sput-object v0, Lorg/jivesoftware/smackx/bob/BoBManager;->BOB_CACHE:Lorg/jxmpp/util/cache/LruCache;

    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 8
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 89
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Manager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 86
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/bob/BoBManager;->bobs:Ljava/util/Map;

    .line 90
    invoke-static {p1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    .line 91
    .local v0, "serviceDiscoveryManager":Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    const-string v1, "urn:xmpp:bob"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    .line 93
    new-instance v1, Lorg/jivesoftware/smackx/bob/BoBManager$2;

    sget-object v6, Lorg/jivesoftware/smack/packet/IQ$Type;->get:Lorg/jivesoftware/smack/packet/IQ$Type;

    sget-object v7, Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;->async:Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;

    const-string v4, "data"

    const-string v5, "urn:xmpp:bob"

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/jivesoftware/smackx/bob/BoBManager$2;-><init>(Lorg/jivesoftware/smackx/bob/BoBManager;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V

    invoke-interface {p1, v1}, Lorg/jivesoftware/smack/XMPPConnection;->registerIQRequestHandler(Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;)Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;

    .line 112
    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smackx/bob/BoBManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/bob/BoBManager;

    .line 53
    iget-object v0, p0, Lorg/jivesoftware/smackx/bob/BoBManager;->bobs:Ljava/util/Map;

    return-object v0
.end method

.method public static declared-synchronized getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/bob/BoBManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    const-class v0, Lorg/jivesoftware/smackx/bob/BoBManager;

    monitor-enter v0

    .line 75
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/bob/BoBManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/bob/BoBManager;

    .line 76
    .local v1, "bobManager":Lorg/jivesoftware/smackx/bob/BoBManager;
    if-nez v1, :cond_0

    .line 77
    new-instance v2, Lorg/jivesoftware/smackx/bob/BoBManager;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/bob/BoBManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    move-object v1, v2

    .line 78
    sget-object v2, Lorg/jivesoftware/smackx/bob/BoBManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_0
    monitor-exit v0

    return-object v1

    .line 74
    .end local v1    # "bobManager":Lorg/jivesoftware/smackx/bob/BoBManager;
    .end local p0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public addBoB(Lorg/jivesoftware/smackx/bob/BoBData;)Lorg/jivesoftware/smackx/bob/BoBInfo;
    .locals 4
    .param p1, "bobData"    # Lorg/jivesoftware/smackx/bob/BoBData;

    .line 162
    new-instance v0, Lorg/jivesoftware/smackx/bob/BoBHash;

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/bob/BoBData;->getContent()[B

    move-result-object v1

    invoke-static {v1}, Lorg/jivesoftware/smack/util/SHA1;->hex([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sha1"

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/bob/BoBHash;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .local v0, "bobHash":Lorg/jivesoftware/smackx/bob/BoBHash;
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 165
    .local v1, "bobHashes":Ljava/util/Set;, "Ljava/util/Set<Lorg/jivesoftware/smackx/bob/BoBHash;>;"
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 167
    new-instance v2, Lorg/jivesoftware/smackx/bob/BoBInfo;

    invoke-direct {v2, v1, p1}, Lorg/jivesoftware/smackx/bob/BoBInfo;-><init>(Ljava/util/Set;Lorg/jivesoftware/smackx/bob/BoBData;)V

    .line 169
    .local v2, "bobInfo":Lorg/jivesoftware/smackx/bob/BoBInfo;
    iget-object v3, p0, Lorg/jivesoftware/smackx/bob/BoBManager;->bobs:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    return-object v2
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

    .line 125
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/bob/BoBManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    const-string v1, "urn:xmpp:bob"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->serverSupportsFeature(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public removeBoB(Lorg/jivesoftware/smackx/bob/BoBHash;)Lorg/jivesoftware/smackx/bob/BoBInfo;
    .locals 4
    .param p1, "bobHash"    # Lorg/jivesoftware/smackx/bob/BoBHash;

    .line 175
    iget-object v0, p0, Lorg/jivesoftware/smackx/bob/BoBManager;->bobs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/bob/BoBInfo;

    .line 176
    .local v0, "bobInfo":Lorg/jivesoftware/smackx/bob/BoBInfo;
    if-nez v0, :cond_0

    .line 177
    const/4 v1, 0x0

    return-object v1

    .line 179
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bob/BoBInfo;->getHashes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/bob/BoBHash;

    .line 180
    .local v2, "otherBobHash":Lorg/jivesoftware/smackx/bob/BoBHash;
    iget-object v3, p0, Lorg/jivesoftware/smackx/bob/BoBManager;->bobs:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .end local v2    # "otherBobHash":Lorg/jivesoftware/smackx/bob/BoBHash;
    goto :goto_0

    .line 182
    :cond_1
    return-object v0
.end method

.method public requestBoB(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/bob/BoBHash;)Lorg/jivesoftware/smackx/bob/BoBData;
    .locals 5
    .param p1, "to"    # Lorg/jxmpp/jid/Jid;
    .param p2, "bobHash"    # Lorg/jivesoftware/smackx/bob/BoBHash;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 142
    sget-object v0, Lorg/jivesoftware/smackx/bob/BoBManager;->BOB_CACHE:Lorg/jxmpp/util/cache/LruCache;

    invoke-virtual {v0, p2}, Lorg/jxmpp/util/cache/LruCache;->lookup(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/bob/BoBData;

    .line 143
    .local v0, "bobData":Lorg/jivesoftware/smackx/bob/BoBData;
    if-eqz v0, :cond_0

    .line 144
    return-object v0

    .line 147
    :cond_0
    new-instance v1, Lorg/jivesoftware/smackx/bob/element/BoBIQ;

    invoke-direct {v1, p2}, Lorg/jivesoftware/smackx/bob/element/BoBIQ;-><init>(Lorg/jivesoftware/smackx/bob/BoBHash;)V

    .line 148
    .local v1, "requestBoBIQ":Lorg/jivesoftware/smackx/bob/element/BoBIQ;
    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->get:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/bob/element/BoBIQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 149
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smackx/bob/element/BoBIQ;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 151
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/bob/BoBManager;->getAuthenticatedConnectionOrThrow()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v2

    .line 152
    .local v2, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    invoke-interface {v2, v1}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smackx/bob/element/BoBIQ;

    .line 154
    .local v3, "responseBoBIQ":Lorg/jivesoftware/smackx/bob/element/BoBIQ;
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/bob/element/BoBIQ;->getBoBData()Lorg/jivesoftware/smackx/bob/BoBData;

    move-result-object v0

    .line 155
    sget-object v4, Lorg/jivesoftware/smackx/bob/BoBManager;->BOB_CACHE:Lorg/jxmpp/util/cache/LruCache;

    invoke-virtual {v4, p2, v0}, Lorg/jxmpp/util/cache/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    return-object v0
.end method
