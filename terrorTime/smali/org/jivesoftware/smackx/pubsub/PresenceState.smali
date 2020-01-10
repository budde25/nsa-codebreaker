.class public final enum Lorg/jivesoftware/smackx/pubsub/PresenceState;
.super Ljava/lang/Enum;
.source "PresenceState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smackx/pubsub/PresenceState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smackx/pubsub/PresenceState;

.field public static final enum away:Lorg/jivesoftware/smackx/pubsub/PresenceState;

.field public static final enum chat:Lorg/jivesoftware/smackx/pubsub/PresenceState;

.field public static final enum dnd:Lorg/jivesoftware/smackx/pubsub/PresenceState;

.field public static final enum online:Lorg/jivesoftware/smackx/pubsub/PresenceState;

.field public static final enum xa:Lorg/jivesoftware/smackx/pubsub/PresenceState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 26
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PresenceState;

    const/4 v1, 0x0

    const-string v2, "chat"

    invoke-direct {v0, v2, v1}, Lorg/jivesoftware/smackx/pubsub/PresenceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PresenceState;->chat:Lorg/jivesoftware/smackx/pubsub/PresenceState;

    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PresenceState;

    const/4 v2, 0x1

    const-string v3, "online"

    invoke-direct {v0, v3, v2}, Lorg/jivesoftware/smackx/pubsub/PresenceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PresenceState;->online:Lorg/jivesoftware/smackx/pubsub/PresenceState;

    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PresenceState;

    const/4 v3, 0x2

    const-string v4, "away"

    invoke-direct {v0, v4, v3}, Lorg/jivesoftware/smackx/pubsub/PresenceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PresenceState;->away:Lorg/jivesoftware/smackx/pubsub/PresenceState;

    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PresenceState;

    const/4 v4, 0x3

    const-string v5, "xa"

    invoke-direct {v0, v5, v4}, Lorg/jivesoftware/smackx/pubsub/PresenceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PresenceState;->xa:Lorg/jivesoftware/smackx/pubsub/PresenceState;

    new-instance v0, Lorg/jivesoftware/smackx/pubsub/PresenceState;

    const/4 v5, 0x4

    const-string v6, "dnd"

    invoke-direct {v0, v6, v5}, Lorg/jivesoftware/smackx/pubsub/PresenceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PresenceState;->dnd:Lorg/jivesoftware/smackx/pubsub/PresenceState;

    .line 25
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/jivesoftware/smackx/pubsub/PresenceState;

    sget-object v6, Lorg/jivesoftware/smackx/pubsub/PresenceState;->chat:Lorg/jivesoftware/smackx/pubsub/PresenceState;

    aput-object v6, v0, v1

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PresenceState;->online:Lorg/jivesoftware/smackx/pubsub/PresenceState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PresenceState;->away:Lorg/jivesoftware/smackx/pubsub/PresenceState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PresenceState;->xa:Lorg/jivesoftware/smackx/pubsub/PresenceState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/PresenceState;->dnd:Lorg/jivesoftware/smackx/pubsub/PresenceState;

    aput-object v1, v0, v5

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/PresenceState;->$VALUES:[Lorg/jivesoftware/smackx/pubsub/PresenceState;

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

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/PresenceState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lorg/jivesoftware/smackx/pubsub/PresenceState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/pubsub/PresenceState;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/pubsub/PresenceState;
    .locals 1

    .line 25
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/PresenceState;->$VALUES:[Lorg/jivesoftware/smackx/pubsub/PresenceState;

    invoke-virtual {v0}, [Lorg/jivesoftware/smackx/pubsub/PresenceState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smackx/pubsub/PresenceState;

    return-object v0
.end method
