.class public Lorg/jivesoftware/smackx/colors/ConsistentColor;
.super Ljava/lang/Object;
.source "ConsistentColor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/colors/ConsistentColor$ConsistentColorSettings;,
        Lorg/jivesoftware/smackx/colors/ConsistentColor$Deficiency;
    }
.end annotation


# static fields
.field private static final DEFAULT_SETTINGS:Lorg/jivesoftware/smackx/colors/ConsistentColor$ConsistentColorSettings;

.field private static final KB:D = 0.114

.field private static final KG:D = 0.587

.field private static final KR:D = 0.299

.field private static final Y:D = 0.732


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lorg/jivesoftware/smackx/colors/ConsistentColor$ConsistentColorSettings;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/colors/ConsistentColor$ConsistentColorSettings;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/colors/ConsistentColor;->DEFAULT_SETTINGS:Lorg/jivesoftware/smackx/colors/ConsistentColor$ConsistentColorSettings;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static CbCrToRGB([DD)[F
    .locals 14
    .param p0, "cbcr"    # [D
    .param p1, "y"    # D

    .line 123
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .line 124
    .local v1, "cb":D
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 126
    .local v4, "cr":D
    const-wide v6, 0x3ff66e978d4fdf3cL    # 1.4020000000000001

    mul-double/2addr v6, v4

    add-double/2addr v6, p1

    .line 127
    .local v6, "r":D
    const-wide v8, 0x3ffc5a1cac083127L    # 1.772

    mul-double/2addr v8, v1

    add-double/2addr v8, p1

    .line 128
    .local v8, "b":D
    const-wide v10, 0x3fd322d0e5604189L    # 0.299

    mul-double/2addr v10, v6

    sub-double v10, p1, v10

    const-wide v12, 0x3fbd2f1a9fbe76c9L    # 0.114

    mul-double/2addr v12, v8

    sub-double/2addr v10, v12

    const-wide v12, 0x3fe2c8b439581062L    # 0.587

    div-double/2addr v10, v12

    .line 131
    .local v10, "g":D
    invoke-static {v6, v7}, Lorg/jivesoftware/smackx/colors/ConsistentColor;->clip(D)D

    move-result-wide v6

    .line 132
    invoke-static {v10, v11}, Lorg/jivesoftware/smackx/colors/ConsistentColor;->clip(D)D

    move-result-wide v10

    .line 133
    invoke-static {v8, v9}, Lorg/jivesoftware/smackx/colors/ConsistentColor;->clip(D)D

    move-result-wide v8

    .line 135
    const/4 v12, 0x3

    new-array v12, v12, [F

    double-to-float v13, v6

    aput v13, v12, v0

    double-to-float v0, v10

    aput v0, v12, v3

    double-to-float v0, v8

    const/4 v3, 0x2

    aput v0, v12, v3

    return-object v12
.end method

.method public static RGBFrom(Ljava/lang/CharSequence;)[F
    .locals 1
    .param p0, "input"    # Ljava/lang/CharSequence;

    .line 178
    sget-object v0, Lorg/jivesoftware/smackx/colors/ConsistentColor;->DEFAULT_SETTINGS:Lorg/jivesoftware/smackx/colors/ConsistentColor$ConsistentColorSettings;

    invoke-static {p0, v0}, Lorg/jivesoftware/smackx/colors/ConsistentColor;->RGBFrom(Ljava/lang/CharSequence;Lorg/jivesoftware/smackx/colors/ConsistentColor$ConsistentColorSettings;)[F

    move-result-object v0

    return-object v0
.end method

.method public static RGBFrom(Ljava/lang/CharSequence;Lorg/jivesoftware/smackx/colors/ConsistentColor$ConsistentColorSettings;)[F
    .locals 7
    .param p0, "input"    # Ljava/lang/CharSequence;
    .param p1, "settings"    # Lorg/jivesoftware/smackx/colors/ConsistentColor$ConsistentColorSettings;

    .line 190
    invoke-static {p0}, Lorg/jivesoftware/smackx/colors/ConsistentColor;->createAngle(Ljava/lang/CharSequence;)D

    move-result-wide v0

    .line 191
    .local v0, "angle":D
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/colors/ConsistentColor$ConsistentColorSettings;->getDeficiency()Lorg/jivesoftware/smackx/colors/ConsistentColor$Deficiency;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/jivesoftware/smackx/colors/ConsistentColor;->applyColorDeficiencyCorrection(DLorg/jivesoftware/smackx/colors/ConsistentColor$Deficiency;)D

    move-result-wide v2

    .line 192
    .local v2, "correctedAngle":D
    invoke-static {v2, v3}, Lorg/jivesoftware/smackx/colors/ConsistentColor;->angleToCbCr(D)[D

    move-result-object v4

    .line 193
    .local v4, "CbCr":[D
    const-wide v5, 0x3fe76c8b43958106L    # 0.732

    invoke-static {v4, v5, v6}, Lorg/jivesoftware/smackx/colors/ConsistentColor;->CbCrToRGB([DD)[F

    move-result-object v5

    .line 194
    .local v5, "rgb":[F
    return-object v5
.end method

.method private static angleToCbCr(D)[D
    .locals 12
    .param p0, "angle"    # D

    .line 97
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 98
    .local v0, "cb":D
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 100
    .local v2, "cr":D
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 101
    .local v4, "acb":D
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    .line 103
    .local v6, "acr":D
    cmpl-double v8, v6, v4

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    if-lez v8, :cond_0

    .line 104
    div-double/2addr v9, v6

    .local v9, "factor":D
    goto :goto_0

    .line 106
    .end local v9    # "factor":D
    :cond_0
    div-double/2addr v9, v4

    .line 109
    .restart local v9    # "factor":D
    :goto_0
    mul-double/2addr v0, v9

    .line 110
    mul-double/2addr v2, v9

    .line 112
    const/4 v8, 0x2

    new-array v8, v8, [D

    const/4 v11, 0x0

    aput-wide v0, v8, v11

    const/4 v11, 0x1

    aput-wide v2, v8, v11

    return-object v8
.end method

.method private static applyColorDeficiencyCorrection(DLorg/jivesoftware/smackx/colors/ConsistentColor$Deficiency;)D
    .locals 4
    .param p0, "angle"    # D
    .param p2, "deficiency"    # Lorg/jivesoftware/smackx/colors/ConsistentColor$Deficiency;

    .line 74
    sget-object v0, Lorg/jivesoftware/smackx/colors/ConsistentColor$1;->$SwitchMap$org$jivesoftware$smackx$colors$ConsistentColor$Deficiency:[I

    invoke-virtual {p2}, Lorg/jivesoftware/smackx/colors/ConsistentColor$Deficiency;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr p0, v0

    .line 82
    rem-double/2addr p0, v2

    .line 83
    add-double/2addr p0, v0

    goto :goto_0

    .line 78
    :cond_1
    rem-double/2addr p0, v2

    .line 79
    goto :goto_0

    .line 76
    :cond_2
    nop

    .line 86
    :goto_0
    return-wide p0
.end method

.method private static clip(D)D
    .locals 4
    .param p0, "value"    # D

    .line 145
    move-wide v0, p0

    .line 147
    .local v0, "out":D
    const-wide/16 v2, 0x0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_0

    .line 148
    const-wide/16 v0, 0x0

    .line 151
    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p0, v2

    if-lez v2, :cond_1

    .line 152
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 155
    :cond_1
    return-wide v0
.end method

.method private static createAngle(Ljava/lang/CharSequence;)D
    .locals 9
    .param p0, "input"    # Ljava/lang/CharSequence;

    .line 59
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/SHA1;->bytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 60
    .local v0, "h":[B
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    invoke-static {v1}, Lorg/jivesoftware/smackx/colors/ConsistentColor;->u(B)I

    move-result v1

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    invoke-static {v2}, Lorg/jivesoftware/smackx/colors/ConsistentColor;->u(B)I

    move-result v2

    mul-int/lit16 v2, v2, 0x100

    add-int/2addr v1, v2

    int-to-double v1, v1

    .line 61
    .local v1, "v":D
    const-wide/high16 v3, 0x40f0000000000000L    # 65536.0

    div-double v3, v1, v3

    .line 62
    .local v3, "d":D
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double/2addr v5, v3

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v5, v7

    return-wide v5
.end method

.method private static u(B)I
    .locals 1
    .param p0, "b"    # B

    .line 166
    and-int/lit16 v0, p0, 0xff

    return v0
.end method
