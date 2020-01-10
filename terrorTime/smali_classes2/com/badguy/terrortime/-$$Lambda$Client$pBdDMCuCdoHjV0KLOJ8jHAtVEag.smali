.class public final synthetic Lcom/badguy/terrortime/-$$Lambda$Client$pBdDMCuCdoHjV0KLOJ8jHAtVEag;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/badguy/terrortime/-$$Lambda$Client$pBdDMCuCdoHjV0KLOJ8jHAtVEag;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badguy/terrortime/-$$Lambda$Client$pBdDMCuCdoHjV0KLOJ8jHAtVEag;

    invoke-direct {v0}, Lcom/badguy/terrortime/-$$Lambda$Client$pBdDMCuCdoHjV0KLOJ8jHAtVEag;-><init>()V

    sput-object v0, Lcom/badguy/terrortime/-$$Lambda$Client$pBdDMCuCdoHjV0KLOJ8jHAtVEag;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$Client$pBdDMCuCdoHjV0KLOJ8jHAtVEag;

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

    invoke-static {}, Lcom/badguy/terrortime/Client;->lambda$setEncrypted_privateKey$12()Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method
