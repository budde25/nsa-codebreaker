.class public Lcom/badguy/terrortime/ContactListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ContactListAdapter.java"


# instance fields
.field private mAvailabilityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mContactList:Lcom/badguy/terrortime/ContactList;

.field private mContactNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mMessageCountMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/badguy/terrortime/Message;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/util/List;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/badguy/terrortime/ContactList;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I
    .param p4, "objects"    # Ljava/util/List;
    .param p5, "availabilityMap"    # Ljava/util/HashMap;
    .param p6, "messageMap"    # Ljava/util/HashMap;
    .param p7, "contactList"    # Lcom/badguy/terrortime/ContactList;

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 31
    iput-object p4, p0, Lcom/badguy/terrortime/ContactListAdapter;->mContactNames:Ljava/util/List;

    .line 32
    iput-object p5, p0, Lcom/badguy/terrortime/ContactListAdapter;->mAvailabilityMap:Ljava/util/HashMap;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/badguy/terrortime/ContactListAdapter;->mMessageCountMap:Ljava/util/HashMap;

    .line 34
    iput-object p6, p0, Lcom/badguy/terrortime/ContactListAdapter;->mMessageMap:Ljava/util/HashMap;

    .line 35
    iget-object v0, p0, Lcom/badguy/terrortime/ContactListAdapter;->mMessageMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 36
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/badguy/terrortime/Message;>;>;"
    iget-object v2, p0, Lcom/badguy/terrortime/ContactListAdapter;->mMessageCountMap:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/badguy/terrortime/Message;>;>;"
    goto :goto_0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/badguy/terrortime/ContactListAdapter;->mContext:Landroid/content/Context;

    .line 39
    iput-object p7, p0, Lcom/badguy/terrortime/ContactListAdapter;->mContactList:Lcom/badguy/terrortime/ContactList;

    .line 40
    return-void
.end method

.method static synthetic lambda$getView$0(I)Ljava/lang/Exception;
    .locals 3
    .param p0, "position"    # I

    .line 63
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


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 45
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v0, p2

    .line 46
    .local v0, "listItem":Landroid/view/View;
    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 47
    iget-object v4, v1, Lcom/badguy/terrortime/ContactListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0b0022

    move-object/from16 v6, p3

    invoke-virtual {v4, v5, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    .line 46
    :cond_0
    move-object/from16 v6, p3

    move-object v4, v0

    .line 49
    .end local v0    # "listItem":Landroid/view/View;
    .local v4, "listItem":Landroid/view/View;
    :goto_0
    iget-object v0, v1, Lcom/badguy/terrortime/ContactListAdapter;->mContactNames:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 50
    .local v5, "contactJid":Ljava/lang/String;
    iget-object v0, v1, Lcom/badguy/terrortime/ContactListAdapter;->mAvailabilityMap:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/Boolean;

    .line 51
    .local v7, "available":Ljava/lang/Boolean;
    const v0, 0x7f080020

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/ImageView;

    .line 52
    .local v8, "availability":Landroid/widget/ImageView;
    const v0, 0x7f080032

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    .line 53
    .local v9, "contactName":Landroid/widget/TextView;
    iget-object v0, v1, Lcom/badguy/terrortime/ContactListAdapter;->mContactNames:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    const v0, 0x7f080075

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    .line 55
    .local v10, "newMessageCount":Landroid/widget/TextView;
    const v0, 0x7f08007f

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/ImageView;

    .line 56
    .local v11, "newMessageIcon":Landroid/widget/ImageView;
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    const v0, 0x7f07005d

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 59
    :cond_1
    const v0, 0x7f07005e

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 63
    :goto_1
    :try_start_0
    iget-object v0, v1, Lcom/badguy/terrortime/ContactListAdapter;->mContactList:Lcom/badguy/terrortime/ContactList;

    invoke-virtual {v0, v2}, Lcom/badguy/terrortime/ContactList;->getJidAtIndex(I)Ljava/util/Optional;

    move-result-object v0

    new-instance v12, Lcom/badguy/terrortime/-$$Lambda$ContactListAdapter$wwIf5GIASlhI74vbe90XngFWTcE;

    invoke-direct {v12, v2}, Lcom/badguy/terrortime/-$$Lambda$ContactListAdapter$wwIf5GIASlhI74vbe90XngFWTcE;-><init>(I)V

    invoke-virtual {v0, v12}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jxmpp/jid/Jid;

    .line 64
    .local v0, "jid":Lorg/jxmpp/jid/Jid;
    iget-object v12, v1, Lcom/badguy/terrortime/ContactListAdapter;->mMessageCountMap:Ljava/util/HashMap;

    invoke-interface {v0}, Lorg/jxmpp/jid/Jid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 65
    .local v12, "count":Ljava/lang/Integer;
    iget-object v13, v1, Lcom/badguy/terrortime/ContactListAdapter;->mMessageMap:Ljava/util/HashMap;

    invoke-interface {v0}, Lorg/jxmpp/jid/Jid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 66
    .local v13, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/badguy/terrortime/Message;>;"
    if-eqz v13, :cond_2

    if-eqz v12, :cond_2

    .line 67
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 68
    .local v14, "size":Ljava/lang/Integer;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v15, v3, :cond_2

    .line 69
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v15

    sub-int/2addr v3, v15

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 70
    .local v3, "delta":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    invoke-virtual {v11, v15}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .end local v0    # "jid":Lorg/jxmpp/jid/Jid;
    .end local v3    # "delta":Ljava/lang/Integer;
    .end local v12    # "count":Ljava/lang/Integer;
    .end local v13    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/badguy/terrortime/Message;>;"
    .end local v14    # "size":Ljava/lang/Integer;
    :cond_2
    goto :goto_2

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Throwable;
    const-string v3, "EXCEPTION"

    const-string v12, "Unable to update message count"

    invoke-static {v3, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2
    return-object v4
.end method

.method public incrementCount(Ljava/lang/String;)V
    .locals 3
    .param p1, "jid"    # Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/badguy/terrortime/ContactListAdapter;->mMessageCountMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 87
    .local v0, "count":Ljava/lang/Integer;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 89
    :goto_0
    iget-object v1, p0, Lcom/badguy/terrortime/ContactListAdapter;->mMessageCountMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method

.method public updateCount(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "jid"    # Ljava/lang/String;
    .param p2, "count"    # Ljava/lang/Integer;

    .line 83
    iget-object v0, p0, Lcom/badguy/terrortime/ContactListAdapter;->mMessageCountMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-void
.end method
