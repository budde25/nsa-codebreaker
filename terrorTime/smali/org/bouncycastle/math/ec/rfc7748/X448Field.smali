.class public abstract Lorg/bouncycastle/math/ec/rfc7748/X448Field;
.super Ljava/lang/Object;


# static fields
.field private static final M28:I = 0xfffffff

.field public static final SIZE:I = 0x10


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add([I[I[I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    aget v1, p0, v0

    aget v2, p1, v0

    add-int/2addr v1, v2

    aput v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static addOne([I)V
    .locals 2

    const/4 v0, 0x0

    aget v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p0, v0

    return-void
.end method

.method public static addOne([II)V
    .locals 1

    aget v0, p0, p1

    add-int/lit8 v0, v0, 0x1

    aput v0, p0, p1

    return-void
.end method

.method public static carry([I)V
    .locals 31

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    const/4 v4, 0x2

    aget v5, p0, v4

    const/4 v6, 0x3

    aget v7, p0, v6

    const/4 v8, 0x4

    aget v9, p0, v8

    const/4 v10, 0x5

    aget v11, p0, v10

    const/4 v12, 0x6

    aget v13, p0, v12

    const/4 v14, 0x7

    aget v15, p0, v14

    const/16 v16, 0x8

    aget v17, p0, v16

    const/16 v18, 0x9

    aget v19, p0, v18

    const/16 v20, 0xa

    aget v21, p0, v20

    const/16 v22, 0xb

    aget v23, p0, v22

    const/16 v24, 0xc

    aget v25, p0, v24

    const/16 v26, 0xd

    aget v26, p0, v26

    const/16 v27, 0xe

    aget v27, p0, v27

    const/16 v28, 0xf

    aget v28, p0, v28

    ushr-int/lit8 v29, v3, 0x1c

    add-int v5, v5, v29

    const v29, 0xfffffff

    and-int v3, v3, v29

    ushr-int/lit8 v30, v11, 0x1c

    add-int v13, v13, v30

    and-int v11, v11, v29

    ushr-int/lit8 v30, v19, 0x1c

    add-int v21, v21, v30

    and-int v19, v19, v29

    ushr-int/lit8 v30, v26, 0x1c

    add-int v27, v27, v30

    and-int v26, v26, v29

    ushr-int/lit8 v30, v5, 0x1c

    add-int v7, v7, v30

    and-int v5, v5, v29

    ushr-int/lit8 v30, v13, 0x1c

    add-int v15, v15, v30

    and-int v13, v13, v29

    ushr-int/lit8 v30, v21, 0x1c

    add-int v23, v23, v30

    and-int v21, v21, v29

    ushr-int/lit8 v30, v27, 0x1c

    add-int v28, v28, v30

    and-int v27, v27, v29

    ushr-int/lit8 v30, v28, 0x1c

    and-int v28, v28, v29

    add-int v1, v1, v30

    add-int v17, v17, v30

    ushr-int/lit8 v30, v7, 0x1c

    add-int v9, v9, v30

    and-int v7, v7, v29

    ushr-int/lit8 v30, v15, 0x1c

    add-int v17, v17, v30

    and-int v15, v15, v29

    ushr-int/lit8 v30, v23, 0x1c

    add-int v25, v25, v30

    and-int v23, v23, v29

    ushr-int/lit8 v30, v1, 0x1c

    add-int v3, v3, v30

    and-int v1, v1, v29

    ushr-int/lit8 v30, v9, 0x1c

    add-int v11, v11, v30

    and-int v9, v9, v29

    ushr-int/lit8 v30, v17, 0x1c

    add-int v19, v19, v30

    and-int v17, v17, v29

    ushr-int/lit8 v30, v25, 0x1c

    add-int v26, v26, v30

    and-int v25, v25, v29

    aput v1, p0, v0

    aput v3, p0, v2

    aput v5, p0, v4

    aput v7, p0, v6

    aput v9, p0, v8

    aput v11, p0, v10

    aput v13, p0, v12

    aput v15, p0, v14

    aput v17, p0, v16

    aput v19, p0, v18

    aput v21, p0, v20

    aput v23, p0, v22

    aput v25, p0, v24

    const/16 v0, 0xd

    aput v26, p0, v0

    const/16 v0, 0xe

    aput v27, p0, v0

    const/16 v0, 0xf

    aput v28, p0, v0

    return-void
.end method

.method public static cnegate(I[I)V
    .locals 6

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v2

    invoke-static {v2, p1, v2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sub([I[I[I)V

    const/16 v0, 0x10

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v1, p0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/raw/Nat;->cmov(II[II[II)V

    return-void
.end method

.method public static copy([II[II)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    add-int v1, p3, v0

    add-int v2, p1, v0

    aget v2, p0, v2

    aput v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static create()[I
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [I

    return-object v0
.end method

.method public static createTable(I)[I
    .locals 0

    mul-int/lit8 p0, p0, 0x10

    new-array p0, p0, [I

    return-object p0
.end method

.method public static cswap(I[I[I)V
    .locals 4

    const/4 v0, 0x0

    rsub-int/lit8 p0, p0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    aget v1, p1, v0

    aget v2, p2, v0

    xor-int v3, v1, v2

    and-int/2addr v3, p0

    xor-int/2addr v1, v3

    aput v1, p1, v0

    xor-int v1, v2, v3

    aput v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static decode([BI[I)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    add-int/lit8 v0, p1, 0x7

    const/4 v1, 0x2

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    add-int/lit8 v0, p1, 0xe

    const/4 v1, 0x4

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    add-int/lit8 v0, p1, 0x15

    const/4 v1, 0x6

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    add-int/lit8 v0, p1, 0x1c

    const/16 v1, 0x8

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    add-int/lit8 v0, p1, 0x23

    const/16 v1, 0xa

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    add-int/lit8 v0, p1, 0x2a

    const/16 v1, 0xc

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    add-int/lit8 p1, p1, 0x31

    const/16 v0, 0xe

    invoke-static {p0, p1, p2, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    return-void
.end method

.method private static decode24([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, v0

    return p0
.end method

.method private static decode32([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method private static decode56([BI[II)V
    .locals 1

    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode32([BI)I

    move-result v0

    add-int/lit8 p1, p1, 0x4

    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode24([BI)I

    move-result p0

    const p1, 0xfffffff

    and-int/2addr p1, v0

    aput p1, p2, p3

    add-int/lit8 p3, p3, 0x1

    ushr-int/lit8 p1, v0, 0x1c

    shl-int/lit8 p0, p0, 0x4

    or-int/2addr p0, p1

    aput p0, p2, p3

    return-void
.end method

.method public static encode([I[BI)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    add-int/lit8 v0, p2, 0x7

    const/4 v1, 0x2

    invoke-static {p0, v1, p1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    add-int/lit8 v0, p2, 0xe

    const/4 v1, 0x4

    invoke-static {p0, v1, p1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    add-int/lit8 v0, p2, 0x15

    const/4 v1, 0x6

    invoke-static {p0, v1, p1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    add-int/lit8 v0, p2, 0x1c

    const/16 v1, 0x8

    invoke-static {p0, v1, p1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    add-int/lit8 v0, p2, 0x23

    const/16 v1, 0xa

    invoke-static {p0, v1, p1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    add-int/lit8 v0, p2, 0x2a

    const/16 v1, 0xc

    invoke-static {p0, v1, p1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    add-int/lit8 p2, p2, 0x31

    const/16 v0, 0xe

    invoke-static {p0, v0, p1, p2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    return-void
.end method

.method private static encode24(I[BI)V
    .locals 1

    int-to-byte v0, p0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 p0, p0, 0x10

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return-void
.end method

.method private static encode32(I[BI)V
    .locals 1

    int-to-byte v0, p0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 p0, p0, 0x18

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return-void
.end method

.method private static encode56([II[BI)V
    .locals 1

    aget v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    aget p0, p0, p1

    shl-int/lit8 p1, p0, 0x1c

    or-int/2addr p1, v0

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode32(I[BI)V

    ushr-int/lit8 p0, p0, 0x4

    add-int/lit8 p3, p3, 0x4

    invoke-static {p0, p2, p3}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode24(I[BI)V

    return-void
.end method

.method public static inv([I[I)V
    .locals 2

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->powPm3d4([I[I)V

    const/4 v1, 0x2

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([II[I)V

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    return-void
.end method

.method public static isZeroVar([I)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/16 v3, 0x10

    if-ge v1, v3, :cond_0

    aget v3, p0, v1

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static mul([II[I)V
    .locals 33

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    const/4 v4, 0x2

    aget v5, p0, v4

    const/4 v6, 0x3

    aget v7, p0, v6

    const/4 v8, 0x4

    aget v9, p0, v8

    const/4 v10, 0x5

    aget v11, p0, v10

    const/4 v12, 0x6

    aget v13, p0, v12

    const/4 v14, 0x7

    aget v15, p0, v14

    const/16 v16, 0x8

    aget v10, p0, v16

    const/16 v17, 0x9

    aget v2, p0, v17

    const/16 v18, 0xa

    aget v0, p0, v18

    const/16 v19, 0xb

    aget v8, p0, v19

    const/16 v20, 0xc

    aget v14, p0, v20

    const/16 v21, 0xd

    aget v6, p0, v21

    const/16 v21, 0xe

    aget v12, p0, v21

    const/16 v21, 0xf

    aget v4, p0, v21

    move/from16 v21, v9

    move/from16 v22, v10

    int-to-long v9, v3

    move/from16 v3, p1

    move/from16 p0, v4

    int-to-long v3, v3

    mul-long/2addr v9, v3

    move/from16 v23, v1

    long-to-int v1, v9

    const v24, 0xfffffff

    and-int v1, v1, v24

    const/16 v25, 0x1c

    ushr-long v9, v9, v25

    move/from16 v27, v14

    move/from16 v26, v15

    int-to-long v14, v11

    mul-long/2addr v14, v3

    long-to-int v11, v14

    and-int v11, v11, v24

    ushr-long v14, v14, v25

    move/from16 p1, v1

    int-to-long v1, v2

    mul-long/2addr v1, v3

    move/from16 v28, v11

    long-to-int v11, v1

    and-int v11, v11, v24

    ushr-long v1, v1, v25

    move/from16 v29, v7

    int-to-long v6, v6

    mul-long/2addr v6, v3

    move/from16 v30, v11

    long-to-int v11, v6

    and-int v11, v11, v24

    ushr-long v6, v6, v25

    move-wide/from16 v31, v6

    int-to-long v5, v5

    mul-long/2addr v5, v3

    add-long/2addr v9, v5

    long-to-int v5, v9

    and-int v5, v5, v24

    const/4 v6, 0x2

    aput v5, p2, v6

    ushr-long v5, v9, v25

    int-to-long v9, v13

    mul-long/2addr v9, v3

    add-long/2addr v14, v9

    long-to-int v7, v14

    and-int v7, v7, v24

    const/4 v9, 0x6

    aput v7, p2, v9

    ushr-long v9, v14, v25

    int-to-long v13, v0

    mul-long/2addr v13, v3

    add-long/2addr v1, v13

    long-to-int v0, v1

    and-int v0, v0, v24

    aput v0, p2, v18

    ushr-long v0, v1, v25

    int-to-long v12, v12

    mul-long/2addr v12, v3

    add-long v12, v31, v12

    long-to-int v2, v12

    and-int v2, v2, v24

    const/16 v7, 0xe

    aput v2, p2, v7

    ushr-long v12, v12, v25

    move/from16 v2, v29

    int-to-long v14, v2

    mul-long/2addr v14, v3

    add-long/2addr v5, v14

    long-to-int v2, v5

    and-int v2, v2, v24

    const/4 v7, 0x3

    aput v2, p2, v7

    ushr-long v5, v5, v25

    move/from16 v2, v26

    int-to-long v14, v2

    mul-long/2addr v14, v3

    add-long/2addr v9, v14

    long-to-int v2, v9

    and-int v2, v2, v24

    const/4 v7, 0x7

    aput v2, p2, v7

    ushr-long v9, v9, v25

    int-to-long v7, v8

    mul-long/2addr v7, v3

    add-long/2addr v0, v7

    long-to-int v2, v0

    and-int v2, v2, v24

    aput v2, p2, v19

    ushr-long v0, v0, v25

    move/from16 v2, p0

    int-to-long v7, v2

    mul-long/2addr v7, v3

    add-long/2addr v12, v7

    long-to-int v2, v12

    and-int v2, v2, v24

    const/16 v7, 0xf

    aput v2, p2, v7

    ushr-long v7, v12, v25

    add-long/2addr v9, v7

    move/from16 v2, v21

    int-to-long v12, v2

    mul-long/2addr v12, v3

    add-long/2addr v5, v12

    long-to-int v2, v5

    and-int v2, v2, v24

    const/4 v12, 0x4

    aput v2, p2, v12

    ushr-long v5, v5, v25

    move/from16 v2, v22

    int-to-long v12, v2

    mul-long/2addr v12, v3

    add-long/2addr v9, v12

    long-to-int v2, v9

    and-int v2, v2, v24

    aput v2, p2, v16

    ushr-long v9, v9, v25

    move/from16 v2, v27

    int-to-long v12, v2

    mul-long/2addr v12, v3

    add-long/2addr v0, v12

    long-to-int v2, v0

    and-int v2, v2, v24

    aput v2, p2, v20

    ushr-long v0, v0, v25

    move/from16 v2, v23

    int-to-long v12, v2

    mul-long/2addr v12, v3

    add-long/2addr v7, v12

    long-to-int v2, v7

    and-int v2, v2, v24

    const/4 v3, 0x0

    aput v2, p2, v3

    ushr-long v2, v7, v25

    long-to-int v2, v2

    add-int v2, p1, v2

    const/4 v3, 0x1

    aput v2, p2, v3

    long-to-int v2, v5

    add-int v2, v28, v2

    const/4 v3, 0x5

    aput v2, p2, v3

    long-to-int v2, v9

    add-int v2, v30, v2

    aput v2, p2, v17

    long-to-int v0, v0

    add-int/2addr v11, v0

    const/16 v0, 0xd

    aput v11, p2, v0

    return-void
.end method

.method public static mul([I[I[I)V
    .locals 136

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    const/4 v4, 0x2

    aget v5, p0, v4

    const/4 v6, 0x3

    aget v7, p0, v6

    const/4 v8, 0x4

    aget v9, p0, v8

    const/4 v10, 0x5

    aget v11, p0, v10

    const/4 v12, 0x6

    aget v13, p0, v12

    const/4 v14, 0x7

    aget v15, p0, v14

    const/16 v16, 0x8

    aget v14, p0, v16

    const/16 v18, 0x9

    aget v12, p0, v18

    const/16 v20, 0xa

    aget v10, p0, v20

    const/16 v22, 0xb

    aget v8, p0, v22

    const/16 v24, 0xc

    aget v6, p0, v24

    const/16 v26, 0xd

    aget v4, p0, v26

    const/16 v26, 0xe

    aget v2, p0, v26

    const/16 v26, 0xf

    move/from16 v27, v15

    aget v15, p0, v26

    move/from16 p0, v15

    aget v15, p1, v0

    const/16 v26, 0x1

    aget v0, p1, v26

    move/from16 v28, v0

    const/16 v26, 0x2

    aget v0, p1, v26

    move/from16 v26, v0

    const/16 v25, 0x3

    aget v0, p1, v25

    move/from16 v29, v0

    const/16 v23, 0x4

    aget v0, p1, v23

    move/from16 v30, v0

    const/16 v21, 0x5

    aget v0, p1, v21

    move/from16 v31, v0

    const/16 v19, 0x6

    aget v0, p1, v19

    move/from16 v32, v0

    const/16 v17, 0x7

    aget v0, p1, v17

    move/from16 v33, v0

    aget v0, p1, v16

    move/from16 v34, v0

    aget v0, p1, v18

    move/from16 v35, v0

    aget v0, p1, v20

    move/from16 v36, v0

    aget v0, p1, v22

    move/from16 v37, v0

    aget v0, p1, v24

    const/16 v38, 0xd

    move/from16 v39, v0

    aget v0, p1, v38

    const/16 v38, 0xe

    move/from16 v40, v0

    aget v0, p1, v38

    const/16 v38, 0xf

    move/from16 v41, v0

    aget v0, p1, v38

    move/from16 p1, v0

    add-int v0, v1, v14

    move/from16 v38, v0

    add-int v0, v3, v12

    move/from16 v42, v0

    add-int v0, v5, v10

    move/from16 v43, v0

    add-int v0, v7, v8

    move/from16 v44, v0

    add-int v0, v9, v6

    move/from16 v45, v0

    add-int v0, v11, v4

    move/from16 v46, v0

    add-int v0, v13, v2

    move/from16 v47, v0

    add-int v0, v27, p0

    move/from16 v48, v0

    add-int v0, v15, v34

    move/from16 v49, v0

    add-int v0, v28, v35

    move/from16 v50, v0

    add-int v0, v26, v36

    move/from16 v51, v0

    add-int v0, v29, v37

    move/from16 v52, v0

    add-int v0, v30, v39

    move/from16 v53, v0

    add-int v0, v31, v40

    move/from16 v54, v0

    add-int v0, v32, v41

    move/from16 v55, v0

    add-int v0, v33, p1

    move/from16 v56, v0

    int-to-long v0, v1

    move/from16 v57, v14

    int-to-long v14, v15

    mul-long v58, v0, v14

    move-wide/from16 v60, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v62, v14

    move/from16 v14, v28

    int-to-long v14, v14

    mul-long v64, v0, v14

    move-wide/from16 v66, v0

    int-to-long v0, v13

    move-wide/from16 v68, v14

    move/from16 v13, v26

    int-to-long v13, v13

    mul-long v70, v0, v13

    add-long v64, v64, v70

    move-wide/from16 v70, v0

    int-to-long v0, v11

    move/from16 v11, v29

    move-wide/from16 v28, v13

    int-to-long v13, v11

    mul-long v72, v0, v13

    add-long v64, v64, v72

    move-wide/from16 v72, v0

    int-to-long v0, v9

    move-wide/from16 v74, v13

    move/from16 v9, v30

    int-to-long v13, v9

    mul-long v76, v0, v13

    add-long v64, v64, v76

    move-wide/from16 v76, v0

    int-to-long v0, v7

    move/from16 v7, v31

    move-wide/from16 v30, v13

    int-to-long v13, v7

    mul-long v78, v0, v13

    add-long v64, v64, v78

    move-wide/from16 v78, v0

    int-to-long v0, v5

    move-wide/from16 v80, v13

    move/from16 v5, v32

    int-to-long v13, v5

    mul-long v82, v0, v13

    add-long v64, v64, v82

    move-wide/from16 v82, v0

    int-to-long v0, v3

    move/from16 v3, v33

    move-wide/from16 v32, v13

    int-to-long v13, v3

    mul-long v84, v0, v13

    add-long v64, v64, v84

    move-wide/from16 v84, v13

    move/from16 v3, v57

    int-to-long v13, v3

    move-wide/from16 v86, v0

    move/from16 v3, v34

    int-to-long v0, v3

    mul-long v88, v13, v0

    move/from16 v3, p0

    move-wide/from16 v90, v13

    int-to-long v13, v3

    move/from16 v3, v35

    move-wide/from16 v34, v0

    int-to-long v0, v3

    mul-long v92, v13, v0

    int-to-long v2, v2

    move-wide/from16 v94, v13

    move/from16 v5, v36

    int-to-long v13, v5

    mul-long v96, v2, v13

    add-long v92, v92, v96

    int-to-long v4, v4

    move/from16 v7, v37

    move-wide/from16 v36, v2

    int-to-long v2, v7

    mul-long v96, v4, v2

    add-long v92, v92, v96

    int-to-long v6, v6

    move-wide/from16 v96, v4

    move/from16 v9, v39

    int-to-long v4, v9

    mul-long v98, v6, v4

    add-long v92, v92, v98

    int-to-long v8, v8

    move/from16 v11, v40

    move-wide/from16 v39, v6

    int-to-long v6, v11

    mul-long v98, v8, v6

    add-long v92, v92, v98

    int-to-long v10, v10

    move-wide/from16 v98, v8

    move/from16 v15, v41

    int-to-long v8, v15

    mul-long v100, v10, v8

    add-long v92, v92, v100

    move-wide/from16 v100, v10

    int-to-long v10, v12

    move/from16 v12, p1

    move-wide/from16 p0, v8

    int-to-long v8, v12

    mul-long v102, v10, v8

    add-long v92, v92, v102

    move-wide/from16 v102, v8

    move/from16 v12, v38

    int-to-long v8, v12

    move-wide/from16 v104, v6

    move/from16 v15, v49

    int-to-long v6, v15

    mul-long v106, v8, v6

    move/from16 v15, v48

    move-wide/from16 v48, v8

    int-to-long v8, v15

    move-wide/from16 v108, v6

    move/from16 v12, v50

    int-to-long v6, v12

    mul-long v110, v8, v6

    move-wide/from16 v112, v8

    move/from16 v12, v47

    int-to-long v8, v12

    move/from16 v12, v51

    move-wide/from16 v50, v6

    int-to-long v6, v12

    mul-long v114, v8, v6

    add-long v110, v110, v114

    move/from16 v12, v46

    move-wide/from16 v46, v8

    int-to-long v8, v12

    move-wide/from16 v114, v6

    move/from16 v12, v52

    int-to-long v6, v12

    mul-long v116, v8, v6

    add-long v110, v110, v116

    move-wide/from16 v116, v8

    move/from16 v12, v45

    int-to-long v8, v12

    move/from16 v12, v53

    move-wide/from16 v52, v6

    int-to-long v6, v12

    mul-long v118, v8, v6

    add-long v110, v110, v118

    move/from16 v12, v44

    move-wide/from16 v44, v8

    int-to-long v8, v12

    move-wide/from16 v118, v6

    move/from16 v12, v54

    int-to-long v6, v12

    mul-long v120, v8, v6

    add-long v110, v110, v120

    move-wide/from16 v120, v8

    move/from16 v12, v43

    int-to-long v8, v12

    move/from16 v12, v55

    move-wide/from16 v54, v6

    int-to-long v6, v12

    mul-long v122, v8, v6

    add-long v110, v110, v122

    move/from16 v12, v42

    move-wide/from16 v41, v8

    int-to-long v8, v12

    move/from16 v12, v56

    move-wide/from16 v56, v6

    int-to-long v6, v12

    mul-long v122, v8, v6

    add-long v110, v110, v122

    add-long v88, v58, v88

    add-long v88, v88, v110

    move-wide/from16 v122, v6

    sub-long v6, v88, v64

    long-to-int v12, v6

    const v15, 0xfffffff

    and-int/2addr v12, v15

    const/16 v26, 0x1c

    ushr-long v6, v6, v26

    add-long v92, v92, v106

    sub-long v92, v92, v58

    move-wide/from16 v58, v6

    add-long v6, v92, v110

    move/from16 v27, v12

    long-to-int v12, v6

    and-int/2addr v12, v15

    ushr-long v6, v6, v26

    mul-long v64, v86, v62

    mul-long v88, v60, v68

    add-long v64, v64, v88

    mul-long v88, v66, v28

    mul-long v92, v70, v74

    add-long v88, v88, v92

    mul-long v92, v72, v30

    add-long v88, v88, v92

    mul-long v92, v76, v80

    add-long v88, v88, v92

    mul-long v92, v78, v32

    add-long v88, v88, v92

    mul-long v92, v82, v84

    add-long v88, v88, v92

    mul-long v92, v10, v34

    mul-long v106, v90, v0

    add-long v92, v92, v106

    mul-long v106, v94, v13

    mul-long v110, v36, v2

    add-long v106, v106, v110

    mul-long v110, v96, v4

    add-long v106, v106, v110

    mul-long v110, v39, v104

    add-long v106, v106, v110

    mul-long v110, v98, p0

    add-long v106, v106, v110

    mul-long v110, v100, v102

    add-long v106, v106, v110

    mul-long v110, v8, v108

    mul-long v124, v48, v50

    add-long v110, v110, v124

    mul-long v124, v112, v114

    mul-long v126, v46, v52

    add-long v124, v124, v126

    mul-long v126, v116, v118

    add-long v124, v124, v126

    mul-long v126, v44, v54

    add-long v124, v124, v126

    mul-long v126, v120, v56

    add-long v124, v124, v126

    mul-long v126, v41, v122

    add-long v124, v124, v126

    add-long v92, v64, v92

    add-long v92, v92, v124

    sub-long v92, v92, v88

    move-wide/from16 v88, v8

    add-long v8, v58, v92

    move/from16 v38, v12

    long-to-int v12, v8

    and-int/2addr v12, v15

    ushr-long v8, v8, v26

    add-long v106, v106, v110

    sub-long v106, v106, v64

    add-long v106, v106, v124

    add-long v6, v6, v106

    move/from16 v43, v12

    long-to-int v12, v6

    and-int/2addr v12, v15

    ushr-long v6, v6, v26

    mul-long v58, v82, v62

    mul-long v64, v86, v68

    add-long v58, v58, v64

    mul-long v64, v60, v28

    add-long v58, v58, v64

    mul-long v64, v66, v74

    mul-long v92, v70, v30

    add-long v64, v64, v92

    mul-long v92, v72, v80

    add-long v64, v64, v92

    mul-long v92, v76, v32

    add-long v64, v64, v92

    mul-long v92, v78, v84

    add-long v64, v64, v92

    mul-long v92, v100, v34

    mul-long v106, v10, v0

    add-long v92, v92, v106

    mul-long v106, v90, v13

    add-long v92, v92, v106

    mul-long v106, v94, v2

    mul-long v110, v36, v4

    add-long v106, v106, v110

    mul-long v110, v96, v104

    add-long v106, v106, v110

    mul-long v110, v39, p0

    add-long v106, v106, v110

    mul-long v110, v98, v102

    add-long v106, v106, v110

    mul-long v110, v41, v108

    mul-long v124, v88, v50

    add-long v110, v110, v124

    mul-long v124, v48, v114

    add-long v110, v110, v124

    mul-long v124, v112, v52

    mul-long v126, v46, v118

    add-long v124, v124, v126

    mul-long v126, v116, v54

    add-long v124, v124, v126

    mul-long v126, v44, v56

    add-long v124, v124, v126

    mul-long v126, v120, v122

    add-long v124, v124, v126

    add-long v92, v58, v92

    add-long v92, v92, v124

    sub-long v92, v92, v64

    add-long v8, v8, v92

    move/from16 v64, v12

    long-to-int v12, v8

    and-int/2addr v12, v15

    ushr-long v8, v8, v26

    add-long v106, v106, v110

    sub-long v106, v106, v58

    add-long v106, v106, v124

    add-long v6, v6, v106

    move/from16 v58, v12

    long-to-int v12, v6

    and-int/2addr v12, v15

    ushr-long v6, v6, v26

    mul-long v92, v78, v62

    mul-long v106, v82, v68

    add-long v92, v92, v106

    mul-long v106, v86, v28

    add-long v92, v92, v106

    mul-long v106, v60, v74

    add-long v92, v92, v106

    mul-long v106, v66, v30

    mul-long v110, v70, v80

    add-long v106, v106, v110

    mul-long v110, v72, v32

    add-long v106, v106, v110

    mul-long v110, v76, v84

    add-long v106, v106, v110

    mul-long v110, v98, v34

    mul-long v124, v100, v0

    add-long v110, v110, v124

    mul-long v124, v10, v13

    add-long v110, v110, v124

    mul-long v124, v90, v2

    add-long v110, v110, v124

    mul-long v124, v94, v4

    mul-long v126, v36, v104

    add-long v124, v124, v126

    mul-long v126, v96, p0

    add-long v124, v124, v126

    mul-long v126, v39, v102

    add-long v124, v124, v126

    mul-long v126, v120, v108

    mul-long v128, v41, v50

    add-long v126, v126, v128

    mul-long v128, v88, v114

    add-long v126, v126, v128

    mul-long v128, v48, v52

    add-long v126, v126, v128

    mul-long v128, v112, v118

    mul-long v130, v46, v54

    add-long v128, v128, v130

    mul-long v130, v116, v56

    add-long v128, v128, v130

    mul-long v130, v44, v122

    add-long v128, v128, v130

    add-long v110, v92, v110

    add-long v110, v110, v128

    sub-long v110, v110, v106

    add-long v8, v8, v110

    move/from16 v59, v12

    long-to-int v12, v8

    and-int/2addr v12, v15

    ushr-long v8, v8, v26

    add-long v124, v124, v126

    sub-long v124, v124, v92

    add-long v124, v124, v128

    add-long v6, v6, v124

    move/from16 v65, v12

    long-to-int v12, v6

    and-int/2addr v12, v15

    ushr-long v6, v6, v26

    mul-long v92, v76, v62

    mul-long v106, v78, v68

    add-long v92, v92, v106

    mul-long v106, v82, v28

    add-long v92, v92, v106

    mul-long v106, v86, v74

    add-long v92, v92, v106

    mul-long v106, v60, v30

    add-long v92, v92, v106

    mul-long v106, v66, v80

    mul-long v110, v70, v32

    add-long v106, v106, v110

    mul-long v110, v72, v84

    add-long v106, v106, v110

    mul-long v110, v39, v34

    mul-long v124, v98, v0

    add-long v110, v110, v124

    mul-long v124, v100, v13

    add-long v110, v110, v124

    mul-long v124, v10, v2

    add-long v110, v110, v124

    mul-long v124, v90, v4

    add-long v110, v110, v124

    mul-long v124, v94, v104

    mul-long v126, v36, p0

    add-long v124, v124, v126

    mul-long v126, v96, v102

    add-long v124, v124, v126

    mul-long v126, v44, v108

    mul-long v128, v120, v50

    add-long v126, v126, v128

    mul-long v128, v41, v114

    add-long v126, v126, v128

    mul-long v128, v88, v52

    add-long v126, v126, v128

    mul-long v128, v48, v118

    add-long v126, v126, v128

    mul-long v128, v112, v54

    mul-long v130, v46, v56

    add-long v128, v128, v130

    mul-long v130, v116, v122

    add-long v128, v128, v130

    add-long v110, v92, v110

    add-long v110, v110, v128

    sub-long v110, v110, v106

    add-long v8, v8, v110

    move/from16 v106, v12

    long-to-int v12, v8

    and-int/2addr v12, v15

    ushr-long v8, v8, v26

    add-long v124, v124, v126

    sub-long v124, v124, v92

    add-long v124, v124, v128

    add-long v6, v6, v124

    move/from16 v92, v12

    long-to-int v12, v6

    and-int/2addr v12, v15

    ushr-long v6, v6, v26

    mul-long v110, v72, v62

    mul-long v124, v76, v68

    add-long v110, v110, v124

    mul-long v124, v78, v28

    add-long v110, v110, v124

    mul-long v124, v82, v74

    add-long v110, v110, v124

    mul-long v124, v86, v30

    add-long v110, v110, v124

    mul-long v124, v60, v80

    add-long v110, v110, v124

    mul-long v124, v66, v32

    mul-long v126, v70, v84

    add-long v124, v124, v126

    mul-long v126, v96, v34

    mul-long v128, v39, v0

    add-long v126, v126, v128

    mul-long v128, v98, v13

    add-long v126, v126, v128

    mul-long v128, v100, v2

    add-long v126, v126, v128

    mul-long v128, v10, v4

    add-long v126, v126, v128

    mul-long v128, v90, v104

    add-long v126, v126, v128

    mul-long v128, v94, p0

    mul-long v130, v36, v102

    add-long v128, v128, v130

    mul-long v130, v116, v108

    mul-long v132, v44, v50

    add-long v130, v130, v132

    mul-long v132, v120, v114

    add-long v130, v130, v132

    mul-long v132, v41, v52

    add-long v130, v130, v132

    mul-long v132, v88, v118

    add-long v130, v130, v132

    mul-long v132, v48, v54

    add-long v130, v130, v132

    mul-long v132, v112, v56

    mul-long v134, v46, v122

    add-long v132, v132, v134

    add-long v126, v110, v126

    add-long v126, v126, v132

    sub-long v126, v126, v124

    add-long v8, v8, v126

    move/from16 v93, v12

    long-to-int v12, v8

    and-int/2addr v12, v15

    ushr-long v8, v8, v26

    add-long v128, v128, v130

    sub-long v128, v128, v110

    add-long v128, v128, v132

    add-long v6, v6, v128

    move/from16 v107, v12

    long-to-int v12, v6

    and-int/2addr v12, v15

    ushr-long v6, v6, v26

    mul-long v110, v70, v62

    mul-long v124, v72, v68

    add-long v110, v110, v124

    mul-long v124, v76, v28

    add-long v110, v110, v124

    mul-long v124, v78, v74

    add-long v110, v110, v124

    mul-long v124, v82, v30

    add-long v110, v110, v124

    mul-long v124, v86, v80

    add-long v110, v110, v124

    mul-long v124, v60, v32

    add-long v110, v110, v124

    mul-long v124, v66, v84

    mul-long v126, v36, v34

    mul-long v128, v96, v0

    add-long v126, v126, v128

    mul-long v128, v39, v13

    add-long v126, v126, v128

    mul-long v128, v98, v2

    add-long v126, v126, v128

    mul-long v128, v100, v4

    add-long v126, v126, v128

    mul-long v128, v10, v104

    add-long v126, v126, v128

    mul-long v128, v90, p0

    add-long v126, v126, v128

    mul-long v128, v94, v102

    mul-long v130, v46, v108

    mul-long v132, v116, v50

    add-long v130, v130, v132

    mul-long v132, v44, v114

    add-long v130, v130, v132

    mul-long v132, v120, v52

    add-long v130, v130, v132

    mul-long v132, v41, v118

    add-long v130, v130, v132

    mul-long v132, v88, v54

    add-long v130, v130, v132

    mul-long v132, v48, v56

    add-long v130, v130, v132

    mul-long v132, v112, v122

    add-long v126, v110, v126

    add-long v126, v126, v132

    sub-long v126, v126, v124

    add-long v8, v8, v126

    move/from16 v124, v12

    long-to-int v12, v8

    and-int/2addr v12, v15

    ushr-long v8, v8, v26

    add-long v128, v128, v130

    sub-long v128, v128, v110

    add-long v128, v128, v132

    add-long v6, v6, v128

    move/from16 v110, v12

    long-to-int v12, v6

    and-int/2addr v12, v15

    ushr-long v6, v6, v26

    mul-long v62, v62, v66

    mul-long v66, v70, v68

    add-long v62, v62, v66

    mul-long v28, v28, v72

    add-long v62, v62, v28

    mul-long v28, v76, v74

    add-long v62, v62, v28

    mul-long v28, v78, v30

    add-long v62, v62, v28

    mul-long v28, v82, v80

    add-long v62, v62, v28

    mul-long v28, v86, v32

    add-long v62, v62, v28

    mul-long v28, v60, v84

    add-long v62, v62, v28

    mul-long v28, v94, v34

    mul-long v0, v0, v36

    add-long v28, v28, v0

    mul-long v0, v96, v13

    add-long v28, v28, v0

    mul-long v0, v39, v2

    add-long v28, v28, v0

    mul-long v0, v98, v4

    add-long v28, v28, v0

    mul-long v0, v100, v104

    add-long v28, v28, v0

    mul-long v10, v10, p0

    add-long v28, v28, v10

    mul-long v13, v90, v102

    add-long v28, v28, v13

    mul-long v0, v112, v108

    mul-long v2, v46, v50

    add-long/2addr v0, v2

    mul-long v2, v116, v114

    add-long/2addr v0, v2

    mul-long v2, v44, v52

    add-long/2addr v0, v2

    mul-long v2, v120, v118

    add-long/2addr v0, v2

    mul-long v2, v41, v54

    add-long/2addr v0, v2

    mul-long v2, v88, v56

    add-long/2addr v0, v2

    mul-long v2, v48, v122

    add-long/2addr v0, v2

    add-long v28, v62, v28

    add-long v8, v8, v28

    long-to-int v2, v8

    and-int/2addr v2, v15

    ushr-long v3, v8, v26

    sub-long v0, v0, v62

    add-long/2addr v6, v0

    long-to-int v0, v6

    and-int/2addr v0, v15

    ushr-long v5, v6, v26

    add-long/2addr v3, v5

    move/from16 v1, v38

    int-to-long v7, v1

    add-long/2addr v3, v7

    long-to-int v1, v3

    and-int/2addr v1, v15

    ushr-long v3, v3, v26

    move/from16 v7, v27

    int-to-long v7, v7

    add-long/2addr v5, v7

    long-to-int v7, v5

    and-int/2addr v7, v15

    ushr-long v5, v5, v26

    long-to-int v3, v3

    add-int v3, v64, v3

    long-to-int v4, v5

    add-int v4, v43, v4

    const/4 v5, 0x0

    aput v7, p2, v5

    const/4 v5, 0x1

    aput v4, p2, v5

    const/4 v4, 0x2

    aput v58, p2, v4

    const/4 v4, 0x3

    aput v65, p2, v4

    const/4 v4, 0x4

    aput v92, p2, v4

    const/4 v4, 0x5

    aput v107, p2, v4

    const/4 v4, 0x6

    aput v110, p2, v4

    const/4 v4, 0x7

    aput v2, p2, v4

    aput v1, p2, v16

    aput v3, p2, v18

    aput v59, p2, v20

    aput v106, p2, v22

    aput v93, p2, v24

    const/16 v1, 0xd

    aput v124, p2, v1

    const/16 v1, 0xe

    aput v12, p2, v1

    const/16 v1, 0xf

    aput v0, p2, v1

    return-void
.end method

.method public static negate([I[I)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v0

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sub([I[I[I)V

    return-void
.end method

.method public static normalize([I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->reduce([II)V

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->reduce([II)V

    return-void
.end method

.method public static one([I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput v1, p0, v0

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    aput v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static powPm3d4([I[I)V
    .locals 4

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([I[I)V

    invoke-static {p0, v0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([I[I)V

    invoke-static {p0, v1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([II[I)V

    invoke-static {v1, v0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v3

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([II[I)V

    invoke-static {v1, v3, v3}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v3, v1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([II[I)V

    invoke-static {v3, v0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([I[I)V

    invoke-static {p0, v1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v2

    const/16 v3, 0x12

    invoke-static {v1, v3, v2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([II[I)V

    invoke-static {v0, v2, v2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v0

    const/16 v1, 0x25

    invoke-static {v2, v1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([II[I)V

    invoke-static {v2, v0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v3

    invoke-static {v0, v1, v3}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([II[I)V

    invoke-static {v2, v3, v3}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v0

    const/16 v1, 0x6f

    invoke-static {v3, v1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([II[I)V

    invoke-static {v3, v0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([I[I)V

    invoke-static {p0, v1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object p0

    const/16 v2, 0xdf

    invoke-static {v1, v2, p0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([II[I)V

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    return-void
.end method

.method private static reduce([II)V
    .locals 5

    const/16 v0, 0xf

    aget v1, p0, v0

    const v2, 0xfffffff

    and-int v3, v1, v2

    shr-int/lit8 v1, v1, 0x1c

    add-int/2addr v1, p1

    const/16 p1, 0x8

    aget v4, p0, p1

    add-int/2addr v4, v1

    aput v4, p0, p1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    aget v4, p0, p1

    add-int/2addr v1, v4

    and-int v4, v1, v2

    aput v4, p0, p1

    shr-int/lit8 v1, v1, 0x1c

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v3, v1

    aput v3, p0, v0

    return-void
.end method

.method public static sqr([II[I)V
    .locals 0

    invoke-static {p0, p2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([I[I)V

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    invoke-static {p2, p2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([I[I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static sqr([I[I)V
    .locals 105

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    const/4 v4, 0x2

    aget v5, p0, v4

    const/4 v6, 0x3

    aget v7, p0, v6

    const/4 v8, 0x4

    aget v9, p0, v8

    const/4 v10, 0x5

    aget v11, p0, v10

    const/4 v12, 0x6

    aget v13, p0, v12

    const/4 v14, 0x7

    aget v15, p0, v14

    const/16 v16, 0x8

    aget v14, p0, v16

    const/16 v17, 0x9

    aget v12, p0, v17

    const/16 v18, 0xa

    aget v10, p0, v18

    const/16 v19, 0xb

    aget v8, p0, v19

    const/16 v20, 0xc

    aget v6, p0, v20

    const/16 v21, 0xd

    aget v4, p0, v21

    const/16 v21, 0xe

    aget v2, p0, v21

    const/16 v21, 0xf

    aget v0, p0, v21

    move/from16 p0, v0

    mul-int/lit8 v0, v1, 0x2

    move/from16 v21, v0

    mul-int/lit8 v0, v3, 0x2

    move/from16 v22, v0

    mul-int/lit8 v0, v5, 0x2

    move/from16 v23, v0

    mul-int/lit8 v0, v7, 0x2

    move/from16 v24, v0

    mul-int/lit8 v0, v9, 0x2

    move/from16 v25, v0

    mul-int/lit8 v0, v11, 0x2

    move/from16 v26, v0

    mul-int/lit8 v0, v13, 0x2

    move/from16 v27, v0

    mul-int/lit8 v0, v14, 0x2

    move/from16 v28, v0

    mul-int/lit8 v0, v12, 0x2

    move/from16 v29, v0

    mul-int/lit8 v0, v10, 0x2

    move/from16 v30, v0

    mul-int/lit8 v0, v8, 0x2

    move/from16 v31, v0

    mul-int/lit8 v0, v6, 0x2

    move/from16 v32, v0

    mul-int/lit8 v0, v4, 0x2

    move/from16 v33, v0

    mul-int/lit8 v0, v2, 0x2

    move/from16 v34, v0

    add-int v0, v1, v14

    move/from16 v35, v14

    add-int v14, v3, v12

    move/from16 v36, v12

    add-int v12, v5, v10

    move/from16 v37, v10

    add-int v10, v7, v8

    move/from16 v38, v8

    add-int v8, v9, v6

    move/from16 v39, v7

    add-int v7, v11, v4

    move/from16 v40, v5

    add-int v5, v13, v2

    move/from16 v41, v3

    add-int v3, v15, p0

    move/from16 v42, v3

    mul-int/lit8 v3, v0, 0x2

    move/from16 v43, v3

    mul-int/lit8 v3, v14, 0x2

    move/from16 v44, v14

    mul-int/lit8 v14, v12, 0x2

    move/from16 v45, v12

    mul-int/lit8 v12, v10, 0x2

    move/from16 v46, v10

    mul-int/lit8 v10, v8, 0x2

    move/from16 v47, v10

    mul-int/lit8 v10, v7, 0x2

    move/from16 v48, v10

    mul-int/lit8 v10, v5, 0x2

    move/from16 v50, v7

    move/from16 v49, v8

    int-to-long v7, v1

    mul-long/2addr v7, v7

    move-wide/from16 v51, v7

    int-to-long v7, v15

    move/from16 v1, v22

    move/from16 v22, v14

    int-to-long v14, v1

    mul-long v53, v7, v14

    move-wide/from16 v55, v14

    int-to-long v13, v13

    move-wide/from16 v57, v7

    move/from16 v1, v23

    int-to-long v7, v1

    mul-long v59, v13, v7

    add-long v53, v53, v59

    move v1, v10

    int-to-long v10, v11

    move/from16 v15, v24

    move-wide/from16 v23, v13

    int-to-long v13, v15

    mul-long v59, v10, v13

    add-long v53, v53, v59

    move-wide/from16 v59, v10

    int-to-long v9, v9

    mul-long v61, v9, v9

    add-long v53, v53, v61

    move-wide/from16 v61, v9

    move/from16 v11, v35

    int-to-long v9, v11

    mul-long/2addr v9, v9

    move/from16 v11, p0

    move-wide/from16 v63, v13

    int-to-long v13, v11

    move-wide/from16 v65, v7

    move/from16 v11, v29

    int-to-long v7, v11

    mul-long v67, v13, v7

    move v11, v1

    int-to-long v1, v2

    move/from16 v15, v30

    move-wide/from16 v29, v7

    int-to-long v7, v15

    mul-long v69, v1, v7

    add-long v67, v67, v69

    move-wide/from16 v69, v1

    int-to-long v1, v4

    move-wide/from16 v71, v7

    move/from16 v4, v31

    int-to-long v7, v4

    mul-long v73, v1, v7

    add-long v67, v67, v73

    move-wide/from16 v73, v1

    int-to-long v1, v6

    mul-long v75, v1, v1

    add-long v67, v67, v75

    move-wide/from16 v75, v1

    int-to-long v0, v0

    mul-long/2addr v0, v0

    move-wide/from16 v77, v7

    move/from16 v15, v42

    int-to-long v6, v15

    int-to-long v2, v3

    mul-long v79, v6, v2

    int-to-long v4, v5

    move-wide/from16 v81, v2

    move/from16 v8, v22

    int-to-long v2, v8

    mul-long v83, v4, v2

    add-long v79, v79, v83

    move-wide/from16 v83, v4

    move/from16 v8, v50

    int-to-long v4, v8

    move v8, v11

    int-to-long v11, v12

    mul-long v85, v4, v11

    add-long v79, v79, v85

    move/from16 v15, v49

    move-wide/from16 v49, v4

    int-to-long v4, v15

    mul-long v85, v4, v4

    add-long v79, v79, v85

    add-long v9, v51, v9

    add-long v9, v9, v79

    sub-long v9, v9, v53

    long-to-int v15, v9

    const v22, 0xfffffff

    and-int v15, v15, v22

    const/16 v31, 0x1c

    ushr-long v9, v9, v31

    add-long v67, v67, v0

    sub-long v67, v67, v51

    add-long v0, v67, v79

    move/from16 p0, v15

    long-to-int v15, v0

    and-int v15, v15, v22

    ushr-long v0, v0, v31

    move/from16 v35, v15

    move/from16 v15, v41

    move-wide/from16 v41, v4

    int-to-long v4, v15

    move-wide/from16 v51, v0

    move/from16 v15, v21

    int-to-long v0, v15

    mul-long v53, v4, v0

    mul-long v67, v57, v65

    mul-long v79, v23, v63

    add-long v67, v67, v79

    move-wide/from16 v79, v4

    move/from16 v15, v25

    int-to-long v4, v15

    mul-long v85, v59, v4

    add-long v67, v67, v85

    move-wide/from16 v85, v4

    move/from16 v15, v36

    int-to-long v4, v15

    move-wide/from16 v87, v0

    move/from16 v15, v28

    int-to-long v0, v15

    mul-long v89, v4, v0

    mul-long v91, v13, v71

    mul-long v93, v69, v77

    add-long v91, v91, v93

    move-wide/from16 v93, v13

    move/from16 v15, v32

    int-to-long v13, v15

    mul-long v95, v73, v13

    add-long v91, v91, v95

    move-wide/from16 v95, v13

    move/from16 v15, v44

    int-to-long v13, v15

    move/from16 v15, v43

    move-wide/from16 v43, v4

    int-to-long v4, v15

    mul-long v97, v13, v4

    mul-long v99, v6, v2

    mul-long v101, v83, v11

    add-long v99, v99, v101

    move-wide/from16 v101, v2

    move/from16 v15, v47

    int-to-long v2, v15

    mul-long v103, v49, v2

    add-long v99, v99, v103

    add-long v89, v53, v89

    add-long v89, v89, v99

    sub-long v89, v89, v67

    add-long v9, v9, v89

    long-to-int v15, v9

    and-int v15, v15, v22

    ushr-long v9, v9, v31

    add-long v91, v91, v97

    sub-long v91, v91, v53

    add-long v91, v91, v99

    move/from16 v21, v8

    move-wide/from16 v53, v9

    add-long v8, v51, v91

    long-to-int v10, v8

    and-int v10, v10, v22

    ushr-long v8, v8, v31

    move-wide/from16 v51, v8

    move/from16 v25, v15

    move/from16 v15, v40

    int-to-long v8, v15

    mul-long v67, v8, v87

    mul-long v79, v79, v79

    add-long v67, v67, v79

    mul-long v79, v57, v63

    mul-long v89, v23, v85

    add-long v79, v79, v89

    mul-long v89, v59, v59

    add-long v79, v79, v89

    move/from16 v15, v37

    move-wide/from16 v36, v8

    int-to-long v8, v15

    mul-long v89, v8, v0

    mul-long v43, v43, v43

    add-long v89, v89, v43

    mul-long v43, v93, v77

    mul-long v91, v69, v95

    add-long v43, v43, v91

    mul-long v91, v73, v73

    add-long v43, v43, v91

    move-wide/from16 v91, v8

    move/from16 v15, v45

    int-to-long v8, v15

    mul-long v97, v8, v4

    mul-long/2addr v13, v13

    add-long v97, v97, v13

    mul-long v13, v6, v11

    mul-long v99, v83, v2

    add-long v13, v13, v99

    mul-long v99, v49, v49

    add-long v13, v13, v99

    add-long v89, v67, v89

    add-long v89, v89, v13

    sub-long v89, v89, v79

    move-wide/from16 v79, v11

    move v12, v10

    add-long v10, v53, v89

    long-to-int v15, v10

    and-int v15, v15, v22

    ushr-long v10, v10, v31

    add-long v43, v43, v97

    sub-long v43, v43, v67

    add-long v43, v43, v13

    add-long v13, v51, v43

    move/from16 v28, v15

    long-to-int v15, v13

    and-int v15, v15, v22

    ushr-long v13, v13, v31

    move-wide/from16 v43, v13

    move/from16 v32, v15

    move/from16 v15, v39

    move/from16 v39, v12

    int-to-long v12, v15

    mul-long v14, v12, v87

    mul-long v51, v36, v55

    add-long v14, v14, v51

    mul-long v51, v57, v85

    move-wide/from16 v53, v12

    move/from16 v12, v26

    int-to-long v12, v12

    mul-long v67, v23, v12

    add-long v51, v51, v67

    move-wide/from16 v67, v12

    move/from16 v12, v38

    int-to-long v12, v12

    mul-long v85, v12, v0

    mul-long v89, v91, v29

    add-long v85, v85, v89

    mul-long v89, v93, v95

    move-wide/from16 v95, v12

    move/from16 v12, v33

    int-to-long v12, v12

    mul-long v97, v69, v12

    add-long v89, v89, v97

    move-wide/from16 v97, v12

    move/from16 v12, v46

    int-to-long v12, v12

    mul-long v45, v12, v4

    mul-long v99, v8, v81

    add-long v45, v45, v99

    mul-long/2addr v2, v6

    move-wide/from16 v99, v6

    move/from16 v6, v48

    int-to-long v6, v6

    mul-long v47, v83, v6

    add-long v2, v2, v47

    add-long v85, v14, v85

    add-long v85, v85, v2

    sub-long v85, v85, v51

    add-long v10, v10, v85

    move-wide/from16 v47, v6

    long-to-int v6, v10

    and-int v6, v6, v22

    ushr-long v10, v10, v31

    add-long v89, v89, v45

    sub-long v89, v89, v14

    add-long v89, v89, v2

    add-long v2, v43, v89

    long-to-int v7, v2

    and-int v7, v7, v22

    ushr-long v2, v2, v31

    mul-long v14, v61, v87

    mul-long v43, v53, v55

    add-long v14, v14, v43

    mul-long v36, v36, v36

    add-long v14, v14, v36

    mul-long v36, v57, v67

    mul-long v43, v23, v23

    add-long v36, v36, v43

    mul-long v43, v75, v0

    mul-long v45, v95, v29

    add-long v43, v43, v45

    mul-long v45, v91, v91

    add-long v43, v43, v45

    mul-long v45, v93, v97

    mul-long v51, v69, v69

    add-long v45, v45, v51

    mul-long v51, v41, v4

    mul-long v67, v12, v81

    add-long v51, v51, v67

    mul-long/2addr v8, v8

    add-long v51, v51, v8

    mul-long v8, v99, v47

    mul-long v47, v83, v83

    add-long v8, v8, v47

    add-long v43, v14, v43

    add-long v43, v43, v8

    sub-long v43, v43, v36

    add-long v10, v10, v43

    move/from16 v26, v7

    long-to-int v7, v10

    and-int v7, v7, v22

    ushr-long v10, v10, v31

    add-long v45, v45, v51

    sub-long v45, v45, v14

    add-long v45, v45, v8

    add-long v2, v2, v45

    long-to-int v8, v2

    and-int v8, v8, v22

    ushr-long v2, v2, v31

    mul-long v14, v59, v87

    mul-long v36, v61, v55

    add-long v14, v14, v36

    mul-long v36, v53, v65

    add-long v14, v14, v36

    move/from16 v9, v27

    move/from16 v27, v8

    int-to-long v8, v9

    mul-long v8, v8, v57

    mul-long v36, v73, v0

    mul-long v43, v75, v29

    add-long v36, v36, v43

    mul-long v43, v95, v71

    add-long v36, v36, v43

    move/from16 v33, v7

    move/from16 v7, v34

    move/from16 v34, v6

    int-to-long v6, v7

    mul-long v6, v6, v93

    mul-long v43, v49, v4

    mul-long v45, v41, v81

    add-long v43, v43, v45

    mul-long v45, v12, v101

    add-long v43, v43, v45

    move-wide/from16 v45, v12

    move/from16 v12, v21

    int-to-long v12, v12

    mul-long v12, v12, v99

    add-long v36, v14, v36

    add-long v36, v36, v12

    sub-long v36, v36, v8

    add-long v10, v10, v36

    long-to-int v8, v10

    and-int v8, v8, v22

    ushr-long v9, v10, v31

    add-long v6, v6, v43

    sub-long/2addr v6, v14

    add-long/2addr v6, v12

    add-long/2addr v2, v6

    long-to-int v6, v2

    and-int v6, v6, v22

    ushr-long v2, v2, v31

    mul-long v13, v23, v87

    mul-long v11, v59, v55

    add-long/2addr v13, v11

    mul-long v11, v61, v65

    add-long/2addr v13, v11

    mul-long v11, v53, v53

    add-long/2addr v13, v11

    mul-long v11, v57, v57

    mul-long v36, v69, v0

    mul-long v43, v73, v29

    add-long v36, v36, v43

    mul-long v43, v75, v71

    add-long v36, v36, v43

    mul-long v43, v95, v95

    add-long v36, v36, v43

    mul-long v43, v93, v93

    mul-long v47, v83, v4

    mul-long v51, v49, v81

    add-long v47, v47, v51

    mul-long v51, v41, v101

    add-long v47, v47, v51

    mul-long v45, v45, v45

    add-long v47, v47, v45

    mul-long v45, v99, v99

    add-long v36, v13, v36

    add-long v36, v36, v45

    sub-long v36, v36, v11

    add-long v9, v9, v36

    long-to-int v7, v9

    and-int v7, v7, v22

    ushr-long v9, v9, v31

    add-long v43, v43, v47

    sub-long v43, v43, v13

    add-long v43, v43, v45

    add-long v2, v2, v43

    long-to-int v11, v2

    and-int v11, v11, v22

    ushr-long v2, v2, v31

    mul-long v12, v57, v87

    mul-long v14, v23, v55

    add-long/2addr v12, v14

    mul-long v14, v59, v65

    add-long/2addr v12, v14

    mul-long v14, v61, v63

    add-long/2addr v12, v14

    mul-long v0, v0, v93

    mul-long v14, v69, v29

    add-long/2addr v0, v14

    mul-long v14, v73, v71

    add-long/2addr v0, v14

    mul-long v14, v75, v77

    add-long/2addr v0, v14

    mul-long v4, v4, v99

    mul-long v14, v83, v81

    add-long/2addr v4, v14

    mul-long v14, v49, v101

    add-long/2addr v4, v14

    mul-long v14, v41, v79

    add-long/2addr v4, v14

    add-long/2addr v0, v12

    add-long/2addr v9, v0

    long-to-int v0, v9

    and-int v0, v0, v22

    ushr-long v9, v9, v31

    sub-long/2addr v4, v12

    add-long/2addr v2, v4

    long-to-int v1, v2

    and-int v1, v1, v22

    ushr-long v2, v2, v31

    add-long/2addr v9, v2

    move/from16 v4, v35

    int-to-long v4, v4

    add-long/2addr v9, v4

    long-to-int v4, v9

    and-int v4, v4, v22

    ushr-long v9, v9, v31

    move/from16 v5, p0

    int-to-long v12, v5

    add-long/2addr v2, v12

    long-to-int v5, v2

    and-int v5, v5, v22

    ushr-long v2, v2, v31

    long-to-int v9, v9

    add-int v10, v39, v9

    long-to-int v2, v2

    add-int v15, v25, v2

    const/4 v2, 0x0

    aput v5, p1, v2

    const/4 v2, 0x1

    aput v15, p1, v2

    const/4 v2, 0x2

    aput v28, p1, v2

    const/4 v2, 0x3

    aput v34, p1, v2

    const/4 v2, 0x4

    aput v33, p1, v2

    const/4 v2, 0x5

    aput v8, p1, v2

    const/4 v2, 0x6

    aput v7, p1, v2

    const/4 v2, 0x7

    aput v0, p1, v2

    aput v4, p1, v16

    aput v10, p1, v17

    aput v32, p1, v18

    aput v26, p1, v19

    aput v27, p1, v20

    const/16 v0, 0xd

    aput v6, p1, v0

    const/16 v0, 0xe

    aput v11, p1, v0

    const/16 v0, 0xf

    aput v1, p1, v0

    return-void
.end method

.method public static sqrtRatioVar([I[I[I)Z
    .locals 3

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v1

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([I[I)V

    invoke-static {v0, p1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([I[I)V

    invoke-static {v0, p0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    invoke-static {v1, p0, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    invoke-static {v1, p1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->powPm3d4([I[I)V

    invoke-static {v2, v0, v2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v0

    invoke-static {v2, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([I[I)V

    invoke-static {v0, p1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    invoke-static {p0, v0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sub([I[I[I)V

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->normalize([I)V

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->isZeroVar([I)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    invoke-static {v2, p1, p2, p1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->copy([II[II)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return p1
.end method

.method public static sub([I[I[I)V
    .locals 45

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget v3, p0, v2

    const/4 v4, 0x2

    aget v5, p0, v4

    const/4 v6, 0x3

    aget v7, p0, v6

    const/4 v8, 0x4

    aget v9, p0, v8

    const/4 v10, 0x5

    aget v11, p0, v10

    const/4 v12, 0x6

    aget v13, p0, v12

    const/4 v14, 0x7

    aget v15, p0, v14

    const/16 v16, 0x8

    aget v17, p0, v16

    const/16 v18, 0x9

    aget v19, p0, v18

    const/16 v20, 0xa

    aget v21, p0, v20

    const/16 v22, 0xb

    aget v23, p0, v22

    const/16 v24, 0xc

    aget v24, p0, v24

    const/16 v25, 0xd

    aget v25, p0, v25

    const/16 v26, 0xe

    aget v26, p0, v26

    const/16 v27, 0xf

    aget v27, p0, v27

    aget v28, p1, v0

    aget v29, p1, v2

    aget v30, p1, v4

    aget v31, p1, v6

    aget v32, p1, v8

    aget v33, p1, v10

    aget v34, p1, v12

    aget v35, p1, v14

    aget v36, p1, v16

    aget v37, p1, v18

    aget v38, p1, v20

    aget v39, p1, v22

    const/16 v40, 0xc

    aget v40, p1, v40

    const/16 v41, 0xd

    aget v41, p1, v41

    const/16 v42, 0xe

    aget v42, p1, v42

    const/16 v43, 0xf

    aget v43, p1, v43

    const v44, 0x1ffffffe

    add-int v1, v1, v44

    sub-int v1, v1, v28

    add-int v3, v3, v44

    sub-int v3, v3, v29

    add-int v5, v5, v44

    sub-int v5, v5, v30

    add-int v7, v7, v44

    sub-int v7, v7, v31

    add-int v9, v9, v44

    sub-int v9, v9, v32

    add-int v11, v11, v44

    sub-int v11, v11, v33

    add-int v13, v13, v44

    sub-int v13, v13, v34

    add-int v15, v15, v44

    sub-int v15, v15, v35

    const v28, 0x1ffffffc

    add-int v17, v17, v28

    sub-int v17, v17, v36

    add-int v19, v19, v44

    sub-int v19, v19, v37

    add-int v21, v21, v44

    sub-int v21, v21, v38

    add-int v23, v23, v44

    sub-int v23, v23, v39

    add-int v24, v24, v44

    sub-int v24, v24, v40

    add-int v25, v25, v44

    sub-int v25, v25, v41

    add-int v26, v26, v44

    sub-int v26, v26, v42

    add-int v27, v27, v44

    sub-int v27, v27, v43

    ushr-int/lit8 v28, v3, 0x1c

    add-int v5, v5, v28

    const v28, 0xfffffff

    and-int v3, v3, v28

    ushr-int/lit8 v29, v11, 0x1c

    add-int v13, v13, v29

    and-int v11, v11, v28

    ushr-int/lit8 v29, v19, 0x1c

    add-int v21, v21, v29

    and-int v19, v19, v28

    ushr-int/lit8 v29, v25, 0x1c

    add-int v26, v26, v29

    and-int v25, v25, v28

    ushr-int/lit8 v29, v5, 0x1c

    add-int v7, v7, v29

    and-int v5, v5, v28

    ushr-int/lit8 v29, v13, 0x1c

    add-int v15, v15, v29

    and-int v13, v13, v28

    ushr-int/lit8 v29, v21, 0x1c

    add-int v23, v23, v29

    and-int v21, v21, v28

    ushr-int/lit8 v29, v26, 0x1c

    add-int v27, v27, v29

    and-int v26, v26, v28

    ushr-int/lit8 v29, v27, 0x1c

    and-int v27, v27, v28

    add-int v1, v1, v29

    add-int v17, v17, v29

    ushr-int/lit8 v29, v7, 0x1c

    add-int v9, v9, v29

    and-int v7, v7, v28

    ushr-int/lit8 v29, v15, 0x1c

    add-int v17, v17, v29

    and-int v15, v15, v28

    ushr-int/lit8 v29, v23, 0x1c

    add-int v24, v24, v29

    and-int v23, v23, v28

    ushr-int/lit8 v29, v1, 0x1c

    add-int v3, v3, v29

    and-int v1, v1, v28

    ushr-int/lit8 v29, v9, 0x1c

    add-int v11, v11, v29

    and-int v9, v9, v28

    ushr-int/lit8 v29, v17, 0x1c

    add-int v19, v19, v29

    and-int v17, v17, v28

    ushr-int/lit8 v29, v24, 0x1c

    add-int v25, v25, v29

    and-int v24, v24, v28

    aput v1, p2, v0

    aput v3, p2, v2

    aput v5, p2, v4

    aput v7, p2, v6

    aput v9, p2, v8

    aput v11, p2, v10

    aput v13, p2, v12

    aput v15, p2, v14

    aput v17, p2, v16

    aput v19, p2, v18

    aput v21, p2, v20

    aput v23, p2, v22

    const/16 v0, 0xc

    aput v24, p2, v0

    const/16 v0, 0xd

    aput v25, p2, v0

    const/16 v0, 0xe

    aput v26, p2, v0

    const/16 v0, 0xf

    aput v27, p2, v0

    return-void
.end method

.method public static subOne([I)V
    .locals 3

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    invoke-static {p0, v0, p0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sub([I[I[I)V

    return-void
.end method

.method public static zero([I)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    aput v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
