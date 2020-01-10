.class public Lorg/jivesoftware/smack/util/stringencoder/Base32;
.super Ljava/lang/Object;
.source "Base32.java"


# static fields
.field private static final ALPHABET:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZ2345678"

.field private static final base32Stringencoder:Lorg/jivesoftware/smack/util/stringencoder/StringEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lorg/jivesoftware/smack/util/stringencoder/Base32$1;

    invoke-direct {v0}, Lorg/jivesoftware/smack/util/stringencoder/Base32$1;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/util/stringencoder/Base32;->base32Stringencoder:Lorg/jivesoftware/smack/util/stringencoder/StringEncoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .param p0, "str"    # Ljava/lang/String;

    .line 57
    const-string v1, "UTF-8"

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v2, v0

    .line 60
    .local v2, "bs":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v3, p0

    :try_start_0
    invoke-virtual {v3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v4, v0

    .line 64
    .local v4, "raw":[B
    nop

    .line 65
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_1

    .line 66
    aget-byte v5, v4, v0

    int-to-char v5, v5

    .line 67
    .local v5, "c":C
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-nez v6, :cond_0

    .line 68
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    .line 69
    int-to-byte v6, v5

    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 65
    .end local v5    # "c":C
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    .end local v0    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    const/16 v5, 0x8

    rem-int/2addr v0, v5

    const/16 v6, 0x38

    if-eqz v0, :cond_2

    .line 74
    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 76
    :cond_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 78
    .local v7, "in":[B
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 79
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v8, v0

    .line 81
    .local v8, "ds":Ljava/io/DataOutputStream;
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_2
    array-length v0, v7

    div-int/2addr v0, v5

    if-ge v9, v0, :cond_8

    .line 82
    new-array v10, v5, [S

    .line 83
    .local v10, "s":[S
    const/4 v0, 0x5

    new-array v11, v0, [I

    .line 85
    .local v11, "t":[I
    const/16 v12, 0x8

    .line 86
    .local v12, "padlen":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_3
    const/4 v14, 0x0

    if-ge v13, v5, :cond_5

    .line 87
    mul-int/lit8 v15, v9, 0x8

    add-int/2addr v15, v13

    aget-byte v15, v7, v15

    int-to-char v15, v15

    .line 88
    .local v15, "c":C
    if-ne v15, v6, :cond_3

    .line 89
    goto :goto_4

    .line 90
    :cond_3
    mul-int/lit8 v16, v9, 0x8

    add-int v16, v16, v13

    aget-byte v5, v7, v16

    const-string v6, "ABCDEFGHIJKLMNOPQRSTUVWXYZ2345678"

    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    int-to-short v5, v5

    aput-short v5, v10, v13

    .line 91
    aget-short v5, v10, v13

    if-gez v5, :cond_4

    .line 92
    return-object v14

    .line 93
    :cond_4
    nop

    .end local v15    # "c":C
    add-int/lit8 v12, v12, -0x1

    .line 86
    add-int/lit8 v13, v13, 0x1

    const/16 v5, 0x8

    const/16 v6, 0x38

    goto :goto_3

    .line 95
    .end local v13    # "j":I
    :cond_5
    :goto_4
    invoke-static {v12}, Lorg/jivesoftware/smack/util/stringencoder/Base32;->paddingToLen(I)I

    move-result v5

    .line 96
    .local v5, "blocklen":I
    if-gez v5, :cond_6

    .line 97
    return-object v14

    .line 100
    :cond_6
    const/4 v6, 0x0

    aget-short v13, v10, v6

    const/4 v14, 0x3

    shl-int/2addr v13, v14

    const/4 v15, 0x1

    aget-short v17, v10, v15

    const/16 v18, 0x2

    shr-int/lit8 v17, v17, 0x2

    or-int v13, v13, v17

    aput v13, v11, v6

    .line 102
    aget-short v6, v10, v15

    and-int/2addr v6, v14

    const/4 v13, 0x6

    shl-int/2addr v6, v13

    aget-short v17, v10, v18

    shl-int/lit8 v17, v17, 0x1

    or-int v6, v6, v17

    aget-short v17, v10, v14

    const/16 v19, 0x4

    shr-int/lit8 v17, v17, 0x4

    or-int v6, v6, v17

    aput v6, v11, v15

    .line 104
    aget-short v6, v10, v14

    and-int/lit8 v6, v6, 0xf

    shl-int/lit8 v6, v6, 0x4

    aget-short v17, v10, v19

    shr-int/lit8 v15, v17, 0x1

    and-int/lit8 v15, v15, 0xf

    or-int/2addr v6, v15

    aput v6, v11, v18

    .line 106
    aget-short v6, v10, v19

    const/4 v15, 0x7

    shl-int/2addr v6, v15

    aget-short v17, v10, v0

    shl-int/lit8 v17, v17, 0x2

    or-int v6, v6, v17

    aget-short v17, v10, v13

    shr-int/lit8 v17, v17, 0x3

    or-int v6, v6, v17

    aput v6, v11, v14

    .line 108
    aget-short v6, v10, v13

    and-int/2addr v6, v15

    shl-int/lit8 v0, v6, 0x5

    aget-short v6, v10, v15

    or-int/2addr v0, v6

    aput v0, v11, v19

    .line 111
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_5
    if-ge v0, v5, :cond_7

    .line 112
    :try_start_1
    aget v6, v11, v0

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    invoke-virtual {v8, v6}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 113
    .end local v0    # "j":I
    :catch_0
    move-exception v0

    goto :goto_6

    .line 114
    :cond_7
    nop

    .line 81
    .end local v5    # "blocklen":I
    .end local v10    # "s":[S
    .end local v11    # "t":[I
    .end local v12    # "padlen":I
    :goto_6
    add-int/lit8 v9, v9, 0x1

    const/16 v5, 0x8

    const/16 v6, 0x38

    goto/16 :goto_2

    .line 119
    .end local v9    # "i":I
    :cond_8
    :try_start_2
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v0, v5, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 123
    .local v0, "res":Ljava/lang/String;
    nop

    .line 124
    return-object v0

    .line 121
    .end local v0    # "res":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 122
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 62
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v4    # "raw":[B
    .end local v7    # "in":[B
    .end local v8    # "ds":Ljava/io/DataOutputStream;
    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 63
    .restart local v0    # "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .param p0, "str"    # Ljava/lang/String;

    .line 130
    const-string v0, "UTF-8"

    move-object/from16 v1, p0

    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 134
    .local v2, "b":[B
    nop

    .line 135
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 137
    .local v3, "os":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    const/4 v6, 0x4

    add-int/2addr v5, v6

    const/4 v7, 0x5

    div-int/2addr v5, v7

    if-ge v4, v5, :cond_3

    .line 138
    new-array v5, v7, [S

    .line 139
    .local v5, "s":[S
    const/16 v8, 0x8

    new-array v8, v8, [I

    .line 141
    .local v8, "t":[I
    const/4 v9, 0x5

    .line 142
    .local v9, "blocklen":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    const/4 v11, 0x0

    if-ge v10, v7, :cond_1

    .line 143
    mul-int/lit8 v12, v4, 0x5

    add-int/2addr v12, v10

    array-length v13, v2

    if-ge v12, v13, :cond_0

    .line 144
    mul-int/lit8 v11, v4, 0x5

    add-int/2addr v11, v10

    aget-byte v11, v2, v11

    and-int/lit16 v11, v11, 0xff

    int-to-short v11, v11

    aput-short v11, v5, v10

    goto :goto_2

    .line 146
    :cond_0
    aput-short v11, v5, v10

    .line 147
    add-int/lit8 v9, v9, -0x1

    .line 142
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 150
    .end local v10    # "j":I
    :cond_1
    invoke-static {v9}, Lorg/jivesoftware/smack/util/stringencoder/Base32;->lenToPadding(I)I

    move-result v10

    .line 155
    .local v10, "padlen":I
    aget-short v12, v5, v11

    const/4 v13, 0x3

    shr-int/2addr v12, v13

    and-int/lit8 v12, v12, 0x1f

    int-to-byte v12, v12

    aput v12, v8, v11

    .line 157
    aget-short v11, v5, v11

    const/4 v12, 0x7

    and-int/2addr v11, v12

    const/4 v14, 0x2

    shl-int/2addr v11, v14

    const/4 v15, 0x1

    aget-short v16, v5, v15

    const/16 v17, 0x6

    shr-int/lit8 v16, v16, 0x6

    and-int/lit8 v16, v16, 0x3

    or-int v11, v11, v16

    int-to-byte v11, v11

    aput v11, v8, v15

    .line 159
    aget-short v11, v5, v15

    shr-int/2addr v11, v15

    and-int/lit8 v11, v11, 0x1f

    int-to-byte v11, v11

    aput v11, v8, v14

    .line 161
    aget-short v11, v5, v15

    and-int/2addr v11, v15

    shl-int/2addr v11, v6

    aget-short v16, v5, v14

    shr-int/lit8 v16, v16, 0x4

    and-int/lit8 v16, v16, 0xf

    or-int v11, v11, v16

    int-to-byte v11, v11

    aput v11, v8, v13

    .line 163
    aget-short v11, v5, v14

    and-int/lit8 v11, v11, 0xf

    shl-int/2addr v11, v15

    aget-short v16, v5, v13

    shr-int/lit8 v16, v16, 0x7

    and-int/lit8 v15, v16, 0x1

    or-int/2addr v11, v15

    int-to-byte v11, v11

    aput v11, v8, v6

    .line 165
    aget-short v11, v5, v13

    shr-int/2addr v11, v14

    and-int/lit8 v11, v11, 0x1f

    int-to-byte v11, v11

    aput v11, v8, v7

    .line 167
    aget-short v11, v5, v13

    and-int/2addr v11, v13

    shl-int/2addr v11, v13

    aget-short v13, v5, v6

    shr-int/lit8 v7, v13, 0x5

    and-int/2addr v7, v12

    or-int/2addr v7, v11

    int-to-byte v7, v7

    aput v7, v8, v17

    .line 169
    aget-short v6, v5, v6

    and-int/lit8 v6, v6, 0x1f

    int-to-byte v6, v6

    aput v6, v8, v12

    .line 172
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_3
    array-length v7, v8

    sub-int/2addr v7, v10

    if-ge v6, v7, :cond_2

    .line 173
    aget v7, v8, v6

    const-string v11, "ABCDEFGHIJKLMNOPQRSTUVWXYZ2345678"

    invoke-virtual {v11, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 174
    .local v7, "c":C
    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 172
    .end local v7    # "c":C
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 137
    .end local v5    # "s":[S
    .end local v6    # "j":I
    .end local v8    # "t":[I
    .end local v9    # "blocklen":I
    .end local v10    # "padlen":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 179
    .end local v4    # "i":I
    :cond_3
    :try_start_1
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v4

    .line 183
    .local v0, "res":Ljava/lang/String;
    nop

    .line 184
    return-object v0

    .line 181
    .end local v0    # "res":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 132
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v2    # "b":[B
    .end local v3    # "os":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 133
    .restart local v0    # "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public static getStringEncoder()Lorg/jivesoftware/smack/util/stringencoder/StringEncoder;
    .locals 1

    .line 53
    sget-object v0, Lorg/jivesoftware/smack/util/stringencoder/Base32;->base32Stringencoder:Lorg/jivesoftware/smack/util/stringencoder/StringEncoder;

    return-object v0
.end method

.method private static lenToPadding(I)I
    .locals 3
    .param p0, "blocklen"    # I

    .line 188
    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v1, 0x2

    const/4 v2, 0x4

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    if-eq p0, v2, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 200
    const/4 v0, -0x1

    return v0

    .line 198
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 196
    :cond_1
    return v0

    .line 194
    :cond_2
    return v1

    .line 192
    :cond_3
    return v2

    .line 190
    :cond_4
    const/4 v0, 0x6

    return v0
.end method

.method private static paddingToLen(I)I
    .locals 3
    .param p0, "padlen"    # I

    .line 205
    if-eqz p0, :cond_4

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v2, 0x3

    if-eq p0, v2, :cond_2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    .line 217
    const/4 v0, -0x1

    return v0

    .line 207
    :cond_0
    return v1

    .line 209
    :cond_1
    const/4 v0, 0x2

    return v0

    .line 211
    :cond_2
    return v2

    .line 213
    :cond_3
    return v0

    .line 215
    :cond_4
    const/4 v0, 0x5

    return v0
.end method
