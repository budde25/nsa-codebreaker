.class Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener$1;
.super Ljava/lang/Object;
.source "ContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener;->reconnectingIn(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener;

.field final synthetic val$seconds:I


# direct methods
.method constructor <init>(Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener;

    .line 318
    iput-object p1, p0, Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener$1;->this$1:Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener;

    iput p2, p0, Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener$1;->val$seconds:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 320
    iget-object v0, p0, Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener$1;->this$1:Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener;

    iget-object v0, v0, Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener;->this$0:Lcom/badguy/terrortime/ContactActivity;

    invoke-virtual {v0}, Lcom/badguy/terrortime/ContactActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reconnecting in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener$1;->val$seconds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " seconds."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 321
    .local v0, "toast":Landroid/widget/Toast;
    const/4 v1, 0x0

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 322
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 323
    return-void
.end method
