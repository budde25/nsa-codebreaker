.class public Lorg/jivesoftware/smackx/bob/BoBData;
.super Ljava/lang/Object;
.source "BoBData.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private contentBinary:[B

.field private contentString:Ljava/lang/String;

.field private final maxAge:I

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .line 56
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/bob/BoBData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "maxAge"    # I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/jivesoftware/smackx/bob/BoBData;->type:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lorg/jivesoftware/smackx/bob/BoBData;->contentString:Ljava/lang/String;

    .line 62
    iput p3, p0, Lorg/jivesoftware/smackx/bob/BoBData;->maxAge:I

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "content"    # [B

    .line 39
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/bob/BoBData;-><init>(Ljava/lang/String;[BI)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BI)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "content"    # [B
    .param p3, "maxAge"    # I

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/jivesoftware/smackx/bob/BoBData;->type:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lorg/jivesoftware/smackx/bob/BoBData;->contentBinary:[B

    .line 52
    iput p3, p0, Lorg/jivesoftware/smackx/bob/BoBData;->maxAge:I

    .line 53
    return-void
.end method

.method private setContentBinaryIfRequired()V
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/jivesoftware/smackx/bob/BoBData;->contentBinary:[B

    if-nez v0, :cond_0

    .line 85
    nop

    .line 86
    iget-object v0, p0, Lorg/jivesoftware/smackx/bob/BoBData;->contentString:Ljava/lang/String;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/stringencoder/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/bob/BoBData;->contentBinary:[B

    .line 88
    :cond_0
    return-void
.end method


# virtual methods
.method public getContent()[B
    .locals 1

    .line 96
    invoke-direct {p0}, Lorg/jivesoftware/smackx/bob/BoBData;->setContentBinaryIfRequired()V

    .line 97
    iget-object v0, p0, Lorg/jivesoftware/smackx/bob/BoBData;->contentBinary:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getContentBase64Encoded()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/jivesoftware/smackx/bob/BoBData;->contentString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/bob/BoBData;->getContent()[B

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/stringencoder/Base64;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/bob/BoBData;->contentString:Ljava/lang/String;

    .line 109
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/bob/BoBData;->contentString:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxAge()I
    .locals 1

    .line 71
    iget v0, p0, Lorg/jivesoftware/smackx/bob/BoBData;->maxAge:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/jivesoftware/smackx/bob/BoBData;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isOfReasonableSize()Z
    .locals 2

    .line 118
    invoke-direct {p0}, Lorg/jivesoftware/smackx/bob/BoBData;->setContentBinaryIfRequired()V

    .line 119
    iget-object v0, p0, Lorg/jivesoftware/smackx/bob/BoBData;->contentBinary:[B

    array-length v0, v0

    const/16 v1, 0x2000

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
