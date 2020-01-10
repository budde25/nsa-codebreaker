.class public Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;
.super Ljava/lang/Object;
.source "BookmarkedConference.java"

# interfaces
.implements Lorg/jivesoftware/smackx/bookmarks/SharedBookmark;


# instance fields
.field private autoJoin:Z

.field private isShared:Z

.field private final jid:Lorg/jxmpp/jid/EntityBareJid;

.field private name:Ljava/lang/String;

.field private nickname:Lorg/jxmpp/jid/parts/Resourcepart;

.field private password:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lorg/jxmpp/jid/EntityBareJid;ZLorg/jxmpp/jid/parts/Resourcepart;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "jid"    # Lorg/jxmpp/jid/EntityBareJid;
    .param p3, "autoJoin"    # Z
    .param p4, "nickname"    # Lorg/jxmpp/jid/parts/Resourcepart;
    .param p5, "password"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;->name:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;->jid:Lorg/jxmpp/jid/EntityBareJid;

    .line 46
    iput-boolean p3, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;->autoJoin:Z

    .line 47
    iput-object p4, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;->nickname:Lorg/jxmpp/jid/parts/Resourcepart;

    .line 48
    iput-object p5, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;->password:Ljava/lang/String;

    .line 49
    return-void
.end method

.method protected constructor <init>(Lorg/jxmpp/jid/EntityBareJid;)V
    .locals 0
    .param p1, "jid"    # Lorg/jxmpp/jid/EntityBareJid;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;->jid:Lorg/jxmpp/jid/EntityBareJid;

    .line 40
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 117
    if-eqz p1, :cond_1

    instance-of v0, p1, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;

    if-nez v0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;

    .line 121
    .local v0, "conference":Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;->getJid()Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;->jid:Lorg/jxmpp/jid/EntityBareJid;

    invoke-interface {v1, v2}, Lorg/jxmpp/jid/EntityBareJid;->equals(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1

    .line 118
    .end local v0    # "conference":Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getJid()Lorg/jxmpp/jid/EntityBareJid;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;->jid:Lorg/jxmpp/jid/EntityBareJid;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Lorg/jxmpp/jid/parts/Resourcepart;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;->nickname:Lorg/jxmpp/jid/parts/Resourcepart;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;->password:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 126
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;->getJid()Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAutoJoin()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;->autoJoin:Z

    return v0
.end method

.method public isShared()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;->isShared:Z

    return v0
.end method

.method protected setAutoJoin(Z)V
    .locals 0
    .param p1, "autoJoin"    # Z

    .line 75
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;->autoJoin:Z

    .line 76
    return-void
.end method

.method protected setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;->name:Ljava/lang/String;

    .line 63
    return-void
.end method

.method protected setNickname(Lorg/jxmpp/jid/parts/Resourcepart;)V
    .locals 0
    .param p1, "nickname"    # Lorg/jxmpp/jid/parts/Resourcepart;

    .line 98
    iput-object p1, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;->nickname:Lorg/jxmpp/jid/parts/Resourcepart;

    .line 99
    return-void
.end method

.method protected setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .line 112
    iput-object p1, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;->password:Ljava/lang/String;

    .line 113
    return-void
.end method

.method protected setShared(Z)V
    .locals 0
    .param p1, "isShared"    # Z

    .line 130
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;->isShared:Z

    .line 131
    return-void
.end method
