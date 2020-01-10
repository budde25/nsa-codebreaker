.class public final enum Lorg/jivesoftware/smackx/colors/ConsistentColor$Deficiency;
.super Ljava/lang/Enum;
.source "ConsistentColor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/colors/ConsistentColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Deficiency"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smackx/colors/ConsistentColor$Deficiency;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smackx/colors/ConsistentColor$Deficiency;

.field public static final enum blueBlindness:Lorg/jivesoftware/smackx/colors/ConsistentColor$Deficiency;

.field public static final enum none:Lorg/jivesoftware/smackx/colors/ConsistentColor$Deficiency;

.field public static final enum redGreenBlindness:Lorg/jivesoftware/smackx/colors/ConsistentColor$Deficiency;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 38
    new-instance v0, Lorg/jivesoftware/smackx/colors/ConsistentColor$Deficiency;

    const/4 v1, 0x0

    const-string v2, "none"

    invoke-direct {v0, v2, v1}, Lorg/jivesoftware/smackx/colors/ConsistentColor$Deficiency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/colors/ConsistentColor$Deficiency;->none:Lorg/jivesoftware/smackx/colors/ConsistentColor$Deficiency;

    .line 43
    new-instance v0, Lorg/jivesoftware/smackx/colors/ConsistentColor$Deficiency;

    const/4 v2, 0x1

    const-string v3, "redGreenBlindness"

    invoke-direct {v0, v3, v2}, Lorg/jivesoftware/smackx/colors/ConsistentColor$Deficiency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/colors/ConsistentColor$Deficiency;->redGreenBlindness:Lorg/jivesoftware/smackx/colors/ConsistentColor$Deficiency;

    .line 48
    new-instance v0, Lorg/jivesoftware/smackx/colors/ConsistentColor$Deficiency;

    const/4 v3, 0x2

    const-string v4, "blueBlindness"

    invoke-direct {v0, v4, v3}, Lorg/jivesoftware/smackx/colors/ConsistentColor$Deficiency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/colors/ConsistentColor$Deficiency;->blueBlindness:Lorg/jivesoftware/smackx/colors/ConsistentColor$Deficiency;

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/jivesoftware/smackx/colors/ConsistentColor$Deficiency;

    sget-object v4, Lorg/jivesoftware/smackx/colors/ConsistentColor$Deficiency;->none:Lorg/jivesoftware/smackx/colors/ConsistentColor$Deficiency;

    aput-object v4, v0, v1

    sget-object v1, Lorg/jivesoftware/smackx/colors/ConsistentColor$Deficiency;->redGreenBlindness:Lorg/jivesoftware/smackx/colors/ConsistentColor$Deficiency;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/colors/ConsistentColor$Deficiency;->blueBlindness:Lorg/jivesoftware/smackx/colors/ConsistentColor$Deficiency;

    aput-object v1, v0, v3

    sput-object v0, Lorg/jivesoftware/smackx/colors/ConsistentColor$Deficiency;->$VALUES:[Lorg/jivesoftware/smackx/colors/ConsistentColor$Deficiency;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/colors/ConsistentColor$Deficiency;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 34
    const-class v0, Lorg/jivesoftware/smackx/colors/ConsistentColor$Deficiency;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/colors/ConsistentColor$Deficiency;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/colors/ConsistentColor$Deficiency;
    .locals 1

    .line 34
    sget-object v0, Lorg/jivesoftware/smackx/colors/ConsistentColor$Deficiency;->$VALUES:[Lorg/jivesoftware/smackx/colors/ConsistentColor$Deficiency;

    invoke-virtual {v0}, [Lorg/jivesoftware/smackx/colors/ConsistentColor$Deficiency;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smackx/colors/ConsistentColor$Deficiency;

    return-object v0
.end method
