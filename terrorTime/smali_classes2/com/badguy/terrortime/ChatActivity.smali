.class public Lcom/badguy/terrortime/ChatActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ChatActivity.java"


# instance fields
.field private mAdapterMessageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badguy/terrortime/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mChat:Lorg/jivesoftware/smack/chat2/Chat;

.field private mChatManager:Lorg/jivesoftware/smack/chat2/ChatManager;

.field private mClient:Lcom/badguy/terrortime/Client;

.field private mConnection:Lorg/jivesoftware/smack/AbstractXMPPConnection;

.field private mContactJid:Lorg/jxmpp/jid/Jid;

.field private mContactList:Lcom/badguy/terrortime/ContactList;

.field private mContactReceiver:Landroid/content/BroadcastReceiver;

.field private mMessageAdapter:Lcom/badguy/terrortime/MessageListAdapter;

.field private mMessageRecycler:Landroid/support/v7/widget/RecyclerView;

.field private mSend:Landroid/widget/Button;

.field private mSendText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badguy/terrortime/ChatActivity;->mMessageRecycler:Landroid/support/v7/widget/RecyclerView;

    .line 29
    iput-object v0, p0, Lcom/badguy/terrortime/ChatActivity;->mMessageAdapter:Lcom/badguy/terrortime/MessageListAdapter;

    .line 30
    iput-object v0, p0, Lcom/badguy/terrortime/ChatActivity;->mConnection:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    .line 31
    iput-object v0, p0, Lcom/badguy/terrortime/ChatActivity;->mChatManager:Lorg/jivesoftware/smack/chat2/ChatManager;

    .line 32
    iput-object v0, p0, Lcom/badguy/terrortime/ChatActivity;->mChat:Lorg/jivesoftware/smack/chat2/Chat;

    .line 33
    iput-object v0, p0, Lcom/badguy/terrortime/ChatActivity;->mSend:Landroid/widget/Button;

    .line 34
    iput-object v0, p0, Lcom/badguy/terrortime/ChatActivity;->mSendText:Landroid/widget/EditText;

    .line 35
    iput-object v0, p0, Lcom/badguy/terrortime/ChatActivity;->mAdapterMessageList:Ljava/util/List;

    .line 36
    iput-object v0, p0, Lcom/badguy/terrortime/ChatActivity;->mClient:Lcom/badguy/terrortime/Client;

    .line 37
    iput-object v0, p0, Lcom/badguy/terrortime/ChatActivity;->mContactList:Lcom/badguy/terrortime/ContactList;

    .line 38
    iput-object v0, p0, Lcom/badguy/terrortime/ChatActivity;->mContactJid:Lorg/jxmpp/jid/Jid;

    .line 39
    iput-object v0, p0, Lcom/badguy/terrortime/ChatActivity;->mContactReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/badguy/terrortime/ChatActivity;)Lorg/jxmpp/jid/Jid;
    .locals 1
    .param p0, "x0"    # Lcom/badguy/terrortime/ChatActivity;

    .line 27
    iget-object v0, p0, Lcom/badguy/terrortime/ChatActivity;->mContactJid:Lorg/jxmpp/jid/Jid;

    return-object v0
.end method

.method static synthetic access$100(Lcom/badguy/terrortime/ChatActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/badguy/terrortime/ChatActivity;

    .line 27
    iget-object v0, p0, Lcom/badguy/terrortime/ChatActivity;->mAdapterMessageList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/badguy/terrortime/ChatActivity;)Lcom/badguy/terrortime/MessageListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/badguy/terrortime/ChatActivity;

    .line 27
    iget-object v0, p0, Lcom/badguy/terrortime/ChatActivity;->mMessageAdapter:Lcom/badguy/terrortime/MessageListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/badguy/terrortime/ChatActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/badguy/terrortime/ChatActivity;

    .line 27
    iget-object v0, p0, Lcom/badguy/terrortime/ChatActivity;->mMessageRecycler:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/badguy/terrortime/ChatActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/badguy/terrortime/ChatActivity;

    .line 27
    iget-object v0, p0, Lcom/badguy/terrortime/ChatActivity;->mSendText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/badguy/terrortime/ChatActivity;)Lorg/jivesoftware/smack/chat2/Chat;
    .locals 1
    .param p0, "x0"    # Lcom/badguy/terrortime/ChatActivity;

    .line 27
    iget-object v0, p0, Lcom/badguy/terrortime/ChatActivity;->mChat:Lorg/jivesoftware/smack/chat2/Chat;

    return-object v0
.end method

.method static synthetic lambda$onCreate$0()Ljava/lang/Exception;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No connection object"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$onCreate$1()Ljava/lang/Exception;
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No client object"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$onCreate$2()Ljava/lang/Exception;
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No contact list object"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$onCreate$3()Ljava/lang/Exception;
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "No jid for contact"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 43
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/badguy/terrortime/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 46
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "jid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "jid":Ljava/lang/String;
    const-string v2, "messages"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/badguy/terrortime/ChatActivity;->mAdapterMessageList:Ljava/util/List;

    .line 49
    invoke-virtual {p0, v1}, Lcom/badguy/terrortime/ChatActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 50
    const v2, 0x7f0b001c

    invoke-virtual {p0, v2}, Lcom/badguy/terrortime/ChatActivity;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Lcom/badguy/terrortime/ChatActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/badguy/terrortime/TerrorTimeApplication;

    .line 54
    .local v2, "app":Lcom/badguy/terrortime/TerrorTimeApplication;
    :try_start_0
    invoke-virtual {v2}, Lcom/badguy/terrortime/TerrorTimeApplication;->getXMPPTCPConnection()Ljava/util/Optional;

    move-result-object v3

    sget-object v4, Lcom/badguy/terrortime/-$$Lambda$ChatActivity$Ksr1-XlDga0IT16Tq4Y-QHv_4QI;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$ChatActivity$Ksr1-XlDga0IT16Tq4Y-QHv_4QI;

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/AbstractXMPPConnection;

    iput-object v3, p0, Lcom/badguy/terrortime/ChatActivity;->mConnection:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    .line 55
    invoke-virtual {v2}, Lcom/badguy/terrortime/TerrorTimeApplication;->getClient()Ljava/util/Optional;

    move-result-object v3

    sget-object v4, Lcom/badguy/terrortime/-$$Lambda$ChatActivity$8yUyKQwn0DFL8EEckDr-dCx6pB0;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$ChatActivity$8yUyKQwn0DFL8EEckDr-dCx6pB0;

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badguy/terrortime/Client;

    iput-object v3, p0, Lcom/badguy/terrortime/ChatActivity;->mClient:Lcom/badguy/terrortime/Client;

    .line 56
    invoke-virtual {v2}, Lcom/badguy/terrortime/TerrorTimeApplication;->getContactList()Ljava/util/Optional;

    move-result-object v3

    sget-object v4, Lcom/badguy/terrortime/-$$Lambda$ChatActivity$QoDALnkTLgb2ljruKgBNgrQWrHA;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$ChatActivity$QoDALnkTLgb2ljruKgBNgrQWrHA;

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badguy/terrortime/ContactList;

    iput-object v3, p0, Lcom/badguy/terrortime/ChatActivity;->mContactList:Lcom/badguy/terrortime/ContactList;

    .line 57
    iget-object v3, p0, Lcom/badguy/terrortime/ChatActivity;->mContactList:Lcom/badguy/terrortime/ContactList;

    invoke-virtual {v3, v1}, Lcom/badguy/terrortime/ContactList;->getJidFromString(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v3

    sget-object v4, Lcom/badguy/terrortime/-$$Lambda$ChatActivity$LrcnlbksNlG-WUc_CyR_VLf7Bww;->INSTANCE:Lcom/badguy/terrortime/-$$Lambda$ChatActivity$LrcnlbksNlG-WUc_CyR_VLf7Bww;

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jxmpp/jid/Jid;

    iput-object v3, p0, Lcom/badguy/terrortime/ChatActivity;->mContactJid:Lorg/jxmpp/jid/Jid;

    .line 58
    iget-object v3, p0, Lcom/badguy/terrortime/ChatActivity;->mConnection:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    invoke-static {v3}, Lorg/jivesoftware/smack/chat2/ChatManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smack/chat2/ChatManager;

    move-result-object v3

    iput-object v3, p0, Lcom/badguy/terrortime/ChatActivity;->mChatManager:Lorg/jivesoftware/smack/chat2/ChatManager;

    .line 59
    iget-object v3, p0, Lcom/badguy/terrortime/ChatActivity;->mChatManager:Lorg/jivesoftware/smack/chat2/ChatManager;

    if-eqz v3, :cond_0

    .line 61
    const v3, 0x7f080097

    invoke-virtual {p0, v3}, Lcom/badguy/terrortime/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    iput-object v3, p0, Lcom/badguy/terrortime/ChatActivity;->mMessageRecycler:Landroid/support/v7/widget/RecyclerView;

    .line 62
    new-instance v3, Lcom/badguy/terrortime/MessageListAdapter;

    iget-object v4, p0, Lcom/badguy/terrortime/ChatActivity;->mAdapterMessageList:Ljava/util/List;

    invoke-direct {v3, p0, v4}, Lcom/badguy/terrortime/MessageListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v3, p0, Lcom/badguy/terrortime/ChatActivity;->mMessageAdapter:Lcom/badguy/terrortime/MessageListAdapter;

    .line 63
    iget-object v3, p0, Lcom/badguy/terrortime/ChatActivity;->mMessageRecycler:Landroid/support/v7/widget/RecyclerView;

    new-instance v4, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v4, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 64
    iget-object v3, p0, Lcom/badguy/terrortime/ChatActivity;->mMessageRecycler:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/badguy/terrortime/ChatActivity;->mMessageAdapter:Lcom/badguy/terrortime/MessageListAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 65
    iget-object v3, p0, Lcom/badguy/terrortime/ChatActivity;->mChatManager:Lorg/jivesoftware/smack/chat2/ChatManager;

    iget-object v4, p0, Lcom/badguy/terrortime/ChatActivity;->mContactJid:Lorg/jxmpp/jid/Jid;

    invoke-interface {v4}, Lorg/jxmpp/jid/Jid;->asEntityBareJidIfPossible()Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/chat2/ChatManager;->chatWith(Lorg/jxmpp/jid/EntityBareJid;)Lorg/jivesoftware/smack/chat2/Chat;

    move-result-object v3

    iput-object v3, p0, Lcom/badguy/terrortime/ChatActivity;->mChat:Lorg/jivesoftware/smack/chat2/Chat;

    .line 66
    const v3, 0x7f080026

    invoke-virtual {p0, v3}, Lcom/badguy/terrortime/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/badguy/terrortime/ChatActivity;->mSend:Landroid/widget/Button;

    .line 67
    const v3, 0x7f080044

    invoke-virtual {p0, v3}, Lcom/badguy/terrortime/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/badguy/terrortime/ChatActivity;->mSendText:Landroid/widget/EditText;

    .line 70
    iget-object v3, p0, Lcom/badguy/terrortime/ChatActivity;->mMessageRecycler:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/badguy/terrortime/ChatActivity;->mAdapterMessageList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 72
    new-instance v3, Lcom/badguy/terrortime/ChatActivity$1;

    invoke-direct {v3, p0}, Lcom/badguy/terrortime/ChatActivity$1;-><init>(Lcom/badguy/terrortime/ChatActivity;)V

    iput-object v3, p0, Lcom/badguy/terrortime/ChatActivity;->mContactReceiver:Landroid/content/BroadcastReceiver;

    .line 85
    invoke-static {}, Lcom/badguy/terrortime/TerrorTimeApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    iget-object v4, p0, Lcom/badguy/terrortime/ChatActivity;->mContactReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "XMPP_CHAT_MESSAGE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 87
    iget-object v3, p0, Lcom/badguy/terrortime/ChatActivity;->mSend:Landroid/widget/Button;

    new-instance v4, Lcom/badguy/terrortime/ChatActivity$2;

    invoke-direct {v4, p0}, Lcom/badguy/terrortime/ChatActivity$2;-><init>(Lcom/badguy/terrortime/ChatActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    goto :goto_0

    .line 59
    :cond_0
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "Chat manager is null"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "jid":Ljava/lang/String;
    .end local v2    # "app":Lcom/badguy/terrortime/TerrorTimeApplication;
    .end local p1    # "savedInstanceState":Landroid/os/Bundle;
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "jid":Ljava/lang/String;
    .restart local v2    # "app":Lcom/badguy/terrortime/TerrorTimeApplication;
    .restart local p1    # "savedInstanceState":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    .line 114
    .local v3, "e":Ljava/lang/Throwable;
    const-string v4, "EXCEPTION"

    const-string v5, "Error getting connection info"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    new-instance v4, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 116
    const-string v5, "ERROR"

    invoke-virtual {v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to setup chat with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 117
    invoke-virtual {v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    .line 118
    invoke-virtual {v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/badguy/terrortime/ChatActivity$3;

    invoke-direct {v5, p0}, Lcom/badguy/terrortime/ChatActivity$3;-><init>(Lcom/badguy/terrortime/ChatActivity;)V

    .line 119
    const-string v6, "Continue"

    invoke-virtual {v4, v6, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    .line 125
    .local v4, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v5

    .line 126
    .local v5, "alertUserDialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v5}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 129
    .end local v3    # "e":Ljava/lang/Throwable;
    .end local v4    # "builder":Landroid/support/v7/app/AlertDialog$Builder;
    .end local v5    # "alertUserDialog":Landroid/support/v7/app/AlertDialog;
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 133
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 134
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "XMPP_CHAT_CLOSED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    invoke-static {}, Lcom/badguy/terrortime/TerrorTimeApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 136
    invoke-static {}, Lcom/badguy/terrortime/TerrorTimeApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/badguy/terrortime/ChatActivity;->mContactReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 137
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/badguy/terrortime/ChatActivity;->mMessageAdapter:Lcom/badguy/terrortime/MessageListAdapter;

    .line 138
    iput-object v1, p0, Lcom/badguy/terrortime/ChatActivity;->mConnection:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    .line 139
    iput-object v1, p0, Lcom/badguy/terrortime/ChatActivity;->mChatManager:Lorg/jivesoftware/smack/chat2/ChatManager;

    .line 140
    iput-object v1, p0, Lcom/badguy/terrortime/ChatActivity;->mChat:Lorg/jivesoftware/smack/chat2/Chat;

    .line 141
    iput-object v1, p0, Lcom/badguy/terrortime/ChatActivity;->mSend:Landroid/widget/Button;

    .line 142
    iput-object v1, p0, Lcom/badguy/terrortime/ChatActivity;->mAdapterMessageList:Ljava/util/List;

    .line 143
    iput-object v1, p0, Lcom/badguy/terrortime/ChatActivity;->mClient:Lcom/badguy/terrortime/Client;

    .line 144
    iput-object v1, p0, Lcom/badguy/terrortime/ChatActivity;->mContactList:Lcom/badguy/terrortime/ContactList;

    .line 145
    iput-object v1, p0, Lcom/badguy/terrortime/ChatActivity;->mContactJid:Lorg/jxmpp/jid/Jid;

    .line 146
    iput-object v1, p0, Lcom/badguy/terrortime/ChatActivity;->mContactReceiver:Landroid/content/BroadcastReceiver;

    .line 147
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 148
    return-void
.end method
