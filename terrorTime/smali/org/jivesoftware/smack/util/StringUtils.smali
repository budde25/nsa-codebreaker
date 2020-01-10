.class public Lorg/jivesoftware/smack/util/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/util/StringUtils$XmlEscapeMode;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final AMP_ENCODE:Ljava/lang/String; = "&amp;"

.field public static final APOS_ENCODE:Ljava/lang/String; = "&apos;"

.field public static final GT_ENCODE:Ljava/lang/String; = "&gt;"

.field public static final HEX_CHARS:[C

.field public static final LT_ENCODE:Ljava/lang/String; = "&lt;"

.field public static final MD5:Ljava/lang/String; = "MD5"

.field public static final QUOTE_ENCODE:Ljava/lang/String; = "&quot;"

.field private static final SECURE_RANDOM:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/security/SecureRandom;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHA1:Ljava/lang/String; = "SHA-1"

.field public static final USASCII:Ljava/lang/String; = "US-ASCII"

.field public static final UTF8:Ljava/lang/String; = "UTF-8"

.field private static final numbersAndLetters:[C

.field private static final randGen:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Random;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    nop

    .line 42
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/util/StringUtils;->HEX_CHARS:[C

    .line 261
    new-instance v0, Lorg/jivesoftware/smack/util/StringUtils$1;

    invoke-direct {v0}, Lorg/jivesoftware/smack/util/StringUtils$1;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/util/StringUtils;->randGen:Ljava/lang/ThreadLocal;

    .line 274
    nop

    .line 275
    const-string v0, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/util/StringUtils;->numbersAndLetters:[C

    .line 294
    new-instance v0, Lorg/jivesoftware/smack/util/StringUtils$2;

    invoke-direct {v0}, Lorg/jivesoftware/smack/util/StringUtils$2;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/util/StringUtils;->SECURE_RANDOM:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectionToString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 400
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Object;>;"
    const-string v0, " "

    invoke-static {p0, v0}, Lorg/jivesoftware/smack/util/StringUtils;->toStringBuilder(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .line 238
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 239
    .local v0, "hexChars":[C
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 240
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 241
    .local v2, "v":I
    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lorg/jivesoftware/smack/util/StringUtils;->HEX_CHARS:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v5, v4, v5

    aput-char v5, v0, v3

    .line 242
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v5, v2, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 239
    .end local v2    # "v":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    .end local v1    # "j":I
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static escapeForXml(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "input"    # Ljava/lang/CharSequence;

    .line 51
    sget-object v0, Lorg/jivesoftware/smack/util/StringUtils$XmlEscapeMode;->safe:Lorg/jivesoftware/smack/util/StringUtils$XmlEscapeMode;

    invoke-static {p0, v0}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXml(Ljava/lang/CharSequence;Lorg/jivesoftware/smack/util/StringUtils$XmlEscapeMode;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private static escapeForXml(Ljava/lang/CharSequence;Lorg/jivesoftware/smack/util/StringUtils$XmlEscapeMode;)Ljava/lang/CharSequence;
    .locals 12
    .param p0, "input"    # Ljava/lang/CharSequence;
    .param p1, "xmlEscapeMode"    # Lorg/jivesoftware/smack/util/StringUtils$XmlEscapeMode;

    .line 107
    if-nez p0, :cond_0

    .line 108
    const/4 v0, 0x0

    return-object v0

    .line 110
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 111
    .local v0, "len":I
    new-instance v1, Ljava/lang/StringBuilder;

    int-to-double v2, v0

    const-wide v4, 0x3ff4cccccccccccdL    # 1.3

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 114
    .local v1, "out":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 115
    .local v2, "last":I
    const/4 v3, 0x0

    .line 116
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_15

    .line 117
    const/4 v4, 0x0

    .line 118
    .local v4, "toAppend":Ljava/lang/CharSequence;
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 119
    .local v5, "ch":C
    sget-object v6, Lorg/jivesoftware/smack/util/StringUtils$3;->$SwitchMap$org$jivesoftware$smack$util$StringUtils$XmlEscapeMode:[I

    invoke-virtual {p1}, Lorg/jivesoftware/smack/util/StringUtils$XmlEscapeMode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/16 v7, 0x22

    const/16 v8, 0x27

    const/4 v9, 0x1

    const/16 v10, 0x26

    const/16 v11, 0x3c

    if-eq v6, v9, :cond_d

    const/4 v9, 0x2

    if-eq v6, v9, :cond_8

    const/4 v7, 0x3

    if-eq v6, v7, :cond_4

    const/4 v7, 0x4

    if-eq v6, v7, :cond_1

    goto :goto_1

    .line 178
    :cond_1
    if-eq v5, v10, :cond_3

    if-eq v5, v11, :cond_2

    goto :goto_1

    .line 180
    :cond_2
    const-string v4, "&lt;"

    .line 181
    goto :goto_1

    .line 183
    :cond_3
    const-string v4, "&amp;"

    .line 184
    goto :goto_1

    .line 162
    :cond_4
    if-eq v5, v10, :cond_7

    if-eq v5, v8, :cond_6

    if-eq v5, v11, :cond_5

    .line 173
    goto :goto_1

    .line 164
    :cond_5
    const-string v4, "&lt;"

    .line 165
    goto :goto_1

    .line 170
    :cond_6
    const-string v4, "&apos;"

    .line 171
    goto :goto_1

    .line 167
    :cond_7
    const-string v4, "&amp;"

    .line 168
    goto :goto_1

    .line 143
    :cond_8
    if-eq v5, v7, :cond_c

    if-eq v5, v11, :cond_b

    if-eq v5, v10, :cond_a

    if-eq v5, v8, :cond_9

    .line 157
    goto :goto_1

    .line 154
    :cond_9
    const-string v4, "&apos;"

    .line 155
    goto :goto_1

    .line 148
    :cond_a
    const-string v4, "&amp;"

    .line 149
    goto :goto_1

    .line 145
    :cond_b
    const-string v4, "&lt;"

    .line 146
    goto :goto_1

    .line 151
    :cond_c
    const-string v4, "&quot;"

    .line 152
    goto :goto_1

    .line 121
    :cond_d
    if-eq v5, v7, :cond_12

    if-eq v5, v11, :cond_11

    const/16 v6, 0x3e

    if-eq v5, v6, :cond_10

    if-eq v5, v10, :cond_f

    if-eq v5, v8, :cond_e

    .line 138
    goto :goto_1

    .line 135
    :cond_e
    const-string v4, "&apos;"

    .line 136
    goto :goto_1

    .line 129
    :cond_f
    const-string v4, "&amp;"

    .line 130
    goto :goto_1

    .line 126
    :cond_10
    const-string v4, "&gt;"

    .line 127
    goto :goto_1

    .line 123
    :cond_11
    const-string v4, "&lt;"

    .line 124
    goto :goto_1

    .line 132
    :cond_12
    const-string v4, "&quot;"

    .line 133
    nop

    .line 190
    :goto_1
    if-eqz v4, :cond_14

    .line 191
    if-le v3, v2, :cond_13

    .line 192
    invoke-virtual {v1, p0, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 194
    :cond_13
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 195
    add-int/lit8 v3, v3, 0x1

    move v2, v3

    goto :goto_0

    .line 197
    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 200
    .end local v4    # "toAppend":Ljava/lang/CharSequence;
    .end local v5    # "ch":C
    :cond_15
    if-nez v2, :cond_16

    .line 201
    return-object p0

    .line 203
    :cond_16
    if-le v3, v2, :cond_17

    .line 204
    invoke-virtual {v1, p0, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 206
    :cond_17
    return-object v1
.end method

.method public static escapeForXmlAttribute(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "input"    # Ljava/lang/CharSequence;

    .line 62
    sget-object v0, Lorg/jivesoftware/smack/util/StringUtils$XmlEscapeMode;->forAttribute:Lorg/jivesoftware/smack/util/StringUtils$XmlEscapeMode;

    invoke-static {p0, v0}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXml(Ljava/lang/CharSequence;Lorg/jivesoftware/smack/util/StringUtils$XmlEscapeMode;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static escapeForXmlAttributeApos(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "input"    # Ljava/lang/CharSequence;

    .line 77
    sget-object v0, Lorg/jivesoftware/smack/util/StringUtils$XmlEscapeMode;->forAttributeApos:Lorg/jivesoftware/smack/util/StringUtils$XmlEscapeMode;

    invoke-static {p0, v0}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXml(Ljava/lang/CharSequence;Lorg/jivesoftware/smack/util/StringUtils$XmlEscapeMode;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static escapeForXmlText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "input"    # Ljava/lang/CharSequence;

    .line 88
    sget-object v0, Lorg/jivesoftware/smack/util/StringUtils$XmlEscapeMode;->forText:Lorg/jivesoftware/smack/util/StringUtils$XmlEscapeMode;

    invoke-static {p0, v0}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXml(Ljava/lang/CharSequence;Lorg/jivesoftware/smack/util/StringUtils$XmlEscapeMode;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private static getPrintableChar(B)C
    .locals 3
    .param p0, "indexByte"    # B

    .line 320
    nop

    .line 324
    and-int/lit16 v0, p0, 0xff

    .line 325
    .local v0, "index":I
    sget-object v1, Lorg/jivesoftware/smack/util/StringUtils;->numbersAndLetters:[C

    array-length v2, v1

    rem-int v2, v0, v2

    aget-char v1, v1, v2

    return v1
.end method

.method public static declared-synchronized hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lorg/jivesoftware/smack/util/StringUtils;

    monitor-enter v0

    .line 228
    :try_start_0
    invoke-static {p0}, Lorg/jivesoftware/smack/util/SHA1;->hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .end local p0    # "data":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static insecureRandomString(I)Ljava/lang/String;
    .locals 1
    .param p0, "length"    # I

    .line 291
    sget-object v0, Lorg/jivesoftware/smack/util/StringUtils;->randGen:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Random;

    invoke-static {p0, v0}, Lorg/jivesoftware/smack/util/StringUtils;->randomString(ILjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 390
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNotEmpty(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 340
    invoke-static {p0}, Lorg/jivesoftware/smack/util/StringUtils;->isNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static varargs isNotEmpty([Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "css"    # [Ljava/lang/CharSequence;

    .line 360
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 361
    .local v3, "cs":Ljava/lang/CharSequence;
    invoke-static {v3}, Lorg/jivesoftware/smack/util/StringUtils;->isNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 362
    return v1

    .line 360
    .end local v3    # "cs":Ljava/lang/CharSequence;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 365
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static isNullOrEmpty(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 350
    if-eqz p0, :cond_1

    invoke-static {p0}, Lorg/jivesoftware/smack/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static varargs isNullOrEmpty([Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "css"    # [Ljava/lang/CharSequence;

    .line 375
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 376
    .local v3, "cs":Ljava/lang/CharSequence;
    invoke-static {v3}, Lorg/jivesoftware/smack/util/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 377
    return v1

    .line 375
    .end local v3    # "cs":Ljava/lang/CharSequence;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 380
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static maybeToString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 471
    if-nez p0, :cond_0

    .line 472
    const/4 v0, 0x0

    return-object v0

    .line 474
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static nullSafeCharSequenceComparator(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 4
    .param p0, "csOne"    # Ljava/lang/CharSequence;
    .param p1, "csTwo"    # Ljava/lang/CharSequence;

    .line 438
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-nez p1, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    xor-int/2addr v2, v3

    if-eqz v2, :cond_3

    .line 439
    if-nez p0, :cond_2

    const/4 v0, -0x1

    :cond_2
    return v0

    .line 441
    :cond_3
    if-nez p0, :cond_4

    if-nez p1, :cond_4

    .line 442
    return v1

    .line 444
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static nullSafeCharSequenceEquals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "csOne"    # Ljava/lang/CharSequence;
    .param p1, "csTwo"    # Ljava/lang/CharSequence;

    .line 434
    invoke-static {p0, p1}, Lorg/jivesoftware/smack/util/StringUtils;->nullSafeCharSequenceComparator(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static randomString(I)Ljava/lang/String;
    .locals 1
    .param p0, "length"    # I

    .line 302
    sget-object v0, Lorg/jivesoftware/smack/util/StringUtils;->SECURE_RANDOM:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Random;

    invoke-static {p0, v0}, Lorg/jivesoftware/smack/util/StringUtils;->randomString(ILjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static randomString(ILjava/util/Random;)Ljava/lang/String;
    .locals 4
    .param p0, "length"    # I
    .param p1, "random"    # Ljava/util/Random;

    .line 306
    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    .line 307
    const/4 v0, 0x0

    return-object v0

    .line 310
    :cond_0
    new-array v0, p0, [B

    .line 311
    .local v0, "randomBytes":[B
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 312
    new-array v1, p0, [C

    .line 313
    .local v1, "randomChars":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_1

    .line 314
    aget-byte v3, v0, v2

    invoke-static {v3}, Lorg/jivesoftware/smack/util/StringUtils;->getPrintableChar(B)C

    move-result v3

    aput-char v3, v1, v2

    .line 313
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 316
    .end local v2    # "i":I
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public static requireNotNullOrEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<CS::",
            "Ljava/lang/CharSequence;",
            ">(TCS;",
            "Ljava/lang/String;",
            ")TCS;"
        }
    .end annotation

    .line 448
    .local p0, "cs":Ljava/lang/CharSequence;, "TCS;"
    invoke-static {p0}, Lorg/jivesoftware/smack/util/StringUtils;->isNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    return-object p0

    .line 449
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static requireNullOrNotEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<CS::",
            "Ljava/lang/CharSequence;",
            ">(TCS;",
            "Ljava/lang/String;",
            ")TCS;"
        }
    .end annotation

    .line 455
    .local p0, "cs":Ljava/lang/CharSequence;, "TCS;"
    if-nez p0, :cond_0

    .line 456
    const/4 v0, 0x0

    return-object v0

    .line 458
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 461
    return-object p0

    .line 459
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static returnIfNotEmptyTrimmed(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .line 423
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 424
    return-object v0

    .line 425
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 426
    .local v1, "trimmedString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 427
    return-object v1

    .line 429
    :cond_1
    return-object v0
.end method

.method public static toStringBuilder(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 4
    .param p1, "delimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .line 411
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Object;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 412
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 413
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 414
    .local v2, "cs":Ljava/lang/Object;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 415
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 416
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .end local v2    # "cs":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 419
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/Object;>;"
    :cond_1
    return-object v0
.end method

.method public static toUtf8Bytes(Ljava/lang/String;)[B
    .locals 3
    .param p0, "string"    # Ljava/lang/String;

    .line 249
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "UTF-8 encoding not supported by platform"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
