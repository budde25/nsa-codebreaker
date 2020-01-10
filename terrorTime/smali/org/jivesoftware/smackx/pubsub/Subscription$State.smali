.class public final enum Lorg/jivesoftware/smackx/pubsub/Subscription$State;
.super Ljava/lang/Enum;
.source "Subscription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/pubsub/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smackx/pubsub/Subscription$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smackx/pubsub/Subscription$State;

.field public static final enum none:Lorg/jivesoftware/smackx/pubsub/Subscription$State;

.field public static final enum pending:Lorg/jivesoftware/smackx/pubsub/Subscription$State;

.field public static final enum subscribed:Lorg/jivesoftware/smackx/pubsub/Subscription$State;

.field public static final enum unconfigured:Lorg/jivesoftware/smackx/pubsub/Subscription$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 35
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/Subscription$State;

    const/4 v1, 0x0

    const-string v2, "subscribed"

    invoke-direct {v0, v2, v1}, Lorg/jivesoftware/smackx/pubsub/Subscription$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/Subscription$State;->subscribed:Lorg/jivesoftware/smackx/pubsub/Subscription$State;

    new-instance v0, Lorg/jivesoftware/smackx/pubsub/Subscription$State;

    const/4 v2, 0x1

    const-string v3, "unconfigured"

    invoke-direct {v0, v3, v2}, Lorg/jivesoftware/smackx/pubsub/Subscription$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/Subscription$State;->unconfigured:Lorg/jivesoftware/smackx/pubsub/Subscription$State;

    new-instance v0, Lorg/jivesoftware/smackx/pubsub/Subscription$State;

    const/4 v3, 0x2

    const-string v4, "pending"

    invoke-direct {v0, v4, v3}, Lorg/jivesoftware/smackx/pubsub/Subscription$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/Subscription$State;->pending:Lorg/jivesoftware/smackx/pubsub/Subscription$State;

    new-instance v0, Lorg/jivesoftware/smackx/pubsub/Subscription$State;

    const/4 v4, 0x3

    const-string v5, "none"

    invoke-direct {v0, v5, v4}, Lorg/jivesoftware/smackx/pubsub/Subscription$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/Subscription$State;->none:Lorg/jivesoftware/smackx/pubsub/Subscription$State;

    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/jivesoftware/smackx/pubsub/Subscription$State;

    sget-object v5, Lorg/jivesoftware/smackx/pubsub/Subscription$State;->subscribed:Lorg/jivesoftware/smackx/pubsub/Subscription$State;

    aput-object v5, v0, v1

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/Subscription$State;->unconfigured:Lorg/jivesoftware/smackx/pubsub/Subscription$State;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/Subscription$State;->pending:Lorg/jivesoftware/smackx/pubsub/Subscription$State;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/Subscription$State;->none:Lorg/jivesoftware/smackx/pubsub/Subscription$State;

    aput-object v1, v0, v4

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/Subscription$State;->$VALUES:[Lorg/jivesoftware/smackx/pubsub/Subscription$State;

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

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/Subscription$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 34
    const-class v0, Lorg/jivesoftware/smackx/pubsub/Subscription$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/pubsub/Subscription$State;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/pubsub/Subscription$State;
    .locals 1

    .line 34
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/Subscription$State;->$VALUES:[Lorg/jivesoftware/smackx/pubsub/Subscription$State;

    invoke-virtual {v0}, [Lorg/jivesoftware/smackx/pubsub/Subscription$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smackx/pubsub/Subscription$State;

    return-object v0
.end method
