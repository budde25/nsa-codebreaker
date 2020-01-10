.class public final enum Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;
.super Ljava/lang/Enum;
.source "AMPDeliverCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/amp/AMPDeliverCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;

.field public static final enum direct:Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;

.field public static final enum forward:Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;

.field public static final enum gateway:Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;

.field public static final enum none:Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;

.field public static final enum stored:Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 74
    new-instance v0, Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;

    const/4 v1, 0x0

    const-string v2, "direct"

    invoke-direct {v0, v2, v1}, Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;->direct:Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;

    .line 78
    new-instance v0, Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;

    const/4 v2, 0x1

    const-string v3, "forward"

    invoke-direct {v0, v3, v2}, Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;->forward:Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;

    .line 82
    new-instance v0, Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;

    const/4 v3, 0x2

    const-string v4, "gateway"

    invoke-direct {v0, v4, v3}, Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;->gateway:Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;

    .line 86
    new-instance v0, Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;

    const/4 v4, 0x3

    const-string v5, "none"

    invoke-direct {v0, v5, v4}, Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;->none:Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;

    .line 90
    new-instance v0, Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;

    const/4 v5, 0x4

    const-string v6, "stored"

    invoke-direct {v0, v6, v5}, Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;->stored:Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;

    .line 70
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;

    sget-object v6, Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;->direct:Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;

    aput-object v6, v0, v1

    sget-object v1, Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;->forward:Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;->gateway:Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;->none:Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;->stored:Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;

    aput-object v1, v0, v5

    sput-object v0, Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;->$VALUES:[Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 70
    const-class v0, Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;
    .locals 1

    .line 70
    sget-object v0, Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;->$VALUES:[Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;

    invoke-virtual {v0}, [Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smackx/amp/AMPDeliverCondition$Value;

    return-object v0
.end method
