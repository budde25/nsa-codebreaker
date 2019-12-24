.class Lcom/badguy/terrortime/ContactActivity$TerrorTimeConnectionListener$1;
.super Ljava/lang/Object;
.source "ContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badguy/terrortime/ContactActivity$TerrorTimeConnectionListener;->connectionClosedOnError(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/badguy/terrortime/ContactActivity$TerrorTimeConnectionListener;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/badguy/terrortime/ContactActivity$TerrorTimeConnectionListener;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "this$1"    # Lcom/badguy/terrortime/ContactActivity$TerrorTimeConnectionListener;

    .line 364
    iput-object p1, p0, Lcom/badguy/terrortime/ContactActivity$TerrorTimeConnectionListener$1;->this$1:Lcom/badguy/terrortime/ContactActivity$TerrorTimeConnectionListener;

    iput-object p2, p0, Lcom/badguy/terrortime/ContactActivity$TerrorTimeConnectionListener$1;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 366
    iget-object v0, p0, Lcom/badguy/terrortime/ContactActivity$TerrorTimeConnectionListener$1;->this$1:Lcom/badguy/terrortime/ContactActivity$TerrorTimeConnectionListener;

    iget-object v0, v0, Lcom/badguy/terrortime/ContactActivity$TerrorTimeConnectionListener;->this$0:Lcom/badguy/terrortime/ContactActivity;

    invoke-virtual {v0}, Lcom/badguy/terrortime/ContactActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "Lost connection to TerrorTime server."

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 367
    .local v0, "toast":Landroid/widget/Toast;
    iget-object v2, p0, Lcom/badguy/terrortime/ContactActivity$TerrorTimeConnectionListener$1;->val$e:Ljava/lang/Exception;

    instance-of v3, v2, Lorg/jivesoftware/smack/XMPPException$StreamErrorException;

    if-eqz v3, :cond_0

    .line 368
    check-cast v2, Lorg/jivesoftware/smack/XMPPException$StreamErrorException;

    .line 370
    .local v2, "exception":Lorg/jivesoftware/smack/XMPPException$StreamErrorException;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/XMPPException$StreamErrorException;->getStreamError()Lorg/jivesoftware/smack/packet/StreamError;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/StreamError;->getCondition()Lorg/jivesoftware/smack/packet/StreamError$Condition;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/StreamError$Condition;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "conflict"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 371
    iget-object v3, p0, Lcom/badguy/terrortime/ContactActivity$TerrorTimeConnectionListener$1;->this$1:Lcom/badguy/terrortime/ContactActivity$TerrorTimeConnectionListener;

    iget-object v3, v3, Lcom/badguy/terrortime/ContactActivity$TerrorTimeConnectionListener;->this$0:Lcom/badguy/terrortime/ContactActivity;

    invoke-virtual {v3}, Lcom/badguy/terrortime/ContactActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Disconnected from TerrorTime. Only one device may be signed in at a time."

    invoke-static {v3, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 372
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/badguy/terrortime/ContactActivity$TerrorTimeConnectionListener$1;->this$1:Lcom/badguy/terrortime/ContactActivity$TerrorTimeConnectionListener;

    iget-object v3, v3, Lcom/badguy/terrortime/ContactActivity$TerrorTimeConnectionListener;->this$0:Lcom/badguy/terrortime/ContactActivity;

    const-class v4, Lcom/badguy/terrortime/LoginActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 373
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/badguy/terrortime/ContactActivity$TerrorTimeConnectionListener$1;->this$1:Lcom/badguy/terrortime/ContactActivity$TerrorTimeConnectionListener;

    iget-object v3, v3, Lcom/badguy/terrortime/ContactActivity$TerrorTimeConnectionListener;->this$0:Lcom/badguy/terrortime/ContactActivity;

    invoke-virtual {v3, v1}, Lcom/badguy/terrortime/ContactActivity;->startActivity(Landroid/content/Intent;)V

    .line 374
    iget-object v3, p0, Lcom/badguy/terrortime/ContactActivity$TerrorTimeConnectionListener$1;->this$1:Lcom/badguy/terrortime/ContactActivity$TerrorTimeConnectionListener;

    iget-object v3, v3, Lcom/badguy/terrortime/ContactActivity$TerrorTimeConnectionListener;->this$0:Lcom/badguy/terrortime/ContactActivity;

    invoke-virtual {v3}, Lcom/badguy/terrortime/ContactActivity;->finish()V

    .line 377
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "exception":Lorg/jivesoftware/smack/XMPPException$StreamErrorException;
    :cond_0
    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 378
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 380
    return-void
.end method
