.class public final synthetic Lcom/badguy/terrortime/-$$Lambda$ContactList$yM6Y_bc5OGVMb-5HpOjHLyarW_4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/badguy/terrortime/-$$Lambda$ContactList$yM6Y_bc5OGVMb-5HpOjHLyarW_4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badguy/terrortime/-$$Lambda$ContactList$yM6Y_bc5OGVMb-5HpOjHLyarW_4;

    invoke-direct {v0}, Lcom/badguy/terrortime/-$$Lambda$ContactList$yM6Y_bc5OGVMb-5HpOjHLyarW_4;-><init>()V

    sput-object v0, Lcom/badguy/terrortime/-$$Lambda$ContactList$yM6Y_bc5OGVMb-5HpOjHLyarW_4;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$ContactList$yM6Y_bc5OGVMb-5HpOjHLyarW_4;

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

    invoke-static {}, Lcom/badguy/terrortime/ContactList;->lambda$getUserJid$2()Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method
