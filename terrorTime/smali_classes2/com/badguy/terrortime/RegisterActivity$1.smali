.class Lcom/badguy/terrortime/RegisterActivity$1;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badguy/terrortime/RegisterActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badguy/terrortime/RegisterActivity;

.field final synthetic val$fMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/badguy/terrortime/RegisterActivity;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/badguy/terrortime/RegisterActivity;

    .line 94
    iput-object p1, p0, Lcom/badguy/terrortime/RegisterActivity$1;->this$0:Lcom/badguy/terrortime/RegisterActivity;

    iput-object p2, p0, Lcom/badguy/terrortime/RegisterActivity$1;->val$fMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .line 97
    const/4 v0, 0x0

    .line 103
    .local v0, "existingRecord":Z
    iget-object v1, p0, Lcom/badguy/terrortime/RegisterActivity$1;->this$0:Lcom/badguy/terrortime/RegisterActivity;

    iget-object v2, p0, Lcom/badguy/terrortime/RegisterActivity$1;->val$fMap:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/badguy/terrortime/RegisterActivity;->access$000(Lcom/badguy/terrortime/RegisterActivity;Ljava/util/Map;)Z

    move-result v1

    const-string v2, "setOnClickListener: "

    const-string v3, "EXCEPTION LOG"

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 104
    iget-object v1, p0, Lcom/badguy/terrortime/RegisterActivity$1;->this$0:Lcom/badguy/terrortime/RegisterActivity;

    iget-object v1, v1, Lcom/badguy/terrortime/RegisterActivity;->mRegisterButton:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/badguy/terrortime/RegisterActivity$1;->this$0:Lcom/badguy/terrortime/RegisterActivity;

    invoke-static {v1}, Lcom/badguy/terrortime/RegisterActivity;->access$100(Lcom/badguy/terrortime/RegisterActivity;)Lcom/badguy/terrortime/ClientDBHandlerClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badguy/terrortime/ClientDBHandlerClass;->nClients()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    const/4 v0, 0x1

    .line 117
    iget-object v1, p0, Lcom/badguy/terrortime/RegisterActivity$1;->this$0:Lcom/badguy/terrortime/RegisterActivity;

    iget-object v1, v1, Lcom/badguy/terrortime/RegisterActivity;->mRegisterButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 118
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/badguy/terrortime/RegisterActivity$1;->this$0:Lcom/badguy/terrortime/RegisterActivity;

    invoke-direct {v1, v6}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v6, "WARNING"

    .line 119
    invoke-virtual {v1, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const-string v6, "Select \'Continue\' to reconfigure Terrortime for new user. All current user data will be lost."

    .line 120
    invoke-virtual {v1, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 121
    invoke-virtual {v1, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const-string v5, "Continue"

    new-instance v6, Lcom/badguy/terrortime/RegisterActivity$1$2;

    invoke-direct {v6, p0}, Lcom/badguy/terrortime/RegisterActivity$1$2;-><init>(Lcom/badguy/terrortime/RegisterActivity$1;)V

    .line 122
    invoke-virtual {v1, v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const-string v5, "Cancel"

    new-instance v6, Lcom/badguy/terrortime/RegisterActivity$1$1;

    invoke-direct {v6, p0}, Lcom/badguy/terrortime/RegisterActivity$1$1;-><init>(Lcom/badguy/terrortime/RegisterActivity$1;)V

    .line 130
    invoke-virtual {v1, v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 140
    .local v1, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v5

    .line 141
    .local v5, "alertUserDialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v5}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 152
    .end local v1    # "builder":Landroid/support/v7/app/AlertDialog$Builder;
    .end local v5    # "alertUserDialog":Landroid/support/v7/app/AlertDialog;
    :cond_0
    iget-object v1, p0, Lcom/badguy/terrortime/RegisterActivity$1;->this$0:Lcom/badguy/terrortime/RegisterActivity;

    invoke-static {v1}, Lcom/badguy/terrortime/RegisterActivity;->access$100(Lcom/badguy/terrortime/RegisterActivity;)Lcom/badguy/terrortime/ClientDBHandlerClass;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 162
    if-nez v0, :cond_2

    .line 163
    iget-object v1, p0, Lcom/badguy/terrortime/RegisterActivity$1;->this$0:Lcom/badguy/terrortime/RegisterActivity;

    invoke-static {v1}, Lcom/badguy/terrortime/RegisterActivity;->access$300(Lcom/badguy/terrortime/RegisterActivity;)V

    goto :goto_0

    .line 153
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v5, "Failed to connect to Client database. Try again or select \"cancel\"."

    invoke-direct {v1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "existingRecord":Z
    .end local p1    # "view":Landroid/view/View;
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .restart local v0    # "existingRecord":Z
    .restart local p1    # "view":Landroid/view/View;
    :catch_0
    move-exception v1

    .line 167
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    iget-object v2, p0, Lcom/badguy/terrortime/RegisterActivity$1;->this$0:Lcom/badguy/terrortime/RegisterActivity;

    invoke-virtual {v2}, Lcom/badguy/terrortime/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 169
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    goto :goto_3

    .line 175
    :cond_3
    iget-object v1, p0, Lcom/badguy/terrortime/RegisterActivity$1;->val$fMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 177
    .local v5, "field":Landroid/widget/EditText;
    :try_start_1
    iget-object v6, p0, Lcom/badguy/terrortime/RegisterActivity$1;->val$fMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 179
    .local v6, "fName":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 182
    invoke-virtual {v5}, Landroid/widget/EditText;->getError()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 183
    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    .line 184
    iget-object v7, p0, Lcom/badguy/terrortime/RegisterActivity$1;->this$0:Lcom/badguy/terrortime/RegisterActivity;

    invoke-virtual {v7}, Lcom/badguy/terrortime/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v5}, Landroid/widget/EditText;->getError()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 185
    goto :goto_3

    .line 190
    .end local v6    # "fName":Ljava/lang/String;
    :cond_4
    goto :goto_2

    .line 180
    .restart local v6    # "fName":Ljava/lang/String;
    :cond_5
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Fatal Error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " was null."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "existingRecord":Z
    .end local v5    # "field":Landroid/widget/EditText;
    .end local p1    # "view":Landroid/view/View;
    throw v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 187
    .end local v6    # "fName":Ljava/lang/String;
    .restart local v0    # "existingRecord":Z
    .restart local v5    # "field":Landroid/widget/EditText;
    .restart local p1    # "view":Landroid/view/View;
    :catch_1
    move-exception v6

    .line 188
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v3, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    iget-object v7, p0, Lcom/badguy/terrortime/RegisterActivity$1;->this$0:Lcom/badguy/terrortime/RegisterActivity;

    invoke-virtual {v7}, Lcom/badguy/terrortime/RegisterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 191
    .end local v5    # "field":Landroid/widget/EditText;
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_2
    goto :goto_1

    .line 193
    :cond_6
    :goto_3
    return-void
.end method
