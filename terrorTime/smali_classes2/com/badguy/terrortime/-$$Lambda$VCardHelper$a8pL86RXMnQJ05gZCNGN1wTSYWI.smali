.class public final synthetic Lcom/badguy/terrortime/-$$Lambda$VCardHelper$a8pL86RXMnQJ05gZCNGN1wTSYWI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/badguy/terrortime/-$$Lambda$VCardHelper$a8pL86RXMnQJ05gZCNGN1wTSYWI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badguy/terrortime/-$$Lambda$VCardHelper$a8pL86RXMnQJ05gZCNGN1wTSYWI;

    invoke-direct {v0}, Lcom/badguy/terrortime/-$$Lambda$VCardHelper$a8pL86RXMnQJ05gZCNGN1wTSYWI;-><init>()V

    sput-object v0, Lcom/badguy/terrortime/-$$Lambda$VCardHelper$a8pL86RXMnQJ05gZCNGN1wTSYWI;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$VCardHelper$a8pL86RXMnQJ05gZCNGN1wTSYWI;

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

    invoke-static {}, Lcom/badguy/terrortime/VCardHelper;->lambda$savePublicKey$1()Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method
