.class public final synthetic Lcom/badguy/terrortime/-$$Lambda$ContactActivity$Y__yy_3w9K5VEeJUPl9He0_AkV0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/badguy/terrortime/-$$Lambda$ContactActivity$Y__yy_3w9K5VEeJUPl9He0_AkV0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badguy/terrortime/-$$Lambda$ContactActivity$Y__yy_3w9K5VEeJUPl9He0_AkV0;

    invoke-direct {v0}, Lcom/badguy/terrortime/-$$Lambda$ContactActivity$Y__yy_3w9K5VEeJUPl9He0_AkV0;-><init>()V

    sput-object v0, Lcom/badguy/terrortime/-$$Lambda$ContactActivity$Y__yy_3w9K5VEeJUPl9He0_AkV0;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$ContactActivity$Y__yy_3w9K5VEeJUPl9He0_AkV0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/badguy/terrortime/Message;

    invoke-static {p1}, Lcom/badguy/terrortime/ContactActivity;->lambda$onCreate$5(Lcom/badguy/terrortime/Message;)Lcom/badguy/terrortime/Message;

    move-result-object p1

    return-object p1
.end method
