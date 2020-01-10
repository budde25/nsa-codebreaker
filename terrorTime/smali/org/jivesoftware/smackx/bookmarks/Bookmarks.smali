.class public Lorg/jivesoftware/smackx/bookmarks/Bookmarks;
.super Ljava/lang/Object;
.source "Bookmarks.java"

# interfaces
.implements Lorg/jivesoftware/smackx/iqprivate/packet/PrivateData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/bookmarks/Bookmarks$Provider;
    }
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "storage"

.field public static final NAMESPACE:Ljava/lang/String; = "storage:bookmarks"


# instance fields
.field private final bookmarkedConferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;",
            ">;"
        }
    .end annotation
.end field

.field private final bookmarkedURLS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/bookmarks/Bookmarks;->bookmarkedURLS:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/bookmarks/Bookmarks;->bookmarkedConferences:Ljava/util/List;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;
    .locals 1
    .param p0, "x0"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 62
    invoke-static {p0}, Lorg/jivesoftware/smackx/bookmarks/Bookmarks;->getURLStorage(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;
    .locals 1
    .param p0, "x0"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-static {p0}, Lorg/jivesoftware/smackx/bookmarks/Bookmarks;->getConferenceStorage(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;

    move-result-object v0

    return-object v0
.end method

.method private static getConferenceStorage(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;
    .locals 9
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    const-string v0, ""

    const-string v1, "name"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "name":Ljava/lang/String;
    const-string v1, "autojoin"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lorg/jivesoftware/smack/util/ParserUtils;->getBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    .line 273
    .local v1, "autojoin":Z
    invoke-static {p0}, Lorg/jivesoftware/smack/util/ParserUtils;->getBareJidAttribute(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v2

    .line 275
    .local v2, "jid":Lorg/jxmpp/jid/EntityBareJid;
    new-instance v3, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;

    invoke-direct {v3, v2}, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;-><init>(Lorg/jxmpp/jid/EntityBareJid;)V

    .line 276
    .local v3, "conf":Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;
    invoke-virtual {v3, v0}, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;->setName(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v3, v1}, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;->setAutoJoin(Z)V

    .line 280
    const/4 v4, 0x0

    .line 281
    .local v4, "done":Z
    :goto_0
    if-nez v4, :cond_4

    .line 282
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 283
    .local v5, "eventType":I
    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "nick"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 284
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    .line 285
    .local v6, "nickString":Ljava/lang/String;
    invoke-static {v6}, Lorg/jxmpp/jid/parts/Resourcepart;->from(Ljava/lang/String;)Lorg/jxmpp/jid/parts/Resourcepart;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;->setNickname(Lorg/jxmpp/jid/parts/Resourcepart;)V

    .line 286
    .end local v6    # "nickString":Ljava/lang/String;
    goto :goto_1

    .line 287
    :cond_0
    if-ne v5, v6, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "password"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 288
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;->setPassword(Ljava/lang/String;)V

    goto :goto_1

    .line 290
    :cond_1
    if-ne v5, v6, :cond_2

    .line 291
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "shared_bookmark"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 292
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;->setShared(Z)V

    goto :goto_1

    .line 294
    :cond_2
    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "conference"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 295
    const/4 v4, 0x1

    .line 297
    .end local v5    # "eventType":I
    :cond_3
    :goto_1
    goto :goto_0

    .line 300
    :cond_4
    return-object v3
.end method

.method private static getURLStorage(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;
    .locals 11
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 250
    const-string v0, ""

    const-string v1, "name"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "name":Ljava/lang/String;
    const-string v2, "url"

    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, "url":Ljava/lang/String;
    const-string v4, "rss"

    invoke-interface {p0, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "rssString":Ljava/lang/String;
    const/4 v4, 0x1

    if-eqz v0, :cond_0

    const-string v5, "true"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 255
    .local v5, "rss":Z
    :goto_0
    new-instance v6, Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;

    invoke-direct {v6, v3, v1, v5}, Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 256
    .local v6, "urlStore":Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;
    const/4 v7, 0x0

    .line 257
    .local v7, "done":Z
    :goto_1
    if-nez v7, :cond_3

    .line 258
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .line 259
    .local v8, "eventType":I
    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 260
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "shared_bookmark"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 261
    invoke-virtual {v6, v4}, Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;->setShared(Z)V

    goto :goto_2

    .line 263
    :cond_1
    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 264
    const/4 v7, 0x1

    .line 266
    .end local v8    # "eventType":I
    :cond_2
    :goto_2
    goto :goto_1

    .line 267
    :cond_3
    return-object v6
.end method


# virtual methods
.method public addBookmarkedConference(Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;)V
    .locals 1
    .param p1, "bookmarkedConference"    # Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;

    .line 109
    iget-object v0, p0, Lorg/jivesoftware/smackx/bookmarks/Bookmarks;->bookmarkedConferences:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method

.method public addBookmarkedURL(Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;)V
    .locals 1
    .param p1, "bookmarkedURL"    # Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;

    .line 84
    iget-object v0, p0, Lorg/jivesoftware/smackx/bookmarks/Bookmarks;->bookmarkedURLS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method public clearBookmarkedConferences()V
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/jivesoftware/smackx/bookmarks/Bookmarks;->bookmarkedConferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 126
    return-void
.end method

.method public clearBookmarkedURLS()V
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/jivesoftware/smackx/bookmarks/Bookmarks;->bookmarkedURLS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 101
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

    .line 143
    iget-object v0, p0, Lorg/jivesoftware/smackx/bookmarks/Bookmarks;->bookmarkedConferences:Ljava/util/List;

    return-object v0
.end method

.method public getBookmarkedURLS()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lorg/jivesoftware/smackx/bookmarks/Bookmarks;->bookmarkedURLS:Ljava/util/List;

    return-object v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 154
    const-string v0, "storage"

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 164
    const-string v0, "storage:bookmarks"

    return-object v0
.end method

.method public removeBookmarkedConference(Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;)V
    .locals 1
    .param p1, "bookmarkedConference"    # Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;

    .line 118
    iget-object v0, p0, Lorg/jivesoftware/smackx/bookmarks/Bookmarks;->bookmarkedConferences:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 119
    return-void
.end method

.method public removeBookmarkedURL(Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;)V
    .locals 1
    .param p1, "bookmarkedURL"    # Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;

    .line 93
    iget-object v0, p0, Lorg/jivesoftware/smackx/bookmarks/Bookmarks;->bookmarkedURLS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method public bridge synthetic toXML()Ljava/lang/CharSequence;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/bookmarks/Bookmarks;->toXML()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public toXML()Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 8

    .line 174
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>()V

    .line 175
    .local v0, "buf":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    const-string v1, "storage"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->halfOpenElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v2

    const-string v3, "storage:bookmarks"

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->xmlnsAttribute(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 177
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/bookmarks/Bookmarks;->getBookmarkedURLS()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "name"

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;

    .line 178
    .local v3, "urlStorage":Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;->isShared()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 179
    goto :goto_0

    .line 181
    :cond_0
    const-string v5, "url"

    invoke-virtual {v0, v5}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->halfOpenElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;->getURL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 182
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;->isRss()Z

    move-result v4

    const-string v5, "rss"

    const-string v6, "true"

    invoke-virtual {v0, v4, v5, v6}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->condAttribute(ZLjava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 183
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 184
    .end local v3    # "urlStorage":Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;
    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/bookmarks/Bookmarks;->getBookmarkedConferences()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;

    .line 188
    .local v3, "conference":Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;->isShared()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 189
    goto :goto_1

    .line 191
    :cond_2
    const-string v5, "conference"

    invoke-virtual {v0, v5}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->halfOpenElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 192
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 193
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;->isAutoJoin()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    const-string v7, "autojoin"

    invoke-virtual {v0, v7, v6}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 194
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;->getJid()Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v6

    const-string v7, "jid"

    invoke-virtual {v0, v7, v6}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 195
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 197
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;->getNickname()Lorg/jxmpp/jid/parts/Resourcepart;

    move-result-object v6

    const-string v7, "nick"

    invoke-virtual {v0, v7, v6}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 198
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;->getPassword()Ljava/lang/String;

    move-result-object v6

    const-string v7, "password"

    invoke-virtual {v0, v7, v6}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 200
    invoke-virtual {v0, v5}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 201
    .end local v3    # "conference":Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;
    goto :goto_1

    .line 203
    :cond_3
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 204
    return-object v0
.end method
