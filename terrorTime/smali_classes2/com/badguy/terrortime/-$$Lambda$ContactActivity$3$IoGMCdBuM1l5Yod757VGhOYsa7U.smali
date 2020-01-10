.class public final synthetic Lcom/badguy/terrortime/-$$Lambda$ContactActivity$3$IoGMCdBuM1l5Yod757VGhOYsa7U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/badguy/terrortime/-$$Lambda$ContactActivity$3$IoGMCdBuM1l5Yod757VGhOYsa7U;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badguy/terrortime/-$$Lambda$ContactActivity$3$IoGMCdBuM1l5Yod757VGhOYsa7U;

    invoke-direct {v0}, Lcom/badguy/terrortime/-$$Lambda$ContactActivity$3$IoGMCdBuM1l5Yod757VGhOYsa7U;-><init>()V

    sput-object v0, Lcom/badguy/terrortime/-$$Lambda$ContactActivity$3$IoGMCdBuM1l5Yod757VGhOYsa7U;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$ContactActivity$3$IoGMCdBuM1l5Yod757VGhOYsa7U;

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

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/badguy/terrortime/ContactActivity$3;->lambda$onItemClick$1(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method
