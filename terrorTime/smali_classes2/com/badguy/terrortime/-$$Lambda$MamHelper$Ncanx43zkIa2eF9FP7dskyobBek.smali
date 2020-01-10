.class public final synthetic Lcom/badguy/terrortime/-$$Lambda$MamHelper$Ncanx43zkIa2eF9FP7dskyobBek;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/badguy/terrortime/-$$Lambda$MamHelper$Ncanx43zkIa2eF9FP7dskyobBek;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badguy/terrortime/-$$Lambda$MamHelper$Ncanx43zkIa2eF9FP7dskyobBek;

    invoke-direct {v0}, Lcom/badguy/terrortime/-$$Lambda$MamHelper$Ncanx43zkIa2eF9FP7dskyobBek;-><init>()V

    sput-object v0, Lcom/badguy/terrortime/-$$Lambda$MamHelper$Ncanx43zkIa2eF9FP7dskyobBek;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$MamHelper$Ncanx43zkIa2eF9FP7dskyobBek;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lorg/jivesoftware/smack/packet/Message$Body;

    invoke-static {p1}, Lcom/badguy/terrortime/MamHelper;->lambda$Ncanx43zkIa2eF9FP7dskyobBek(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
