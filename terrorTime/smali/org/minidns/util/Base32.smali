.class public final Lorg/minidns/util/Base32;
.super Ljava/lang/Object;
.source "Base32.java"


# static fields
.field private static final ALPHABET:Ljava/lang/String; = "0123456789ABCDEFGHIJKLMNOPQRSTUV"

.field private static final PADDING:Ljava/lang/String; = "======"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static encodeToString([B)Ljava/lang/String;
    .locals 14
    .param p0, "bytes"    # [B

    .line 27
    array-length v0, p0

    const/4 v1, 0x5

    rem-int/2addr v0, v1

    int-to-double v2, v0

    const-wide v4, 0x3ff999999999999aL    # 1.6

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    sub-double/2addr v4, v2

    double-to-int v0, v4

    rem-int/lit8 v0, v0, 0x8

    .line 28
    .local v0, "paddingCount":I
    array-length v2, p0

    add-int/2addr v2, v0

    new-array v2, v2, [B

    .line 29
    .local v2, "padded":[B
    array-length v3, p0

    const/4 v4, 0x0

    invoke-static {p0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, p0

    if-ge v5, v6, :cond_0

    .line 32
    aget-byte v6, v2, v5

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    add-int/lit8 v8, v5, 0x1

    aget-byte v8, v2, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    const/16 v10, 0x18

    shl-long/2addr v8, v10

    add-long/2addr v6, v8

    add-int/lit8 v8, v5, 0x2

    aget-byte v8, v2, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    int-to-long v8, v8

    add-long/2addr v6, v8

    add-int/lit8 v8, v5, 0x3

    aget-byte v8, v2, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    int-to-long v8, v8

    add-long/2addr v6, v8

    add-int/lit8 v8, v5, 0x4

    aget-byte v8, v2, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    add-long/2addr v6, v8

    .line 34
    .local v6, "j":J
    const/16 v8, 0x23

    shr-long v8, v6, v8

    const-wide/16 v10, 0x1f

    and-long/2addr v8, v10

    long-to-int v8, v8

    const-string v9, "0123456789ABCDEFGHIJKLMNOPQRSTUV"

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v8, 0x1e

    shr-long v12, v6, v8

    and-long/2addr v12, v10

    long-to-int v8, v12

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v8, 0x19

    shr-long v12, v6, v8

    and-long/2addr v12, v10

    long-to-int v8, v12

    .line 35
    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v8, 0x14

    shr-long v12, v6, v8

    and-long/2addr v12, v10

    long-to-int v8, v12

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v8, 0xf

    shr-long v12, v6, v8

    and-long/2addr v12, v10

    long-to-int v8, v12

    .line 36
    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v8, 0xa

    shr-long v12, v6, v8

    and-long/2addr v12, v10

    long-to-int v8, v12

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-long v12, v6, v1

    and-long/2addr v12, v10

    long-to-int v8, v12

    .line 37
    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-long/2addr v10, v6

    long-to-int v8, v10

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .end local v6    # "j":J
    add-int/lit8 v5, v5, 0x5

    goto/16 :goto_0

    .line 39
    .end local v5    # "i":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "======"

    invoke-virtual {v5, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
