.class public final enum Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;
.super Ljava/lang/Enum;
.source "Roster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/roster/Roster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SubscriptionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;

.field public static final enum accept_all:Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;

.field public static final enum manual:Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;

.field public static final enum reject_all:Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1433
    new-instance v0, Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;

    const/4 v1, 0x0

    const-string v2, "accept_all"

    invoke-direct {v0, v2, v1}, Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;->accept_all:Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;

    .line 1438
    new-instance v0, Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;

    const/4 v2, 0x1

    const-string v3, "reject_all"

    invoke-direct {v0, v3, v2}, Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;->reject_all:Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;

    .line 1446
    new-instance v0, Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;

    const/4 v3, 0x2

    const-string v4, "manual"

    invoke-direct {v0, v4, v3}, Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;->manual:Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;

    .line 1426
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;

    sget-object v4, Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;->accept_all:Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;

    aput-object v4, v0, v1

    sget-object v1, Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;->reject_all:Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;->manual:Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;

    aput-object v1, v0, v3

    sput-object v0, Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;->$VALUES:[Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1426
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1426
    const-class v0, Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;
    .locals 1

    .line 1426
    sget-object v0, Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;->$VALUES:[Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;

    invoke-virtual {v0}, [Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smack/roster/Roster$SubscriptionMode;

    return-object v0
.end method
