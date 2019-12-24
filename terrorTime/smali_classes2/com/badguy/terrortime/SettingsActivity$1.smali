.class Lcom/badguy/terrortime/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badguy/terrortime/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badguy/terrortime/SettingsActivity;

.field final synthetic val$fMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/badguy/terrortime/SettingsActivity;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/badguy/terrortime/SettingsActivity;

    .line 58
    iput-object p1, p0, Lcom/badguy/terrortime/SettingsActivity$1;->this$0:Lcom/badguy/terrortime/SettingsActivity;

    iput-object p2, p0, Lcom/badguy/terrortime/SettingsActivity$1;->val$fMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/badguy/terrortime/SettingsActivity$1;->this$0:Lcom/badguy/terrortime/SettingsActivity;

    iget-object v0, v0, Lcom/badguy/terrortime/SettingsActivity;->mSettingsButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 64
    iget-object v0, p0, Lcom/badguy/terrortime/SettingsActivity$1;->this$0:Lcom/badguy/terrortime/SettingsActivity;

    iget-object v0, v0, Lcom/badguy/terrortime/SettingsActivity;->mClearTokenView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 66
    iget-object v0, p0, Lcom/badguy/terrortime/SettingsActivity$1;->this$0:Lcom/badguy/terrortime/SettingsActivity;

    iget-object v2, p0, Lcom/badguy/terrortime/SettingsActivity$1;->val$fMap:Ljava/util/Map;

    invoke-static {v0, v2}, Lcom/badguy/terrortime/SettingsActivity;->access$000(Lcom/badguy/terrortime/SettingsActivity;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/badguy/terrortime/SettingsActivity$1;->this$0:Lcom/badguy/terrortime/SettingsActivity;

    invoke-static {v0}, Lcom/badguy/terrortime/SettingsActivity;->access$200(Lcom/badguy/terrortime/SettingsActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/badguy/terrortime/SettingsActivity;->access$102(Lcom/badguy/terrortime/SettingsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/badguy/terrortime/SettingsActivity$1;->this$0:Lcom/badguy/terrortime/SettingsActivity;

    invoke-static {v0}, Lcom/badguy/terrortime/SettingsActivity;->access$400(Lcom/badguy/terrortime/SettingsActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/badguy/terrortime/SettingsActivity;->access$302(Lcom/badguy/terrortime/SettingsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/badguy/terrortime/SettingsActivity$1;->this$0:Lcom/badguy/terrortime/SettingsActivity;

    iget-object v1, p0, Lcom/badguy/terrortime/SettingsActivity$1;->val$fMap:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/badguy/terrortime/SettingsActivity;->access$500(Lcom/badguy/terrortime/SettingsActivity;Ljava/util/Map;)V

    .line 71
    const-string v0, "SettingsActivity"

    const-string v1, "Completed activity without error."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/badguy/terrortime/SettingsActivity$1;->val$fMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 76
    .local v2, "field":Landroid/widget/EditText;
    :try_start_0
    invoke-virtual {v2}, Landroid/widget/EditText;->getError()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 77
    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 78
    iget-object v3, p0, Lcom/badguy/terrortime/SettingsActivity$1;->this$0:Lcom/badguy/terrortime/SettingsActivity;

    invoke-virtual {v3}, Lcom/badguy/terrortime/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Landroid/widget/EditText;->getError()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_2

    .line 84
    :cond_1
    goto :goto_1

    .line 81
    :catch_0
    move-exception v3

    .line 82
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "EXCEPTION LOG"

    const-string v5, "setOnClickListener: "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    iget-object v4, p0, Lcom/badguy/terrortime/SettingsActivity$1;->this$0:Lcom/badguy/terrortime/SettingsActivity;

    invoke-virtual {v4}, Lcom/badguy/terrortime/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 85
    .end local v2    # "field":Landroid/widget/EditText;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 87
    :cond_2
    :goto_2
    return-void
.end method
