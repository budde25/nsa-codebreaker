.class public final Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;
.super Ljava/lang/Object;
.source "BookmarkManager.java"


# static fields
.field private static final bookmarkManagerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bookmarkLock:Ljava/lang/Object;

.field private bookmarks:Lorg/jivesoftware/smackx/bookmarks/Bookmarks;

.field private final privateDataManager:Lorg/jivesoftware/smackx/iqprivate/PrivateDataManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;->bookmarkManagerMap:Ljava/util/Map;

    .line 51
    new-instance v0, Lorg/jivesoftware/smackx/bookmarks/Bookmarks$Provider;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/bookmarks/Bookmarks$Provider;-><init>()V

    const-string v1, "storage"

    const-string v2, "storage:bookmarks"

    invoke-static {v1, v2, v0}, Lorg/jivesoftware/smackx/iqprivate/PrivateDataManager;->addPrivateDataProvider(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/iqprivate/provider/PrivateDataProvider;)V

    .line 53
    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 1
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;->bookmarkLock:Ljava/lang/Object;

    .line 83
    invoke-static {p1}, Lorg/jivesoftware/smackx/iqprivate/PrivateDataManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/iqprivate/PrivateDataManager;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;->privateDataManager:Lorg/jivesoftware/smackx/iqprivate/PrivateDataManager;

    .line 84
    return-void
.end method

.method public static declared-synchronized getBookmarkManager(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    const-class v0, Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;

    monitor-enter v0

    .line 64
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;->bookmarkManagerMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;

    .line 65
    .local v1, "manager":Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;
    if-nez v1, :cond_0

    .line 66
    new-instance v2, Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    move-object v1, v2

    .line 67
    sget-object v2, Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;->bookmarkManagerMap:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_0
    monitor-exit v0

    return-object v1

    .line 63
    .end local v1    # "manager":Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;
    .end local p0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private retrieveBookmarks()Lorg/jivesoftware/smackx/bookmarks/Bookmarks;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;->bookmarkLock:Ljava/lang/Object;

    monitor-enter v0

    .line 253
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;->bookmarks:Lorg/jivesoftware/smackx/bookmarks/Bookmarks;

    if-nez v1, :cond_0

    .line 254
    iget-object v1, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;->privateDataManager:Lorg/jivesoftware/smackx/iqprivate/PrivateDataManager;

    const-string v2, "storage"

    const-string v3, "storage:bookmarks"

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smackx/iqprivate/PrivateDataManager;->getPrivateData(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/iqprivate/packet/PrivateData;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/bookmarks/Bookmarks;

    iput-object v1, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;->bookmarks:Lorg/jivesoftware/smackx/bookmarks/Bookmarks;

    .line 257
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;->bookmarks:Lorg/jivesoftware/smackx/bookmarks/Bookmarks;

    monitor-exit v0

    return-object v1

    .line 258
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addBookmarkedConference(Ljava/lang/String;Lorg/jxmpp/jid/EntityBareJid;ZLorg/jxmpp/jid/parts/Resourcepart;Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "jid"    # Lorg/jxmpp/jid/EntityBareJid;
    .param p3, "isAutoJoin"    # Z
    .param p4, "nickname"    # Lorg/jxmpp/jid/parts/Resourcepart;
    .param p5, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;->retrieveBookmarks()Lorg/jivesoftware/smackx/bookmarks/Bookmarks;

    .line 118
    new-instance v6, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;-><init>(Ljava/lang/String;Lorg/jxmpp/jid/EntityBareJid;ZLorg/jxmpp/jid/parts/Resourcepart;Ljava/lang/String;)V

    .line 120
    .local v0, "bookmark":Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;
    iget-object v1, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;->bookmarks:Lorg/jivesoftware/smackx/bookmarks/Bookmarks;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/bookmarks/Bookmarks;->getBookmarkedConferences()Ljava/util/List;

    move-result-object v1

    .line 121
    .local v1, "conferences":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;

    .line 123
    .local v2, "oldConference":Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;->isShared()Z

    move-result v3

    if-nez v3, :cond_0

    .line 126
    invoke-virtual {v2, p3}, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;->setAutoJoin(Z)V

    .line 127
    invoke-virtual {v2, p1}, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;->setName(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v2, p4}, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;->setNickname(Lorg/jxmpp/jid/parts/Resourcepart;)V

    .line 129
    invoke-virtual {v2, p5}, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;->setPassword(Ljava/lang/String;)V

    .line 130
    .end local v2    # "oldConference":Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;
    goto :goto_0

    .line 124
    .restart local v2    # "oldConference":Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot modify shared bookmark"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 132
    .end local v2    # "oldConference":Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;
    :cond_1
    iget-object v2, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;->bookmarks:Lorg/jivesoftware/smackx/bookmarks/Bookmarks;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smackx/bookmarks/Bookmarks;->addBookmarkedConference(Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;)V

    .line 134
    :goto_0
    iget-object v2, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;->privateDataManager:Lorg/jivesoftware/smackx/iqprivate/PrivateDataManager;

    iget-object v3, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;->bookmarks:Lorg/jivesoftware/smackx/bookmarks/Bookmarks;

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/iqprivate/PrivateDataManager;->setPrivateData(Lorg/jivesoftware/smackx/iqprivate/packet/PrivateData;)V

    .line 135
    return-void
.end method

.method public addBookmarkedURL(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "URL"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "isRSS"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 192
    invoke-direct {p0}, Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;->retrieveBookmarks()Lorg/jivesoftware/smackx/bookmarks/Bookmarks;

    .line 193
    new-instance v0, Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;

    invoke-direct {v0, p1, p2, p3}, Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 194
    .local v0, "bookmark":Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;
    iget-object v1, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;->bookmarks:Lorg/jivesoftware/smackx/bookmarks/Bookmarks;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/bookmarks/Bookmarks;->getBookmarkedURLS()Ljava/util/List;

    move-result-object v1

    .line 195
    .local v1, "urls":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;

    .line 197
    .local v2, "oldURL":Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;->isShared()Z

    move-result v3

    if-nez v3, :cond_0

    .line 200
    invoke-virtual {v2, p2}, Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;->setName(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v2, p3}, Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;->setRss(Z)V

    .line 202
    .end local v2    # "oldURL":Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;
    goto :goto_0

    .line 198
    .restart local v2    # "oldURL":Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot modify shared bookmarks"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 204
    .end local v2    # "oldURL":Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;
    :cond_1
    iget-object v2, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;->bookmarks:Lorg/jivesoftware/smackx/bookmarks/Bookmarks;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smackx/bookmarks/Bookmarks;->addBookmarkedURL(Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;)V

    .line 206
    :goto_0
    iget-object v2, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;->privateDataManager:Lorg/jivesoftware/smackx/iqprivate/PrivateDataManager;

    iget-object v3, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;->bookmarks:Lorg/jivesoftware/smackx/bookmarks/Bookmarks;

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/iqprivate/PrivateDataManager;->setPrivateData(Lorg/jivesoftware/smackx/iqprivate/packet/PrivateData;)V

    .line 207
    return-void
.end method

.method public getBookmarkedConferences()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;",
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

    .line 97
    invoke-direct {p0}, Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;->retrieveBookmarks()Lorg/jivesoftware/smackx/bookmarks/Bookmarks;

    .line 98
    iget-object v0, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;->bookmarks:Lorg/jivesoftware/smackx/bookmarks/Bookmarks;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bookmarks/Bookmarks;->getBookmarkedConferences()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBookmarkedURLs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;",
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

    .line 175
    invoke-direct {p0}, Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;->retrieveBookmarks()Lorg/jivesoftware/smackx/bookmarks/Bookmarks;

    .line 176
    iget-object v0, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;->bookmarks:Lorg/jivesoftware/smackx/bookmarks/Bookmarks;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bookmarks/Bookmarks;->getBookmarkedURLS()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isSupported()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;->privateDataManager:Lorg/jivesoftware/smackx/iqprivate/PrivateDataManager;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/iqprivate/PrivateDataManager;->isSupported()Z

    move-result v0

    return v0
.end method

.method public removeBookmarkedConference(Lorg/jxmpp/jid/EntityBareJid;)V
    .locals 4
    .param p1, "jid"    # Lorg/jxmpp/jid/EntityBareJid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 150
    invoke-direct {p0}, Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;->retrieveBookmarks()Lorg/jivesoftware/smackx/bookmarks/Bookmarks;

    .line 151
    iget-object v0, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;->bookmarks:Lorg/jivesoftware/smackx/bookmarks/Bookmarks;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bookmarks/Bookmarks;->getBookmarkedConferences()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 152
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 153
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;

    .line 154
    .local v1, "conference":Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;->getJid()Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/jxmpp/jid/EntityBareJid;->equals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;->isShared()Z

    move-result v2

    if-nez v2, :cond_0

    .line 158
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 159
    iget-object v2, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;->privateDataManager:Lorg/jivesoftware/smackx/iqprivate/PrivateDataManager;

    iget-object v3, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;->bookmarks:Lorg/jivesoftware/smackx/bookmarks/Bookmarks;

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/iqprivate/PrivateDataManager;->setPrivateData(Lorg/jivesoftware/smackx/iqprivate/packet/PrivateData;)V

    .line 160
    return-void

    .line 156
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Conference is shared and can\'t be removed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 162
    .end local v1    # "conference":Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;
    :cond_1
    goto :goto_0

    .line 163
    :cond_2
    return-void
.end method

.method public removeBookmarkedURL(Ljava/lang/String;)V
    .locals 4
    .param p1, "bookmarkURL"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 220
    invoke-direct {p0}, Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;->retrieveBookmarks()Lorg/jivesoftware/smackx/bookmarks/Bookmarks;

    .line 221
    iget-object v0, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;->bookmarks:Lorg/jivesoftware/smackx/bookmarks/Bookmarks;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bookmarks/Bookmarks;->getBookmarkedURLS()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 222
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;

    .line 224
    .local v1, "bookmark":Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;->isShared()Z

    move-result v2

    if-nez v2, :cond_0

    .line 228
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 229
    iget-object v2, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;->privateDataManager:Lorg/jivesoftware/smackx/iqprivate/PrivateDataManager;

    iget-object v3, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkManager;->bookmarks:Lorg/jivesoftware/smackx/bookmarks/Bookmarks;

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/iqprivate/PrivateDataManager;->setPrivateData(Lorg/jivesoftware/smackx/iqprivate/packet/PrivateData;)V

    .line 230
    return-void

    .line 226
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot delete a shared bookmark."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 232
    .end local v1    # "bookmark":Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;
    :cond_1
    goto :goto_0

    .line 233
    :cond_2
    return-void
.end method
