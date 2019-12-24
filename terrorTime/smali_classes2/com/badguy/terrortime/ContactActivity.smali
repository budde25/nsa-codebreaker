.class public Lcom/badguy/terrortime/ContactActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badguy/terrortime/ContactActivity$TerrorTimeConnectionListener;,
        Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener;,
        Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener;,
        Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener;
    }
.end annotation


# instance fields
.field private mChatManager:Lorg/jivesoftware/smack/chat2/ChatManager;

.field private mChatReceiver:Landroid/content/BroadcastReceiver;

.field private mClient:Lcom/badguy/terrortime/Client;

.field private mClientMessageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badguy/terrortime/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mConnection:Lorg/jivesoftware/smack/AbstractXMPPConnection;

.field private mConnectionListener:Lcom/badguy/terrortime/ContactActivity$TerrorTimeConnectionListener;

.field private mContactList:Lcom/badguy/terrortime/ContactList;

.field private mContactListAdapter:Lcom/badguy/terrortime/ContactListAdapter;

.field private mContactNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContactReceiver:Landroid/content/BroadcastReceiver;

.field private mCurrentChatJid:Ljava/lang/String;

.field private mIncomingListener:Lorg/jivesoftware/smack/chat2/IncomingChatMessageListener;

.field private mMessageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/badguy/terrortime/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field private mOutgoingListener:Lorg/jivesoftware/smack/chat2/OutgoingChatMessageListener;

.field private mReconnectionListener:Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener;

.field private mReconnectionManager:Lorg/jivesoftware/smack/ReconnectionManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badguy/terrortime/ContactActivity;->mConnection:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    .line 45
    iput-object v0, p0, Lcom/badguy/terrortime/ContactActivity;->mContactList:Lcom/badguy/terrortime/ContactList;

    .line 46
    iput-object v0, p0, Lcom/badguy/terrortime/ContactActivity;->mContactNames:Ljava/util/List;

    .line 47
    iput-object v0, p0, Lcom/badguy/terrortime/ContactActivity;->mClient:Lcom/badguy/terrortime/Client;

    .line 48
    iput-object v0, p0, Lcom/badguy/terrortime/ContactActivity;->mClientMessageList:Ljava/util/List;

    .line 49
    iput-object v0, p0, Lcom/badguy/terrortime/ContactActivity;->mMessageMap:Ljava/util/HashMap;

    .line 50
    iput-object v0, p0, Lcom/badguy/terrortime/ContactActivity;->mOutgoingListener:Lorg/jivesoftware/smack/chat2/OutgoingChatMessageListener;

    .line 51
    iput-object v0, p0, Lcom/badguy/terrortime/ContactActivity;->mIncomingListener:Lorg/jivesoftware/smack/chat2/IncomingChatMessageListener;

    .line 52
    iput-object v0, p0, Lcom/badguy/terrortime/ContactActivity;->mChatManager:Lorg/jivesoftware/smack/chat2/ChatManager;

    .line 53
    iput-object v0, p0, Lcom/badguy/terrortime/ContactActivity;->mContactListAdapter:Lcom/badguy/terrortime/ContactListAdapter;

    .line 54
    iput-object v0, p0, Lcom/badguy/terrortime/ContactActivity;->mCurrentChatJid:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/badguy/terrortime/ContactActivity;->mContactReceiver:Landroid/content/BroadcastReceiver;

    .line 56
    iput-object v0, p0, Lcom/badguy/terrortime/ContactActivity;->mChatReceiver:Landroid/content/BroadcastReceiver;

    .line 57
    iput-object v0, p0, Lcom/badguy/terrortime/ContactActivity;->mReconnectionManager:Lorg/jivesoftware/smack/ReconnectionManager;

    .line 58
    iput-object v0, p0, Lcom/badguy/terrortime/ContactActivity;->mReconnectionListener:Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener;

    .line 59
    iput-object v0, p0, Lcom/badguy/terrortime/ContactActivity;->mConnectionListener:Lcom/badguy/terrortime/ContactActivity$TerrorTimeConnectionListener;

    return-void
.end method

.method static synthetic access$1000(Lcom/badguy/terrortime/ContactActivity;)Lorg/jivesoftware/smack/ReconnectionManager;
    .locals 1
    .param p0, "x0"    # Lcom/badguy/terrortime/ContactActivity;

    .line 43
    iget-object v0, p0, Lcom/badguy/terrortime/ContactActivity;->mReconnectionManager:Lorg/jivesoftware/smack/ReconnectionManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/badguy/terrortime/ContactActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/badguy/terrortime/ContactActivity;

    .line 43
    iget-object v0, p0, Lcom/badguy/terrortime/ContactActivity;->mCurrentChatJid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/badguy/terrortime/ContactActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/badguy/terrortime/ContactActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/badguy/terrortime/ContactActivity;->mCurrentChatJid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/badguy/terrortime/ContactActivity;)Lcom/badguy/terrortime/ContactListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/badguy/terrortime/ContactActivity;

    .line 43
    iget-object v0, p0, Lcom/badguy/terrortime/ContactActivity;->mContactListAdapter:Lcom/badguy/terrortime/ContactListAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/badguy/terrortime/ContactActivity;)Lcom/badguy/terrortime/ContactList;
    .locals 1
    .param p0, "x0"    # Lcom/badguy/terrortime/ContactActivity;

    .line 43
    iget-object v0, p0, Lcom/badguy/terrortime/ContactActivity;->mContactList:Lcom/badguy/terrortime/ContactList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/badguy/terrortime/ContactActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/badguy/terrortime/ContactActivity;

    .line 43
    iget-object v0, p0, Lcom/badguy/terrortime/ContactActivity;->mMessageMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/badguy/terrortime/ContactActivity;)Lcom/badguy/terrortime/Client;
    .locals 1
    .param p0, "x0"    # Lcom/badguy/terrortime/ContactActivity;

    .line 43
    iget-object v0, p0, Lcom/badguy/terrortime/ContactActivity;->mClient:Lcom/badguy/terrortime/Client;

    return-object v0
.end method

.method static synthetic access$900(Lcom/badguy/terrortime/ContactActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/badguy/terrortime/ContactActivity;

    .line 43
    iget-object v0, p0, Lcom/badguy/terrortime/ContactActivity;->mClientMessageList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic lambda$null$6(Lcom/badguy/terrortime/Message;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "msg"    # Lcom/badguy/terrortime/Message;
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/util/ArrayList;

    .line 95
    move-object v0, p2

    .line 96
    .local v0, "messageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badguy/terrortime/Message;>;"
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 97
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    return-object v0
.end method

.method static synthetic lambda$onCreate$0()Ljava/lang/Exception;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No connection object"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$onCreate$1()Ljava/lang/Exception;
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No reconnection manager"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$onCreate$2()Ljava/lang/Exception;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No contact list object"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$onCreate$3()Ljava/lang/Exception;
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No client object"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$onCreate$4(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "k"    # Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$onCreate$5(Lcom/badguy/terrortime/Message;)Lcom/badguy/terrortime/Message;
    .locals 1
    .param p0, "msg"    # Lcom/badguy/terrortime/Message;

    .line 90
    new-instance v0, Lcom/badguy/terrortime/Message;

    invoke-direct {v0, p0}, Lcom/badguy/terrortime/Message;-><init>(Lcom/badguy/terrortime/Message;)V

    return-object v0
.end method

.method static synthetic lambda$sendChatBroadcast$8(Lcom/badguy/terrortime/Message;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "msg"    # Lcom/badguy/terrortime/Message;
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/util/ArrayList;

    .line 244
    move-object v0, p2

    .line 245
    .local v0, "messageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badguy/terrortime/Message;>;"
    if-nez p2, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 246
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    return-object v0
.end method


# virtual methods
.method public synthetic lambda$onCreate$7$ContactActivity(Lcom/badguy/terrortime/Message;)V
    .locals 3
    .param p1, "msg"    # Lcom/badguy/terrortime/Message;

    .line 94
    iget-object v0, p0, Lcom/badguy/terrortime/ContactActivity;->mMessageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/badguy/terrortime/Message;->getContactId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/badguy/terrortime/-$$Lambda$ContactActivity$amDjCaoNmOl_SzW_EDCL5XHPsu0;

    invoke-direct {v2, p1}, Lcom/badguy/terrortime/-$$Lambda$ContactActivity$amDjCaoNmOl_SzW_EDCL5XHPsu0;-><init>(Lcom/badguy/terrortime/Message;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 63
    move-object v9, p0

    invoke-super/range {p0 .. p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/ContactActivity;->setContentView(I)V

    .line 65
    const v0, 0x7f0800df

    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/ContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/support/v7/widget/Toolbar;

    .line 66
    .local v10, "toolbar":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {p0, v10}, Lcom/badguy/terrortime/ContactActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 67
    invoke-virtual {p0}, Lcom/badguy/terrortime/ContactActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/badguy/terrortime/TerrorTimeApplication;

    .line 68
    .local v11, "app":Lcom/badguy/terrortime/TerrorTimeApplication;
    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/ContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/ListView;

    .line 69
    .local v12, "listview":Landroid/widget/ListView;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v9, Lcom/badguy/terrortime/ContactActivity;->mMessageMap:Ljava/util/HashMap;

    .line 72
    :try_start_0
    invoke-virtual {v11}, Lcom/badguy/terrortime/TerrorTimeApplication;->getXMPPTCPConnection()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/badguy/terrortime/-$$Lambda$ContactActivity$D4F499BgZVEklXb226uaj3IXBnI;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$ContactActivity$D4F499BgZVEklXb226uaj3IXBnI;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/AbstractXMPPConnection;

    iput-object v0, v9, Lcom/badguy/terrortime/ContactActivity;->mConnection:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    .line 73
    invoke-virtual {v11}, Lcom/badguy/terrortime/TerrorTimeApplication;->getReconnectionManager()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/badguy/terrortime/-$$Lambda$ContactActivity$-90Q2hWxX0EVjE2LXELHIYLAKCs;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$ContactActivity$-90Q2hWxX0EVjE2LXELHIYLAKCs;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/ReconnectionManager;

    iput-object v0, v9, Lcom/badguy/terrortime/ContactActivity;->mReconnectionManager:Lorg/jivesoftware/smack/ReconnectionManager;

    .line 74
    invoke-virtual {v11}, Lcom/badguy/terrortime/TerrorTimeApplication;->getContactList()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/badguy/terrortime/-$$Lambda$ContactActivity$qVLZd6Duq1-UMne65D4aTeBipKc;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$ContactActivity$qVLZd6Duq1-UMne65D4aTeBipKc;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badguy/terrortime/ContactList;

    iput-object v0, v9, Lcom/badguy/terrortime/ContactActivity;->mContactList:Lcom/badguy/terrortime/ContactList;

    .line 75
    invoke-virtual {v11}, Lcom/badguy/terrortime/TerrorTimeApplication;->getClient()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/badguy/terrortime/-$$Lambda$ContactActivity$_ZcPEsTSp8t6NQjXBYyfGzNOO-Y;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$ContactActivity$_ZcPEsTSp8t6NQjXBYyfGzNOO-Y;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badguy/terrortime/Client;

    iput-object v0, v9, Lcom/badguy/terrortime/ContactActivity;->mClient:Lcom/badguy/terrortime/Client;

    .line 76
    iget-object v0, v9, Lcom/badguy/terrortime/ContactActivity;->mConnection:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    invoke-static {v0}, Lorg/jivesoftware/smack/chat2/ChatManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smack/chat2/ChatManager;

    move-result-object v0

    iput-object v0, v9, Lcom/badguy/terrortime/ContactActivity;->mChatManager:Lorg/jivesoftware/smack/chat2/ChatManager;

    .line 77
    iget-object v0, v9, Lcom/badguy/terrortime/ContactActivity;->mChatManager:Lorg/jivesoftware/smack/chat2/ChatManager;

    if-eqz v0, :cond_1

    .line 79
    new-instance v0, Lcom/badguy/terrortime/ContactActivity$TerrorTimeConnectionListener;

    const/4 v13, 0x0

    invoke-direct {v0, p0, v13}, Lcom/badguy/terrortime/ContactActivity$TerrorTimeConnectionListener;-><init>(Lcom/badguy/terrortime/ContactActivity;Lcom/badguy/terrortime/ContactActivity$1;)V

    iput-object v0, v9, Lcom/badguy/terrortime/ContactActivity;->mConnectionListener:Lcom/badguy/terrortime/ContactActivity$TerrorTimeConnectionListener;

    .line 80
    iget-object v0, v9, Lcom/badguy/terrortime/ContactActivity;->mConnection:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    iget-object v1, v9, Lcom/badguy/terrortime/ContactActivity;->mConnectionListener:Lcom/badguy/terrortime/ContactActivity$TerrorTimeConnectionListener;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 81
    new-instance v0, Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener;

    invoke-direct {v0, p0, v13}, Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener;-><init>(Lcom/badguy/terrortime/ContactActivity;Lcom/badguy/terrortime/ContactActivity$1;)V

    iput-object v0, v9, Lcom/badguy/terrortime/ContactActivity;->mReconnectionListener:Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener;

    .line 82
    iget-object v0, v9, Lcom/badguy/terrortime/ContactActivity;->mReconnectionManager:Lorg/jivesoftware/smack/ReconnectionManager;

    iget-object v1, v9, Lcom/badguy/terrortime/ContactActivity;->mReconnectionListener:Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/ReconnectionManager;->addReconnectionListener(Lorg/jivesoftware/smack/ReconnectionListener;)Z

    .line 85
    iget-object v0, v9, Lcom/badguy/terrortime/ContactActivity;->mContactList:Lcom/badguy/terrortime/ContactList;

    invoke-virtual {v0}, Lcom/badguy/terrortime/ContactList;->getContactNames()Ljava/util/List;

    move-result-object v0

    iput-object v0, v9, Lcom/badguy/terrortime/ContactActivity;->mContactNames:Ljava/util/List;

    .line 86
    iget-object v0, v9, Lcom/badguy/terrortime/ContactActivity;->mContactList:Lcom/badguy/terrortime/ContactList;

    invoke-virtual {v0}, Lcom/badguy/terrortime/ContactList;->getContactJids()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jxmpp/jid/Jid;

    .line 87
    .local v1, "contactJid":Lorg/jxmpp/jid/Jid;
    iget-object v2, v9, Lcom/badguy/terrortime/ContactActivity;->mMessageMap:Ljava/util/HashMap;

    invoke-interface {v1}, Lorg/jxmpp/jid/Jid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/badguy/terrortime/-$$Lambda$ContactActivity$Abp1UWZl8642CTt7XId3R1NFrZ4;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$ContactActivity$Abp1UWZl8642CTt7XId3R1NFrZ4;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 88
    nop

    .end local v1    # "contactJid":Lorg/jxmpp/jid/Jid;
    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, v9, Lcom/badguy/terrortime/ContactActivity;->mClient:Lcom/badguy/terrortime/Client;

    invoke-virtual {v0}, Lcom/badguy/terrortime/Client;->getMessageList()Ljava/util/List;

    move-result-object v0

    iput-object v0, v9, Lcom/badguy/terrortime/ContactActivity;->mClientMessageList:Ljava/util/List;

    .line 90
    iget-object v0, v9, Lcom/badguy/terrortime/ContactActivity;->mClientMessageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/badguy/terrortime/-$$Lambda$ContactActivity$Y__yy_3w9K5VEeJUPl9He0_AkV0;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$ContactActivity$Y__yy_3w9K5VEeJUPl9He0_AkV0;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 91
    .local v0, "clone":Ljava/util/List;, "Ljava/util/List<Lcom/badguy/terrortime/Message;>;"
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    iget-object v2, v9, Lcom/badguy/terrortime/ContactActivity;->mClient:Lcom/badguy/terrortime/Client;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/badguy/terrortime/-$$Lambda$Ftf3U58d3DozcaQ-VdP0FmeJP4A;

    invoke-direct {v3, v2}, Lcom/badguy/terrortime/-$$Lambda$Ftf3U58d3DozcaQ-VdP0FmeJP4A;-><init>(Lcom/badguy/terrortime/Client;)V

    .line 92
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/badguy/terrortime/-$$Lambda$ContactActivity$Oj-gvTG7mtFmhx5tGcieEtbR1Qg;

    invoke-direct {v2, p0}, Lcom/badguy/terrortime/-$$Lambda$ContactActivity$Oj-gvTG7mtFmhx5tGcieEtbR1Qg;-><init>(Lcom/badguy/terrortime/ContactActivity;)V

    .line 93
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 101
    new-instance v14, Lcom/badguy/terrortime/ContactListAdapter;

    const v3, 0x7f0b0022

    const v4, 0x7f080032

    iget-object v5, v9, Lcom/badguy/terrortime/ContactActivity;->mContactNames:Ljava/util/List;

    iget-object v1, v9, Lcom/badguy/terrortime/ContactActivity;->mContactList:Lcom/badguy/terrortime/ContactList;

    .line 102
    invoke-virtual {v1}, Lcom/badguy/terrortime/ContactList;->getAvailabilityMap()Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, v9, Lcom/badguy/terrortime/ContactActivity;->mMessageMap:Ljava/util/HashMap;

    iget-object v8, v9, Lcom/badguy/terrortime/ContactActivity;->mContactList:Lcom/badguy/terrortime/ContactList;

    move-object v1, v14

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/badguy/terrortime/ContactListAdapter;-><init>(Landroid/content/Context;IILjava/util/List;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/badguy/terrortime/ContactList;)V

    iput-object v14, v9, Lcom/badguy/terrortime/ContactActivity;->mContactListAdapter:Lcom/badguy/terrortime/ContactListAdapter;

    .line 103
    iget-object v1, v9, Lcom/badguy/terrortime/ContactActivity;->mContactListAdapter:Lcom/badguy/terrortime/ContactListAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/badguy/terrortime/ContactListAdapter;->setNotifyOnChange(Z)V

    .line 104
    iget-object v1, v9, Lcom/badguy/terrortime/ContactActivity;->mContactListAdapter:Lcom/badguy/terrortime/ContactListAdapter;

    invoke-virtual {v12, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 105
    new-instance v1, Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener;

    invoke-direct {v1, p0, v13}, Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener;-><init>(Lcom/badguy/terrortime/ContactActivity;Lcom/badguy/terrortime/ContactActivity$1;)V

    iput-object v1, v9, Lcom/badguy/terrortime/ContactActivity;->mOutgoingListener:Lorg/jivesoftware/smack/chat2/OutgoingChatMessageListener;

    .line 106
    new-instance v1, Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener;

    invoke-direct {v1, p0, v13}, Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener;-><init>(Lcom/badguy/terrortime/ContactActivity;Lcom/badguy/terrortime/ContactActivity$1;)V

    iput-object v1, v9, Lcom/badguy/terrortime/ContactActivity;->mIncomingListener:Lorg/jivesoftware/smack/chat2/IncomingChatMessageListener;

    .line 107
    iget-object v1, v9, Lcom/badguy/terrortime/ContactActivity;->mChatManager:Lorg/jivesoftware/smack/chat2/ChatManager;

    iget-object v2, v9, Lcom/badguy/terrortime/ContactActivity;->mOutgoingListener:Lorg/jivesoftware/smack/chat2/OutgoingChatMessageListener;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/chat2/ChatManager;->addOutgoingListener(Lorg/jivesoftware/smack/chat2/OutgoingChatMessageListener;)Z

    .line 108
    iget-object v1, v9, Lcom/badguy/terrortime/ContactActivity;->mChatManager:Lorg/jivesoftware/smack/chat2/ChatManager;

    iget-object v2, v9, Lcom/badguy/terrortime/ContactActivity;->mIncomingListener:Lorg/jivesoftware/smack/chat2/IncomingChatMessageListener;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/chat2/ChatManager;->addIncomingListener(Lorg/jivesoftware/smack/chat2/IncomingChatMessageListener;)Z

    .line 111
    new-instance v1, Lcom/badguy/terrortime/ContactActivity$1;

    invoke-direct {v1, p0}, Lcom/badguy/terrortime/ContactActivity$1;-><init>(Lcom/badguy/terrortime/ContactActivity;)V

    iput-object v1, v9, Lcom/badguy/terrortime/ContactActivity;->mChatReceiver:Landroid/content/BroadcastReceiver;

    .line 117
    invoke-static {}, Lcom/badguy/terrortime/TerrorTimeApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, v9, Lcom/badguy/terrortime/ContactActivity;->mChatReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "XMPP_CHAT_CLOSED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 120
    new-instance v1, Lcom/badguy/terrortime/ContactActivity$2;

    invoke-direct {v1, p0}, Lcom/badguy/terrortime/ContactActivity$2;-><init>(Lcom/badguy/terrortime/ContactActivity;)V

    iput-object v1, v9, Lcom/badguy/terrortime/ContactActivity;->mContactReceiver:Landroid/content/BroadcastReceiver;

    .line 127
    invoke-static {}, Lcom/badguy/terrortime/TerrorTimeApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, v9, Lcom/badguy/terrortime/ContactActivity;->mContactReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "XMPP_CONTACTS_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 128
    new-instance v1, Lcom/badguy/terrortime/ContactActivity$3;

    invoke-direct {v1, p0}, Lcom/badguy/terrortime/ContactActivity$3;-><init>(Lcom/badguy/terrortime/ContactActivity;)V

    invoke-virtual {v12, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 181
    .end local v0    # "clone":Ljava/util/List;, "Ljava/util/List<Lcom/badguy/terrortime/Message;>;"
    goto :goto_1

    .line 77
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Chat manager is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v10    # "toolbar":Landroid/support/v7/widget/Toolbar;
    .end local v11    # "app":Lcom/badguy/terrortime/TerrorTimeApplication;
    .end local v12    # "listview":Landroid/widget/ListView;
    .end local p1    # "savedInstanceState":Landroid/os/Bundle;
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    .restart local v10    # "toolbar":Landroid/support/v7/widget/Toolbar;
    .restart local v11    # "app":Lcom/badguy/terrortime/TerrorTimeApplication;
    .restart local v12    # "listview":Landroid/widget/ListView;
    .restart local p1    # "savedInstanceState":Landroid/os/Bundle;
    :catchall_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "EXCEPTION"

    const-string v2, "Unable to get connection info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 168
    const-string v2, "ERROR"

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 169
    const-string v2, "Unable to setup contact list"

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 170
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/badguy/terrortime/ContactActivity$4;

    invoke-direct {v2, p0}, Lcom/badguy/terrortime/ContactActivity$4;-><init>(Lcom/badguy/terrortime/ContactActivity;)V

    .line 171
    const-string v3, "Continue"

    invoke-virtual {v1, v3, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 179
    .local v1, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    .line 180
    .local v2, "alertUserDialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 182
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "builder":Landroid/support/v7/app/AlertDialog$Builder;
    .end local v2    # "alertUserDialog":Landroid/support/v7/app/AlertDialog;
    :goto_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 186
    invoke-virtual {p0}, Lcom/badguy/terrortime/ContactActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 187
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 189
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/badguy/terrortime/ContactActivity;->mChatManager:Lorg/jivesoftware/smack/chat2/ChatManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/badguy/terrortime/ContactActivity;->mIncomingListener:Lorg/jivesoftware/smack/chat2/IncomingChatMessageListener;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/badguy/terrortime/ContactActivity;->mOutgoingListener:Lorg/jivesoftware/smack/chat2/OutgoingChatMessageListener;

    if-eqz v2, :cond_0

    .line 209
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/chat2/ChatManager;->removeIncomingListener(Lorg/jivesoftware/smack/chat2/IncomingChatMessageListener;)Z

    .line 210
    iget-object v0, p0, Lcom/badguy/terrortime/ContactActivity;->mChatManager:Lorg/jivesoftware/smack/chat2/ChatManager;

    iget-object v1, p0, Lcom/badguy/terrortime/ContactActivity;->mOutgoingListener:Lorg/jivesoftware/smack/chat2/OutgoingChatMessageListener;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/chat2/ChatManager;->removeOutgoingListener(Lorg/jivesoftware/smack/chat2/OutgoingChatMessageListener;)Z

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/badguy/terrortime/ContactActivity;->mConnection:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/badguy/terrortime/ContactActivity;->mConnectionListener:Lcom/badguy/terrortime/ContactActivity$TerrorTimeConnectionListener;

    if-eqz v1, :cond_1

    .line 213
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->removeConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/badguy/terrortime/ContactActivity;->mReconnectionManager:Lorg/jivesoftware/smack/ReconnectionManager;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/badguy/terrortime/ContactActivity;->mReconnectionListener:Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener;

    if-eqz v1, :cond_2

    .line 216
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/ReconnectionManager;->removeReconnectionListener(Lorg/jivesoftware/smack/ReconnectionListener;)Z

    .line 218
    :cond_2
    invoke-virtual {p0}, Lcom/badguy/terrortime/ContactActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/badguy/terrortime/ContactActivity;->mChatReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 219
    invoke-virtual {p0}, Lcom/badguy/terrortime/ContactActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/badguy/terrortime/ContactActivity;->mContactReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badguy/terrortime/ContactActivity;->mConnectionListener:Lcom/badguy/terrortime/ContactActivity$TerrorTimeConnectionListener;

    .line 222
    iput-object v0, p0, Lcom/badguy/terrortime/ContactActivity;->mReconnectionManager:Lorg/jivesoftware/smack/ReconnectionManager;

    .line 223
    iput-object v0, p0, Lcom/badguy/terrortime/ContactActivity;->mReconnectionListener:Lcom/badguy/terrortime/ContactActivity$TerrorTimeReconnectionListener;

    .line 224
    iput-object v0, p0, Lcom/badguy/terrortime/ContactActivity;->mChatReceiver:Landroid/content/BroadcastReceiver;

    .line 225
    iput-object v0, p0, Lcom/badguy/terrortime/ContactActivity;->mContactReceiver:Landroid/content/BroadcastReceiver;

    .line 226
    iput-object v0, p0, Lcom/badguy/terrortime/ContactActivity;->mContactList:Lcom/badguy/terrortime/ContactList;

    .line 227
    iput-object v0, p0, Lcom/badguy/terrortime/ContactActivity;->mContactNames:Ljava/util/List;

    .line 228
    iput-object v0, p0, Lcom/badguy/terrortime/ContactActivity;->mClient:Lcom/badguy/terrortime/Client;

    .line 229
    iput-object v0, p0, Lcom/badguy/terrortime/ContactActivity;->mClientMessageList:Ljava/util/List;

    .line 230
    iput-object v0, p0, Lcom/badguy/terrortime/ContactActivity;->mMessageMap:Ljava/util/HashMap;

    .line 231
    iput-object v0, p0, Lcom/badguy/terrortime/ContactActivity;->mOutgoingListener:Lorg/jivesoftware/smack/chat2/OutgoingChatMessageListener;

    .line 232
    iput-object v0, p0, Lcom/badguy/terrortime/ContactActivity;->mIncomingListener:Lorg/jivesoftware/smack/chat2/IncomingChatMessageListener;

    .line 233
    iput-object v0, p0, Lcom/badguy/terrortime/ContactActivity;->mChatManager:Lorg/jivesoftware/smack/chat2/ChatManager;

    .line 234
    iput-object v0, p0, Lcom/badguy/terrortime/ContactActivity;->mContactListAdapter:Lcom/badguy/terrortime/ContactListAdapter;

    .line 235
    iput-object v0, p0, Lcom/badguy/terrortime/ContactActivity;->mCurrentChatJid:Ljava/lang/String;

    .line 236
    iget-object v0, p0, Lcom/badguy/terrortime/ContactActivity;->mConnection:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 237
    invoke-virtual {p0}, Lcom/badguy/terrortime/ContactActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/badguy/terrortime/TerrorTimeApplication;

    invoke-virtual {v0}, Lcom/badguy/terrortime/TerrorTimeApplication;->disconnect()V

    .line 239
    :cond_3
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 240
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 195
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f080070

    if-eq v0, v1, :cond_0

    .line 202
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 197
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/badguy/terrortime/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/ContactActivity;->startActivity(Landroid/content/Intent;)V

    .line 199
    invoke-virtual {p0}, Lcom/badguy/terrortime/ContactActivity;->finish()V

    .line 200
    const/4 v1, 0x1

    return v1
.end method

.method public sendChatBroadcast(Ljava/lang/String;Lcom/badguy/terrortime/Message;)V
    .locals 3
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "msg"    # Lcom/badguy/terrortime/Message;

    .line 243
    iget-object v0, p0, Lcom/badguy/terrortime/ContactActivity;->mMessageMap:Ljava/util/HashMap;

    new-instance v1, Lcom/badguy/terrortime/-$$Lambda$ContactActivity$x1GFCQmzoSl98GjK3ZI8stGf8ns;

    invoke-direct {v1, p2}, Lcom/badguy/terrortime/-$$Lambda$ContactActivity$x1GFCQmzoSl98GjK3ZI8stGf8ns;-><init>(Lcom/badguy/terrortime/Message;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 251
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 252
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "XMPP_CHAT_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 254
    invoke-static {}, Lcom/badguy/terrortime/TerrorTimeApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 257
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 258
    .local v1, "contactIntent":Landroid/content/Intent;
    const-string v2, "XMPP_CONTACTS_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    invoke-static {}, Lcom/badguy/terrortime/TerrorTimeApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 260
    return-void
.end method
