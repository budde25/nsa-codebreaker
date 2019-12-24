.class public final enum Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;
.super Ljava/lang/Enum;
.source "AdHocCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/commands/AdHocCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

.field public static final enum canceled:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

.field public static final enum completed:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

.field public static final enum executing:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 388
    new-instance v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    const/4 v1, 0x0

    const-string v2, "executing"

    invoke-direct {v0, v2, v1}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->executing:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    .line 393
    new-instance v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    const/4 v2, 0x1

    const-string v3, "completed"

    invoke-direct {v0, v3, v2}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->completed:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    .line 398
    new-instance v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    const/4 v3, 0x2

    const-string v4, "canceled"

    invoke-direct {v0, v4, v3}, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->canceled:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    .line 383
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    sget-object v4, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->executing:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    aput-object v4, v0, v1

    sget-object v1, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->completed:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->canceled:Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    aput-object v1, v0, v3

    sput-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->$VALUES:[Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 383
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 383
    const-class v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;
    .locals 1

    .line 383
    sget-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->$VALUES:[Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    invoke-virtual {v0}, [Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smackx/commands/AdHocCommand$Status;

    return-object v0
.end method
