.class Lcom/badguy/terrortime/LoginActivity$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badguy/terrortime/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badguy/terrortime/LoginActivity;

.field final synthetic val$fMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/badguy/terrortime/LoginActivity;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/badguy/terrortime/LoginActivity;

    .line 80
    iput-object p1, p0, Lcom/badguy/terrortime/LoginActivity$2;->this$0:Lcom/badguy/terrortime/LoginActivity;

    iput-object p2, p0, Lcom/badguy/terrortime/LoginActivity$2;->val$fMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .line 87
    iget-object v0, p0, Lcom/badguy/terrortime/LoginActivity$2;->this$0:Lcom/badguy/terrortime/LoginActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/badguy/terrortime/LoginActivity;->access$402(Lcom/badguy/terrortime/LoginActivity;Lcom/badguy/terrortime/LoginActivity$UserLoginTask;)Lcom/badguy/terrortime/LoginActivity$UserLoginTask;

    .line 96
    iget-object v0, p0, Lcom/badguy/terrortime/LoginActivity$2;->this$0:Lcom/badguy/terrortime/LoginActivity;

    iget-object v2, p0, Lcom/badguy/terrortime/LoginActivity$2;->val$fMap:Ljava/util/Map;

    invoke-static {v0, v2}, Lcom/badguy/terrortime/LoginActivity;->access$500(Lcom/badguy/terrortime/LoginActivity;Ljava/util/Map;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 97
    const/4 v0, 0x1

    .line 102
    .local v0, "noFieldError":Z
    iget-object v3, p0, Lcom/badguy/terrortime/LoginActivity$2;->val$fMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 103
    .local v4, "field":Landroid/widget/EditText;
    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 104
    .end local v4    # "field":Landroid/widget/EditText;
    goto :goto_0

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/badguy/terrortime/LoginActivity$2;->this$0:Lcom/badguy/terrortime/LoginActivity;

    invoke-static {v1}, Lcom/badguy/terrortime/LoginActivity;->access$600(Lcom/badguy/terrortime/LoginActivity;)V

    .line 115
    iget-object v1, p0, Lcom/badguy/terrortime/LoginActivity$2;->val$fMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 116
    .local v3, "field":Landroid/widget/EditText;
    invoke-virtual {v3}, Landroid/widget/EditText;->getError()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 117
    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 118
    iget-object v1, p0, Lcom/badguy/terrortime/LoginActivity$2;->this$0:Lcom/badguy/terrortime/LoginActivity;

    invoke-virtual {v1}, Lcom/badguy/terrortime/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v3}, Landroid/widget/EditText;->getError()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 119
    goto :goto_2

    .line 121
    .end local v3    # "field":Landroid/widget/EditText;
    :cond_1
    goto :goto_1

    .line 123
    .end local v0    # "noFieldError":Z
    :cond_2
    :goto_2
    goto :goto_5

    .line 127
    :cond_3
    iget-object v0, p0, Lcom/badguy/terrortime/LoginActivity$2;->val$fMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 129
    .local v1, "field":Landroid/widget/EditText;
    :try_start_0
    invoke-virtual {v1}, Landroid/widget/EditText;->getError()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 130
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 131
    iget-object v3, p0, Lcom/badguy/terrortime/LoginActivity$2;->this$0:Lcom/badguy/terrortime/LoginActivity;

    invoke-virtual {v3}, Lcom/badguy/terrortime/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Landroid/widget/EditText;->getError()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    goto :goto_5

    .line 137
    :cond_4
    goto :goto_4

    .line 134
    :catch_0
    move-exception v3

    .line 135
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "EXCEPTION LOG"

    const-string v5, "setOnClickListener: "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    iget-object v4, p0, Lcom/badguy/terrortime/LoginActivity$2;->this$0:Lcom/badguy/terrortime/LoginActivity;

    invoke-virtual {v4}, Lcom/badguy/terrortime/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 138
    .end local v1    # "field":Landroid/widget/EditText;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_4
    goto :goto_3

    .line 140
    :cond_5
    :goto_5
    return-void
.end method
