.class public final enum Lorg/jivesoftware/smackx/pubsub/ItemReply;
.super Ljava/lang/Enum;
.source "ItemReply.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smackx/pubsub/ItemReply;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smackx/pubsub/ItemReply;

.field public static final enum owner:Lorg/jivesoftware/smackx/pubsub/ItemReply;

.field public static final enum publisher:Lorg/jivesoftware/smackx/pubsub/ItemReply;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 27
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ItemReply;

    const/4 v1, 0x0

    const-string v2, "owner"

    invoke-direct {v0, v2, v1}, Lorg/jivesoftware/smackx/pubsub/ItemReply;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ItemReply;->owner:Lorg/jivesoftware/smackx/pubsub/ItemReply;

    .line 30
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ItemReply;

    const/4 v2, 0x1

    const-string v3, "publisher"

    invoke-direct {v0, v3, v2}, Lorg/jivesoftware/smackx/pubsub/ItemReply;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ItemReply;->publisher:Lorg/jivesoftware/smackx/pubsub/ItemReply;

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/jivesoftware/smackx/pubsub/ItemReply;

    sget-object v3, Lorg/jivesoftware/smackx/pubsub/ItemReply;->owner:Lorg/jivesoftware/smackx/pubsub/ItemReply;

    aput-object v3, v0, v1

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ItemReply;->publisher:Lorg/jivesoftware/smackx/pubsub/ItemReply;

    aput-object v1, v0, v2

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ItemReply;->$VALUES:[Lorg/jivesoftware/smackx/pubsub/ItemReply;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/ItemReply;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lorg/jivesoftware/smackx/pubsub/ItemReply;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/pubsub/ItemReply;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/pubsub/ItemReply;
    .locals 1

    .line 25
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ItemReply;->$VALUES:[Lorg/jivesoftware/smackx/pubsub/ItemReply;

    invoke-virtual {v0}, [Lorg/jivesoftware/smackx/pubsub/ItemReply;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smackx/pubsub/ItemReply;

    return-object v0
.end method
