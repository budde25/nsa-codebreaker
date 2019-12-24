.class Lcom/badguy/terrortime/LoginActivity$3;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badguy/terrortime/LoginActivity;->showAlertAndFinishActivity(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badguy/terrortime/LoginActivity;


# direct methods
.method constructor <init>(Lcom/badguy/terrortime/LoginActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/badguy/terrortime/LoginActivity;

    .line 480
    iput-object p1, p0, Lcom/badguy/terrortime/LoginActivity$3;->this$0:Lcom/badguy/terrortime/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 482
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/badguy/terrortime/LoginActivity$3;->this$0:Lcom/badguy/terrortime/LoginActivity;

    const-class v2, Lcom/badguy/terrortime/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 483
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/badguy/terrortime/LoginActivity$3;->this$0:Lcom/badguy/terrortime/LoginActivity;

    invoke-virtual {v1, v0}, Lcom/badguy/terrortime/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 484
    iget-object v1, p0, Lcom/badguy/terrortime/LoginActivity$3;->this$0:Lcom/badguy/terrortime/LoginActivity;

    invoke-virtual {v1}, Lcom/badguy/terrortime/LoginActivity;->finish()V

    .line 485
    return-void
.end method
