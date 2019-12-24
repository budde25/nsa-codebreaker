.class public final Lorg/jivesoftware/smackx/muc/MultiUserChatManager;
.super Lorg/jivesoftware/smack/Manager;
.source "MultiUserChatManager.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DISCO_NODE:Ljava/lang/String; = "http://jabber.org/protocol/muc#rooms"

.field private static final INSTANCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smackx/muc/MultiUserChatManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final INVITATION_FILTER:Lorg/jivesoftware/smack/filter/StanzaFilter;

.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private autoJoinFailedCallback:Lorg/jivesoftware/smackx/muc/AutoJoinFailedCallback;

.field private autoJoinOnReconnect:Z

.field private final invitationsListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jivesoftware/smackx/muc/InvitationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final joinedRooms:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jxmpp/jid/EntityBareJid;",
            ">;"
        }
    .end annotation
.end field

.field private final multiUserChats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jxmpp/jid/EntityBareJid;",
            "Ljava/lang/ref/WeakReference<",
            "Lorg/jivesoftware/smackx/muc/MultiUserChat;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 80
    nop

    .line 83
    const-class v0, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->LOGGER:Ljava/util/logging/Logger;

    .line 86
    new-instance v0, Lorg/jivesoftware/smackx/muc/MultiUserChatManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/muc/MultiUserChatManager$1;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/XMPPConnectionRegistry;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 116
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->INSTANCES:Ljava/util/Map;

    .line 133
    new-instance v0, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/jivesoftware/smack/filter/StanzaFilter;

    const/4 v2, 0x0

    sget-object v3, Lorg/jivesoftware/smack/filter/StanzaTypeFilter;->MESSAGE:Lorg/jivesoftware/smack/filter/StanzaTypeFilter;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/jivesoftware/smack/filter/StanzaExtensionFilter;

    new-instance v4, Lorg/jivesoftware/smackx/muc/packet/MUCUser;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/muc/packet/MUCUser;-><init>()V

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/filter/StanzaExtensionFilter;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lorg/jivesoftware/smack/filter/NotFilter;

    sget-object v4, Lorg/jivesoftware/smack/filter/MessageTypeFilter;->ERROR:Lorg/jivesoftware/smack/filter/StanzaFilter;

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/filter/NotFilter;-><init>(Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    sput-object v0, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->INVITATION_FILTER:Lorg/jivesoftware/smack/filter/StanzaFilter;

    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 2
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 155
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Manager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 136
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->invitationsListeners:Ljava/util/Set;

    .line 141
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->joinedRooms:Ljava/util/Set;

    .line 148
    new-instance v0, Lorg/jivesoftware/smack/util/CleaningWeakReferenceMap;

    invoke-direct {v0}, Lorg/jivesoftware/smack/util/CleaningWeakReferenceMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->multiUserChats:Ljava/util/Map;

    .line 158
    new-instance v0, Lorg/jivesoftware/smackx/muc/MultiUserChatManager$2;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/muc/MultiUserChatManager$2;-><init>(Lorg/jivesoftware/smackx/muc/MultiUserChatManager;)V

    .line 184
    .local v0, "invitationPacketListener":Lorg/jivesoftware/smack/StanzaListener;
    sget-object v1, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->INVITATION_FILTER:Lorg/jivesoftware/smack/filter/StanzaFilter;

    invoke-interface {p1, v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addAsyncStanzaListener(Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 186
    new-instance v1, Lorg/jivesoftware/smackx/muc/MultiUserChatManager$3;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smackx/muc/MultiUserChatManager$3;-><init>(Lorg/jivesoftware/smackx/muc/MultiUserChatManager;)V

    invoke-interface {p1, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 234
    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .line 80
    sget-object v0, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->LOGGER:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lorg/jivesoftware/smackx/muc/MultiUserChatManager;)Lorg/jivesoftware/smack/XMPPConnection;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/muc/MultiUserChatManager;

    .line 80
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/jivesoftware/smackx/muc/MultiUserChatManager;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/muc/MultiUserChatManager;

    .line 80
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->invitationsListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$300(Lorg/jivesoftware/smackx/muc/MultiUserChatManager;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/muc/MultiUserChatManager;

    .line 80
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->autoJoinOnReconnect:Z

    return v0
.end method

.method static synthetic access$400(Lorg/jivesoftware/smackx/muc/MultiUserChatManager;)Lorg/jivesoftware/smackx/muc/AutoJoinFailedCallback;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/muc/MultiUserChatManager;

    .line 80
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->autoJoinFailedCallback:Lorg/jivesoftware/smackx/muc/AutoJoinFailedCallback;

    return-object v0
.end method

.method private createNewMucAndAddToMap(Lorg/jxmpp/jid/EntityBareJid;)Lorg/jivesoftware/smackx/muc/MultiUserChat;
    .locals 3
    .param p1, "jid"    # Lorg/jxmpp/jid/EntityBareJid;

    .line 262
    new-instance v0, Lorg/jivesoftware/smackx/muc/MultiUserChat;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;-><init>(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jxmpp/jid/EntityBareJid;Lorg/jivesoftware/smackx/muc/MultiUserChatManager;)V

    .line 263
    .local v0, "multiUserChat":Lorg/jivesoftware/smackx/muc/MultiUserChat;
    iget-object v1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->multiUserChats:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    return-object v0
.end method

.method public static declared-synchronized getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/muc/MultiUserChatManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    const-class v0, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;

    monitor-enter v0

    .line 125
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;

    .line 126
    .local v1, "multiUserChatManager":Lorg/jivesoftware/smackx/muc/MultiUserChatManager;
    if-nez v1, :cond_0

    .line 127
    new-instance v2, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    move-object v1, v2

    .line 128
    sget-object v2, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :cond_0
    monitor-exit v0

    return-object v1

    .line 124
    .end local v1    # "multiUserChatManager":Lorg/jivesoftware/smackx/muc/MultiUserChatManager;
    .end local p0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public addInvitationListener(Lorg/jivesoftware/smackx/muc/InvitationListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/jivesoftware/smackx/muc/InvitationListener;

    .line 468
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->invitationsListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 469
    return-void
.end method

.method addJoinedRoom(Lorg/jxmpp/jid/EntityBareJid;)V
    .locals 1
    .param p1, "room"    # Lorg/jxmpp/jid/EntityBareJid;

    .line 504
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->joinedRooms:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 505
    return-void
.end method

.method public decline(Lorg/jxmpp/jid/EntityBareJid;Lorg/jxmpp/jid/EntityBareJid;Ljava/lang/String;)V
    .locals 4
    .param p1, "room"    # Lorg/jxmpp/jid/EntityBareJid;
    .param p2, "inviter"    # Lorg/jxmpp/jid/EntityBareJid;
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 450
    new-instance v0, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smack/packet/Message;-><init>(Lorg/jxmpp/jid/Jid;)V

    .line 453
    .local v0, "message":Lorg/jivesoftware/smack/packet/Message;
    new-instance v1, Lorg/jivesoftware/smackx/muc/packet/MUCUser;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/muc/packet/MUCUser;-><init>()V

    .line 454
    .local v1, "mucUser":Lorg/jivesoftware/smackx/muc/packet/MUCUser;
    new-instance v2, Lorg/jivesoftware/smackx/muc/packet/MUCUser$Decline;

    invoke-direct {v2, p3, p2}, Lorg/jivesoftware/smackx/muc/packet/MUCUser$Decline;-><init>(Ljava/lang/String;Lorg/jxmpp/jid/EntityBareJid;)V

    .line 455
    .local v2, "decline":Lorg/jivesoftware/smackx/muc/packet/MUCUser$Decline;
    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/muc/packet/MUCUser;->setDecline(Lorg/jivesoftware/smackx/muc/packet/MUCUser$Decline;)V

    .line 457
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 459
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/jivesoftware/smack/XMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 460
    return-void
.end method

.method public getHostedRooms(Lorg/jxmpp/jid/DomainBareJid;)Ljava/util/List;
    .locals 3
    .param p1, "serviceName"    # Lorg/jxmpp/jid/DomainBareJid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jxmpp/jid/DomainBareJid;",
            ")",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/muc/HostedRoom;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smackx/muc/MultiUserChatException$NotAMucServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 402
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->getRoomsHostedBy(Lorg/jxmpp/jid/DomainBareJid;)Ljava/util/Map;

    move-result-object v0

    .line 403
    .local v0, "hostedRooms":Ljava/util/Map;, "Ljava/util/Map<Lorg/jxmpp/jid/EntityBareJid;Lorg/jivesoftware/smackx/muc/HostedRoom;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public getJoinedRooms(Lorg/jxmpp/jid/EntityJid;)Ljava/util/List;
    .locals 9
    .param p1, "user"    # Lorg/jxmpp/jid/EntityJid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jxmpp/jid/EntityJid;",
            ")",
            "Ljava/util/List<",
            "Lorg/jxmpp/jid/EntityBareJid;",
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

    .line 305
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    const-string v1, "http://jabber.org/protocol/muc#rooms"

    invoke-virtual {v0, p1, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->discoverItems(Lorg/jxmpp/jid/Jid;Ljava/lang/String;)Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;

    move-result-object v0

    .line 306
    .local v0, "result":Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;->getItems()Ljava/util/List;

    move-result-object v1

    .line 307
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 309
    .local v2, "answer":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/jid/EntityBareJid;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;

    .line 310
    .local v4, "item":Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;
    invoke-virtual {v4}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;->getEntityID()Lorg/jxmpp/jid/Jid;

    move-result-object v5

    invoke-interface {v5}, Lorg/jxmpp/jid/Jid;->asEntityBareJidIfPossible()Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v5

    .line 311
    .local v5, "muc":Lorg/jxmpp/jid/EntityBareJid;
    if-nez v5, :cond_0

    .line 312
    sget-object v6, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->LOGGER:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not a bare JID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;->getEntityID()Lorg/jxmpp/jid/Jid;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 313
    goto :goto_0

    .line 315
    :cond_0
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    .end local v4    # "item":Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;
    .end local v5    # "muc":Lorg/jxmpp/jid/EntityBareJid;
    goto :goto_0

    .line 317
    :cond_1
    return-object v2
.end method

.method public getJoinedRooms()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/jxmpp/jid/EntityBareJid;",
            ">;"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->joinedRooms:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getMucServiceDomains()Ljava/util/List;
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

    .line 346
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    .line 347
    .local v0, "sdm":Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    const/4 v1, 0x0

    const-string v2, "http://jabber.org/protocol/muc"

    invoke-virtual {v0, v2, v1, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->findServices(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized getMultiUserChat(Lorg/jxmpp/jid/EntityBareJid;)Lorg/jivesoftware/smackx/muc/MultiUserChat;
    .locals 3
    .param p1, "jid"    # Lorg/jxmpp/jid/EntityBareJid;

    monitor-enter p0

    .line 250
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->multiUserChats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 251
    .local v0, "weakRefMultiUserChat":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/jivesoftware/smackx/muc/MultiUserChat;>;"
    if-nez v0, :cond_0

    .line 252
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->createNewMucAndAddToMap(Lorg/jxmpp/jid/EntityBareJid;)Lorg/jivesoftware/smackx/muc/MultiUserChat;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 254
    .end local p0    # "this":Lorg/jivesoftware/smackx/muc/MultiUserChatManager;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/muc/MultiUserChat;

    .line 255
    .local v1, "multiUserChat":Lorg/jivesoftware/smackx/muc/MultiUserChat;
    if-nez v1, :cond_1

    .line 256
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->createNewMucAndAddToMap(Lorg/jxmpp/jid/EntityBareJid;)Lorg/jivesoftware/smackx/muc/MultiUserChat;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    .line 258
    :cond_1
    monitor-exit p0

    return-object v1

    .line 249
    .end local v0    # "weakRefMultiUserChat":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/jivesoftware/smackx/muc/MultiUserChat;>;"
    .end local v1    # "multiUserChat":Lorg/jivesoftware/smackx/muc/MultiUserChat;
    .end local p1    # "jid":Lorg/jxmpp/jid/EntityBareJid;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getRoomInfo(Lorg/jxmpp/jid/EntityBareJid;)Lorg/jivesoftware/smackx/muc/RoomInfo;
    .locals 2
    .param p1, "room"    # Lorg/jxmpp/jid/EntityBareJid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 332
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->discoverInfo(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    move-result-object v0

    .line 333
    .local v0, "info":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    new-instance v1, Lorg/jivesoftware/smackx/muc/RoomInfo;

    invoke-direct {v1, v0}, Lorg/jivesoftware/smackx/muc/RoomInfo;-><init>(Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;)V

    return-object v1
.end method

.method public getRoomsHostedBy(Lorg/jxmpp/jid/DomainBareJid;)Ljava/util/Map;
    .locals 8
    .param p1, "serviceName"    # Lorg/jxmpp/jid/DomainBareJid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jxmpp/jid/DomainBareJid;",
            ")",
            "Ljava/util/Map<",
            "Lorg/jxmpp/jid/EntityBareJid;",
            "Lorg/jivesoftware/smackx/muc/HostedRoom;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smackx/muc/MultiUserChatException$NotAMucServiceException;
        }
    .end annotation

    .line 422
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->providesMucService(Lorg/jxmpp/jid/DomainBareJid;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    .line 426
    .local v0, "discoManager":Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->discoverItems(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;

    move-result-object v1

    .line 427
    .local v1, "discoverItems":Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;->getItems()Ljava/util/List;

    move-result-object v2

    .line 429
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 430
    .local v3, "answer":Ljava/util/Map;, "Ljava/util/Map<Lorg/jxmpp/jid/EntityBareJid;Lorg/jivesoftware/smackx/muc/HostedRoom;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;

    .line 431
    .local v5, "item":Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;
    new-instance v6, Lorg/jivesoftware/smackx/muc/HostedRoom;

    invoke-direct {v6, v5}, Lorg/jivesoftware/smackx/muc/HostedRoom;-><init>(Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;)V

    .line 432
    .local v6, "hostedRoom":Lorg/jivesoftware/smackx/muc/HostedRoom;
    invoke-virtual {v6}, Lorg/jivesoftware/smackx/muc/HostedRoom;->getJid()Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v7

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jivesoftware/smackx/muc/HostedRoom;

    .line 433
    .local v7, "previousRoom":Lorg/jivesoftware/smackx/muc/HostedRoom;
    nop

    .line 434
    .end local v5    # "item":Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;
    .end local v6    # "hostedRoom":Lorg/jivesoftware/smackx/muc/HostedRoom;
    .end local v7    # "previousRoom":Lorg/jivesoftware/smackx/muc/HostedRoom;
    goto :goto_0

    .line 436
    :cond_0
    return-object v3

    .line 423
    .end local v0    # "discoManager":Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    .end local v1    # "discoverItems":Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;
    .end local v2    # "items":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;>;"
    .end local v3    # "answer":Ljava/util/Map;, "Ljava/util/Map<Lorg/jxmpp/jid/EntityBareJid;Lorg/jivesoftware/smackx/muc/HostedRoom;>;"
    :cond_1
    new-instance v0, Lorg/jivesoftware/smackx/muc/MultiUserChatException$NotAMucServiceException;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smackx/muc/MultiUserChatException$NotAMucServiceException;-><init>(Lorg/jxmpp/jid/DomainBareJid;)V

    throw v0
.end method

.method public getXMPPServiceDomains()Ljava/util/List;
    .locals 1
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 363
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->getMucServiceDomains()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isServiceEnabled(Lorg/jxmpp/jid/Jid;)Z
    .locals 2
    .param p1, "user"    # Lorg/jxmpp/jid/Jid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 278
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    const-string v1, "http://jabber.org/protocol/muc"

    invoke-virtual {v0, p1, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->supportsFeature(Lorg/jxmpp/jid/Jid;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public providesMucService(Lorg/jxmpp/jid/DomainBareJid;)Z
    .locals 2
    .param p1, "domainBareJid"    # Lorg/jxmpp/jid/DomainBareJid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 380
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    const-string v1, "http://jabber.org/protocol/muc"

    invoke-virtual {v0, p1, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->supportsFeature(Lorg/jxmpp/jid/Jid;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public removeInvitationListener(Lorg/jivesoftware/smackx/muc/InvitationListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/jivesoftware/smackx/muc/InvitationListener;

    .line 477
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->invitationsListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 478
    return-void
.end method

.method removeJoinedRoom(Lorg/jxmpp/jid/EntityBareJid;)V
    .locals 1
    .param p1, "room"    # Lorg/jxmpp/jid/EntityBareJid;

    .line 508
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->joinedRooms:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 509
    return-void
.end method

.method public setAutoJoinFailedCallback(Lorg/jivesoftware/smackx/muc/AutoJoinFailedCallback;)V
    .locals 1
    .param p1, "failedCallback"    # Lorg/jivesoftware/smackx/muc/AutoJoinFailedCallback;

    .line 497
    iput-object p1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->autoJoinFailedCallback:Lorg/jivesoftware/smackx/muc/AutoJoinFailedCallback;

    .line 498
    if-eqz p1, :cond_0

    .line 499
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->setAutoJoinOnReconnect(Z)V

    .line 501
    :cond_0
    return-void
.end method

.method public setAutoJoinOnReconnect(Z)V
    .locals 0
    .param p1, "autoJoin"    # Z

    .line 487
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->autoJoinOnReconnect:Z

    .line 488
    return-void
.end method
