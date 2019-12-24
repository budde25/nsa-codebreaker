.class public final enum Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;
.super Ljava/lang/Enum;
.source "DeliveryReceiptManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AutoReceiptMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;

.field public static final enum always:Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;

.field public static final enum disabled:Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;

.field public static final enum ifIsSubscribed:Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 112
    new-instance v0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;

    const/4 v1, 0x0

    const-string v2, "disabled"

    invoke-direct {v0, v2, v1}, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;->disabled:Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;

    .line 117
    new-instance v0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;

    const/4 v2, 0x1

    const-string v3, "ifIsSubscribed"

    invoke-direct {v0, v3, v2}, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;->ifIsSubscribed:Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;

    .line 124
    new-instance v0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;

    const/4 v3, 0x2

    const-string v4, "always"

    invoke-direct {v0, v4, v3}, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;->always:Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;

    .line 107
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;

    sget-object v4, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;->disabled:Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;

    aput-object v4, v0, v1

    sget-object v1, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;->ifIsSubscribed:Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;->always:Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;

    aput-object v1, v0, v3

    sput-object v0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;->$VALUES:[Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 107
    const-class v0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;
    .locals 1

    .line 107
    sget-object v0, Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;->$VALUES:[Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;

    invoke-virtual {v0}, [Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smackx/receipts/DeliveryReceiptManager$AutoReceiptMode;

    return-object v0
.end method
