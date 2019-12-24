.class public final synthetic Lcom/badguy/terrortime/-$$Lambda$ContactListAdapter$wwIf5GIASlhI74vbe90XngFWTcE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/badguy/terrortime/-$$Lambda$ContactListAdapter$wwIf5GIASlhI74vbe90XngFWTcE;->f$0:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/badguy/terrortime/-$$Lambda$ContactListAdapter$wwIf5GIASlhI74vbe90XngFWTcE;->f$0:I

    invoke-static {v0}, Lcom/badguy/terrortime/ContactListAdapter;->lambda$getView$0(I)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method
