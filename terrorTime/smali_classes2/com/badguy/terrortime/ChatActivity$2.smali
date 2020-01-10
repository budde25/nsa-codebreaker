.class Lcom/badguy/terrortime/ChatActivity$2;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badguy/terrortime/ChatActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badguy/terrortime/ChatActivity;


# direct methods
.method constructor <init>(Lcom/badguy/terrortime/ChatActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/badguy/terrortime/ChatActivity;

    .line 87
    iput-object p1, p0, Lcom/badguy/terrortime/ChatActivity$2;->this$0:Lcom/badguy/terrortime/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 90
    iget-object v0, p0, Lcom/badguy/terrortime/ChatActivity$2;->this$0:Lcom/badguy/terrortime/ChatActivity;

    invoke-static {v0}, Lcom/badguy/terrortime/ChatActivity;->access$400(Lcom/badguy/terrortime/ChatActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "chatMessage":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/badguy/terrortime/ChatActivity$2;->this$0:Lcom/badguy/terrortime/ChatActivity;

    invoke-static {v1}, Lcom/badguy/terrortime/ChatActivity;->access$500(Lcom/badguy/terrortime/ChatActivity;)Lorg/jivesoftware/smack/chat2/Chat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/chat2/Chat;->send(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v1, p0, Lcom/badguy/terrortime/ChatActivity$2;->this$0:Lcom/badguy/terrortime/ChatActivity;

    invoke-static {v1}, Lcom/badguy/terrortime/ChatActivity;->access$400(Lcom/badguy/terrortime/ChatActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V
    :try_end_0
    .catch Lorg/jivesoftware/smack/SmackException$NotConnectedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    goto :goto_1

    .line 95
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    const-string v2, "EXCEPTION"

    const-string v3, "Unable to send message"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/badguy/terrortime/ChatActivity$2;->this$0:Lcom/badguy/terrortime/ChatActivity;

    invoke-direct {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 98
    const-string v3, "ERROR"

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 99
    const-string v3, "Unable to send message. Please check your connection and try again."

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 100
    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/badguy/terrortime/ChatActivity$2$1;

    invoke-direct {v3, p0}, Lcom/badguy/terrortime/ChatActivity$2$1;-><init>(Lcom/badguy/terrortime/ChatActivity$2;)V

    .line 101
    const-string v4, "Continue"

    invoke-virtual {v2, v4, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 107
    .local v2, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    .line 108
    .local v3, "alertUserDialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 111
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "builder":Landroid/support/v7/app/AlertDialog$Builder;
    .end local v3    # "alertUserDialog":Landroid/support/v7/app/AlertDialog;
    :goto_1
    return-void
.end method
