.class public final Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager;
.super Lorg/jivesoftware/smack/Manager;
.source "MucBookmarkAutojoinManager.java"


# static fields
.field private static final INSTANCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static autojoinEnabledDefault:Z


# instance fields
.field private autojoinEnabled:Z

.field private final bookmarkManager:Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;

.field private final multiUserChatManager:Lorg/jivesoftware/smackx/muc/MultiUserChatManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager;->LOGGER:Ljava/util/logging/Logger;

    .line 53
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager;->INSTANCES:Ljava/util/Map;

    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager;->autojoinEnabledDefault:Z

    .line 58
    new-instance v0, Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager$1;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/XMPPConnectionRegistry;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 64
    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 1
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 85
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Manager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 82
    sget-boolean v0, Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager;->autojoinEnabledDefault:Z

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager;->autojoinEnabled:Z

    .line 86
    invoke-static {p1}, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/muc/MultiUserChatManager;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager;->multiUserChatManager:Lorg/jivesoftware/smackx/muc/MultiUserChatManager;

    .line 87
    invoke-static {p1}, Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;->getBookmarkManager(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager;->bookmarkManager:Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;

    .line 88
    new-instance v0, Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager$2;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager$2;-><init>(Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager;)V

    invoke-interface {p1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager;

    .line 49
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager;->autojoinEnabled:Z

    return v0
.end method

.method public static declared-synchronized getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    const-class v0, Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager;

    monitor-enter v0

    .line 71
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager;

    .line 72
    .local v1, "mbam":Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager;
    if-nez v1, :cond_0

    .line 73
    new-instance v2, Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    move-object v1, v2

    .line 74
    sget-object v2, Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_0
    monitor-exit v0

    return-object v1

    .line 70
    .end local v1    # "mbam":Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager;
    .end local p0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setAutojoinPerDefault(Z)V
    .locals 0
    .param p0, "autojoin"    # Z

    .line 67
    sput-boolean p0, Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager;->autojoinEnabledDefault:Z

    .line 68
    return-void
.end method


# virtual methods
.method public autojoinBookmarkedConferences()V
    .locals 12

    .line 107
    const-string v0, "Could not autojoin bookmarked MUC"

    const-string v1, "Could not get MUC bookmarks"

    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager;->bookmarkManager:Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;->getBookmarkedConferences()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Lorg/jivesoftware/smack/SmackException$NotConnectedException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/jivesoftware/smack/SmackException$NoResponseException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/jivesoftware/smack/XMPPException$XMPPErrorException; {:try_start_0 .. :try_end_0} :catch_5

    .line 116
    .local v1, "bookmarkedConferences":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;>;"
    nop

    .line 118
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v2

    .line 119
    .local v2, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    invoke-interface {v2}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v3

    invoke-interface {v3}, Lorg/jxmpp/jid/EntityFullJid;->getResourcepart()Lorg/jxmpp/jid/parts/Resourcepart;

    move-result-object v3

    .line 121
    .local v3, "defaultNick":Lorg/jxmpp/jid/parts/Resourcepart;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;

    .line 122
    .local v5, "bookmarkedConference":Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;->isAutoJoin()Z

    move-result v6

    if-nez v6, :cond_0

    .line 123
    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;->getNickname()Lorg/jxmpp/jid/parts/Resourcepart;

    move-result-object v6

    .line 126
    .local v6, "nick":Lorg/jxmpp/jid/parts/Resourcepart;
    if-nez v6, :cond_1

    .line 127
    move-object v6, v3

    .line 129
    :cond_1
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;->getPassword()Ljava/lang/String;

    move-result-object v7

    .line 130
    .local v7, "password":Ljava/lang/String;
    iget-object v8, p0, Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager;->multiUserChatManager:Lorg/jivesoftware/smackx/muc/MultiUserChatManager;

    invoke-virtual {v5}, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;->getJid()Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/jivesoftware/smackx/muc/MultiUserChatManager;->getMultiUserChat(Lorg/jxmpp/jid/EntityBareJid;)Lorg/jivesoftware/smackx/muc/MultiUserChat;

    move-result-object v8

    .line 132
    .local v8, "muc":Lorg/jivesoftware/smackx/muc/MultiUserChat;
    :try_start_1
    invoke-virtual {v8, v6, v7}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->createOrJoinIfNecessary(Lorg/jxmpp/jid/parts/Resourcepart;Ljava/lang/String;)Lorg/jivesoftware/smackx/muc/MultiUserChat$MucCreateConfigFormHandle;

    move-result-object v9

    .line 133
    .local v9, "handle":Lorg/jivesoftware/smackx/muc/MultiUserChat$MucCreateConfigFormHandle;
    if-eqz v9, :cond_2

    .line 134
    invoke-virtual {v9}, Lorg/jivesoftware/smackx/muc/MultiUserChat$MucCreateConfigFormHandle;->makeInstant()V
    :try_end_1
    .catch Lorg/jivesoftware/smack/SmackException$NotConnectedException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/jivesoftware/smackx/muc/MultiUserChatException$NotAMucServiceException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/jivesoftware/smack/SmackException$NoResponseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/jivesoftware/smack/XMPPException$XMPPErrorException; {:try_start_1 .. :try_end_1} :catch_0

    .line 145
    .end local v9    # "handle":Lorg/jivesoftware/smackx/muc/MultiUserChat$MucCreateConfigFormHandle;
    :cond_2
    goto :goto_2

    .line 142
    :catch_0
    move-exception v9

    goto :goto_1

    :catch_1
    move-exception v9

    goto :goto_1

    :catch_2
    move-exception v9

    .line 144
    .local v9, "e":Ljava/lang/Exception;
    :goto_1
    sget-object v10, Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager;->LOGGER:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v10, v11, v0, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    .end local v5    # "bookmarkedConference":Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;
    .end local v6    # "nick":Lorg/jxmpp/jid/parts/Resourcepart;
    .end local v7    # "password":Ljava/lang/String;
    .end local v8    # "muc":Lorg/jivesoftware/smackx/muc/MultiUserChat;
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_2
    goto :goto_0

    .line 137
    .restart local v5    # "bookmarkedConference":Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;
    .restart local v6    # "nick":Lorg/jxmpp/jid/parts/Resourcepart;
    .restart local v7    # "password":Ljava/lang/String;
    .restart local v8    # "muc":Lorg/jivesoftware/smackx/muc/MultiUserChat;
    :catch_3
    move-exception v4

    goto :goto_3

    :catch_4
    move-exception v4

    .line 138
    .local v4, "e":Ljava/lang/Exception;
    :goto_3
    sget-object v9, Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager;->LOGGER:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v9, v10, v0, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    nop

    .line 147
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "bookmarkedConference":Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;
    .end local v6    # "nick":Lorg/jxmpp/jid/parts/Resourcepart;
    .end local v7    # "password":Ljava/lang/String;
    .end local v8    # "muc":Lorg/jivesoftware/smackx/muc/MultiUserChat;
    :cond_3
    return-void

    .line 113
    .end local v1    # "bookmarkedConferences":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;>;"
    .end local v2    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    .end local v3    # "defaultNick":Lorg/jxmpp/jid/parts/Resourcepart;
    :catch_5
    move-exception v0

    goto :goto_4

    :catch_6
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    sget-object v2, Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v2, v3, v1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    return-void

    .line 109
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v0

    goto :goto_5

    :catch_8
    move-exception v0

    .line 110
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_5
    sget-object v2, Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v2, v3, v1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    return-void
.end method

.method public setAutojoinEnabled(Z)V
    .locals 0
    .param p1, "autojoin"    # Z

    .line 101
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/muc/bookmarkautojoin/MucBookmarkAutojoinManager;->autojoinEnabled:Z

    .line 102
    return-void
.end method
