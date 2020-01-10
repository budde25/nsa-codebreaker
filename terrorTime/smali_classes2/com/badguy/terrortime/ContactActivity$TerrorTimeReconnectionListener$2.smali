.class Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener$2;
.super Ljava/lang/Object;
.source "ContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener;->reconnectionFailed(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener;


# direct methods
.method constructor <init>(Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener;

    .line 330
    iput-object p1, p0, Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener$2;->this$1:Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 332
    iget-object v0, p0, Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener$2;->this$1:Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener;

    iget-object v0, v0, Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener;->this$0:Lcom/badguy/terrortime/ContactActivity;

    invoke-virtual {v0}, Lcom/badguy/terrortime/ContactActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Unable to reconnect to TerrorTime. Returning to login screen."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 333
    .local v0, "toast":Landroid/widget/Toast;
    const/4 v1, 0x0

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 334
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 335
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener$2;->this$1:Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener;

    iget-object v2, v2, Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener;->this$0:Lcom/badguy/terrortime/ContactActivity;

    const-class v3, Lcom/badguy/terrortime/LoginActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 336
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener$2;->this$1:Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener;

    iget-object v2, v2, Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener;->this$0:Lcom/badguy/terrortime/ContactActivity;

    invoke-virtual {v2, v1}, Lcom/badguy/terrortime/ContactActivity;->startActivity(Landroid/content/Intent;)V

    .line 337
    iget-object v2, p0, Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener$2;->this$1:Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener;

    iget-object v2, v2, Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener;->this$0:Lcom/badguy/terrortime/ContactActivity;

    invoke-virtual {v2}, Lcom/badguy/terrortime/ContactActivity;->finish()V

    .line 338
    return-void
.end method
