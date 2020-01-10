.class public Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;
.super Ljava/lang/Object;
.source "DiscoverInfo.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/jivesoftware/smack/util/TypedCloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Identity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;",
        ">;",
        "Lorg/jivesoftware/smack/util/TypedCloneable<",
        "Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;",
        ">;"
    }
.end annotation


# instance fields
.field private final category:Ljava/lang/String;

.field private final key:Ljava/lang/String;

.field private final lang:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 294
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .line 307
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, p2, v0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "lang"    # Ljava/lang/String;

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    const-string v0, "category cannot be null"

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/StringUtils;->requireNotNullOrEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->category:Ljava/lang/String;

    .line 322
    const-string v0, "type cannot be null"

    invoke-static {p2, v0}, Lorg/jivesoftware/smack/util/StringUtils;->requireNotNullOrEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->type:Ljava/lang/String;

    .line 323
    invoke-static {p1, p2}, Lorg/jxmpp/util/XmppStringUtils;->generateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->key:Ljava/lang/String;

    .line 324
    iput-object p3, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->name:Ljava/lang/String;

    .line 325
    iput-object p4, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->lang:Ljava/lang/String;

    .line 326
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;)V
    .locals 1
    .param p1, "identity"    # Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iget-object v0, p1, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->category:Ljava/lang/String;

    iput-object v0, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->category:Ljava/lang/String;

    .line 281
    iget-object v0, p1, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->type:Ljava/lang/String;

    iput-object v0, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->type:Ljava/lang/String;

    .line 282
    iget-object v0, p1, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->type:Ljava/lang/String;

    iput-object v0, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->key:Ljava/lang/String;

    .line 283
    iget-object v0, p1, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->name:Ljava/lang/String;

    iput-object v0, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->name:Ljava/lang/String;

    .line 284
    iget-object v0, p1, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->lang:Ljava/lang/String;

    iput-object v0, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->lang:Ljava/lang/String;

    .line 285
    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;

    .line 271
    invoke-direct {p0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getKey()Ljava/lang/String;
    .locals 1

    .line 367
    iget-object v0, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->key:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 271
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->clone()Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;
    .locals 1

    .line 470
    new-instance v0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;-><init>(Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;)V

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 271
    check-cast p1, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;

    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->compareTo(Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;)I
    .locals 6
    .param p1, "other"    # Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;

    .line 444
    iget-object v0, p1, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->lang:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    .line 445
    .local v0, "otherLang":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->lang:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v2, v1

    .line 448
    .local v2, "thisLang":Ljava/lang/String;
    :cond_1
    iget-object v3, p1, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->type:Ljava/lang/String;

    if-nez v3, :cond_2

    move-object v3, v1

    .line 449
    .local v3, "otherType":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->type:Ljava/lang/String;

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    move-object v1, v4

    .line 451
    .local v1, "thisType":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->category:Ljava/lang/String;

    iget-object v5, p1, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->category:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 452
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 453
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 456
    const/4 v4, 0x0

    return v4

    .line 458
    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    return v4

    .line 461
    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    return v4

    .line 464
    :cond_6
    iget-object v4, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->category:Ljava/lang/String;

    iget-object v5, p1, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->category:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    return v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 400
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 401
    return v0

    .line 402
    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    .line 403
    return v1

    .line 404
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 405
    return v0

    .line 407
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;

    .line 408
    .local v2, "other":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;
    iget-object v3, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->key:Ljava/lang/String;

    iget-object v4, v2, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 409
    return v0

    .line 411
    :cond_3
    iget-object v3, v2, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->lang:Ljava/lang/String;

    const-string v4, ""

    if-nez v3, :cond_4

    move-object v3, v4

    .line 412
    .local v3, "otherLang":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->lang:Ljava/lang/String;

    if-nez v5, :cond_5

    move-object v5, v4

    .line 413
    .local v5, "thisLang":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 414
    return v0

    .line 416
    :cond_6
    iget-object v6, v2, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->name:Ljava/lang/String;

    if-nez v6, :cond_7

    move-object v6, v4

    .line 417
    .local v6, "otherName":Ljava/lang/String;
    :cond_7
    iget-object v7, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->name:Ljava/lang/String;

    if-nez v7, :cond_8

    goto :goto_0

    :cond_8
    iget-object v4, v2, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->name:Ljava/lang/String;

    .line 418
    .local v4, "thisName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 419
    return v0

    .line 421
    :cond_9
    return v1
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 335
    iget-object v0, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 363
    iget-object v0, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 344
    iget-object v0, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 354
    iget-object v0, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 426
    const/4 v0, 0x1

    .line 427
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->key:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 428
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x25

    iget-object v2, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->lang:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    .line 429
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->name:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    .line 430
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public isOfCategoryAndType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .line 378
    iget-object v0, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->category:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->type:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 475
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->toXML()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toXML()Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 3

    .line 382
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>()V

    .line 383
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    const-string v1, "identity"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->halfOpenElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 384
    iget-object v1, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->lang:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->xmllangAttribute(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 385
    iget-object v1, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->category:Ljava/lang/String;

    const-string v2, "category"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 386
    iget-object v1, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->name:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 387
    iget-object v1, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;->type:Ljava/lang/String;

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 388
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 389
    return-object v0
.end method
