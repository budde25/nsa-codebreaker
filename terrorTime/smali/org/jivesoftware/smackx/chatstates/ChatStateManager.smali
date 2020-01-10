.class public final Lorg/jivesoftware/smackx/chatstates/ChatStateManager;
.super Lorg/jivesoftware/smack/Manager;
.source "ChatStateManager.java"


# static fields
.field private static final INCOMING_CHAT_STATE_FILTER:Lorg/jivesoftware/smack/filter/StanzaFilter;

.field private static final INCOMING_MESSAGE_FILTER:Lorg/jivesoftware/smack/filter/StanzaFilter;

.field private static final INSTANCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smackx/chatstates/ChatStateManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGGER:Ljava/util/logging/Logger;

.field public static final NAMESPACE:Ljava/lang/String; = "http://jabber.org/protocol/chatstates"

.field private static final filter:Lorg/jivesoftware/smack/filter/StanzaFilter;


# instance fields
.field private final asyncButOrdered:Lorg/jivesoftware/smack/AsyncButOrdered;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jivesoftware/smack/AsyncButOrdered<",
            "Lorg/jivesoftware/smack/chat2/Chat;",
            ">;"
        }
    .end annotation
.end field

.field private final chatStateListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jivesoftware/smackx/chatstates/ChatStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final chatStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/chat2/Chat;",
            "Lorg/jivesoftware/smackx/chatstates/ChatState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 68
    const-class v0, Lorg/jivesoftware/smackx/chatstates/ChatStateManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smackx/chatstates/ChatStateManager;->LOGGER:Ljava/util/logging/Logger;

    .line 72
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/chatstates/ChatStateManager;->INSTANCES:Ljava/util/Map;

    .line 74
    new-instance v0, Lorg/jivesoftware/smack/filter/NotFilter;

    new-instance v1, Lorg/jivesoftware/smack/filter/StanzaExtensionFilter;

    const-string v2, "http://jabber.org/protocol/chatstates"

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/filter/StanzaExtensionFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/NotFilter;-><init>(Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    sput-object v0, Lorg/jivesoftware/smackx/chatstates/ChatStateManager;->filter:Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 75
    new-instance v0, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v1, 0x2

    new-array v3, v1, [Lorg/jivesoftware/smack/filter/StanzaFilter;

    sget-object v4, Lorg/jivesoftware/smack/filter/MessageTypeFilter;->NORMAL_OR_CHAT:Lorg/jivesoftware/smack/filter/StanzaFilter;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lorg/jivesoftware/smack/filter/FromTypeFilter;->ENTITY_FULL_JID:Lorg/jivesoftware/smack/filter/FromTypeFilter;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-direct {v0, v3}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    sput-object v0, Lorg/jivesoftware/smackx/chatstates/ChatStateManager;->INCOMING_MESSAGE_FILTER:Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 77
    new-instance v0, Lorg/jivesoftware/smack/filter/AndFilter;

    new-array v1, v1, [Lorg/jivesoftware/smack/filter/StanzaFilter;

    sget-object v3, Lorg/jivesoftware/smackx/chatstates/ChatStateManager;->INCOMING_MESSAGE_FILTER:Lorg/jivesoftware/smack/filter/StanzaFilter;

    aput-object v3, v1, v5

    new-instance v3, Lorg/jivesoftware/smack/filter/StanzaExtensionFilter;

    invoke-direct {v3, v2}, Lorg/jivesoftware/smack/filter/StanzaExtensionFilter;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v6

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    sput-object v0, Lorg/jivesoftware/smackx/chatstates/ChatStateManager;->INCOMING_CHAT_STATE_FILTER:Lorg/jivesoftware/smack/filter/StanzaFilter;

    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 3
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 114
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Manager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/chatstates/ChatStateManager;->chatStateListeners:Ljava/util/Set;

    .line 87
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/chatstates/ChatStateManager;->chatStates:Ljava/util/Map;

    .line 89
    new-instance v0, Lorg/jivesoftware/smack/AsyncButOrdered;

    invoke-direct {v0}, Lorg/jivesoftware/smack/AsyncButOrdered;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/chatstates/ChatStateManager;->asyncButOrdered:Lorg/jivesoftware/smack/AsyncButOrdered;

    .line 115
    invoke-static {p1}, Lorg/jivesoftware/smack/chat2/ChatManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smack/chat2/ChatManager;

    move-result-object v0

    .line 116
    .local v0, "chatManager":Lorg/jivesoftware/smack/chat2/ChatManager;
    new-instance v1, Lorg/jivesoftware/smackx/chatstates/ChatStateManager$1;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smackx/chatstates/ChatStateManager$1;-><init>(Lorg/jivesoftware/smackx/chatstates/ChatStateManager;)V

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/chat2/ChatManager;->addOutgoingListener(Lorg/jivesoftware/smack/chat2/OutgoingChatMessageListener;)Z

    .line 135
    new-instance v1, Lorg/jivesoftware/smackx/chatstates/ChatStateManager$2;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smackx/chatstates/ChatStateManager$2;-><init>(Lorg/jivesoftware/smackx/chatstates/ChatStateManager;)V

    sget-object v2, Lorg/jivesoftware/smackx/chatstates/ChatStateManager;->INCOMING_CHAT_STATE_FILTER:Lorg/jivesoftware/smack/filter/StanzaFilter;

    invoke-interface {p1, v1, v2}, Lorg/jivesoftware/smack/XMPPConnection;->addSyncStanzaListener(Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 175
    invoke-static {p1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v1

    const-string v2, "http://jabber.org/protocol/chatstates"

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method static synthetic access$000()Lorg/jivesoftware/smack/filter/StanzaFilter;
    .locals 1

    .line 66
    sget-object v0, Lorg/jivesoftware/smackx/chatstates/ChatStateManager;->filter:Lorg/jivesoftware/smack/filter/StanzaFilter;

    return-object v0
.end method

.method static synthetic access$100(Lorg/jivesoftware/smackx/chatstates/ChatStateManager;Lorg/jivesoftware/smack/chat2/Chat;Lorg/jivesoftware/smackx/chatstates/ChatState;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/chatstates/ChatStateManager;
    .param p1, "x1"    # Lorg/jivesoftware/smack/chat2/Chat;
    .param p2, "x2"    # Lorg/jivesoftware/smackx/chatstates/ChatState;

    .line 66
    invoke-direct {p0, p1, p2}, Lorg/jivesoftware/smackx/chatstates/ChatStateManager;->updateChatState(Lorg/jivesoftware/smack/chat2/Chat;Lorg/jivesoftware/smackx/chatstates/ChatState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/jivesoftware/smackx/chatstates/ChatStateManager;)Lorg/jivesoftware/smack/XMPPConnection;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/chatstates/ChatStateManager;

    .line 66
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/chatstates/ChatStateManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/logging/Logger;
    .locals 1

    .line 66
    sget-object v0, Lorg/jivesoftware/smackx/chatstates/ChatStateManager;->LOGGER:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$400(Lorg/jivesoftware/smackx/chatstates/ChatStateManager;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/chatstates/ChatStateManager;

    .line 66
    iget-object v0, p0, Lorg/jivesoftware/smackx/chatstates/ChatStateManager;->chatStateListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$500(Lorg/jivesoftware/smackx/chatstates/ChatStateManager;)Lorg/jivesoftware/smack/AsyncButOrdered;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/chatstates/ChatStateManager;

    .line 66
    iget-object v0, p0, Lorg/jivesoftware/smackx/chatstates/ChatStateManager;->asyncButOrdered:Lorg/jivesoftware/smack/AsyncButOrdered;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/chatstates/ChatStateManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    const-class v0, Lorg/jivesoftware/smackx/chatstates/ChatStateManager;

    monitor-enter v0

    .line 99
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/chatstates/ChatStateManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/chatstates/ChatStateManager;

    .line 100
    .local v1, "manager":Lorg/jivesoftware/smackx/chatstates/ChatStateManager;
    if-nez v1, :cond_0

    .line 101
    new-instance v2, Lorg/jivesoftware/smackx/chatstates/ChatStateManager;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/chatstates/ChatStateManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    move-object v1, v2

    .line 102
    sget-object v2, Lorg/jivesoftware/smackx/chatstates/ChatStateManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :cond_0
    monitor-exit v0

    return-object v1

    .line 98
    .end local v1    # "manager":Lorg/jivesoftware/smackx/chatstates/ChatStateManager;
    .end local p0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized updateChatState(Lorg/jivesoftware/smack/chat2/Chat;Lorg/jivesoftware/smackx/chatstates/ChatState;)Z
    .locals 2
    .param p1, "chat"    # Lorg/jivesoftware/smack/chat2/Chat;
    .param p2, "newState"    # Lorg/jivesoftware/smackx/chatstates/ChatState;

    monitor-enter p0

    .line 245
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/chatstates/ChatStateManager;->chatStates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/chatstates/ChatState;

    .line 246
    .local v0, "lastChatState":Lorg/jivesoftware/smackx/chatstates/ChatState;
    if-eq v0, p2, :cond_0

    .line 247
    iget-object v1, p0, Lorg/jivesoftware/smackx/chatstates/ChatStateManager;->chatStates:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 250
    .end local p0    # "this":Lorg/jivesoftware/smackx/chatstates/ChatStateManager;
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 244
    .end local v0    # "lastChatState":Lorg/jivesoftware/smackx/chatstates/ChatState;
    .end local p1    # "chat":Lorg/jivesoftware/smack/chat2/Chat;
    .end local p2    # "newState":Lorg/jivesoftware/smackx/chatstates/ChatState;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public addChatStateListener(Lorg/jivesoftware/smackx/chatstates/ChatStateListener;)Z
    .locals 2
    .param p1, "listener"    # Lorg/jivesoftware/smackx/chatstates/ChatStateListener;

    .line 185
    iget-object v0, p0, Lorg/jivesoftware/smackx/chatstates/ChatStateManager;->chatStateListeners:Ljava/util/Set;

    monitor-enter v0

    .line 186
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/chatstates/ChatStateManager;->chatStateListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 187
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 230
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 231
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 233
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smackx/chatstates/ChatStateManager;

    .line 235
    .local v0, "that":Lorg/jivesoftware/smackx/chatstates/ChatStateManager;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/chatstates/ChatStateManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/chatstates/ChatStateManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 231
    .end local v0    # "that":Lorg/jivesoftware/smackx/chatstates/ChatStateManager;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 241
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/chatstates/ChatStateManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public removeChatStateListener(Lorg/jivesoftware/smackx/chatstates/ChatStateListener;)Z
    .locals 2
    .param p1, "listener"    # Lorg/jivesoftware/smackx/chatstates/ChatStateListener;

    .line 197
    iget-object v0, p0, Lorg/jivesoftware/smackx/chatstates/ChatStateManager;->chatStateListeners:Ljava/util/Set;

    monitor-enter v0

    .line 198
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/chatstates/ChatStateManager;->chatStateListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 199
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCurrentState(Lorg/jivesoftware/smackx/chatstates/ChatState;Lorg/jivesoftware/smack/chat2/Chat;)V
    .locals 2
    .param p1, "newState"    # Lorg/jivesoftware/smackx/chatstates/ChatState;
    .param p2, "chat"    # Lorg/jivesoftware/smack/chat2/Chat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 214
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 217
    invoke-direct {p0, p2, p1}, Lorg/jivesoftware/smackx/chatstates/ChatStateManager;->updateChatState(Lorg/jivesoftware/smack/chat2/Chat;Lorg/jivesoftware/smackx/chatstates/ChatState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    return-void

    .line 220
    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/Message;-><init>()V

    .line 221
    .local v0, "message":Lorg/jivesoftware/smack/packet/Message;
    new-instance v1, Lorg/jivesoftware/smackx/chatstates/packet/ChatStateExtension;

    invoke-direct {v1, p1}, Lorg/jivesoftware/smackx/chatstates/packet/ChatStateExtension;-><init>(Lorg/jivesoftware/smackx/chatstates/ChatState;)V

    .line 222
    .local v1, "extension":Lorg/jivesoftware/smackx/chatstates/packet/ChatStateExtension;
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 224
    invoke-virtual {p2, v0}, Lorg/jivesoftware/smack/chat2/Chat;->send(Lorg/jivesoftware/smack/packet/Message;)V

    .line 225
    return-void

    .line 215
    .end local v0    # "message":Lorg/jivesoftware/smack/packet/Message;
    .end local v1    # "extension":Lorg/jivesoftware/smackx/chatstates/packet/ChatStateExtension;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arguments cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
