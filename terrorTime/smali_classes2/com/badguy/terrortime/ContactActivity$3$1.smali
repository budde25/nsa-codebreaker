.class Lcom/badguy/terrortime/ContactActivity$3$1;
.super Ljava/lang/Object;
.source "ContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badguy/terrortime/ContactActivity$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/badguy/terrortime/ContactActivity$3;


# direct methods
.method constructor <init>(Lcom/badguy/terrortime/ContactActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/badguy/terrortime/ContactActivity$3;

    .line 155
    iput-object p1, p0, Lcom/badguy/terrortime/ContactActivity$3$1;->this$1:Lcom/badguy/terrortime/ContactActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 157
    return-void
.end method
