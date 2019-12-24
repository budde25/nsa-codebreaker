.class public final enum Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;
.super Ljava/lang/Enum;
.source "AdHocCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/commands/AdHocCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SpecificErrorCondition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

.field public static final enum badAction:Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

.field public static final enum badLocale:Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

.field public static final enum badPayload:Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

.field public static final enum badSessionid:Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

.field public static final enum malformedAction:Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

.field public static final enum sessionExpired:Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 441
    new-instance v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

    const/4 v1, 0x0

    const-string v2, "badAction"

    const-string v3, "bad-action"

    invoke-direct {v0, v2, v1, v3}, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;->badAction:Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

    .line 446
    new-instance v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

    const/4 v2, 0x1

    const-string v3, "malformedAction"

    const-string v4, "malformed-action"

    invoke-direct {v0, v3, v2, v4}, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;->malformedAction:Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

    .line 451
    new-instance v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

    const/4 v3, 0x2

    const-string v4, "badLocale"

    const-string v5, "bad-locale"

    invoke-direct {v0, v4, v3, v5}, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;->badLocale:Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

    .line 457
    new-instance v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

    const/4 v4, 0x3

    const-string v5, "badPayload"

    const-string v6, "bad-payload"

    invoke-direct {v0, v5, v4, v6}, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;->badPayload:Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

    .line 462
    new-instance v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

    const/4 v5, 0x4

    const-string v6, "badSessionid"

    const-string v7, "bad-sessionid"

    invoke-direct {v0, v6, v5, v7}, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;->badSessionid:Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

    .line 468
    new-instance v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

    const/4 v6, 0x5

    const-string v7, "sessionExpired"

    const-string v8, "session-expired"

    invoke-direct {v0, v7, v6, v8}, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;->sessionExpired:Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

    .line 436
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

    sget-object v7, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;->badAction:Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

    aput-object v7, v0, v1

    sget-object v1, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;->malformedAction:Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;->badLocale:Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;->badPayload:Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;->badSessionid:Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;->sessionExpired:Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

    aput-object v1, v0, v6

    sput-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;->$VALUES:[Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 472
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 473
    iput-object p3, p0, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;->value:Ljava/lang/String;

    .line 474
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 436
    const-class v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;
    .locals 1

    .line 436
    sget-object v0, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;->$VALUES:[Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

    invoke-virtual {v0}, [Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 478
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;->value:Ljava/lang/String;

    return-object v0
.end method
