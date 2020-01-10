.class public final enum Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;
.super Ljava/lang/Enum;
.source "Item.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/pubsub/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemNamespace"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;

.field public static final enum event:Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;

.field public static final enum pubsub:Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;


# instance fields
.field private final type:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 55
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->ITEM:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    const/4 v2, 0x0

    const-string v3, "pubsub"

    invoke-direct {v0, v3, v2, v1}, Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/pubsub/PubSubElementType;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;->pubsub:Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;

    .line 56
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->ITEM_EVENT:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    const/4 v3, 0x1

    const-string v4, "event"

    invoke-direct {v0, v4, v3, v1}, Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/pubsub/PubSubElementType;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;->event:Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;->pubsub:Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;->event:Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;

    aput-object v1, v0, v3

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;->$VALUES:[Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/jivesoftware/smackx/pubsub/PubSubElementType;)V
    .locals 0
    .param p3, "type"    # Lorg/jivesoftware/smackx/pubsub/PubSubElementType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smackx/pubsub/PubSubElementType;",
            ")V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput-object p3, p0, Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;->type:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;)Lorg/jivesoftware/smackx/pubsub/PubSubElementType;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;

    .line 54
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;->type:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    return-object v0
.end method

.method public static fromXmlns(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;
    .locals 5
    .param p0, "xmlns"    # Ljava/lang/String;

    .line 65
    invoke-static {}, Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;->values()[Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 66
    .local v3, "itemNamespace":Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;
    iget-object v4, v3, Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;->type:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-virtual {v4}, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->getNamespace()Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->getXmlns()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 67
    return-object v3

    .line 65
    .end local v3    # "itemNamespace":Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid item namespace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 54
    const-class v0, Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;
    .locals 1

    .line 54
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;->$VALUES:[Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;

    invoke-virtual {v0}, [Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;

    return-object v0
.end method
