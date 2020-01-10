.class public Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;
.super Ljava/lang/Object;
.source "BookmarkedURL.java"

# interfaces
.implements Lorg/jivesoftware/smackx/bookmarks/SharedBookmark;


# instance fields
.field private final URL:Ljava/lang/String;

.field private isRss:Z

.field private isShared:Z

.field private name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "URL"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;->URL:Ljava/lang/String;

    .line 34
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "URL"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "isRss"    # Z

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;->URL:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;->name:Ljava/lang/String;

    .line 39
    iput-boolean p3, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;->isRss:Z

    .line 40
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 89
    instance-of v0, p1, Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x0

    return v0

    .line 92
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;

    .line 93
    .local v0, "url":Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;->getURL()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;->URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;->URL:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 98
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isRss()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;->isRss:Z

    return v0
.end method

.method public isShared()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;->isShared:Z

    return v0
.end method

.method protected setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;->name:Ljava/lang/String;

    .line 59
    return-void
.end method

.method protected setRss(Z)V
    .locals 0
    .param p1, "isRss"    # Z

    .line 75
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;->isRss:Z

    .line 76
    return-void
.end method

.method protected setShared(Z)V
    .locals 0
    .param p1, "shared"    # Z

    .line 102
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/bookmarks/BookmarkedURL;->isShared:Z

    .line 103
    return-void
.end method
