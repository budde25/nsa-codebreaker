.class public final Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;
.super Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Builder;
.source "HttpOverXmppReq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Builder<",
        "Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;",
        "Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq;",
        ">;"
    }
.end annotation


# instance fields
.field private ibb:Z

.field private jingle:Z

.field private maxChunkSize:I

.field private method:Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

.field private resource:Ljava/lang/String;

.field private sipub:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 137
    invoke-direct {p0}, Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Builder;-><init>()V

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;->maxChunkSize:I

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;->sipub:Z

    .line 134
    iput-boolean v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;->ibb:Z

    .line 135
    iput-boolean v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;->jingle:Z

    .line 138
    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$1;

    .line 125
    invoke-direct {p0}, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;)Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;

    .line 125
    iget-object v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;->method:Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

    return-object v0
.end method

.method static synthetic access$100(Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;

    .line 125
    iget-object v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;->resource:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;)I
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;

    .line 125
    iget v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;->maxChunkSize:I

    return v0
.end method

.method static synthetic access$300(Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;

    .line 125
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;->ibb:Z

    return v0
.end method

.method static synthetic access$400(Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;

    .line 125
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;->jingle:Z

    return v0
.end method

.method static synthetic access$500(Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;

    .line 125
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;->sipub:Z

    return v0
.end method


# virtual methods
.method public bridge synthetic build()Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp;
    .locals 1

    .line 125
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;->build()Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq;
    .locals 2

    .line 217
    iget-object v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;->method:Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;->resource:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 223
    new-instance v0, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq;-><init>(Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$1;)V

    return-object v0

    .line 221
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Resource cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Method cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic getThis()Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Builder;
    .locals 1

    .line 125
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;->getThis()Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected getThis()Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;
    .locals 0

    .line 228
    return-object p0
.end method

.method public setIbb(Z)Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;
    .locals 0
    .param p1, "ibb"    # Z

    .line 184
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;->ibb:Z

    .line 185
    return-object p0
.end method

.method public setJingle(Z)Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;
    .locals 0
    .param p1, "jingle"    # Z

    .line 172
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;->jingle:Z

    .line 173
    return-object p0
.end method

.method public setMaxChunkSize(I)Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;
    .locals 2
    .param p1, "maxChunkSize"    # I

    .line 208
    const/16 v0, 0x100

    if-lt p1, v0, :cond_0

    const/high16 v0, 0x10000

    if-gt p1, v0, :cond_0

    .line 211
    iput p1, p0, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;->maxChunkSize:I

    .line 212
    return-object p0

    .line 209
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxChunkSize must be within [256, 65536]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMethod(Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;)Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;
    .locals 0
    .param p1, "method"    # Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

    .line 148
    iput-object p1, p0, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;->method:Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

    .line 149
    return-object p0
.end method

.method public setResource(Ljava/lang/String;)Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;
    .locals 0
    .param p1, "resource"    # Ljava/lang/String;

    .line 160
    iput-object p1, p0, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;->resource:Ljava/lang/String;

    .line 161
    return-object p0
.end method

.method public setSipub(Z)Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;
    .locals 0
    .param p1, "sipub"    # Z

    .line 196
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;->sipub:Z

    .line 197
    return-object p0
.end method
