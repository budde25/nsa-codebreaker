.class Lcom/badguy/terrortime/ContactActivity$3;
.super Ljava/lang/Object;
.source "ContactActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badguy/terrortime/ContactActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badguy/terrortime/ContactActivity;


# direct methods
.method constructor <init>(Lcom/badguy/terrortime/ContactActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/badguy/terrortime/ContactActivity;

    .line 128
    iput-object p1, p0, Lcom/badguy/terrortime/ContactActivity$3;->this$0:Lcom/badguy/terrortime/ContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onItemClick$0(I)Ljava/lang/Exception;
    .locals 3
    .param p0, "position"    # I

    .line 132
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No jid at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$onItemClick$1(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "k"    # Ljava/lang/String;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 132
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :try_start_0
    iget-object v0, p0, Lcom/badguy/terrortime/ContactActivity$3;->this$0:Lcom/badguy/terrortime/ContactActivity;

    invoke-static {v0}, Lcom/badguy/terrortime/ContactActivity;->access$600(Lcom/badguy/terrortime/ContactActivity;)Lcom/badguy/terrortime/ContactList;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/badguy/terrortime/ContactList;->getJidAtIndex(I)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/badguy/terrortime/-$$Lambda$ContactActivity$3$7ZxwTSnCYivpey1cpUtKDC6jPJQ;

    invoke-direct {v1, p3}, Lcom/badguy/terrortime/-$$Lambda$ContactActivity$3$7ZxwTSnCYivpey1cpUtKDC6jPJQ;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jxmpp/jid/Jid;

    .line 133
    .local v0, "jid":Lorg/jxmpp/jid/Jid;
    iget-object v1, p0, Lcom/badguy/terrortime/ContactActivity$3;->this$0:Lcom/badguy/terrortime/ContactActivity;

    invoke-interface {v0}, Lorg/jxmpp/jid/Jid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/badguy/terrortime/ContactActivity;->access$402(Lcom/badguy/terrortime/ContactActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    iget-object v1, p0, Lcom/badguy/terrortime/ContactActivity$3;->this$0:Lcom/badguy/terrortime/ContactActivity;

    invoke-static {v1}, Lcom/badguy/terrortime/ContactActivity;->access$700(Lcom/badguy/terrortime/ContactActivity;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/badguy/terrortime/ContactActivity$3;->this$0:Lcom/badguy/terrortime/ContactActivity;

    invoke-static {v2}, Lcom/badguy/terrortime/ContactActivity;->access$400(Lcom/badguy/terrortime/ContactActivity;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/badguy/terrortime/-$$Lambda$ContactActivity$3$IoGMCdBuM1l5Yod757VGhOYsa7U;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$ContactActivity$3$IoGMCdBuM1l5Yod757VGhOYsa7U;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 137
    .local v1, "messageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badguy/terrortime/Message;>;"
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/badguy/terrortime/ContactActivity$3;->this$0:Lcom/badguy/terrortime/ContactActivity;

    const-class v4, Lcom/badguy/terrortime/ChatActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "jid"

    iget-object v4, p0, Lcom/badguy/terrortime/ContactActivity$3;->this$0:Lcom/badguy/terrortime/ContactActivity;

    invoke-static {v4}, Lcom/badguy/terrortime/ContactActivity;->access$400(Lcom/badguy/terrortime/ContactActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v3, "messages"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 140
    iget-object v3, p0, Lcom/badguy/terrortime/ContactActivity$3;->this$0:Lcom/badguy/terrortime/ContactActivity;

    invoke-virtual {v3, v2}, Lcom/badguy/terrortime/ContactActivity;->startActivity(Landroid/content/Intent;)V

    .line 142
    const v3, 0x7f080075

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 143
    .local v3, "newMessageCount":Landroid/widget/TextView;
    const v4, 0x7f08007f

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 144
    .local v4, "newMessageIcon":Landroid/widget/ImageView;
    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    iget-object v5, p0, Lcom/badguy/terrortime/ContactActivity$3;->this$0:Lcom/badguy/terrortime/ContactActivity;

    invoke-static {v5}, Lcom/badguy/terrortime/ContactActivity;->access$500(Lcom/badguy/terrortime/ContactActivity;)Lcom/badguy/terrortime/ContactListAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/badguy/terrortime/ContactActivity$3;->this$0:Lcom/badguy/terrortime/ContactActivity;

    invoke-static {v6}, Lcom/badguy/terrortime/ContactActivity;->access$400(Lcom/badguy/terrortime/ContactActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/badguy/terrortime/ContactListAdapter;->updateCount(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    .end local v0    # "jid":Lorg/jxmpp/jid/Jid;
    .end local v1    # "messageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badguy/terrortime/Message;>;"
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "newMessageCount":Landroid/widget/TextView;
    .end local v4    # "newMessageIcon":Landroid/widget/ImageView;
    goto :goto_0

    .line 149
    :catchall_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "EXCEPTION"

    const-string v2, "Unable to load chat activity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/badguy/terrortime/ContactActivity$3;->this$0:Lcom/badguy/terrortime/ContactActivity;

    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 152
    const-string v2, "ERROR"

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 153
    const-string v2, "Unable to load chat window. Please try again."

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 154
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/badguy/terrortime/ContactActivity$3$1;

    invoke-direct {v2, p0}, Lcom/badguy/terrortime/ContactActivity$3$1;-><init>(Lcom/badguy/terrortime/ContactActivity$3;)V

    .line 155
    const-string v3, "Continue"

    invoke-virtual {v1, v3, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 160
    .local v1, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    .line 161
    .local v2, "alertUserDialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 163
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "builder":Landroid/support/v7/app/AlertDialog$Builder;
    .end local v2    # "alertUserDialog":Landroid/support/v7/app/AlertDialog;
    :goto_0
    return-void
.end method
