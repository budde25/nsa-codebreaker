.class public final enum Lorg/jivesoftware/smackx/pubsub/EventElementType;
.super Ljava/lang/Enum;
.source "EventElementType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smackx/pubsub/EventElementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smackx/pubsub/EventElementType;

.field public static final enum collection:Lorg/jivesoftware/smackx/pubsub/EventElementType;

.field public static final enum configuration:Lorg/jivesoftware/smackx/pubsub/EventElementType;

.field public static final enum delete:Lorg/jivesoftware/smackx/pubsub/EventElementType;

.field public static final enum items:Lorg/jivesoftware/smackx/pubsub/EventElementType;

.field public static final enum purge:Lorg/jivesoftware/smackx/pubsub/EventElementType;

.field public static final enum subscription:Lorg/jivesoftware/smackx/pubsub/EventElementType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 28
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/EventElementType;

    const/4 v1, 0x0

    const-string v2, "collection"

    invoke-direct {v0, v2, v1}, Lorg/jivesoftware/smackx/pubsub/EventElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/EventElementType;->collection:Lorg/jivesoftware/smackx/pubsub/EventElementType;

    .line 31
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/EventElementType;

    const/4 v2, 0x1

    const-string v3, "configuration"

    invoke-direct {v0, v3, v2}, Lorg/jivesoftware/smackx/pubsub/EventElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/EventElementType;->configuration:Lorg/jivesoftware/smackx/pubsub/EventElementType;

    .line 34
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/EventElementType;

    const/4 v3, 0x2

    const-string v4, "delete"

    invoke-direct {v0, v4, v3}, Lorg/jivesoftware/smackx/pubsub/EventElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/EventElementType;->delete:Lorg/jivesoftware/smackx/pubsub/EventElementType;

    .line 37
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/EventElementType;

    const/4 v4, 0x3

    const-string v5, "items"

    invoke-direct {v0, v5, v4}, Lorg/jivesoftware/smackx/pubsub/EventElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/EventElementType;->items:Lorg/jivesoftware/smackx/pubsub/EventElementType;

    .line 40
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/EventElementType;

    const/4 v5, 0x4

    const-string v6, "purge"

    invoke-direct {v0, v6, v5}, Lorg/jivesoftware/smackx/pubsub/EventElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/EventElementType;->purge:Lorg/jivesoftware/smackx/pubsub/EventElementType;

    .line 43
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/EventElementType;

    const/4 v6, 0x5

    const-string v7, "subscription"

    invoke-direct {v0, v7, v6}, Lorg/jivesoftware/smackx/pubsub/EventElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/EventElementType;->subscription:Lorg/jivesoftware/smackx/pubsub/EventElementType;

    .line 25
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/jivesoftware/smackx/pubsub/EventElementType;

    sget-object v7, Lorg/jivesoftware/smackx/pubsub/EventElementType;->collection:Lorg/jivesoftware/smackx/pubsub/EventElementType;

    aput-object v7, v0, v1

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/EventElementType;->configuration:Lorg/jivesoftware/smackx/pubsub/EventElementType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/EventElementType;->delete:Lorg/jivesoftware/smackx/pubsub/EventElementType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/EventElementType;->items:Lorg/jivesoftware/smackx/pubsub/EventElementType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/EventElementType;->purge:Lorg/jivesoftware/smackx/pubsub/EventElementType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/EventElementType;->subscription:Lorg/jivesoftware/smackx/pubsub/EventElementType;

    aput-object v1, v0, v6

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/EventElementType;->$VALUES:[Lorg/jivesoftware/smackx/pubsub/EventElementType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/EventElementType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lorg/jivesoftware/smackx/pubsub/EventElementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/pubsub/EventElementType;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/pubsub/EventElementType;
    .locals 1

    .line 25
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/EventElementType;->$VALUES:[Lorg/jivesoftware/smackx/pubsub/EventElementType;

    invoke-virtual {v0}, [Lorg/jivesoftware/smackx/pubsub/EventElementType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smackx/pubsub/EventElementType;

    return-object v0
.end method
