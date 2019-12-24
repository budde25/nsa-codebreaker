.class public Lcom/badguy/terrortime/MessageListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badguy/terrortime/MessageListAdapter$ReceivedMessageHolder;,
        Lcom/badguy/terrortime/MessageListAdapter$SentMessageHolder;
    }
.end annotation


# static fields
.field private static final VIEW_TYPE_MESSAGE_RECEIVED:I = 0x2

.field private static final VIEW_TYPE_MESSAGE_SENT:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMessageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badguy/terrortime/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/badguy/terrortime/Message;",
            ">;)V"
        }
    .end annotation

    .line 20
    .local p2, "messageList":Ljava/util/List;, "Ljava/util/List<Lcom/badguy/terrortime/Message;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/badguy/terrortime/MessageListAdapter;->mContext:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/badguy/terrortime/MessageListAdapter;->mMessageList:Ljava/util/List;

    .line 23
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/badguy/terrortime/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 24
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/badguy/terrortime/MessageListAdapter;->mMessageList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 29
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .line 35
    iget-object v0, p0, Lcom/badguy/terrortime/MessageListAdapter;->mMessageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badguy/terrortime/Message;

    .line 37
    .local v0, "message":Lcom/badguy/terrortime/Message;
    invoke-virtual {v0}, Lcom/badguy/terrortime/Message;->isFromClient()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    const/4 v1, 0x1

    return v1

    .line 42
    :cond_0
    const/4 v1, 0x2

    return v1
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 65
    iget-object v0, p0, Lcom/badguy/terrortime/MessageListAdapter;->mMessageList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badguy/terrortime/Message;

    .line 67
    .local v0, "message":Lcom/badguy/terrortime/Message;
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/badguy/terrortime/MessageListAdapter$ReceivedMessageHolder;

    invoke-virtual {v1, v0}, Lcom/badguy/terrortime/MessageListAdapter$ReceivedMessageHolder;->bind(Lcom/badguy/terrortime/Message;)V

    goto :goto_0

    .line 69
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/badguy/terrortime/MessageListAdapter$SentMessageHolder;

    invoke-virtual {v1, v0}, Lcom/badguy/terrortime/MessageListAdapter$SentMessageHolder;->bind(Lcom/badguy/terrortime/Message;)V

    .line 70
    nop

    .line 74
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 51
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/badguy/terrortime/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0b0034

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/badguy/terrortime/MessageListAdapter$SentMessageHolder;

    invoke-direct {v1, p0, v0}, Lcom/badguy/terrortime/MessageListAdapter$SentMessageHolder;-><init>(Lcom/badguy/terrortime/MessageListAdapter;Landroid/view/View;)V

    return-object v1

    .line 54
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 55
    iget-object v1, p0, Lcom/badguy/terrortime/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0b0033

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 56
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/badguy/terrortime/MessageListAdapter$ReceivedMessageHolder;

    invoke-direct {v1, p0, v0}, Lcom/badguy/terrortime/MessageListAdapter$ReceivedMessageHolder;-><init>(Lcom/badguy/terrortime/MessageListAdapter;Landroid/view/View;)V

    return-object v1

    .line 59
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
