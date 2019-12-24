.class public Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;
.super Ljava/lang/Object;
.source "StreamInitiation.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/ExtensionElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/si/packet/StreamInitiation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "File"
.end annotation


# instance fields
.field private date:Ljava/util/Date;

.field private desc:Ljava/lang/String;

.field private hash:Ljava/lang/String;

.field private isRanged:Z

.field private final name:Ljava/lang/String;

.field private final size:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # J

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    if-eqz p1, :cond_0

    .line 222
    iput-object p1, p0, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;->name:Ljava/lang/String;

    .line 223
    iput-wide p2, p0, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;->size:J

    .line 224
    return-void

    .line 219
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .line 277
    iget-object v0, p0, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 296
    iget-object v0, p0, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 321
    const-string v0, "file"

    return-object v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    .line 259
    iget-object v0, p0, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 326
    const-string v0, "http://jabber.org/protocol/si/profile/file-transfer"

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 241
    iget-wide v0, p0, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;->size:J

    return-wide v0
.end method

.method public isRanged()Z
    .locals 1

    .line 316
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;->isRanged:Z

    return v0
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .line 268
    iput-object p1, p0, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;->date:Ljava/util/Date;

    .line 269
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .line 287
    iput-object p1, p0, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;->desc:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public setHash(Ljava/lang/String;)V
    .locals 0
    .param p1, "hash"    # Ljava/lang/String;

    .line 250
    iput-object p1, p0, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;->hash:Ljava/lang/String;

    .line 251
    return-void
.end method

.method public setRanged(Z)V
    .locals 0
    .param p1, "isRanged"    # Z

    .line 305
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;->isRanged:Z

    .line 306
    return-void
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 197
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;->toXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " xmlns=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 337
    const-string v2, "name=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXmlAttribute(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;->getSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 341
    const-string v2, "size=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;->getSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;->getDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 345
    const-string v2, "date=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;->date:Ljava/util/Date;

    invoke-static {v2}, Lorg/jxmpp/util/XmppDateTime;->formatXEP0082Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    :cond_2
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;->getHash()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 349
    const-string v2, "hash=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    :cond_3
    iget-object v1, p0, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;->desc:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_5

    :cond_4
    iget-boolean v1, p0, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;->isRanged:Z

    if-eqz v1, :cond_8

    .line 353
    :cond_5
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;->getDesc()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;->desc:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 355
    const-string v2, "<desc>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXmlText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v2, "</desc>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    :cond_6
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;->isRanged()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 358
    const-string v2, "<range/>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    :cond_7
    const-string v2, "</"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 363
    :cond_8
    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
