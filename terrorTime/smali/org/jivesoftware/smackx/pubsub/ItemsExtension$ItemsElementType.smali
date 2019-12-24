.class public final enum Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;
.super Ljava/lang/Enum;
.source "ItemsExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/pubsub/ItemsExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemsElementType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;

.field public static final enum items:Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;

.field public static final enum retract:Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;


# instance fields
.field private final att:Ljava/lang/String;

.field private final elem:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 45
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->ITEMS:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    const/4 v2, 0x0

    const-string v3, "items"

    const-string v4, "max_items"

    invoke-direct {v0, v3, v2, v1, v4}, Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/pubsub/PubSubElementType;Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;->items:Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;

    .line 48
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->RETRACT:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    const/4 v3, 0x1

    const-string v4, "retract"

    const-string v5, "notify"

    invoke-direct {v0, v4, v3, v1, v5}, Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/pubsub/PubSubElementType;Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;->retract:Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;

    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;->items:Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;->retract:Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;->$VALUES:[Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/jivesoftware/smackx/pubsub/PubSubElementType;Ljava/lang/String;)V
    .locals 0
    .param p3, "nodeElement"    # Lorg/jivesoftware/smackx/pubsub/PubSubElementType;
    .param p4, "attribute"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smackx/pubsub/PubSubElementType;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput-object p3, p0, Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;->elem:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    .line 55
    iput-object p4, p0, Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;->att:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 43
    const-class v0, Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;
    .locals 1

    .line 43
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;->$VALUES:[Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;

    invoke-virtual {v0}, [Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;

    return-object v0
.end method


# virtual methods
.method public getElementAttribute()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;->att:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeElement()Lorg/jivesoftware/smackx/pubsub/PubSubElementType;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/ItemsExtension$ItemsElementType;->elem:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    return-object v0
.end method
