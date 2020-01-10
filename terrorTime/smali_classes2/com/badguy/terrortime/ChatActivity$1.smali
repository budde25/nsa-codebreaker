.class Lcom/badguy/terrortime/ChatActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ChatActivity.java"


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

    .line 72
    iput-object p1, p0, Lcom/badguy/terrortime/ChatActivity$1;->this$0:Lcom/badguy/terrortime/ChatActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 75
    const-string v0, "message"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/badguy/terrortime/Message;

    .line 78
    .local v0, "msg":Lcom/badguy/terrortime/Message;
    invoke-virtual {v0}, Lcom/badguy/terrortime/Message;->getContactId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/badguy/terrortime/ChatActivity$1;->this$0:Lcom/badguy/terrortime/ChatActivity;

    invoke-static {v2}, Lcom/badguy/terrortime/ChatActivity;->access$000(Lcom/badguy/terrortime/ChatActivity;)Lorg/jxmpp/jid/Jid;

    move-result-object v2

    invoke-interface {v2}, Lorg/jxmpp/jid/Jid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/badguy/terrortime/ChatActivity$1;->this$0:Lcom/badguy/terrortime/ChatActivity;

    invoke-static {v1}, Lcom/badguy/terrortime/ChatActivity;->access$100(Lcom/badguy/terrortime/ChatActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v1, p0, Lcom/badguy/terrortime/ChatActivity$1;->this$0:Lcom/badguy/terrortime/ChatActivity;

    invoke-static {v1}, Lcom/badguy/terrortime/ChatActivity;->access$200(Lcom/badguy/terrortime/ChatActivity;)Lcom/badguy/terrortime/MessageListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/badguy/terrortime/ChatActivity$1;->this$0:Lcom/badguy/terrortime/ChatActivity;

    invoke-static {v2}, Lcom/badguy/terrortime/ChatActivity;->access$100(Lcom/badguy/terrortime/ChatActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/badguy/terrortime/MessageListAdapter;->notifyItemInserted(I)V

    .line 81
    iget-object v1, p0, Lcom/badguy/terrortime/ChatActivity$1;->this$0:Lcom/badguy/terrortime/ChatActivity;

    invoke-static {v1}, Lcom/badguy/terrortime/ChatActivity;->access$300(Lcom/badguy/terrortime/ChatActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/badguy/terrortime/ChatActivity$1;->this$0:Lcom/badguy/terrortime/ChatActivity;

    invoke-static {v2}, Lcom/badguy/terrortime/ChatActivity;->access$100(Lcom/badguy/terrortime/ChatActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 83
    :cond_0
    return-void
.end method
