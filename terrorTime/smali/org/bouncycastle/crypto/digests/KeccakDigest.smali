.class public Lorg/bouncycastle/crypto/digests/KeccakDigest;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;


# static fields
.field private static KeccakRoundConstants:[J


# instance fields
.field protected bitsInQueue:I

.field protected dataQueue:[B

.field protected fixedOutputLength:I

.field protected rate:I

.field protected squeezing:Z

.field protected state:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x18

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->KeccakRoundConstants:[J

    return-void

    :array_0
    .array-data 8
        0x1
        0x8082
        -0x7fffffffffff7f76L    # -1.62577E-319
        -0x7fffffff7fff8000L    # -1.061014085E-314
        0x808b
        0x80000001L
        -0x7fffffff7fff7f7fL    # -1.061014149E-314
        -0x7fffffffffff7ff7L    # -1.6194E-319
        0x8a
        0x88
        0x80008009L
        0x8000000aL
        0x8000808bL
        -0x7fffffffffffff75L    # -6.87E-322
        -0x7fffffffffff7f77L    # -1.6257E-319
        -0x7fffffffffff7ffdL    # -1.6191E-319
        -0x7fffffffffff7ffeL    # -1.61905E-319
        -0x7fffffffffffff80L    # -6.32E-322
        0x800a
        -0x7fffffff7ffffff6L    # -1.0609979004E-314
        -0x7fffffff7fff7f7fL    # -1.061014149E-314
        -0x7fffffffffff7f80L    # -1.6253E-319
        0x80000001L
        -0x7fffffff7fff7ff8L    # -1.061014089E-314
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x120

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    const/16 v0, 0xc0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->init(I)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/KeccakDigest;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    const/16 v0, 0xc0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    iget-boolean p1, p1, Lorg/bouncycastle/crypto/digests/KeccakDigest;->squeezing:Z

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->squeezing:Z

    return-void
.end method

.method private KeccakAbsorb([BI)V
    .locals 7

    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    shr-int/lit8 v0, v0, 0x6

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    aget-wide v3, v2, v1

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v5

    xor-long/2addr v3, v5

    aput-wide v3, v2, v1

    add-int/lit8 p2, p2, 0x8

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->KeccakPermutation()V

    return-void
.end method

.method private KeccakExtract()V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    iget v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    shr-int/lit8 v1, v1, 0x6

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2, v3}, Lorg/bouncycastle/util/Pack;->longToLittleEndian([JII[BI)V

    return-void
.end method

.method private KeccakPermutation()V
    .locals 86

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    const/4 v5, 0x1

    aget-wide v6, v1, v5

    const/4 v8, 0x2

    aget-wide v9, v1, v8

    const/4 v11, 0x3

    aget-wide v12, v1, v11

    const/4 v14, 0x4

    aget-wide v14, v1, v14

    const/16 v16, 0x5

    aget-wide v16, v1, v16

    const/16 v18, 0x6

    aget-wide v19, v1, v18

    const/16 v21, 0x7

    aget-wide v21, v1, v21

    const/16 v23, 0x8

    aget-wide v24, v1, v23

    const/16 v26, 0x9

    aget-wide v27, v1, v26

    const/16 v29, 0xa

    aget-wide v30, v1, v29

    const/16 v32, 0xb

    aget-wide v32, v1, v32

    const/16 v34, 0xc

    aget-wide v34, v1, v34

    const/16 v36, 0xd

    aget-wide v36, v1, v36

    const/16 v38, 0xe

    aget-wide v39, v1, v38

    const/16 v41, 0xf

    aget-wide v42, v1, v41

    const/16 v44, 0x10

    aget-wide v44, v1, v44

    const/16 v46, 0x11

    aget-wide v46, v1, v46

    const/16 v48, 0x12

    aget-wide v49, v1, v48

    const/16 v51, 0x13

    aget-wide v52, v1, v51

    const/16 v54, 0x14

    aget-wide v55, v1, v54

    const/16 v57, 0x15

    aget-wide v58, v1, v57

    const/16 v60, 0x16

    aget-wide v60, v1, v60

    const/16 v62, 0x17

    aget-wide v62, v1, v62

    const/16 v64, 0x18

    aget-wide v64, v1, v64

    move-wide/from16 v66, v64

    move-wide/from16 v64, v62

    move-wide/from16 v62, v60

    move-wide/from16 v60, v58

    move-wide/from16 v58, v55

    move-wide/from16 v55, v52

    move-wide/from16 v52, v49

    move-wide/from16 v49, v46

    move-wide/from16 v46, v44

    move-wide/from16 v44, v42

    move-wide/from16 v42, v39

    move-wide/from16 v39, v36

    move-wide/from16 v36, v34

    move-wide/from16 v34, v32

    move-wide/from16 v32, v30

    move-wide/from16 v30, v27

    move-wide/from16 v27, v24

    move-wide/from16 v24, v21

    move-wide/from16 v21, v19

    move-wide/from16 v19, v16

    move-wide/from16 v16, v14

    move-wide v14, v12

    move-wide v12, v9

    move-wide v9, v6

    move-wide v6, v3

    move v3, v2

    :goto_0
    const/16 v4, 0x18

    if-ge v3, v4, :cond_0

    xor-long v68, v6, v19

    xor-long v68, v68, v32

    xor-long v68, v68, v44

    xor-long v68, v68, v58

    xor-long v70, v9, v21

    xor-long v70, v70, v34

    xor-long v70, v70, v46

    xor-long v70, v70, v60

    xor-long v72, v12, v24

    xor-long v72, v72, v36

    xor-long v72, v72, v49

    xor-long v72, v72, v62

    xor-long v74, v14, v27

    xor-long v74, v74, v39

    xor-long v74, v74, v52

    xor-long v74, v74, v64

    xor-long v76, v16, v30

    xor-long v76, v76, v42

    xor-long v76, v76, v55

    xor-long v76, v76, v66

    shl-long v78, v70, v5

    const/4 v4, -0x1

    ushr-long v80, v70, v4

    or-long v78, v78, v80

    xor-long v78, v78, v76

    shl-long v80, v72, v5

    ushr-long v82, v72, v4

    or-long v80, v80, v82

    xor-long v80, v80, v68

    shl-long v82, v74, v5

    ushr-long v84, v74, v4

    or-long v82, v82, v84

    xor-long v70, v82, v70

    shl-long v82, v76, v5

    ushr-long v76, v76, v4

    or-long v76, v82, v76

    xor-long v72, v76, v72

    shl-long v76, v68, v5

    ushr-long v68, v68, v4

    or-long v68, v76, v68

    xor-long v68, v68, v74

    xor-long v6, v6, v78

    xor-long v19, v19, v78

    xor-long v32, v32, v78

    xor-long v44, v44, v78

    xor-long v58, v58, v78

    xor-long v9, v9, v80

    xor-long v21, v21, v80

    xor-long v34, v34, v80

    xor-long v46, v46, v80

    xor-long v60, v60, v80

    xor-long v12, v12, v70

    xor-long v24, v24, v70

    xor-long v36, v36, v70

    xor-long v49, v49, v70

    xor-long v62, v62, v70

    xor-long v14, v14, v72

    xor-long v27, v27, v72

    xor-long v39, v39, v72

    xor-long v52, v52, v72

    xor-long v64, v64, v72

    xor-long v16, v16, v68

    xor-long v30, v30, v68

    xor-long v42, v42, v68

    xor-long v55, v55, v68

    xor-long v66, v66, v68

    shl-long v68, v9, v5

    const/16 v4, 0x3f

    ushr-long/2addr v9, v4

    or-long v9, v68, v9

    const/16 v4, 0x2c

    shl-long v68, v21, v4

    ushr-long v21, v21, v54

    move/from16 v70, v3

    or-long v2, v68, v21

    shl-long v21, v30, v54

    const/16 v68, 0x2c

    ushr-long v30, v30, v68

    or-long v4, v21, v30

    const/16 v21, 0x3d

    shl-long v21, v62, v21

    ushr-long v30, v62, v11

    move-wide/from16 v62, v9

    or-long v8, v21, v30

    const/16 v10, 0x27

    shl-long v21, v42, v10

    const/16 v10, 0x19

    ushr-long v30, v42, v10

    move-wide/from16 v73, v12

    or-long v11, v21, v30

    shl-long v21, v58, v48

    const/16 v10, 0x2e

    ushr-long v30, v58, v10

    move-object/from16 v75, v1

    or-long v0, v21, v30

    const/16 v10, 0x3e

    shl-long v21, v73, v10

    const/4 v10, 0x2

    ushr-long v30, v73, v10

    move-wide/from16 v42, v11

    or-long v10, v21, v30

    const/16 v12, 0x2b

    shl-long v12, v36, v12

    ushr-long v21, v36, v57

    or-long v12, v12, v21

    const/16 v21, 0x19

    shl-long v21, v39, v21

    const/16 v30, 0x27

    ushr-long v30, v39, v30

    move-wide/from16 v36, v10

    or-long v10, v21, v30

    shl-long v21, v55, v23

    const/16 v30, 0x38

    ushr-long v30, v55, v30

    move-wide/from16 v39, v0

    or-long v0, v21, v30

    const/16 v21, 0x38

    shl-long v21, v64, v21

    ushr-long v30, v64, v23

    move-wide/from16 v55, v0

    or-long v0, v21, v30

    const/16 v21, 0x29

    shl-long v21, v44, v21

    const/16 v30, 0x17

    ushr-long v30, v44, v30

    move-wide/from16 v44, v0

    or-long v0, v21, v30

    const/16 v21, 0x1b

    shl-long v21, v16, v21

    const/16 v30, 0x25

    ushr-long v16, v16, v30

    move-wide/from16 v30, v0

    or-long v0, v21, v16

    shl-long v16, v66, v38

    const/16 v21, 0x32

    ushr-long v21, v66, v21

    move-wide/from16 v58, v0

    or-long v0, v16, v21

    const/16 v16, 0x2

    shl-long v21, v60, v16

    const/16 v16, 0x3e

    ushr-long v16, v60, v16

    move-wide/from16 v60, v10

    or-long v10, v21, v16

    const/16 v16, 0x37

    shl-long v16, v27, v16

    ushr-long v21, v27, v26

    move-wide/from16 v27, v10

    or-long v10, v16, v21

    const/16 v16, 0x2d

    shl-long v16, v46, v16

    ushr-long v21, v46, v51

    move-wide/from16 v46, v10

    or-long v10, v16, v21

    const/16 v16, 0x24

    shl-long v16, v19, v16

    const/16 v21, 0x1c

    ushr-long v19, v19, v21

    move-wide/from16 v21, v8

    or-long v8, v16, v19

    const/16 v16, 0x1c

    shl-long v16, v14, v16

    const/16 v19, 0x24

    ushr-long v14, v14, v19

    or-long v14, v16, v14

    shl-long v16, v52, v57

    const/16 v19, 0x2b

    ushr-long v19, v52, v19

    move-wide/from16 v52, v8

    or-long v8, v16, v19

    shl-long v16, v49, v41

    const/16 v19, 0x31

    ushr-long v19, v49, v19

    move-wide/from16 v49, v10

    or-long v10, v16, v19

    shl-long v16, v34, v29

    const/16 v19, 0x36

    ushr-long v19, v34, v19

    move-wide/from16 v34, v10

    or-long v10, v16, v19

    shl-long v16, v24, v18

    const/16 v19, 0x3a

    ushr-long v19, v24, v19

    move-wide/from16 v24, v10

    or-long v10, v16, v19

    const/16 v16, 0x3

    shl-long v19, v32, v16

    const/16 v16, 0x3d

    ushr-long v16, v32, v16

    move-wide/from16 v32, v10

    or-long v10, v19, v16

    move-wide/from16 v16, v14

    not-long v14, v2

    and-long/2addr v14, v12

    xor-long/2addr v14, v6

    move-wide/from16 v19, v14

    not-long v14, v12

    and-long/2addr v14, v8

    xor-long/2addr v14, v2

    move-wide/from16 v64, v14

    not-long v14, v8

    and-long/2addr v14, v0

    xor-long/2addr v12, v14

    not-long v14, v0

    and-long/2addr v14, v6

    xor-long/2addr v14, v8

    not-long v6, v6

    and-long/2addr v2, v6

    xor-long/2addr v0, v2

    not-long v2, v4

    and-long/2addr v2, v10

    xor-long v2, v16, v2

    not-long v6, v10

    and-long v6, v6, v49

    xor-long/2addr v6, v4

    move-wide/from16 v8, v49

    move-wide/from16 v49, v0

    not-long v0, v8

    and-long v0, v0, v21

    xor-long/2addr v0, v10

    move-wide/from16 v10, v21

    move-wide/from16 v21, v0

    not-long v0, v10

    and-long v0, v0, v16

    xor-long/2addr v0, v8

    move-wide/from16 v8, v16

    not-long v8, v8

    and-long/2addr v4, v8

    xor-long/2addr v4, v10

    move-wide/from16 v8, v32

    not-long v10, v8

    and-long v10, v10, v60

    xor-long v32, v62, v10

    move-wide/from16 v16, v0

    move-wide/from16 v10, v60

    not-long v0, v10

    and-long v0, v0, v55

    xor-long/2addr v0, v8

    move-wide/from16 v60, v0

    move-wide/from16 v0, v55

    move-wide/from16 v55, v2

    not-long v2, v0

    and-long v2, v2, v39

    xor-long/2addr v2, v10

    move-wide/from16 v10, v39

    move-wide/from16 v39, v2

    not-long v2, v10

    and-long v2, v2, v62

    xor-long/2addr v0, v2

    move-wide/from16 v2, v62

    not-long v2, v2

    and-long/2addr v2, v8

    xor-long/2addr v2, v10

    move-wide/from16 v8, v52

    not-long v10, v8

    and-long v10, v10, v24

    xor-long v10, v58, v10

    move-wide/from16 v52, v0

    move-wide/from16 v0, v24

    move-wide/from16 v24, v2

    not-long v2, v0

    and-long v2, v2, v34

    xor-long/2addr v2, v8

    move-wide/from16 v62, v2

    move-wide/from16 v2, v34

    move-wide/from16 v34, v4

    not-long v4, v2

    and-long v4, v4, v44

    xor-long/2addr v0, v4

    move-wide/from16 v4, v44

    move-wide/from16 v44, v0

    not-long v0, v4

    and-long v0, v0, v58

    xor-long/2addr v0, v2

    move-wide/from16 v2, v58

    not-long v2, v2

    and-long/2addr v2, v8

    xor-long/2addr v2, v4

    move-wide/from16 v4, v46

    not-long v8, v4

    and-long v8, v8, v42

    xor-long v58, v36, v8

    move-wide/from16 v8, v42

    move-wide/from16 v42, v0

    not-long v0, v8

    and-long v0, v0, v30

    xor-long/2addr v0, v4

    move-wide/from16 v46, v0

    move-wide/from16 v0, v30

    move-wide/from16 v30, v2

    not-long v2, v0

    and-long v2, v2, v27

    xor-long/2addr v2, v8

    move-wide/from16 v8, v27

    move-wide/from16 v27, v2

    not-long v2, v8

    and-long v2, v2, v36

    xor-long/2addr v0, v2

    move-wide/from16 v2, v36

    not-long v2, v2

    and-long/2addr v2, v4

    xor-long v66, v8, v2

    sget-object v2, Lorg/bouncycastle/crypto/digests/KeccakDigest;->KeccakRoundConstants:[J

    aget-wide v3, v2, v70

    xor-long v2, v19, v3

    add-int/lit8 v4, v70, 0x1

    const/4 v5, 0x1

    const/4 v8, 0x2

    move-wide/from16 v36, v39

    move-wide/from16 v39, v52

    move-wide/from16 v19, v55

    move-wide/from16 v55, v30

    move-wide/from16 v30, v34

    move-wide/from16 v52, v42

    move-wide/from16 v34, v60

    move-wide/from16 v42, v24

    move-wide/from16 v60, v46

    move-wide/from16 v46, v62

    move-wide/from16 v24, v21

    move-wide/from16 v62, v27

    move-wide/from16 v21, v6

    move-wide/from16 v27, v16

    move-wide/from16 v16, v49

    move-wide v6, v2

    move v3, v4

    move-wide/from16 v49, v44

    const/4 v2, 0x0

    move-wide/from16 v44, v10

    move-wide/from16 v9, v64

    const/4 v11, 0x3

    move-wide/from16 v64, v0

    move-object/from16 v1, v75

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_0
    move-object/from16 v75, v1

    move v0, v2

    aput-wide v6, v75, v0

    const/4 v0, 0x1

    aput-wide v9, v75, v0

    const/4 v0, 0x2

    aput-wide v12, v75, v0

    const/4 v0, 0x3

    aput-wide v14, v75, v0

    const/4 v0, 0x4

    aput-wide v16, v75, v0

    const/4 v0, 0x5

    aput-wide v19, v75, v0

    aput-wide v21, v75, v18

    const/4 v0, 0x7

    aput-wide v24, v75, v0

    aput-wide v27, v75, v23

    aput-wide v30, v75, v26

    aput-wide v32, v75, v29

    const/16 v0, 0xb

    aput-wide v34, v75, v0

    const/16 v0, 0xc

    aput-wide v36, v75, v0

    const/16 v0, 0xd

    aput-wide v39, v75, v0

    aput-wide v42, v75, v38

    aput-wide v44, v75, v41

    const/16 v0, 0x10

    aput-wide v46, v75, v0

    const/16 v0, 0x11

    aput-wide v49, v75, v0

    aput-wide v52, v75, v48

    aput-wide v55, v75, v51

    aput-wide v58, v75, v54

    aput-wide v60, v75, v57

    const/16 v0, 0x16

    aput-wide v62, v75, v0

    const/16 v0, 0x17

    aput-wide v64, v75, v0

    const/16 v0, 0x18

    aput-wide v66, v75, v0

    return-void
.end method

.method private init(I)V
    .locals 1

    const/16 v0, 0x80

    if-eq p1, v0, :cond_1

    const/16 v0, 0xe0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x100

    if-eq p1, v0, :cond_1

    const/16 v0, 0x120

    if-eq p1, v0, :cond_1

    const/16 v0, 0x180

    if-eq p1, v0, :cond_1

    const/16 v0, 0x200

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bitLength must be one of 128, 224, 256, 288, 384, or 512."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    shl-int/lit8 p1, p1, 0x1

    rsub-int p1, p1, 0x640

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->initSponge(I)V

    return-void
.end method

.method private initSponge(I)V
    .locals 6

    if-lez p1, :cond_1

    const/16 v0, 0x640

    if-ge p1, v0, :cond_1

    rem-int/lit8 v1, p1, 0x40

    if-nez v1, :cond_1

    iput p1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    array-length v4, v3

    if-ge v2, v4, :cond_0

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    invoke-static {v2, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iput v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->squeezing:Z

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "invalid rate value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private padAndSwitchToSqueezingPhase()V
    .locals 12

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    shr-int/lit8 v2, v1, 0x3

    aget-byte v3, v0, v2

    and-int/lit8 v4, v1, 0x7

    const-wide/16 v5, 0x1

    shl-long v7, v5, v4

    long-to-int v4, v7

    int-to-byte v4, v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    iget v3, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    const/4 v4, 0x0

    if-ne v1, v3, :cond_0

    invoke-direct {p0, v0, v4}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->KeccakAbsorb([BI)V

    iput v4, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    shr-int/lit8 v1, v0, 0x6

    and-int/lit8 v0, v0, 0x3f

    move v3, v4

    :goto_0
    if-ge v4, v1, :cond_1

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    aget-wide v8, v7, v4

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    invoke-static {v10, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v10

    xor-long/2addr v8, v10

    aput-wide v8, v7, v4

    add-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    shl-long v7, v5, v0

    sub-long/2addr v7, v5

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    aget-wide v4, v0, v1

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    invoke-static {v6, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v9

    and-long v6, v9, v7

    xor-long v3, v4, v6

    aput-wide v3, v0, v1

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    iget v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x6

    aget-wide v3, v0, v1

    const-wide/high16 v5, -0x8000000000000000L

    xor-long/2addr v3, v5

    aput-wide v3, v0, v1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->KeccakPermutation()V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->KeccakExtract()V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    iput-boolean v2, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->squeezing:Z

    return-void
.end method


# virtual methods
.method protected absorb([BII)V
    .locals 7

    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    rem-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->squeezing:Z

    if-nez v1, :cond_4

    shr-int/lit8 v0, v0, 0x3

    iget v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    shr-int/lit8 v1, v1, 0x3

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    :cond_0
    :goto_0
    if-ge v0, p3, :cond_3

    if-nez v3, :cond_2

    sub-int v4, p3, v1

    if-gt v0, v4, :cond_2

    :cond_1
    add-int v5, p2, v0

    invoke-direct {p0, p1, v5}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->KeccakAbsorb([BI)V

    add-int/2addr v0, v1

    if-le v0, v4, :cond_1

    goto :goto_0

    :cond_2
    sub-int v4, v1, v3

    sub-int v5, p3, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v5, p2, v0

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    invoke-static {p1, v5, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v4

    add-int/2addr v0, v4

    if-ne v3, v1, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    invoke-direct {p0, v3, v2}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->KeccakAbsorb([BI)V

    move v3, v2

    goto :goto_0

    :cond_3
    shl-int/lit8 p1, v3, 0x3

    iput p1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "attempt to absorb while squeezing"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "attempt to absorb with odd length queue"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected absorbBits(II)V
    .locals 4

    const/4 v0, 0x1

    if-lt p2, v0, :cond_2

    const/4 v1, 0x7

    if-gt p2, v1, :cond_2

    iget v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    rem-int/lit8 v2, v1, 0x8

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->squeezing:Z

    if-nez v2, :cond_0

    shl-int v2, v0, p2

    sub-int/2addr v2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr p1, v2

    int-to-byte p1, p1

    aput-byte p1, v0, v3

    add-int/2addr v1, p2

    iput v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "attempt to absorb while squeezing"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "attempt to absorb with odd length queue"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'bits\' must be in the range 1 to 7"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public doFinal([BI)I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->squeeze([BIJ)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->reset()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->getDigestSize()I

    move-result p1

    return p1
.end method

.method protected doFinal([BIBI)I
    .locals 0

    if-lez p4, :cond_0

    invoke-virtual {p0, p3, p4}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->absorbBits(II)V

    :cond_0
    iget p3, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    int-to-long p3, p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->squeeze([BIJ)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->reset()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->getDigestSize()I

    move-result p1

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Keccak-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public reset()V
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->init(I)V

    return-void
.end method

.method protected squeeze([BIJ)V
    .locals 9

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->squeezing:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->padAndSwitchToSqueezingPhase()V

    :cond_0
    const-wide/16 v0, 0x8

    rem-long v2, p3, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    :goto_0
    cmp-long v2, v4, p3

    if-gez v2, :cond_2

    iget v2, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    if-nez v2, :cond_1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->KeccakPermutation()V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->KeccakExtract()V

    iget v2, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    iput v2, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    :cond_1
    iget v2, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    int-to-long v2, v2

    sub-long v6, p3, v4

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    iget v6, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    iget v7, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x8

    div-long v7, v4, v0

    long-to-int v7, v7

    add-int/2addr v7, p2

    div-int/lit8 v8, v2, 0x8

    invoke-static {v3, v6, p1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    sub-int/2addr v3, v2

    iput v3, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    int-to-long v2, v2

    add-long/2addr v4, v2

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "outputLength not a multiple of 8"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public update(B)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v1, v2, v0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->absorb([BII)V

    return-void
.end method

.method public update([BII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->absorb([BII)V

    return-void
.end method
