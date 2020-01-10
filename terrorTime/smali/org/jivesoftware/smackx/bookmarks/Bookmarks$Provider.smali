.class public Lorg/jivesoftware/smackx/bookmarks/Bookmarks$Provider;
.super Ljava/lang/Object;
.source "Bookmarks.java"

# interfaces
.implements Lorg/jivesoftware/smackx/iqprivate/provider/PrivateDataProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/bookmarks/Bookmarks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Provider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    return-void
.end method


# virtual methods
.method public parsePrivateData(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/iqprivate/packet/PrivateData;
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    new-instance v0, Lorg/jivesoftware/smackx/bookmarks/Bookmarks;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/bookmarks/Bookmarks;-><init>()V

    .line 225
    .local v0, "storage":Lorg/jivesoftware/smackx/bookmarks/Bookmarks;
    const/4 v1, 0x0

    .line 226
    .local v1, "done":Z
    :goto_0
    if-nez v1, :cond_4

    .line 227
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 228
    .local v2, "eventType":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "url"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 229
    invoke-static {p1}, Lorg/jivesoftware/smackx/bookmarks/Bookmarks;->access$000(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;

    move-result-object v3

    .line 230
    .local v3, "urlStorage":Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;
    if-eqz v3, :cond_0

    .line 231
    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/bookmarks/Bookmarks;->addBookmarkedURL(Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;)V

    .line 233
    .end local v3    # "urlStorage":Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;
    :cond_0
    goto :goto_1

    .line 234
    :cond_1
    if-ne v2, v3, :cond_2

    .line 235
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "conference"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 236
    invoke-static {p1}, Lorg/jivesoftware/smackx/bookmarks/Bookmarks;->access$100(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;

    move-result-object v3

    .line 237
    .local v3, "conference":Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;
    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/bookmarks/Bookmarks;->addBookmarkedConference(Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;)V

    .line 238
    .end local v3    # "conference":Lorg/jivesoftware/smackx/bookmarks/BookmarkedConference;
    goto :goto_1

    .line 239
    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "storage"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 240
    const/4 v1, 0x1

    .line 242
    .end local v2    # "eventType":I
    :cond_3
    :goto_1
    goto :goto_0

    .line 245
    :cond_4
    return-object v0
.end method
