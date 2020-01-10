.class public final enum Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;
.super Ljava/lang/Enum;
.source "SubscriptionsExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SubscriptionsNamespace"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;

.field public static final enum basic:Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;

.field public static final enum owner:Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;


# instance fields
.field public final type:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 29
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->SUBSCRIPTIONS:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    const/4 v2, 0x0

    const-string v3, "basic"

    invoke-direct {v0, v3, v2, v1}, Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/pubsub/PubSubElementType;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;->basic:Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;

    .line 30
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->SUBSCRIPTIONS_OWNER:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    const/4 v3, 0x1

    const-string v4, "owner"

    invoke-direct {v0, v4, v3, v1}, Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;-><init>(Ljava/lang/String;ILorg/jivesoftware/smackx/pubsub/PubSubElementType;)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;->owner:Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;->basic:Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;->owner:Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;

    aput-object v1, v0, v3

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;->$VALUES:[Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;

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

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput-object p3, p0, Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;->type:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    .line 36
    return-void
.end method

.method public static fromXmlns(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;
    .locals 5
    .param p0, "xmlns"    # Ljava/lang/String;

    .line 39
    invoke-static {}, Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;->values()[Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 40
    .local v3, "subscriptionsNamespace":Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;
    iget-object v4, v3, Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;->type:Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    invoke-virtual {v4}, Lorg/jivesoftware/smackx/pubsub/PubSubElementType;->getNamespace()Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jivesoftware/smackx/pubsub/packet/PubSubNamespace;->getXmlns()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 41
    return-object v3

    .line 39
    .end local v3    # "subscriptionsNamespace":Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 44
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Subscription namespace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 28
    const-class v0, Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;
    .locals 1

    .line 28
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;->$VALUES:[Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;

    invoke-virtual {v0}, [Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smackx/pubsub/SubscriptionsExtension$SubscriptionsNamespace;

    return-object v0
.end method
