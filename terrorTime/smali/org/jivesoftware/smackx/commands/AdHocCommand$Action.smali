.class public final enum Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;
.super Ljava/lang/Enum;
.source "AdHocCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/commands/AdHocCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

.field public static final enum cancel:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

.field public static final enum complete:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

.field public static final enum execute:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

.field public static final enum next:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

.field public static final enum prev:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

.field public static final enum unknown:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 407
    new-instance v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    const/4 v1, 0x0

    const-string v2, "execute"

    invoke-direct {v0, v2, v1}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->execute:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    .line 412
    new-instance v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    const/4 v2, 0x1

    const-string v3, "cancel"

    invoke-direct {v0, v3, v2}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->cancel:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    .line 417
    new-instance v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    const/4 v3, 0x2

    const-string v4, "prev"

    invoke-direct {v0, v4, v3}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->prev:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    .line 422
    new-instance v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    const/4 v4, 0x3

    const-string v5, "next"

    invoke-direct {v0, v5, v4}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->next:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    .line 427
    new-instance v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    const/4 v5, 0x4

    const-string v6, "complete"

    invoke-direct {v0, v6, v5}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->complete:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    .line 433
    new-instance v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    const/4 v6, 0x5

    const-string v7, "unknown"

    invoke-direct {v0, v7, v6}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->unknown:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    .line 401
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    sget-object v7, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->execute:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    aput-object v7, v0, v1

    sget-object v1, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->cancel:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->prev:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->next:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->complete:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->unknown:Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    aput-object v1, v0, v6

    sput-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->$VALUES:[Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 401
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 401
    const-class v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;
    .locals 1

    .line 401
    sget-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->$VALUES:[Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    invoke-virtual {v0}, [Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smackx/commands/AdHocCommand$Action;

    return-object v0
.end method
