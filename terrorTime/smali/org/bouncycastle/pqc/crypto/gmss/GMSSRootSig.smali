.class public Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;
.super Ljava/lang/Object;


# instance fields
.field private big8:J

.field private checksum:I

.field private counter:I

.field private gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

.field private hash:[B

.field private height:I

.field private ii:I

.field private k:I

.field private keysize:I

.field private mdsize:I

.field private messDigestOTS:Lorg/bouncycastle/crypto/Digest;

.field private messagesize:I

.field private privateKeyOTS:[B

.field private r:I

.field private seed:[B

.field private sign:[B

.field private steps:I

.field private test:I

.field private test8:J

.field private w:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    new-instance p1, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {p1, v0}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->height:I

    const/4 p1, 0x1

    shl-int p3, p1, p2

    sub-int/2addr p3, p1

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    shl-int/lit8 p1, p1, 0x3

    int-to-double v0, p1

    int-to-double p1, p2

    div-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messagesize:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;[[B[I)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    new-instance p1, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {p1, v0}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    const/4 p1, 0x0

    aget v0, p3, p1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    const/4 v0, 0x1

    aget v1, p3, v0

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    const/4 v1, 0x2

    aget v2, p3, v1

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    const/4 v2, 0x3

    aget v3, p3, v2

    iput v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->r:I

    const/4 v3, 0x4

    aget v4, p3, v3

    iput v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->steps:I

    const/4 v4, 0x5

    aget v5, p3, v4

    iput v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->keysize:I

    const/4 v5, 0x6

    aget v6, p3, v5

    iput v6, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->height:I

    const/4 v6, 0x7

    aget v7, p3, v6

    iput v7, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    const/16 v7, 0x8

    aget p3, p3, v7

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p3

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    shl-int v8, v0, p3

    sub-int/2addr v8, v0

    iput v8, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    shl-int/2addr v8, v2

    int-to-double v8, v8

    int-to-double v10, p3

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int p3, v8

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messagesize:I

    aget-object p3, p2, p1

    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    aget-object p3, p2, v0

    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->seed:[B

    aget-object p3, p2, v1

    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->hash:[B

    aget-object p3, p2, v2

    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->sign:[B

    aget-object p3, p2, v3

    aget-byte p1, p3, p1

    and-int/lit16 p1, p1, 0xff

    int-to-long v8, p1

    aget-object p1, p2, v3

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    int-to-long v10, p1

    shl-long/2addr v10, v7

    or-long/2addr v8, v10

    aget-object p1, p2, v3

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-long v0, p1

    const/16 p1, 0x10

    shl-long/2addr v0, p1

    or-long/2addr v0, v8

    aget-object p3, p2, v3

    aget-byte p3, p3, v2

    and-int/lit16 p3, p3, 0xff

    int-to-long v8, p3

    const/16 p3, 0x18

    shl-long/2addr v8, p3

    or-long/2addr v0, v8

    aget-object v2, p2, v3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v8, v2

    const/16 v2, 0x20

    shl-long/2addr v8, v2

    or-long/2addr v0, v8

    aget-object v8, p2, v3

    aget-byte v4, v8, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v8, v4

    const/16 v4, 0x28

    shl-long/2addr v8, v4

    or-long/2addr v0, v8

    aget-object v8, p2, v3

    aget-byte v5, v8, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v8, v5

    const/16 v5, 0x30

    shl-long/2addr v8, v5

    or-long/2addr v0, v8

    aget-object v8, p2, v3

    aget-byte v6, v8, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v8, v6

    const/16 v6, 0x38

    shl-long/2addr v8, v6

    or-long/2addr v0, v8

    iput-wide v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    aget-object v0, p2, v3

    aget-byte v0, v0, v7

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    aget-object v6, p2, v3

    const/16 v8, 0x9

    aget-byte v6, v6, v8

    and-int/lit16 v6, v6, 0xff

    int-to-long v8, v6

    shl-long v6, v8, v7

    or-long/2addr v0, v6

    aget-object v6, p2, v3

    const/16 v7, 0xa

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    shl-long/2addr v6, p1

    or-long/2addr v0, v6

    aget-object p1, p2, v3

    const/16 v6, 0xb

    aget-byte p1, p1, v6

    and-int/lit16 p1, p1, 0xff

    int-to-long v6, p1

    shl-long/2addr v6, p3

    or-long/2addr v0, v6

    aget-object p1, p2, v3

    const/16 p3, 0xc

    aget-byte p1, p1, p3

    and-int/lit16 p1, p1, 0xff

    int-to-long v6, p1

    shl-long/2addr v6, v2

    or-long/2addr v0, v6

    aget-object p1, p2, v3

    const/16 p3, 0xd

    aget-byte p1, p1, p3

    and-int/lit16 p1, p1, 0xff

    int-to-long v6, p1

    shl-long/2addr v6, v4

    or-long/2addr v0, v6

    aget-object p1, p2, v3

    const/16 p3, 0xe

    aget-byte p1, p1, p3

    and-int/lit16 p1, p1, 0xff

    int-to-long v6, p1

    shl-long v4, v6, v5

    or-long/2addr v0, v4

    aget-object p1, p2, v3

    const/16 p2, 0xf

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    int-to-long p1, p1

    const/16 p3, 0x38

    shl-long/2addr p1, p3

    or-long/2addr p1, v0

    iput-wide p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    return-void
.end method

.method private oneStep()V
    .locals 12

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    const/16 v1, 0x8

    rem-int v2, v1, v0

    const/4 v3, 0x0

    if-nez v2, :cond_3

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->seed:[B

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->hash:[B

    aget-byte v4, v2, v0

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    and-int/2addr v4, v5

    iput v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    aget-byte v4, v2, v0

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    ushr-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    and-int/2addr v2, v0

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    ushr-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    array-length v4, v2

    invoke-interface {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    invoke-interface {v0, v2, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    :cond_2
    :goto_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    if-nez v0, :cond_f

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->sign:[B

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    mul-int/2addr v4, v5

    invoke-static {v0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    div-int/2addr v1, v2

    rem-int/2addr v0, v1

    if-nez v0, :cond_f

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    goto/16 :goto_8

    :cond_3
    const-wide/16 v4, 0x0

    if-ge v0, v1, :cond_9

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    if-nez v1, :cond_7

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    rem-int/lit8 v2, v1, 0x8

    if-nez v2, :cond_5

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    if-ge v2, v6, :cond_5

    iput-wide v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    div-int/2addr v6, v0

    shl-int/lit8 v0, v6, 0x3

    if-ge v1, v0, :cond_4

    move v0, v3

    :goto_1
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    if-ge v0, v1, :cond_5

    iget-wide v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->hash:[B

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v6, v0, 0x3

    shl-int/2addr v4, v6

    int-to-long v6, v4

    xor-long/2addr v1, v6

    iput-wide v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v3

    :goto_2
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    rem-int/2addr v1, v2

    if-ge v0, v1, :cond_5

    iget-wide v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->hash:[B

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v6, v0, 0x3

    shl-int/2addr v4, v6

    int-to-long v6, v4

    xor-long/2addr v1, v6

    iput-wide v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messagesize:I

    if-ne v0, v1, :cond_6

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    :cond_6
    iget-wide v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    int-to-long v4, v2

    and-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->seed:[B

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    goto :goto_3

    :cond_7
    if-lez v1, :cond_8

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    array-length v2, v1

    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    invoke-interface {v0, v1, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    :cond_8
    :goto_3
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    if-nez v0, :cond_f

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->sign:[B

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    mul-int/2addr v2, v4

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    ushr-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    :goto_4
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    goto/16 :goto_8

    :cond_9
    const/16 v1, 0x39

    if-ge v0, v1, :cond_f

    iget-wide v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    cmp-long v6, v1, v4

    if-nez v6, :cond_d

    iput-wide v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    iput v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->r:I

    rem-int/lit8 v2, v1, 0x8

    ushr-int/lit8 v6, v1, 0x3

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    if-ge v6, v7, :cond_c

    shl-int/lit8 v8, v7, 0x3

    sub-int/2addr v8, v0

    if-gt v1, v8, :cond_a

    add-int/2addr v1, v0

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->r:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->r:I

    add-int/lit8 v0, v0, 0x7

    ushr-int/lit8 v7, v0, 0x3

    goto :goto_5

    :cond_a
    add-int/2addr v1, v0

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->r:I

    :goto_5
    iget-wide v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    if-ge v6, v7, :cond_b

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->hash:[B

    aget-byte v8, v8, v6

    and-int/lit16 v8, v8, 0xff

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    shl-int/lit8 v10, v9, 0x3

    shl-int/2addr v8, v10

    int-to-long v10, v8

    xor-long/2addr v0, v10

    iput-wide v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_b
    ushr-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    iget-wide v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    int-to-long v6, v2

    and-long/2addr v0, v6

    iput-wide v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    goto :goto_6

    :cond_c
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    and-int/2addr v2, v1

    int-to-long v6, v2

    iput-wide v6, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    ushr-int v0, v1, v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    :goto_6
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->seed:[B

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    goto :goto_7

    :cond_d
    cmp-long v0, v1, v4

    if-lez v0, :cond_e

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    array-length v2, v1

    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    invoke-interface {v0, v1, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-wide v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    const-wide/16 v6, 0x1

    sub-long/2addr v0, v6

    iput-wide v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    :cond_e
    :goto_7
    iget-wide v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_f

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->sign:[B

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    mul-int/2addr v2, v4

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_4

    :cond_f
    :goto_8
    return-void
.end method


# virtual methods
.method public getLog(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    :goto_0
    if-ge v1, p1, :cond_0

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getSig()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->sign:[B

    return-object v0
.end method

.method public getStatByte()[[B
    .locals 3

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    const/4 v1, 0x5

    filled-new-array {v1, v0}, [I

    move-result-object v0

    const-class v1, B

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->seed:[B

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->hash:[B

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->sign:[B

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->getStatLong()[B

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getStatInt()[I
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->r:I

    const/4 v2, 0x3

    aput v1, v0, v2

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->steps:I

    const/4 v2, 0x4

    aput v1, v0, v2

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->keysize:I

    const/4 v2, 0x5

    aput v1, v0, v2

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->height:I

    const/4 v2, 0x6

    aput v1, v0, v2

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    const/4 v2, 0x7

    aput v1, v0, v2

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    const/16 v2, 0x8

    aput v1, v0, v2

    return-object v0
.end method

.method public getStatLong()[B
    .locals 14

    const/16 v0, 0x10

    new-array v1, v0, [B

    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    const-wide/16 v4, 0xff

    and-long v6, v2, v4

    long-to-int v6, v6

    int-to-byte v6, v6

    const/4 v7, 0x0

    aput-byte v6, v1, v7

    const/16 v6, 0x8

    shr-long v7, v2, v6

    and-long/2addr v7, v4

    long-to-int v7, v7

    int-to-byte v7, v7

    const/4 v8, 0x1

    aput-byte v7, v1, v8

    shr-long v7, v2, v0

    and-long/2addr v7, v4

    long-to-int v7, v7

    int-to-byte v7, v7

    const/4 v8, 0x2

    aput-byte v7, v1, v8

    const/16 v7, 0x18

    shr-long v8, v2, v7

    and-long/2addr v8, v4

    long-to-int v8, v8

    int-to-byte v8, v8

    const/4 v9, 0x3

    aput-byte v8, v1, v9

    const/16 v8, 0x20

    shr-long v9, v2, v8

    and-long/2addr v9, v4

    long-to-int v9, v9

    int-to-byte v9, v9

    const/4 v10, 0x4

    aput-byte v9, v1, v10

    const/16 v9, 0x28

    shr-long v10, v2, v9

    and-long/2addr v10, v4

    long-to-int v10, v10

    int-to-byte v10, v10

    const/4 v11, 0x5

    aput-byte v10, v1, v11

    const/16 v10, 0x30

    shr-long v11, v2, v10

    and-long/2addr v11, v4

    long-to-int v11, v11

    int-to-byte v11, v11

    const/4 v12, 0x6

    aput-byte v11, v1, v12

    const/16 v11, 0x38

    shr-long/2addr v2, v11

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    const/4 v3, 0x7

    aput-byte v2, v1, v3

    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    and-long v12, v2, v4

    long-to-int v12, v12

    int-to-byte v12, v12

    aput-byte v12, v1, v6

    shr-long v12, v2, v6

    and-long/2addr v12, v4

    long-to-int v6, v12

    int-to-byte v6, v6

    const/16 v12, 0x9

    aput-byte v6, v1, v12

    shr-long v12, v2, v0

    and-long/2addr v12, v4

    long-to-int v0, v12

    int-to-byte v0, v0

    const/16 v6, 0xa

    aput-byte v0, v1, v6

    shr-long v6, v2, v7

    and-long/2addr v6, v4

    long-to-int v0, v6

    int-to-byte v0, v0

    const/16 v6, 0xb

    aput-byte v0, v1, v6

    shr-long v6, v2, v8

    and-long/2addr v6, v4

    long-to-int v0, v6

    int-to-byte v0, v0

    const/16 v6, 0xc

    aput-byte v0, v1, v6

    shr-long v6, v2, v9

    and-long/2addr v6, v4

    long-to-int v0, v6

    int-to-byte v0, v0

    const/16 v6, 0xd

    aput-byte v0, v1, v6

    shr-long v6, v2, v10

    and-long/2addr v6, v4

    long-to-int v0, v6

    int-to-byte v0, v0

    const/16 v6, 0xe

    aput-byte v0, v1, v6

    shr-long/2addr v2, v11

    and-long/2addr v2, v4

    long-to-int v0, v2

    int-to-byte v0, v0

    const/16 v2, 0xf

    aput-byte v0, v1, v2

    return-object v1
.end method

.method public initSign([B[B)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    new-array v2, v2, [B

    iput-object v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->hash:[B

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-interface {v2, v1, v4, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->hash:[B

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->hash:[B

    invoke-interface {v1, v2, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    new-array v2, v1, [B

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->hash:[B

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messagesize:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    shl-int/2addr v1, v3

    const/4 v3, 0x1

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->getLog(I)I

    move-result v1

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    const/16 v6, 0x8

    rem-int v7, v6, v5

    if-nez v7, :cond_2

    div-int/2addr v6, v5

    move v5, v4

    move v7, v5

    :goto_0
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    if-ge v5, v10, :cond_1

    move v10, v7

    move v7, v4

    :goto_1
    if-ge v7, v6, :cond_0

    aget-byte v11, v2, v5

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    and-int/2addr v11, v12

    add-int/2addr v10, v11

    aget-byte v11, v2, v5

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    ushr-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v2, v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    move v7, v10

    goto :goto_0

    :cond_1
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messagesize:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    shl-int/2addr v2, v5

    sub-int/2addr v2, v7

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    move v5, v2

    move v2, v4

    :goto_2
    if-ge v2, v1, :cond_f

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    and-int/2addr v6, v5

    add-int/2addr v7, v6

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    ushr-int/2addr v5, v6

    add-int/2addr v2, v6

    goto :goto_2

    :cond_2
    if-ge v5, v6, :cond_9

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    div-int/2addr v7, v5

    move v5, v4

    move v10, v5

    move v11, v10

    :goto_3
    if-ge v5, v7, :cond_5

    move v14, v10

    const-wide/16 v12, 0x0

    move v10, v4

    :goto_4
    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    if-ge v10, v15, :cond_3

    aget-byte v15, v2, v14

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v16, v10, 0x3

    shl-int v15, v15, v16

    int-to-long v8, v15

    xor-long/2addr v12, v8

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_3
    move v8, v4

    :goto_5
    if-ge v8, v6, :cond_4

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    int-to-long v9, v9

    and-long/2addr v9, v12

    long-to-int v9, v9

    add-int/2addr v11, v9

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    ushr-long/2addr v12, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v5, v5, 0x1

    move v10, v14

    goto :goto_3

    :cond_5
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    rem-int/2addr v5, v6

    move v6, v4

    const-wide/16 v7, 0x0

    :goto_6
    if-ge v6, v5, :cond_6

    aget-byte v9, v2, v10

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v12, v6, 0x3

    shl-int/2addr v9, v12

    int-to-long v12, v9

    xor-long/2addr v7, v12

    add-int/2addr v10, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_6
    shl-int/lit8 v2, v5, 0x3

    move v5, v4

    :goto_7
    if-ge v5, v2, :cond_7

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    int-to-long v9, v6

    and-long/2addr v9, v7

    long-to-int v6, v9

    add-int/2addr v11, v6

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    ushr-long/2addr v7, v6

    add-int/2addr v5, v6

    goto :goto_7

    :cond_7
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messagesize:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    shl-int/2addr v2, v5

    sub-int/2addr v2, v11

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    move v5, v2

    move v2, v4

    :goto_8
    if-ge v2, v1, :cond_8

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    and-int/2addr v6, v5

    add-int/2addr v11, v6

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    ushr-int/2addr v5, v6

    add-int/2addr v2, v6

    goto :goto_8

    :cond_8
    move v7, v11

    goto/16 :goto_d

    :cond_9
    const/16 v7, 0x39

    if-ge v5, v7, :cond_e

    move v5, v4

    move v7, v5

    :goto_9
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    shl-int/lit8 v9, v8, 0x3

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    sub-int/2addr v9, v10

    if-gt v5, v9, :cond_b

    ushr-int/lit8 v8, v5, 0x3

    rem-int/lit8 v9, v5, 0x8

    add-int/2addr v5, v10

    add-int/lit8 v10, v5, 0x7

    ushr-int/lit8 v10, v10, 0x3

    move v13, v4

    const-wide/16 v11, 0x0

    :goto_a
    if-ge v8, v10, :cond_a

    aget-byte v14, v2, v8

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v15, v13, 0x3

    shl-int/2addr v14, v15

    int-to-long v14, v14

    xor-long/2addr v11, v14

    add-int/2addr v13, v3

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_a
    ushr-long v8, v11, v9

    int-to-long v10, v7

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    int-to-long v12, v7

    and-long v7, v8, v12

    add-long/2addr v10, v7

    long-to-int v7, v10

    goto :goto_9

    :cond_b
    ushr-int/lit8 v9, v5, 0x3

    if-ge v9, v8, :cond_d

    rem-int/2addr v5, v6

    move v6, v4

    const-wide/16 v10, 0x0

    :goto_b
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    if-ge v9, v8, :cond_c

    aget-byte v8, v2, v9

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v12, v6, 0x3

    shl-int/2addr v8, v12

    int-to-long v12, v8

    xor-long/2addr v10, v12

    add-int/2addr v6, v3

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :cond_c
    ushr-long v5, v10, v5

    int-to-long v7, v7

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    int-to-long v9, v2

    and-long/2addr v5, v9

    add-long/2addr v7, v5

    long-to-int v7, v7

    :cond_d
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messagesize:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    shl-int/2addr v2, v5

    sub-int/2addr v2, v7

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->checksum:I

    move v5, v2

    move v2, v4

    :goto_c
    if-ge v2, v1, :cond_f

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->k:I

    and-int/2addr v6, v5

    add-int/2addr v7, v6

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    ushr-int/2addr v5, v6

    add-int/2addr v2, v6

    goto :goto_c

    :cond_e
    move v7, v4

    :cond_f
    :goto_d
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->messagesize:I

    int-to-double v5, v1

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->w:I

    int-to-double v8, v1

    div-double/2addr v5, v8

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v1, v5

    add-int/2addr v2, v1

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->keysize:I

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->keysize:I

    add-int/2addr v1, v7

    int-to-double v1, v1

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->height:I

    shl-int/2addr v3, v5

    int-to-double v5, v3

    div-double/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->steps:I

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->keysize:I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    mul-int/2addr v1, v2

    new-array v1, v1, [B

    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->sign:[B

    iput v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    iput v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test:I

    iput v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->ii:I

    const-wide/16 v5, 0x0

    iput-wide v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->test8:J

    iput v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->r:I

    new-array v1, v2, [B

    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->privateKeyOTS:[B

    new-array v1, v2, [B

    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->seed:[B

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->seed:[B

    move-object/from16 v3, p1

    invoke-static {v3, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->big8:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->mdsize:I

    const/4 v3, 0x5

    filled-new-array {v3, v2}, [I

    move-result-object v2

    const-class v4, B

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->getStatByte()[[B

    move-result-object v2

    const/4 v4, 0x0

    move-object v5, v0

    move v0, v4

    :goto_0
    const/16 v6, 0x9

    const-string v7, " "

    if-ge v0, v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v1, v0

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v4, v3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    aget-object v5, v2, v4

    invoke-static {v5}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    return-object v5
.end method

.method public updateSign()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->steps:I

    if-ge v1, v2, :cond_2

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->keysize:I

    if-ge v2, v3, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->oneStep()V

    :cond_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->counter:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->keysize:I

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method
