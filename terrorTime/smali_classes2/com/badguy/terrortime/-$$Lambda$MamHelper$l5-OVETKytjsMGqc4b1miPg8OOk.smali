.class public final synthetic Lcom/badguy/terrortime/-$$Lambda$MamHelper$l5-OVETKytjsMGqc4b1miPg8OOk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/badguy/terrortime/-$$Lambda$MamHelper$l5-OVETKytjsMGqc4b1miPg8OOk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badguy/terrortime/-$$Lambda$MamHelper$l5-OVETKytjsMGqc4b1miPg8OOk;

    invoke-direct {v0}, Lcom/badguy/terrortime/-$$Lambda$MamHelper$l5-OVETKytjsMGqc4b1miPg8OOk;-><init>()V

    sput-object v0, Lcom/badguy/terrortime/-$$Lambda$MamHelper$l5-OVETKytjsMGqc4b1miPg8OOk;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$MamHelper$l5-OVETKytjsMGqc4b1miPg8OOk;

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

    check-cast p1, Lorg/jivesoftware/smack/packet/Message$Body;

    invoke-static {p1}, Lcom/badguy/terrortime/MamHelper;->lambda$null$3(Lorg/jivesoftware/smack/packet/Message$Body;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
