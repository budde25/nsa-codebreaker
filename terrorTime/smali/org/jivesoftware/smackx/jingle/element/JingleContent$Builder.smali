.class public final Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;
.super Ljava/lang/Object;
.source "JingleContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/jingle/element/JingleContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private creator:Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;

.field private description:Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;

.field private disposition:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private senders:Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;

.field private transport:Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smackx/jingle/element/JingleContent$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jivesoftware/smackx/jingle/element/JingleContent$1;

    .line 154
    invoke-direct {p0}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/jivesoftware/smackx/jingle/element/JingleContent;
    .locals 9

    .line 204
    new-instance v8, Lorg/jivesoftware/smackx/jingle/element/JingleContent;

    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->creator:Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;

    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->disposition:Ljava/lang/String;

    iget-object v3, p0, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->name:Ljava/lang/String;

    iget-object v4, p0, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->senders:Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;

    iget-object v5, p0, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->description:Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;

    iget-object v6, p0, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->transport:Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/jivesoftware/smackx/jingle/element/JingleContent;-><init>(Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;Lorg/jivesoftware/smackx/jingle/element/JingleContent$1;)V

    return-object v8
.end method

.method public setCreator(Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;
    .locals 0
    .param p1, "creator"    # Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;

    .line 171
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->creator:Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;

    .line 172
    return-object p0
.end method

.method public setDescription(Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;
    .locals 2
    .param p1, "description"    # Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;

    .line 191
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->description:Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;

    if-nez v0, :cond_0

    .line 194
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->description:Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;

    .line 195
    return-object p0

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Jingle content description already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDisposition(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;
    .locals 0
    .param p1, "disposition"    # Ljava/lang/String;

    .line 176
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->disposition:Ljava/lang/String;

    .line 177
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 181
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->name:Ljava/lang/String;

    .line 182
    return-object p0
.end method

.method public setSenders(Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;
    .locals 0
    .param p1, "senders"    # Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;

    .line 186
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->senders:Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;

    .line 187
    return-object p0
.end method

.method public setTransport(Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;
    .locals 0
    .param p1, "transport"    # Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    .line 199
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->transport:Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    .line 200
    return-object p0
.end method
