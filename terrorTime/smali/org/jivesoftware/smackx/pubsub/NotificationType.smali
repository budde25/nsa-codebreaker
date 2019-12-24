.class public final enum Lorg/jivesoftware/smackx/pubsub/NotificationType;
.super Ljava/lang/Enum;
.source "NotificationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smackx/pubsub/NotificationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smackx/pubsub/NotificationType;

.field public static final enum headline:Lorg/jivesoftware/smackx/pubsub/NotificationType;

.field public static final enum normal:Lorg/jivesoftware/smackx/pubsub/NotificationType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 26
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/NotificationType;

    const/4 v1, 0x0

    const-string v2, "normal"

    invoke-direct {v0, v2, v1}, Lorg/jivesoftware/smackx/pubsub/NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/NotificationType;->normal:Lorg/jivesoftware/smackx/pubsub/NotificationType;

    .line 27
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/NotificationType;

    const/4 v2, 0x1

    const-string v3, "headline"

    invoke-direct {v0, v3, v2}, Lorg/jivesoftware/smackx/pubsub/NotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/NotificationType;->headline:Lorg/jivesoftware/smackx/pubsub/NotificationType;

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/jivesoftware/smackx/pubsub/NotificationType;

    sget-object v3, Lorg/jivesoftware/smackx/pubsub/NotificationType;->normal:Lorg/jivesoftware/smackx/pubsub/NotificationType;

    aput-object v3, v0, v1

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/NotificationType;->headline:Lorg/jivesoftware/smackx/pubsub/NotificationType;

    aput-object v1, v0, v2

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/NotificationType;->$VALUES:[Lorg/jivesoftware/smackx/pubsub/NotificationType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/NotificationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lorg/jivesoftware/smackx/pubsub/NotificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/pubsub/NotificationType;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/pubsub/NotificationType;
    .locals 1

    .line 25
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/NotificationType;->$VALUES:[Lorg/jivesoftware/smackx/pubsub/NotificationType;

    invoke-virtual {v0}, [Lorg/jivesoftware/smackx/pubsub/NotificationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smackx/pubsub/NotificationType;

    return-object v0
.end method
