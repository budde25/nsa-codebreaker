.class Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener$1;
.super Ljava/lang/Object;
.source "ContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener;->newIncomingMessage(Lorg/jxmpp/jid/EntityBareJid;Lorg/jivesoftware/smack/packet/Message;Lorg/jivesoftware/smack/chat2/Chat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener;

.field final synthetic val$from:Lorg/jxmpp/jid/EntityBareJid;

.field final synthetic val$message:Lorg/jivesoftware/smack/packet/Message;


# direct methods
.method constructor <init>(Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener;Lorg/jxmpp/jid/EntityBareJid;Lorg/jivesoftware/smack/packet/Message;)V
    .locals 0
    .param p1, "this$1"    # Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener;

    .line 267
    iput-object p1, p0, Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener$1;->this$1:Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener;

    iput-object p2, p0, Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener$1;->val$from:Lorg/jxmpp/jid/EntityBareJid;

    iput-object p3, p0, Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener$1;->val$message:Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 269
    new-instance v0, Lcom/badguy/terrortime/Message;

    iget-object v1, p0, Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener$1;->this$1:Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener;

    iget-object v1, v1, Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener;->this$0:Lcom/badguy/terrortime/ContactActivity;

    invoke-static {v1}, Lcom/badguy/terrortime/ContactActivity;->access$800(Lcom/badguy/terrortime/ContactActivity;)Lcom/badguy/terrortime/Client;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badguy/terrortime/Client;->getXmppUserName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener$1;->val$from:Lorg/jxmpp/jid/EntityBareJid;

    invoke-interface {v2}, Lorg/jxmpp/jid/EntityBareJid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener$1;->val$message:Lorg/jivesoftware/smack/packet/Message;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/Message;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badguy/terrortime/Message;-><init>(Ljava/lang/String;Ljava/lang/String;[BZ)V

    .line 272
    .local v0, "ttMessage":Lcom/badguy/terrortime/Message;
    iget-object v1, p0, Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener$1;->this$1:Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener;

    iget-object v1, v1, Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener;->this$0:Lcom/badguy/terrortime/ContactActivity;

    invoke-static {v1}, Lcom/badguy/terrortime/ContactActivity;->access$400(Lcom/badguy/terrortime/ContactActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener$1;->val$from:Lorg/jxmpp/jid/EntityBareJid;

    invoke-interface {v1}, Lorg/jxmpp/jid/EntityBareJid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener$1;->this$1:Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener;

    iget-object v2, v2, Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener;->this$0:Lcom/badguy/terrortime/ContactActivity;

    invoke-static {v2}, Lcom/badguy/terrortime/ContactActivity;->access$400(Lcom/badguy/terrortime/ContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener$1;->this$1:Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener;

    iget-object v1, v1, Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener;->this$0:Lcom/badguy/terrortime/ContactActivity;

    invoke-static {v1}, Lcom/badguy/terrortime/ContactActivity;->access$500(Lcom/badguy/terrortime/ContactActivity;)Lcom/badguy/terrortime/ContactListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener$1;->this$1:Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener;

    iget-object v2, v2, Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener;->this$0:Lcom/badguy/terrortime/ContactActivity;

    invoke-static {v2}, Lcom/badguy/terrortime/ContactActivity;->access$400(Lcom/badguy/terrortime/ContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badguy/terrortime/ContactListAdapter;->incrementCount(Ljava/lang/String;)V

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener$1;->this$1:Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener;

    iget-object v1, v1, Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener;->this$0:Lcom/badguy/terrortime/ContactActivity;

    invoke-static {v1}, Lcom/badguy/terrortime/ContactActivity;->access$800(Lcom/badguy/terrortime/ContactActivity;)Lcom/badguy/terrortime/Client;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/badguy/terrortime/Client;->decryptMessage(Lcom/badguy/terrortime/Message;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    iget-object v1, p0, Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener$1;->this$1:Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener;

    iget-object v1, v1, Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener;->this$0:Lcom/badguy/terrortime/ContactActivity;

    invoke-static {v1}, Lcom/badguy/terrortime/ContactActivity;->access$900(Lcom/badguy/terrortime/ContactActivity;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/badguy/terrortime/Message;

    iget-object v3, p0, Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener$1;->this$1:Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener;

    iget-object v3, v3, Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener;->this$0:Lcom/badguy/terrortime/ContactActivity;

    invoke-static {v3}, Lcom/badguy/terrortime/ContactActivity;->access$800(Lcom/badguy/terrortime/ContactActivity;)Lcom/badguy/terrortime/Client;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badguy/terrortime/Client;->getXmppUserName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener$1;->val$from:Lorg/jxmpp/jid/EntityBareJid;

    invoke-interface {v5}, Lorg/jxmpp/jid/EntityBareJid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener$1;->val$message:Lorg/jivesoftware/smack/packet/Message;

    invoke-virtual {v6}, Lorg/jivesoftware/smack/packet/Message;->getBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v2, v3, v5, v6, v4}, Lcom/badguy/terrortime/Message;-><init>(Ljava/lang/String;Ljava/lang/String;[BZ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 279
    :cond_1
    iget-object v1, p0, Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener$1;->this$1:Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener;

    iget-object v1, v1, Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener;->this$0:Lcom/badguy/terrortime/ContactActivity;

    invoke-static {v1}, Lcom/badguy/terrortime/ContactActivity;->access$900(Lcom/badguy/terrortime/ContactActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    :goto_0
    iget-object v1, p0, Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener$1;->this$1:Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener;

    iget-object v1, v1, Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener;->this$0:Lcom/badguy/terrortime/ContactActivity;

    iget-object v2, p0, Lcom/badguy/terrortime/ContactActivity$ChatIncomingMessageListener$1;->val$from:Lorg/jxmpp/jid/EntityBareJid;

    invoke-interface {v2}, Lorg/jxmpp/jid/EntityBareJid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/badguy/terrortime/ContactActivity;->sendChatBroadcast(Ljava/lang/String;Lcom/badguy/terrortime/Message;)V

    .line 283
    return-void
.end method
