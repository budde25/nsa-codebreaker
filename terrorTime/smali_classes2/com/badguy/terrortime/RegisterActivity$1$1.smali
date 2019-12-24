.class Lcom/badguy/terrortime/RegisterActivity$1$1;
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

    .line 130
    iput-object p1, p0, Lcom/badguy/terrortime/RegisterActivity$1$1;->this$1:Lcom/badguy/terrortime/RegisterActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .line 132
    iget-object v0, p0, Lcom/badguy/terrortime/RegisterActivity$1$1;->this$1:Lcom/badguy/terrortime/RegisterActivity$1;

    iget-object v0, v0, Lcom/badguy/terrortime/RegisterActivity$1;->val$fMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 133
    .local v1, "field":Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->clear()V

    .line 134
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 135
    .end local v1    # "field":Landroid/widget/EditText;
    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/badguy/terrortime/RegisterActivity$1$1;->this$1:Lcom/badguy/terrortime/RegisterActivity$1;

    iget-object v0, v0, Lcom/badguy/terrortime/RegisterActivity$1;->this$0:Lcom/badguy/terrortime/RegisterActivity;

    iget-object v0, v0, Lcom/badguy/terrortime/RegisterActivity;->mCancelView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    .line 137
    return-void
.end method
