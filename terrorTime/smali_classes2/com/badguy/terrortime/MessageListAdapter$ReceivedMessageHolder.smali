.class public Lcom/badguy/terrortime/MessageListAdapter$ReceivedMessageHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badguy/terrortime/MessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReceivedMessageHolder"
.end annotation


# instance fields
.field messageText:Landroid/widget/TextView;

.field nameText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/badguy/terrortime/MessageListAdapter;

.field timeText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/badguy/terrortime/MessageListAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/badguy/terrortime/MessageListAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .line 97
    iput-object p1, p0, Lcom/badguy/terrortime/MessageListAdapter$ReceivedMessageHolder;->this$0:Lcom/badguy/terrortime/MessageListAdapter;

    .line 98
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 100
    const v0, 0x7f0800d5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/badguy/terrortime/MessageListAdapter$ReceivedMessageHolder;->messageText:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f0800d7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/badguy/terrortime/MessageListAdapter$ReceivedMessageHolder;->timeText:Landroid/widget/TextView;

    .line 102
    const v0, 0x7f0800d6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/badguy/terrortime/MessageListAdapter$ReceivedMessageHolder;->nameText:Landroid/widget/TextView;

    .line 103
    return-void
.end method


# virtual methods
.method bind(Lcom/badguy/terrortime/Message;)V
    .locals 4
    .param p1, "message"    # Lcom/badguy/terrortime/Message;

    .line 106
    iget-object v0, p0, Lcom/badguy/terrortime/MessageListAdapter$ReceivedMessageHolder;->messageText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/badguy/terrortime/Message;->getContent()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/badguy/terrortime/MessageListAdapter$ReceivedMessageHolder;->timeText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/badguy/terrortime/Message;->getCreatedAt()Ljava/util/Optional;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {p1}, Lcom/badguy/terrortime/Message;->isFromClient()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/badguy/terrortime/Message;->getClientId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/badguy/terrortime/Message;->getContactId()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "sender":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/badguy/terrortime/MessageListAdapter$ReceivedMessageHolder;->nameText:Landroid/widget/TextView;

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    return-void
.end method
