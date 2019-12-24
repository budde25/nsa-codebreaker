.class public final synthetic Lcom/badguy/terrortime/-$$Lambda$Client$6isRKf6DuVm8vF1iOvC0uukRRY4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/badguy/terrortime/-$$Lambda$Client$6isRKf6DuVm8vF1iOvC0uukRRY4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badguy/terrortime/-$$Lambda$Client$6isRKf6DuVm8vF1iOvC0uukRRY4;

    invoke-direct {v0}, Lcom/badguy/terrortime/-$$Lambda$Client$6isRKf6DuVm8vF1iOvC0uukRRY4;-><init>()V

    sput-object v0, Lcom/badguy/terrortime/-$$Lambda$Client$6isRKf6DuVm8vF1iOvC0uukRRY4;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$Client$6isRKf6DuVm8vF1iOvC0uukRRY4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/badguy/terrortime/Client;->lambda$decryptMessage$4()Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method
