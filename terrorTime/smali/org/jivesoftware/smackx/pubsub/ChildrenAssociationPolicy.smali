.class public final enum Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;
.super Ljava/lang/Enum;
.source "ChildrenAssociationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;

.field public static final enum all:Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;

.field public static final enum owners:Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;

.field public static final enum whitelist:Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 27
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;

    const/4 v1, 0x0

    const-string v2, "all"

    invoke-direct {v0, v2, v1}, Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;->all:Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;

    .line 30
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;

    const/4 v2, 0x1

    const-string v3, "owners"

    invoke-direct {v0, v3, v2}, Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;->owners:Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;

    .line 33
    new-instance v0, Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;

    const/4 v3, 0x2

    const-string v4, "whitelist"

    invoke-direct {v0, v4, v3}, Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;->whitelist:Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;

    sget-object v4, Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;->all:Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;

    aput-object v4, v0, v1

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;->owners:Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;->whitelist:Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;

    aput-object v1, v0, v3

    sput-object v0, Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;->$VALUES:[Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;

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

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;
    .locals 1

    .line 25
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;->$VALUES:[Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;

    invoke-virtual {v0}, [Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smackx/pubsub/ChildrenAssociationPolicy;

    return-object v0
.end method
