.class public Lorg/jivesoftware/smackx/bob/BoBHash;
.super Ljava/lang/Object;
.source "BoBHash.java"


# instance fields
.field private final cid:Ljava/lang/String;

.field private final hash:Ljava/lang/String;

.field private final hashType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "hash"    # Ljava/lang/String;
    .param p2, "hashType"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "hash must not be null or empty"

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/StringUtils;->requireNotNullOrEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/jivesoftware/smackx/bob/BoBHash;->hash:Ljava/lang/String;

    .line 43
    const-string v0, "hashType must not be null or empty"

    invoke-static {p2, v0}, Lorg/jivesoftware/smack/util/StringUtils;->requireNotNullOrEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/jivesoftware/smackx/bob/BoBHash;->hashType:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jivesoftware/smackx/bob/BoBHash;->hashType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jivesoftware/smackx/bob/BoBHash;->hash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@bob.xmpp.org"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/bob/BoBHash;->cid:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public static fromCid(Ljava/lang/String;)Lorg/jivesoftware/smackx/bob/BoBHash;
    .locals 3
    .param p0, "cid"    # Ljava/lang/String;

    .line 116
    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "hashType":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v2, "@bob.xmpp.org"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "hash":Ljava/lang/String;
    new-instance v2, Lorg/jivesoftware/smackx/bob/BoBHash;

    invoke-direct {v2, v0, v1}, Lorg/jivesoftware/smackx/bob/BoBHash;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static fromSrc(Ljava/lang/String;)Lorg/jivesoftware/smackx/bob/BoBHash;
    .locals 3
    .param p0, "src"    # Ljava/lang/String;

    .line 104
    const-string v0, "cid:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    const-string v1, "+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "hashType":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v2, "@bob.xmpp.org"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "hash":Ljava/lang/String;
    new-instance v2, Lorg/jivesoftware/smackx/bob/BoBHash;

    invoke-direct {v2, v1, v0}, Lorg/jivesoftware/smackx/bob/BoBHash;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 85
    instance-of v0, p1, Lorg/jivesoftware/smackx/bob/BoBHash;

    if-eqz v0, :cond_0

    .line 86
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smackx/bob/BoBHash;

    .line 87
    .local v0, "otherBob":Lorg/jivesoftware/smackx/bob/BoBHash;
    iget-object v1, p0, Lorg/jivesoftware/smackx/bob/BoBHash;->cid:Ljava/lang/String;

    iget-object v2, v0, Lorg/jivesoftware/smackx/bob/BoBHash;->cid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 89
    .end local v0    # "otherBob":Lorg/jivesoftware/smackx/bob/BoBHash;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/jivesoftware/smackx/bob/BoBHash;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/jivesoftware/smackx/bob/BoBHash;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public getHashType()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/jivesoftware/smackx/bob/BoBHash;->hashType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/jivesoftware/smackx/bob/BoBHash;->cid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toSrc()Ljava/lang/String;
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/bob/BoBHash;->getCid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
