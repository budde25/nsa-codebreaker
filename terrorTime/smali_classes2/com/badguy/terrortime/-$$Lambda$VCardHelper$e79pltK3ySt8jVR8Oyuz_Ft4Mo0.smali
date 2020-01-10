.class public final synthetic Lcom/badguy/terrortime/-$$Lambda$VCardHelper$e79pltK3ySt8jVR8Oyuz_Ft4Mo0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/badguy/terrortime/-$$Lambda$VCardHelper$e79pltK3ySt8jVR8Oyuz_Ft4Mo0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badguy/terrortime/-$$Lambda$VCardHelper$e79pltK3ySt8jVR8Oyuz_Ft4Mo0;

    invoke-direct {v0}, Lcom/badguy/terrortime/-$$Lambda$VCardHelper$e79pltK3ySt8jVR8Oyuz_Ft4Mo0;-><init>()V

    sput-object v0, Lcom/badguy/terrortime/-$$Lambda$VCardHelper$e79pltK3ySt8jVR8Oyuz_Ft4Mo0;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$VCardHelper$e79pltK3ySt8jVR8Oyuz_Ft4Mo0;

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

    invoke-static {}, Lcom/badguy/terrortime/VCardHelper;->lambda$getPublicKeys$7()Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method
