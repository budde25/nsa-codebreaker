.class public final Lorg/jivesoftware/smack/chat/ChatManager;
.super Lorg/jivesoftware/smack/Manager;
.source "ChatManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/chat/ChatManager$MatchMode;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final INSTANCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smack/chat/ChatManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static defaultIsNormalInclude:Z

.field private static defaultMatchMode:Lorg/jivesoftware/smack/chat/ChatManager$MatchMode;


# instance fields
.field private final baseJidChats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jxmpp/jid/EntityBareJid;",
            "Lorg/jivesoftware/smack/chat/Chat;",
            ">;"
        }
    .end annotation
.end field

.field private final chatManagerListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jivesoftware/smack/chat/ChatManagerListener;",
            ">;"
        }
    .end annotation
.end field

.field private final interceptors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/MessageListener;",
            "Lorg/jivesoftware/smack/filter/StanzaFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final jidChats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jxmpp/jid/Jid;",
            "Lorg/jivesoftware/smack/chat/Chat;",
            ">;"
        }
    .end annotation
.end field

.field private matchMode:Lorg/jivesoftware/smack/chat/ChatManager$MatchMode;

.field private normalIncluded:Z

.field private final packetFilter:Lorg/jivesoftware/smack/filter/StanzaFilter;

.field private final threadChats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smack/chat/Chat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const-class v0, Lorg/jivesoftware/smack/chat/ChatManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/chat/ChatManager;->LOGGER:Ljava/util/logging/Logger;

    .line 63
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/chat/ChatManager;->INSTANCES:Ljava/util/Map;

    .line 69
    const/4 v0, 0x1

    sput-boolean v0, Lorg/jivesoftware/smack/chat/ChatManager;->defaultIsNormalInclude:Z

    .line 74
    sget-object v0, Lorg/jivesoftware/smack/chat/ChatManager$MatchMode;->BARE_JID:Lorg/jivesoftware/smack/chat/ChatManager$MatchMode;

    sput-object v0, Lorg/jivesoftware/smack/chat/ChatManager;->defaultMatchMode:Lorg/jivesoftware/smack/chat/ChatManager$MatchMode;

    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 4
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 148
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Manager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 109
    new-instance v0, Lorg/jivesoftware/smack/filter/OrFilter;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/jivesoftware/smack/filter/StanzaFilter;

    sget-object v2, Lorg/jivesoftware/smack/filter/MessageTypeFilter;->CHAT:Lorg/jivesoftware/smack/filter/StanzaFilter;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/jivesoftware/smack/chat/ChatManager$1;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smack/chat/ChatManager$1;-><init>(Lorg/jivesoftware/smack/chat/ChatManager;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/OrFilter;-><init>([Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/chat/ChatManager;->packetFilter:Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 121
    sget-boolean v0, Lorg/jivesoftware/smack/chat/ChatManager;->defaultIsNormalInclude:Z

    iput-boolean v0, p0, Lorg/jivesoftware/smack/chat/ChatManager;->normalIncluded:Z

    .line 126
    sget-object v0, Lorg/jivesoftware/smack/chat/ChatManager;->defaultMatchMode:Lorg/jivesoftware/smack/chat/ChatManager$MatchMode;

    iput-object v0, p0, Lorg/jivesoftware/smack/chat/ChatManager;->matchMode:Lorg/jivesoftware/smack/chat/ChatManager$MatchMode;

    .line 131
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/chat/ChatManager;->threadChats:Ljava/util/Map;

    .line 136
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/chat/ChatManager;->jidChats:Ljava/util/Map;

    .line 141
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/chat/ChatManager;->baseJidChats:Ljava/util/Map;

    .line 143
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/chat/ChatManager;->chatManagerListeners:Ljava/util/Set;

    .line 145
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/chat/ChatManager;->interceptors:Ljava/util/Map;

    .line 152
    new-instance v0, Lorg/jivesoftware/smack/chat/ChatManager$2;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/chat/ChatManager$2;-><init>(Lorg/jivesoftware/smack/chat/ChatManager;)V

    iget-object v1, p0, Lorg/jivesoftware/smack/chat/ChatManager;->packetFilter:Lorg/jivesoftware/smack/filter/StanzaFilter;

    invoke-interface {p1, v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addSyncStanzaListener(Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 177
    sget-object v0, Lorg/jivesoftware/smack/chat/ChatManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smack/chat/ChatManager;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/chat/ChatManager;

    .line 59
    iget-boolean v0, p0, Lorg/jivesoftware/smack/chat/ChatManager;->normalIncluded:Z

    return v0
.end method

.method static synthetic access$100(Lorg/jivesoftware/smack/chat/ChatManager;Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smack/chat/Chat;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/chat/ChatManager;
    .param p1, "x1"    # Lorg/jxmpp/jid/Jid;

    .line 59
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/chat/ChatManager;->getUserChat(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smack/chat/Chat;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/jivesoftware/smack/chat/ChatManager;Lorg/jivesoftware/smack/packet/Message;)Lorg/jivesoftware/smack/chat/Chat;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/chat/ChatManager;
    .param p1, "x1"    # Lorg/jivesoftware/smack/packet/Message;

    .line 59
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/chat/ChatManager;->createChat(Lorg/jivesoftware/smack/packet/Message;)Lorg/jivesoftware/smack/chat/Chat;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/jivesoftware/smack/chat/Chat;Lorg/jivesoftware/smack/packet/Message;)V
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smack/chat/Chat;
    .param p1, "x1"    # Lorg/jivesoftware/smack/packet/Message;

    .line 59
    invoke-static {p0, p1}, Lorg/jivesoftware/smack/chat/ChatManager;->deliverMessage(Lorg/jivesoftware/smack/chat/Chat;Lorg/jivesoftware/smack/packet/Message;)V

    return-void
.end method

.method private createChat(Lorg/jivesoftware/smack/packet/Message;)Lorg/jivesoftware/smack/chat/Chat;
    .locals 6
    .param p1, "message"    # Lorg/jivesoftware/smack/packet/Message;

    .line 288
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v0

    .line 291
    .local v0, "from":Lorg/jxmpp/jid/Jid;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 292
    return-object v1

    .line 295
    :cond_0
    invoke-interface {v0}, Lorg/jxmpp/jid/Jid;->asEntityJidIfPossible()Lorg/jxmpp/jid/EntityJid;

    move-result-object v2

    .line 296
    .local v2, "userJID":Lorg/jxmpp/jid/EntityJid;
    if-nez v2, :cond_1

    .line 297
    sget-object v3, Lorg/jivesoftware/smack/chat/ChatManager;->LOGGER:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Message from JID without localpart: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Lorg/jivesoftware/smack/packet/Message;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 298
    return-object v1

    .line 300
    :cond_1
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getThread()Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, "threadID":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 302
    invoke-static {}, Lorg/jivesoftware/smack/chat/ChatManager;->nextID()Ljava/lang/String;

    move-result-object v1

    .line 305
    :cond_2
    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3}, Lorg/jivesoftware/smack/chat/ChatManager;->createChat(Lorg/jxmpp/jid/EntityJid;Ljava/lang/String;Z)Lorg/jivesoftware/smack/chat/Chat;

    move-result-object v3

    return-object v3
.end method

.method private createChat(Lorg/jxmpp/jid/EntityJid;Ljava/lang/String;Z)Lorg/jivesoftware/smack/chat/Chat;
    .locals 3
    .param p1, "userJID"    # Lorg/jxmpp/jid/EntityJid;
    .param p2, "threadID"    # Ljava/lang/String;
    .param p3, "createdLocally"    # Z

    .line 261
    new-instance v0, Lorg/jivesoftware/smack/chat/Chat;

    invoke-direct {v0, p0, p1, p2}, Lorg/jivesoftware/smack/chat/Chat;-><init>(Lorg/jivesoftware/smack/chat/ChatManager;Lorg/jxmpp/jid/EntityJid;Ljava/lang/String;)V

    .line 262
    .local v0, "chat":Lorg/jivesoftware/smack/chat/Chat;
    iget-object v1, p0, Lorg/jivesoftware/smack/chat/ChatManager;->threadChats:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object v1, p0, Lorg/jivesoftware/smack/chat/ChatManager;->jidChats:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v1, p0, Lorg/jivesoftware/smack/chat/ChatManager;->baseJidChats:Ljava/util/Map;

    invoke-interface {p1}, Lorg/jxmpp/jid/EntityJid;->asEntityBareJid()Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v1, p0, Lorg/jivesoftware/smack/chat/ChatManager;->chatManagerListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/chat/ChatManagerListener;

    .line 267
    .local v2, "listener":Lorg/jivesoftware/smack/chat/ChatManagerListener;
    invoke-interface {v2, v0, p3}, Lorg/jivesoftware/smack/chat/ChatManagerListener;->chatCreated(Lorg/jivesoftware/smack/chat/Chat;Z)V

    .line 268
    .end local v2    # "listener":Lorg/jivesoftware/smack/chat/ChatManagerListener;
    goto :goto_0

    .line 270
    :cond_0
    return-object v0
.end method

.method private static deliverMessage(Lorg/jivesoftware/smack/chat/Chat;Lorg/jivesoftware/smack/packet/Message;)V
    .locals 0
    .param p0, "chat"    # Lorg/jivesoftware/smack/chat/Chat;
    .param p1, "message"    # Lorg/jivesoftware/smack/packet/Message;

    .line 372
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/chat/Chat;->deliver(Lorg/jivesoftware/smack/packet/Message;)V

    .line 373
    return-void
.end method

.method public static declared-synchronized getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smack/chat/ChatManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    const-class v0, Lorg/jivesoftware/smack/chat/ChatManager;

    monitor-enter v0

    .line 83
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smack/chat/ChatManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/chat/ChatManager;

    .line 84
    .local v1, "manager":Lorg/jivesoftware/smack/chat/ChatManager;
    if-nez v1, :cond_0

    .line 85
    new-instance v2, Lorg/jivesoftware/smack/chat/ChatManager;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smack/chat/ChatManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 86
    :cond_0
    monitor-exit v0

    return-object v1

    .line 82
    .end local v1    # "manager":Lorg/jivesoftware/smack/chat/ChatManager;
    .end local p0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getUserChat(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smack/chat/Chat;
    .locals 3
    .param p1, "userJID"    # Lorg/jxmpp/jid/Jid;

    .line 318
    iget-object v0, p0, Lorg/jivesoftware/smack/chat/ChatManager;->matchMode:Lorg/jivesoftware/smack/chat/ChatManager$MatchMode;

    sget-object v1, Lorg/jivesoftware/smack/chat/ChatManager$MatchMode;->NONE:Lorg/jivesoftware/smack/chat/ChatManager$MatchMode;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 319
    return-object v2

    .line 323
    :cond_0
    if-nez p1, :cond_1

    .line 324
    return-object v2

    .line 326
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smack/chat/ChatManager;->jidChats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/chat/Chat;

    .line 328
    .local v0, "match":Lorg/jivesoftware/smack/chat/Chat;
    if-nez v0, :cond_2

    iget-object v1, p0, Lorg/jivesoftware/smack/chat/ChatManager;->matchMode:Lorg/jivesoftware/smack/chat/ChatManager$MatchMode;

    sget-object v2, Lorg/jivesoftware/smack/chat/ChatManager$MatchMode;->BARE_JID:Lorg/jivesoftware/smack/chat/ChatManager$MatchMode;

    if-ne v1, v2, :cond_2

    .line 329
    invoke-interface {p1}, Lorg/jxmpp/jid/Jid;->asEntityBareJidIfPossible()Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v1

    .line 330
    .local v1, "entityBareJid":Lorg/jxmpp/jid/EntityBareJid;
    if-eqz v1, :cond_2

    .line 331
    iget-object v2, p0, Lorg/jivesoftware/smack/chat/ChatManager;->baseJidChats:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/jivesoftware/smack/chat/Chat;

    .line 334
    .end local v1    # "entityBareJid":Lorg/jxmpp/jid/EntityBareJid;
    :cond_2
    return-object v0
.end method

.method private static nextID()Ljava/lang/String;
    .locals 1

    .line 412
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setDefaultIsNormalIncluded(Z)V
    .locals 0
    .param p0, "allowNormal"    # Z

    .line 420
    sput-boolean p0, Lorg/jivesoftware/smack/chat/ChatManager;->defaultIsNormalInclude:Z

    .line 421
    return-void
.end method

.method public static setDefaultMatchMode(Lorg/jivesoftware/smack/chat/ChatManager$MatchMode;)V
    .locals 0
    .param p0, "mode"    # Lorg/jivesoftware/smack/chat/ChatManager$MatchMode;

    .line 416
    sput-object p0, Lorg/jivesoftware/smack/chat/ChatManager;->defaultMatchMode:Lorg/jivesoftware/smack/chat/ChatManager$MatchMode;

    .line 417
    return-void
.end method


# virtual methods
.method public addChatListener(Lorg/jivesoftware/smack/chat/ChatManagerListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/jivesoftware/smack/chat/ChatManagerListener;

    .line 347
    iget-object v0, p0, Lorg/jivesoftware/smack/chat/ChatManager;->chatManagerListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 348
    return-void
.end method

.method public addOutgoingMessageInterceptor(Lorg/jivesoftware/smack/MessageListener;)V
    .locals 1
    .param p1, "messageInterceptor"    # Lorg/jivesoftware/smack/MessageListener;

    .line 396
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smack/chat/ChatManager;->addOutgoingMessageInterceptor(Lorg/jivesoftware/smack/MessageListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 397
    return-void
.end method

.method public addOutgoingMessageInterceptor(Lorg/jivesoftware/smack/MessageListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V
    .locals 1
    .param p1, "messageInterceptor"    # Lorg/jivesoftware/smack/MessageListener;
    .param p2, "filter"    # Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 400
    if-nez p1, :cond_0

    .line 401
    return-void

    .line 403
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/chat/ChatManager;->interceptors:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    return-void
.end method

.method closeChat(Lorg/jivesoftware/smack/chat/Chat;)V
    .locals 3
    .param p1, "chat"    # Lorg/jivesoftware/smack/chat/Chat;

    .line 274
    iget-object v0, p0, Lorg/jivesoftware/smack/chat/ChatManager;->threadChats:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/chat/Chat;->getThreadID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    invoke-virtual {p1}, Lorg/jivesoftware/smack/chat/Chat;->getParticipant()Lorg/jxmpp/jid/EntityJid;

    move-result-object v0

    .line 276
    .local v0, "userJID":Lorg/jxmpp/jid/EntityJid;
    iget-object v1, p0, Lorg/jivesoftware/smack/chat/ChatManager;->jidChats:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v1, p0, Lorg/jivesoftware/smack/chat/ChatManager;->baseJidChats:Ljava/util/Map;

    invoke-interface {v0}, Lorg/jxmpp/jid/EntityJid;->asEntityBareJid()Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    return-void
.end method

.method public createChat(Lorg/jxmpp/jid/EntityJid;)Lorg/jivesoftware/smack/chat/Chat;
    .locals 1
    .param p1, "userJID"    # Lorg/jxmpp/jid/EntityJid;

    .line 225
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smack/chat/ChatManager;->createChat(Lorg/jxmpp/jid/EntityJid;Lorg/jivesoftware/smack/chat/ChatMessageListener;)Lorg/jivesoftware/smack/chat/Chat;

    move-result-object v0

    return-object v0
.end method

.method public createChat(Lorg/jxmpp/jid/EntityJid;Ljava/lang/String;Lorg/jivesoftware/smack/chat/ChatMessageListener;)Lorg/jivesoftware/smack/chat/Chat;
    .locals 3
    .param p1, "userJID"    # Lorg/jxmpp/jid/EntityJid;
    .param p2, "thread"    # Ljava/lang/String;
    .param p3, "listener"    # Lorg/jivesoftware/smack/chat/ChatMessageListener;

    .line 248
    if-nez p2, :cond_0

    .line 249
    invoke-static {}, Lorg/jivesoftware/smack/chat/ChatManager;->nextID()Ljava/lang/String;

    move-result-object p2

    .line 251
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/chat/ChatManager;->threadChats:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/chat/Chat;

    .line 252
    .local v0, "chat":Lorg/jivesoftware/smack/chat/Chat;
    if-nez v0, :cond_1

    .line 255
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lorg/jivesoftware/smack/chat/ChatManager;->createChat(Lorg/jxmpp/jid/EntityJid;Ljava/lang/String;Z)Lorg/jivesoftware/smack/chat/Chat;

    move-result-object v0

    .line 256
    invoke-virtual {v0, p3}, Lorg/jivesoftware/smack/chat/Chat;->addMessageListener(Lorg/jivesoftware/smack/chat/ChatMessageListener;)V

    .line 257
    return-object v0

    .line 253
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ThreadID is already used"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createChat(Lorg/jxmpp/jid/EntityJid;Lorg/jivesoftware/smack/chat/ChatMessageListener;)Lorg/jivesoftware/smack/chat/Chat;
    .locals 1
    .param p1, "userJID"    # Lorg/jxmpp/jid/EntityJid;
    .param p2, "listener"    # Lorg/jivesoftware/smack/chat/ChatMessageListener;

    .line 236
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/jivesoftware/smack/chat/ChatManager;->createChat(Lorg/jxmpp/jid/EntityJid;Ljava/lang/String;Lorg/jivesoftware/smack/chat/ChatMessageListener;)Lorg/jivesoftware/smack/chat/Chat;

    move-result-object v0

    return-object v0
.end method

.method createStanzaCollector(Lorg/jivesoftware/smack/chat/Chat;)Lorg/jivesoftware/smack/StanzaCollector;
    .locals 5
    .param p1, "chat"    # Lorg/jivesoftware/smack/chat/Chat;

    .line 386
    invoke-virtual {p0}, Lorg/jivesoftware/smack/chat/ChatManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    new-instance v1, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/jivesoftware/smack/filter/StanzaFilter;

    new-instance v3, Lorg/jivesoftware/smack/filter/ThreadFilter;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/chat/Chat;->getThreadID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/filter/ThreadFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 387
    invoke-virtual {p1}, Lorg/jivesoftware/smack/chat/Chat;->getParticipant()Lorg/jxmpp/jid/EntityJid;

    move-result-object v3

    invoke-static {v3}, Lorg/jivesoftware/smack/filter/FromMatchesFilter;->create(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smack/filter/FromMatchesFilter;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 386
    invoke-interface {v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollector(Lorg/jivesoftware/smack/filter/StanzaFilter;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v0

    return-object v0
.end method

.method public getChatListeners()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/jivesoftware/smack/chat/ChatManagerListener;",
            ">;"
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lorg/jivesoftware/smack/chat/ChatManager;->chatManagerListeners:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getMatchMode()Lorg/jivesoftware/smack/chat/ChatManager$MatchMode;
    .locals 1

    .line 206
    iget-object v0, p0, Lorg/jivesoftware/smack/chat/ChatManager;->matchMode:Lorg/jivesoftware/smack/chat/ChatManager$MatchMode;

    return-object v0
.end method

.method public getThreadChat(Ljava/lang/String;)Lorg/jivesoftware/smack/chat/Chat;
    .locals 1
    .param p1, "thread"    # Ljava/lang/String;

    .line 338
    iget-object v0, p0, Lorg/jivesoftware/smack/chat/ChatManager;->threadChats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/chat/Chat;

    return-object v0
.end method

.method public isNormalIncluded()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Lorg/jivesoftware/smack/chat/ChatManager;->normalIncluded:Z

    return v0
.end method

.method public removeChatListener(Lorg/jivesoftware/smack/chat/ChatManagerListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/jivesoftware/smack/chat/ChatManagerListener;

    .line 356
    iget-object v0, p0, Lorg/jivesoftware/smack/chat/ChatManager;->chatManagerListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 357
    return-void
.end method

.method sendMessage(Lorg/jivesoftware/smack/chat/Chat;Lorg/jivesoftware/smack/packet/Message;)V
    .locals 4
    .param p1, "chat"    # Lorg/jivesoftware/smack/chat/Chat;
    .param p2, "message"    # Lorg/jivesoftware/smack/packet/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lorg/jivesoftware/smack/chat/ChatManager;->interceptors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 377
    .local v1, "interceptor":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/jivesoftware/smack/MessageListener;Lorg/jivesoftware/smack/filter/StanzaFilter;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 378
    .local v2, "filter":Lorg/jivesoftware/smack/filter/StanzaFilter;
    if-eqz v2, :cond_0

    invoke-interface {v2, p2}, Lorg/jivesoftware/smack/filter/StanzaFilter;->accept(Lorg/jivesoftware/smack/packet/Stanza;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 379
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/MessageListener;

    invoke-interface {v3, p2}, Lorg/jivesoftware/smack/MessageListener;->processMessage(Lorg/jivesoftware/smack/packet/Message;)V

    .line 381
    .end local v1    # "interceptor":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/jivesoftware/smack/MessageListener;Lorg/jivesoftware/smack/filter/StanzaFilter;>;"
    .end local v2    # "filter":Lorg/jivesoftware/smack/filter/StanzaFilter;
    :cond_0
    goto :goto_0

    .line 382
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smack/chat/ChatManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/jivesoftware/smack/XMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 383
    return-void
.end method

.method public setMatchMode(Lorg/jivesoftware/smack/chat/ChatManager$MatchMode;)V
    .locals 0
    .param p1, "matchMode"    # Lorg/jivesoftware/smack/chat/ChatManager$MatchMode;

    .line 215
    iput-object p1, p0, Lorg/jivesoftware/smack/chat/ChatManager;->matchMode:Lorg/jivesoftware/smack/chat/ChatManager$MatchMode;

    .line 216
    return-void
.end method

.method public setNormalIncluded(Z)V
    .locals 0
    .param p1, "normalIncluded"    # Z

    .line 197
    iput-boolean p1, p0, Lorg/jivesoftware/smack/chat/ChatManager;->normalIncluded:Z

    .line 198
    return-void
.end method
