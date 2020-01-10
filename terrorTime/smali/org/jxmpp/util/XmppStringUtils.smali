.class public Lorg/jxmpp/util/XmppStringUtils;
.super Ljava/lang/Object;
.source "XmppStringUtils.java"


# static fields
.field private static final LOCALPART_ESACPE_CACHE:Lorg/jxmpp/util/cache/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jxmpp/util/cache/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOCALPART_UNESCAPE_CACHE:Lorg/jxmpp/util/cache/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jxmpp/util/cache/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 165
    new-instance v0, Lorg/jxmpp/util/cache/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lorg/jxmpp/util/cache/LruCache;-><init>(I)V

    sput-object v0, Lorg/jxmpp/util/XmppStringUtils;->LOCALPART_ESACPE_CACHE:Lorg/jxmpp/util/cache/LruCache;

    .line 166
    new-instance v0, Lorg/jxmpp/util/cache/LruCache;

    invoke-direct {v0, v1}, Lorg/jxmpp/util/cache/LruCache;-><init>(I)V

    sput-object v0, Lorg/jxmpp/util/XmppStringUtils;->LOCALPART_UNESCAPE_CACHE:Lorg/jxmpp/util/cache/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static completeJidFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .param p0, "localpart"    # Ljava/lang/CharSequence;
    .param p1, "domainpart"    # Ljava/lang/CharSequence;

    .line 379
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jxmpp/util/XmppStringUtils;->completeJidFrom(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static completeJidFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3
    .param p0, "localpart"    # Ljava/lang/CharSequence;
    .param p1, "domainpart"    # Ljava/lang/CharSequence;
    .param p2, "resource"    # Ljava/lang/CharSequence;

    .line 402
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 403
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 402
    :cond_1
    invoke-static {v1, v2, v0}, Lorg/jxmpp/util/XmppStringUtils;->completeJidFrom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static completeJidFrom(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "localpart"    # Ljava/lang/String;
    .param p1, "domainpart"    # Ljava/lang/String;

    .line 390
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/jxmpp/util/XmppStringUtils;->completeJidFrom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static completeJidFrom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "localpart"    # Ljava/lang/String;
    .param p1, "domainpart"    # Ljava/lang/String;
    .param p2, "resource"    # Ljava/lang/String;

    .line 415
    if-eqz p1, :cond_4

    .line 418
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 419
    .local v1, "localpartLength":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 420
    .local v2, "domainpartLength":I
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 421
    .local v0, "resourceLength":I
    :cond_1
    add-int v3, v1, v2

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x2

    .line 422
    .local v3, "maxResLength":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 423
    .local v4, "sb":Ljava/lang/StringBuilder;
    if-lez v1, :cond_2

    .line 424
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x40

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 426
    :cond_2
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    if-lez v0, :cond_3

    .line 428
    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 416
    .end local v0    # "resourceLength":I
    .end local v1    # "localpartLength":I
    .end local v2    # "domainpartLength":I
    .end local v3    # "maxResLength":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "domainpart must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static escapeLocalpart(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "localpart"    # Ljava/lang/String;

    .line 203
    if-nez p0, :cond_0

    .line 204
    const/4 v0, 0x0

    return-object v0

    .line 206
    :cond_0
    sget-object v0, Lorg/jxmpp/util/XmppStringUtils;->LOCALPART_ESACPE_CACHE:Lorg/jxmpp/util/cache/LruCache;

    invoke-virtual {v0, p0}, Lorg/jxmpp/util/cache/LruCache;->lookup(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 207
    .local v0, "res":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 208
    return-object v0

    .line 210
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 211
    .local v1, "buf":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_c

    .line 212
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 213
    .local v4, "c":C
    const/16 v5, 0x22

    if-eq v4, v5, :cond_b

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_a

    const/16 v5, 0x3a

    if-eq v4, v5, :cond_9

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_8

    const/16 v5, 0x3e

    if-eq v4, v5, :cond_7

    const/16 v5, 0x40

    if-eq v4, v5, :cond_6

    const/16 v5, 0x5c

    if-eq v4, v5, :cond_5

    const/16 v5, 0x26

    if-eq v4, v5, :cond_4

    const/16 v5, 0x27

    if-eq v4, v5, :cond_3

    .line 242
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 243
    const-string v5, "\\20"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 245
    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 221
    :cond_3
    const-string v5, "\\27"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    goto :goto_1

    .line 218
    :cond_4
    const-string v5, "\\26"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    goto :goto_1

    .line 239
    :cond_5
    const-string v5, "\\5c"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    goto :goto_1

    .line 236
    :cond_6
    const-string v5, "\\40"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    goto :goto_1

    .line 233
    :cond_7
    const-string v5, "\\3e"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    goto :goto_1

    .line 230
    :cond_8
    const-string v5, "\\3c"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    goto :goto_1

    .line 227
    :cond_9
    const-string v5, "\\3a"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    goto :goto_1

    .line 224
    :cond_a
    const-string v5, "\\2f"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    goto :goto_1

    .line 215
    :cond_b
    const-string v5, "\\22"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    nop

    .line 211
    .end local v4    # "c":C
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 250
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    sget-object v2, Lorg/jxmpp/util/XmppStringUtils;->LOCALPART_ESACPE_CACHE:Lorg/jxmpp/util/cache/LruCache;

    invoke-virtual {v2, p0, v0}, Lorg/jxmpp/util/cache/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    return-object v0
.end method

.method public static generateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "element"    # Ljava/lang/String;
    .param p1, "namespace"    # Ljava/lang/String;

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isBareJid(Ljava/lang/String;)Z
    .locals 1
    .param p0, "jid"    # Ljava/lang/String;

    .line 160
    invoke-static {p0}, Lorg/jxmpp/util/XmppStringUtils;->parseLocalpart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 161
    invoke-static {p0}, Lorg/jxmpp/util/XmppStringUtils;->parseDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 162
    invoke-static {p0}, Lorg/jxmpp/util/XmppStringUtils;->parseResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 160
    :goto_0
    return v0
.end method

.method public static isFullJID(Ljava/lang/String;)Z
    .locals 1
    .param p0, "jid"    # Ljava/lang/String;

    .line 140
    invoke-static {p0}, Lorg/jxmpp/util/XmppStringUtils;->parseLocalpart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {p0}, Lorg/jxmpp/util/XmppStringUtils;->parseDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 141
    invoke-static {p0}, Lorg/jxmpp/util/XmppStringUtils;->parseResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 142
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static parseBareAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "jid"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 110
    invoke-static {p0}, Lorg/jxmpp/util/XmppStringUtils;->parseBareJid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseBareJid(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "jid"    # Ljava/lang/String;

    .line 123
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 124
    .local v0, "slashIndex":I
    if-gez v0, :cond_0

    .line 125
    return-object p0

    .line 126
    :cond_0
    if-nez v0, :cond_1

    .line 127
    const-string v1, ""

    return-object v1

    .line 129
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static parseDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "jid"    # Ljava/lang/String;

    .line 60
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 62
    :cond_0
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 63
    .local v0, "atIndex":I
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 64
    .local v1, "slashIndex":I
    if-lez v1, :cond_2

    .line 66
    if-le v1, v0, :cond_1

    .line 67
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 70
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 73
    :cond_2
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static parseLocalpart(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "jid"    # Ljava/lang/String;

    .line 36
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 38
    :cond_0
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 39
    .local v0, "atIndex":I
    const-string v1, ""

    if-gtz v0, :cond_1

    .line 40
    return-object v1

    .line 42
    :cond_1
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 43
    .local v2, "slashIndex":I
    if-ltz v2, :cond_2

    if-ge v2, v0, :cond_2

    .line 44
    return-object v1

    .line 46
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static parseResource(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "jid"    # Ljava/lang/String;

    .line 88
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 90
    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 91
    .local v0, "slashIndex":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_2

    if-gez v0, :cond_1

    goto :goto_0

    .line 94
    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 92
    :cond_2
    :goto_0
    const-string v1, ""

    return-object v1
.end method

.method public static unescapeLocalpart(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "localpart"    # Ljava/lang/String;

    .line 291
    if-nez p0, :cond_0

    .line 292
    const/4 v0, 0x0

    return-object v0

    .line 294
    :cond_0
    sget-object v0, Lorg/jxmpp/util/XmppStringUtils;->LOCALPART_UNESCAPE_CACHE:Lorg/jxmpp/util/cache/LruCache;

    invoke-virtual {v0, p0}, Lorg/jxmpp/util/cache/LruCache;->lookup(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 295
    .local v0, "res":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 296
    return-object v0

    .line 298
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 299
    .local v1, "localpartChars":[C
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 300
    .local v2, "buf":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, v1

    .local v4, "n":I
    :goto_0
    if-ge v3, v4, :cond_b

    .line 302
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 303
    .local v5, "c":C
    const/16 v6, 0x5c

    if-ne v5, v6, :cond_a

    add-int/lit8 v6, v3, 0x2

    if-ge v6, v4, :cond_a

    .line 304
    add-int/lit8 v6, v3, 0x1

    aget-char v6, v1, v6

    .line 305
    .local v6, "c2":C
    add-int/lit8 v7, v3, 0x2

    aget-char v7, v1, v7

    .line 306
    .local v7, "c3":C
    const/16 v8, 0x63

    const/16 v9, 0x30

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_1

    .line 355
    :pswitch_0
    if-ne v7, v8, :cond_a

    .line 356
    const-string v8, "\\"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    add-int/lit8 v3, v3, 0x2

    .line 358
    goto/16 :goto_2

    .line 348
    :pswitch_1
    if-ne v7, v9, :cond_a

    .line 349
    const-string v8, "@"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    add-int/lit8 v3, v3, 0x2

    .line 351
    goto/16 :goto_2

    .line 332
    :pswitch_2
    const/16 v9, 0x61

    if-eq v7, v9, :cond_4

    if-eq v7, v8, :cond_3

    const/16 v8, 0x65

    if-eq v7, v8, :cond_2

    .line 346
    goto :goto_1

    .line 342
    :cond_2
    const/16 v8, 0x3e

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 343
    add-int/lit8 v3, v3, 0x2

    .line 344
    goto :goto_2

    .line 338
    :cond_3
    const/16 v8, 0x3c

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 339
    add-int/lit8 v3, v3, 0x2

    .line 340
    goto :goto_2

    .line 334
    :cond_4
    const/16 v8, 0x3a

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 335
    add-int/lit8 v3, v3, 0x2

    .line 336
    goto :goto_2

    .line 308
    :pswitch_3
    if-eq v7, v9, :cond_9

    const/16 v8, 0x32

    if-eq v7, v8, :cond_8

    const/16 v8, 0x66

    if-eq v7, v8, :cond_7

    const/16 v8, 0x36

    if-eq v7, v8, :cond_6

    const/16 v8, 0x37

    if-eq v7, v8, :cond_5

    .line 330
    goto :goto_1

    .line 322
    :cond_5
    const/16 v8, 0x27

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 323
    add-int/lit8 v3, v3, 0x2

    .line 324
    goto :goto_2

    .line 318
    :cond_6
    const/16 v8, 0x26

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 319
    add-int/lit8 v3, v3, 0x2

    .line 320
    goto :goto_2

    .line 326
    :cond_7
    const/16 v8, 0x2f

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 327
    add-int/lit8 v3, v3, 0x2

    .line 328
    goto :goto_2

    .line 314
    :cond_8
    const/16 v8, 0x22

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 315
    add-int/lit8 v3, v3, 0x2

    .line 316
    goto :goto_2

    .line 310
    :cond_9
    const/16 v8, 0x20

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 311
    add-int/lit8 v3, v3, 0x2

    .line 312
    goto :goto_2

    .line 363
    .end local v6    # "c2":C
    .end local v7    # "c3":C
    :cond_a
    :goto_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 300
    .end local v5    # "c":C
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 366
    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 367
    sget-object v3, Lorg/jxmpp/util/XmppStringUtils;->LOCALPART_UNESCAPE_CACHE:Lorg/jxmpp/util/cache/LruCache;

    invoke-virtual {v3, p0, v0}, Lorg/jxmpp/util/cache/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
