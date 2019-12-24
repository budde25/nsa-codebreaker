.class public final enum Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;
.super Ljava/lang/Enum;
.source "SubscribeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/roster/SubscribeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SubscribeAnswer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;

.field public static final enum Approve:Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;

.field public static final enum ApproveAndAlsoRequestIfRequired:Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;

.field public static final enum Deny:Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 38
    new-instance v0, Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;

    const/4 v1, 0x0

    const-string v2, "Approve"

    invoke-direct {v0, v2, v1}, Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;->Approve:Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;

    .line 44
    new-instance v0, Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;

    const/4 v2, 0x1

    const-string v3, "ApproveAndAlsoRequestIfRequired"

    invoke-direct {v0, v3, v2}, Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;->ApproveAndAlsoRequestIfRequired:Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;

    .line 49
    new-instance v0, Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;

    const/4 v3, 0x2

    const-string v4, "Deny"

    invoke-direct {v0, v4, v3}, Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;->Deny:Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;

    sget-object v4, Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;->Approve:Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;

    aput-object v4, v0, v1

    sget-object v1, Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;->ApproveAndAlsoRequestIfRequired:Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;->Deny:Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;

    aput-object v1, v0, v3

    sput-object v0, Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;->$VALUES:[Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;

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

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 34
    const-class v0, Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;
    .locals 1

    .line 34
    sget-object v0, Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;->$VALUES:[Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;

    invoke-virtual {v0}, [Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;

    return-object v0
.end method
