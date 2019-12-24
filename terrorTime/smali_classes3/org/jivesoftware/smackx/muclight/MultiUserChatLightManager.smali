.class public final Lorg/jivesoftware/smackx/muclight/MultiUserChatLightManager;
.super Lorg/jivesoftware/smack/Manager;
.source "MultiUserChatLightManager.java"


# static fields
.field private static final INSTANCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smackx/muclight/MultiUserChatLightManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final multiUserChatLights:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jxmpp/jid/EntityBareJid;",
            "Ljava/lang/ref/WeakReference<",
            "Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLightManager;->INSTANCES:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 1
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 76
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Manager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLightManager;->multiUserChatLights:Ljava/util/Map;

    .line 77
    return-void
.end method

.method private createNewMucLightAndAddToMap(Lorg/jxmpp/jid/EntityBareJid;)Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;
    .locals 3
    .param p1, "jid"    # Lorg/jxmpp/jid/EntityBareJid;

    .line 98
    new-instance v0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muclight/MultiUserChatLightManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;-><init>(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jxmpp/jid/EntityJid;)V

    .line 99
    .local v0, "multiUserChatLight":Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;
    iget-object v1, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLightManager;->multiUserChatLights:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-object v0
.end method

.method private getBlockingList(Lorg/jxmpp/jid/DomainBareJid;)Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;
    .locals 4
    .param p1, "mucLightService"    # Lorg/jxmpp/jid/DomainBareJid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;
        }
    .end annotation

    .line 230
    new-instance v0, Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;-><init>(Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 231
    .local v0, "mucLightBlockingIQ":Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->get:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 232
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 234
    new-instance v1, Lorg/jivesoftware/smack/filter/IQReplyFilter;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muclight/MultiUserChatLightManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/jivesoftware/smack/filter/IQReplyFilter;-><init>(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 235
    .local v1, "responseFilter":Lorg/jivesoftware/smack/filter/StanzaFilter;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muclight/MultiUserChatLightManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/filter/StanzaFilter;Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v2

    .line 236
    invoke-virtual {v2}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/packet/IQ;

    .line 237
    .local v2, "responseIq":Lorg/jivesoftware/smack/packet/IQ;
    move-object v3, v2

    check-cast v3, Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;

    .line 239
    .local v3, "mucLightBlockingIQResult":Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;
    return-object v3
.end method

.method public static declared-synchronized getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/muclight/MultiUserChatLightManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    const-class v0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLightManager;

    monitor-enter v0

    .line 61
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/muclight/MultiUserChatLightManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/muclight/MultiUserChatLightManager;

    .line 62
    .local v1, "multiUserChatLightManager":Lorg/jivesoftware/smackx/muclight/MultiUserChatLightManager;
    if-nez v1, :cond_0

    .line 63
    new-instance v2, Lorg/jivesoftware/smackx/muclight/MultiUserChatLightManager;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/muclight/MultiUserChatLightManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    move-object v1, v2

    .line 64
    sget-object v2, Lorg/jivesoftware/smackx/muclight/MultiUserChatLightManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_0
    monitor-exit v0

    return-object v1

    .line 60
    .end local v1    # "multiUserChatLightManager":Lorg/jivesoftware/smackx/muclight/MultiUserChatLightManager;
    .end local p0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private sendBlockRooms(Lorg/jxmpp/jid/DomainBareJid;Ljava/util/HashMap;)V
    .locals 2
    .param p1, "mucLightService"    # Lorg/jxmpp/jid/DomainBareJid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jxmpp/jid/DomainBareJid;",
            "Ljava/util/HashMap<",
            "Lorg/jxmpp/jid/Jid;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;
        }
    .end annotation

    .line 280
    .local p2, "rooms":Ljava/util/HashMap;, "Ljava/util/HashMap<Lorg/jxmpp/jid/Jid;Ljava/lang/Boolean;>;"
    new-instance v0, Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;-><init>(Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 281
    .local v0, "mucLightBlockingIQ":Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 282
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 283
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muclight/MultiUserChatLightManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    .line 284
    return-void
.end method

.method private sendBlockUsers(Lorg/jxmpp/jid/DomainBareJid;Ljava/util/HashMap;)V
    .locals 2
    .param p1, "mucLightService"    # Lorg/jxmpp/jid/DomainBareJid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jxmpp/jid/DomainBareJid;",
            "Ljava/util/HashMap<",
            "Lorg/jxmpp/jid/Jid;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;
        }
    .end annotation

    .line 324
    .local p2, "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Lorg/jxmpp/jid/Jid;Ljava/lang/Boolean;>;"
    new-instance v0, Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;-><init>(Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 325
    .local v0, "mucLightBlockingIQ":Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 326
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 327
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muclight/MultiUserChatLightManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    .line 328
    return-void
.end method

.method private sendUnblockRooms(Lorg/jxmpp/jid/DomainBareJid;Ljava/util/HashMap;)V
    .locals 2
    .param p1, "mucLightService"    # Lorg/jxmpp/jid/DomainBareJid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jxmpp/jid/DomainBareJid;",
            "Ljava/util/HashMap<",
            "Lorg/jxmpp/jid/Jid;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;
        }
    .end annotation

    .line 368
    .local p2, "rooms":Ljava/util/HashMap;, "Ljava/util/HashMap<Lorg/jxmpp/jid/Jid;Ljava/lang/Boolean;>;"
    new-instance v0, Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;-><init>(Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 369
    .local v0, "mucLightBlockingIQ":Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 370
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 371
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muclight/MultiUserChatLightManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    .line 372
    return-void
.end method

.method private sendUnblockUsers(Lorg/jxmpp/jid/DomainBareJid;Ljava/util/HashMap;)V
    .locals 2
    .param p1, "mucLightService"    # Lorg/jxmpp/jid/DomainBareJid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jxmpp/jid/DomainBareJid;",
            "Ljava/util/HashMap<",
            "Lorg/jxmpp/jid/Jid;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;
        }
    .end annotation

    .line 412
    .local p2, "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Lorg/jxmpp/jid/Jid;Ljava/lang/Boolean;>;"
    new-instance v0, Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;-><init>(Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 413
    .local v0, "mucLightBlockingIQ":Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 414
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 415
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muclight/MultiUserChatLightManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    .line 416
    return-void
.end method


# virtual methods
.method public blockRoom(Lorg/jxmpp/jid/DomainBareJid;Lorg/jxmpp/jid/Jid;)V
    .locals 2
    .param p1, "mucLightService"    # Lorg/jxmpp/jid/DomainBareJid;
    .param p2, "roomJid"    # Lorg/jxmpp/jid/Jid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 254
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 255
    .local v0, "rooms":Ljava/util/HashMap;, "Ljava/util/HashMap<Lorg/jxmpp/jid/Jid;Ljava/lang/Boolean;>;"
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/muclight/MultiUserChatLightManager;->sendBlockRooms(Lorg/jxmpp/jid/DomainBareJid;Ljava/util/HashMap;)V

    .line 257
    return-void
.end method

.method public blockRooms(Lorg/jxmpp/jid/DomainBareJid;Ljava/util/List;)V
    .locals 4
    .param p1, "mucLightService"    # Lorg/jxmpp/jid/DomainBareJid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jxmpp/jid/DomainBareJid;",
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

    .line 271
    .local p2, "roomsJids":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/jid/Jid;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 272
    .local v0, "rooms":Ljava/util/HashMap;, "Ljava/util/HashMap<Lorg/jxmpp/jid/Jid;Ljava/lang/Boolean;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jxmpp/jid/Jid;

    .line 273
    .local v2, "jid":Lorg/jxmpp/jid/Jid;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .end local v2    # "jid":Lorg/jxmpp/jid/Jid;
    goto :goto_0

    .line 275
    :cond_0
    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/muclight/MultiUserChatLightManager;->sendBlockRooms(Lorg/jxmpp/jid/DomainBareJid;Ljava/util/HashMap;)V

    .line 276
    return-void
.end method

.method public blockUser(Lorg/jxmpp/jid/DomainBareJid;Lorg/jxmpp/jid/Jid;)V
    .locals 2
    .param p1, "mucLightService"    # Lorg/jxmpp/jid/DomainBareJid;
    .param p2, "userJid"    # Lorg/jxmpp/jid/Jid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 298
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 299
    .local v0, "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Lorg/jxmpp/jid/Jid;Ljava/lang/Boolean;>;"
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/muclight/MultiUserChatLightManager;->sendBlockUsers(Lorg/jxmpp/jid/DomainBareJid;Ljava/util/HashMap;)V

    .line 301
    return-void
.end method

.method public blockUsers(Lorg/jxmpp/jid/DomainBareJid;Ljava/util/List;)V
    .locals 4
    .param p1, "mucLightService"    # Lorg/jxmpp/jid/DomainBareJid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jxmpp/jid/DomainBareJid;",
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

    .line 315
    .local p2, "usersJids":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/jid/Jid;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 316
    .local v0, "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Lorg/jxmpp/jid/Jid;Ljava/lang/Boolean;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jxmpp/jid/Jid;

    .line 317
    .local v2, "jid":Lorg/jxmpp/jid/Jid;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .end local v2    # "jid":Lorg/jxmpp/jid/Jid;
    goto :goto_0

    .line 319
    :cond_0
    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/muclight/MultiUserChatLightManager;->sendBlockUsers(Lorg/jxmpp/jid/DomainBareJid;Ljava/util/HashMap;)V

    .line 320
    return-void
.end method

.method public getLocalServices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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

    .line 154
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muclight/MultiUserChatLightManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    .line 155
    .local v0, "sdm":Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    const/4 v1, 0x0

    const-string v2, "urn:xmpp:muclight:0"

    invoke-virtual {v0, v2, v1, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->findServices(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized getMultiUserChatLight(Lorg/jxmpp/jid/EntityBareJid;)Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;
    .locals 3
    .param p1, "jid"    # Lorg/jxmpp/jid/EntityBareJid;

    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLightManager;->multiUserChatLights:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 87
    .local v0, "weakRefMultiUserChat":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;>;"
    if-nez v0, :cond_0

    .line 88
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/muclight/MultiUserChatLightManager;->createNewMucLightAndAddToMap(Lorg/jxmpp/jid/EntityBareJid;)Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 90
    .end local p0    # "this":Lorg/jivesoftware/smackx/muclight/MultiUserChatLightManager;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;

    .line 91
    .local v1, "multiUserChatLight":Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;
    if-nez v1, :cond_1

    .line 92
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/muclight/MultiUserChatLightManager;->createNewMucLightAndAddToMap(Lorg/jxmpp/jid/EntityBareJid;)Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    .line 94
    :cond_1
    monitor-exit p0

    return-object v1

    .line 85
    .end local v0    # "weakRefMultiUserChat":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;>;"
    .end local v1    # "multiUserChatLight":Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;
    .end local p1    # "jid":Lorg/jxmpp/jid/EntityBareJid;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getOccupiedRooms(Lorg/jxmpp/jid/DomainBareJid;)Ljava/util/List;
    .locals 6
    .param p1, "mucLightService"    # Lorg/jxmpp/jid/DomainBareJid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jxmpp/jid/DomainBareJid;",
            ")",
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

    .line 131
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muclight/MultiUserChatLightManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->discoverItems(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;

    move-result-object v0

    .line 132
    .local v0, "result":Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;->getItems()Ljava/util/List;

    move-result-object v1

    .line 133
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 135
    .local v2, "answer":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/jid/Jid;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;

    .line 136
    .local v4, "item":Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;
    invoke-virtual {v4}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;->getEntityID()Lorg/jxmpp/jid/Jid;

    move-result-object v5

    .line 137
    .local v5, "mucLight":Lorg/jxmpp/jid/Jid;
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    .end local v4    # "item":Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;
    .end local v5    # "mucLight":Lorg/jxmpp/jid/Jid;
    goto :goto_0

    .line 140
    :cond_0
    return-object v2
.end method

.method public getRoomsBlocked(Lorg/jxmpp/jid/DomainBareJid;)Ljava/util/List;
    .locals 3
    .param p1, "mucLightService"    # Lorg/jxmpp/jid/DomainBareJid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jxmpp/jid/DomainBareJid;",
            ")",
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

    .line 196
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/muclight/MultiUserChatLightManager;->getBlockingList(Lorg/jxmpp/jid/DomainBareJid;)Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;

    move-result-object v0

    .line 198
    .local v0, "mucLightBlockingIQResult":Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v1, "jids":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/jid/Jid;>;"
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;->getRooms()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 200
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;->getRooms()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 203
    :cond_0
    return-object v1
.end method

.method public getUsersAndRoomsBlocked(Lorg/jxmpp/jid/DomainBareJid;)Ljava/util/List;
    .locals 3
    .param p1, "mucLightService"    # Lorg/jxmpp/jid/DomainBareJid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jxmpp/jid/DomainBareJid;",
            ")",
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

    .line 170
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/muclight/MultiUserChatLightManager;->getBlockingList(Lorg/jxmpp/jid/DomainBareJid;)Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;

    move-result-object v0

    .line 172
    .local v0, "muclIghtBlockingIQResult":Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v1, "jids":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/jid/Jid;>;"
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;->getRooms()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 174
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;->getRooms()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 177
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;->getUsers()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 178
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;->getUsers()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 181
    :cond_1
    return-object v1
.end method

.method public getUsersBlocked(Lorg/jxmpp/jid/DomainBareJid;)Ljava/util/List;
    .locals 3
    .param p1, "mucLightService"    # Lorg/jxmpp/jid/DomainBareJid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jxmpp/jid/DomainBareJid;",
            ")",
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

    .line 218
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/muclight/MultiUserChatLightManager;->getBlockingList(Lorg/jxmpp/jid/DomainBareJid;)Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;

    move-result-object v0

    .line 220
    .local v0, "mucLightBlockingIQResult":Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v1, "jids":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/jid/Jid;>;"
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;->getUsers()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 222
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muclight/element/MUCLightBlockingIQ;->getUsers()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 225
    :cond_0
    return-object v1
.end method

.method public isFeatureSupported(Lorg/jxmpp/jid/DomainBareJid;)Z
    .locals 2
    .param p1, "mucLightService"    # Lorg/jxmpp/jid/DomainBareJid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muclight/MultiUserChatLightManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->discoverInfo(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    move-result-object v0

    .line 116
    const-string v1, "urn:xmpp:muclight:0"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->containsFeature(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 115
    return v0
.end method

.method public unblockRoom(Lorg/jxmpp/jid/DomainBareJid;Lorg/jxmpp/jid/Jid;)V
    .locals 2
    .param p1, "mucLightService"    # Lorg/jxmpp/jid/DomainBareJid;
    .param p2, "roomJid"    # Lorg/jxmpp/jid/Jid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 342
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 343
    .local v0, "rooms":Ljava/util/HashMap;, "Ljava/util/HashMap<Lorg/jxmpp/jid/Jid;Ljava/lang/Boolean;>;"
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/muclight/MultiUserChatLightManager;->sendUnblockRooms(Lorg/jxmpp/jid/DomainBareJid;Ljava/util/HashMap;)V

    .line 345
    return-void
.end method

.method public unblockRooms(Lorg/jxmpp/jid/DomainBareJid;Ljava/util/List;)V
    .locals 4
    .param p1, "mucLightService"    # Lorg/jxmpp/jid/DomainBareJid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jxmpp/jid/DomainBareJid;",
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

    .line 359
    .local p2, "roomsJids":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/jid/Jid;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 360
    .local v0, "rooms":Ljava/util/HashMap;, "Ljava/util/HashMap<Lorg/jxmpp/jid/Jid;Ljava/lang/Boolean;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jxmpp/jid/Jid;

    .line 361
    .local v2, "jid":Lorg/jxmpp/jid/Jid;
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .end local v2    # "jid":Lorg/jxmpp/jid/Jid;
    goto :goto_0

    .line 363
    :cond_0
    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/muclight/MultiUserChatLightManager;->sendUnblockRooms(Lorg/jxmpp/jid/DomainBareJid;Ljava/util/HashMap;)V

    .line 364
    return-void
.end method

.method public unblockUser(Lorg/jxmpp/jid/DomainBareJid;Lorg/jxmpp/jid/Jid;)V
    .locals 2
    .param p1, "mucLightService"    # Lorg/jxmpp/jid/DomainBareJid;
    .param p2, "userJid"    # Lorg/jxmpp/jid/Jid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 386
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 387
    .local v0, "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Lorg/jxmpp/jid/Jid;Ljava/lang/Boolean;>;"
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/muclight/MultiUserChatLightManager;->sendUnblockUsers(Lorg/jxmpp/jid/DomainBareJid;Ljava/util/HashMap;)V

    .line 389
    return-void
.end method

.method public unblockUsers(Lorg/jxmpp/jid/DomainBareJid;Ljava/util/List;)V
    .locals 4
    .param p1, "mucLightService"    # Lorg/jxmpp/jid/DomainBareJid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jxmpp/jid/DomainBareJid;",
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

    .line 403
    .local p2, "usersJids":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/jid/Jid;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 404
    .local v0, "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Lorg/jxmpp/jid/Jid;Ljava/lang/Boolean;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jxmpp/jid/Jid;

    .line 405
    .local v2, "jid":Lorg/jxmpp/jid/Jid;
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    .end local v2    # "jid":Lorg/jxmpp/jid/Jid;
    goto :goto_0

    .line 407
    :cond_0
    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/muclight/MultiUserChatLightManager;->sendUnblockUsers(Lorg/jxmpp/jid/DomainBareJid;Ljava/util/HashMap;)V

    .line 408
    return-void
.end method
