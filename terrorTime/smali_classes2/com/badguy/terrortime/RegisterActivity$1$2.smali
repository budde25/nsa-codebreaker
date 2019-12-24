.class Lcom/badguy/terrortime/RegisterActivity$1$2;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badguy/terrortime/RegisterActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/badguy/terrortime/RegisterActivity$1;


# direct methods
.method constructor <init>(Lcom/badguy/terrortime/RegisterActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/badguy/terrortime/RegisterActivity$1;

    .line 122
    iput-object p1, p0, Lcom/badguy/terrortime/RegisterActivity$1$2;->this$1:Lcom/badguy/terrortime/RegisterActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 124
    iget-object v0, p0, Lcom/badguy/terrortime/RegisterActivity$1$2;->this$1:Lcom/badguy/terrortime/RegisterActivity$1;

    iget-object v0, v0, Lcom/badguy/terrortime/RegisterActivity$1;->this$0:Lcom/badguy/terrortime/RegisterActivity;

    invoke-static {v0}, Lcom/badguy/terrortime/RegisterActivity;->access$100(Lcom/badguy/terrortime/RegisterActivity;)Lcom/badguy/terrortime/ClientDBHandlerClass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badguy/terrortime/ClientDBHandlerClass;->dropAllTables()V

    .line 125
    iget-object v0, p0, Lcom/badguy/terrortime/RegisterActivity$1$2;->this$1:Lcom/badguy/terrortime/RegisterActivity$1;

    iget-object v0, v0, Lcom/badguy/terrortime/RegisterActivity$1;->this$0:Lcom/badguy/terrortime/RegisterActivity;

    invoke-static {v0}, Lcom/badguy/terrortime/RegisterActivity;->access$100(Lcom/badguy/terrortime/RegisterActivity;)Lcom/badguy/terrortime/ClientDBHandlerClass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badguy/terrortime/ClientDBHandlerClass;->close()V

    .line 126
    iget-object v0, p0, Lcom/badguy/terrortime/RegisterActivity$1$2;->this$1:Lcom/badguy/terrortime/RegisterActivity$1;

    iget-object v0, v0, Lcom/badguy/terrortime/RegisterActivity$1;->this$0:Lcom/badguy/terrortime/RegisterActivity;

    iget-object v1, p0, Lcom/badguy/terrortime/RegisterActivity$1$2;->this$1:Lcom/badguy/terrortime/RegisterActivity$1;

    iget-object v1, v1, Lcom/badguy/terrortime/RegisterActivity$1;->this$0:Lcom/badguy/terrortime/RegisterActivity;

    invoke-static {v1}, Lcom/badguy/terrortime/RegisterActivity;->access$200(Lcom/badguy/terrortime/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/badguy/terrortime/RegisterActivity$1$2;->this$1:Lcom/badguy/terrortime/RegisterActivity$1;

    iget-object v2, v2, Lcom/badguy/terrortime/RegisterActivity$1;->this$0:Lcom/badguy/terrortime/RegisterActivity;

    invoke-virtual {v2}, Lcom/badguy/terrortime/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/badguy/terrortime/ClientDBHandlerClass;->getInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/badguy/terrortime/ClientDBHandlerClass;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/badguy/terrortime/RegisterActivity;->access$102(Lcom/badguy/terrortime/RegisterActivity;Lcom/badguy/terrortime/ClientDBHandlerClass;)Lcom/badguy/terrortime/ClientDBHandlerClass;

    .line 127
    iget-object v0, p0, Lcom/badguy/terrortime/RegisterActivity$1$2;->this$1:Lcom/badguy/terrortime/RegisterActivity$1;

    iget-object v0, v0, Lcom/badguy/terrortime/RegisterActivity$1;->this$0:Lcom/badguy/terrortime/RegisterActivity;

    iget-object v0, v0, Lcom/badguy/terrortime/RegisterActivity;->mRegisterButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 128
    return-void
.end method
