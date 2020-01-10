.class Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener$1;
.super Ljava/lang/Object;
.source "ContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener;->newOutgoingMessage(Lorg/jxmpp/jid/EntityBareJid;Lorg/jivesoftware/smack/packet/Message;Lorg/jivesoftware/smack/chat2/Chat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener;

.field final synthetic val$message:Lorg/jivesoftware/smack/packet/Message;

.field final synthetic val$to:Lorg/jxmpp/jid/EntityBareJid;


# direct methods
.method constructor <init>(Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener;Lorg/jxmpp/jid/EntityBareJid;Lorg/jivesoftware/smack/packet/Message;)V
    .locals 0
    .param p1, "this$1"    # Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener;

    .line 292
    iput-object p1, p0, Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener$1;->this$1:Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener;

    iput-object p2, p0, Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener$1;->val$to:Lorg/jxmpp/jid/EntityBareJid;

    iput-object p3, p0, Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener$1;->val$message:Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 294
    new-instance v0, Lcom/badguy/terrortime/Message;

    iget-object v1, p0, Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener$1;->this$1:Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener;

    iget-object v1, v1, Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener;->this$0:Lcom/badguy/terrortime/ContactActivity;

    invoke-static {v1}, Lcom/badguy/terrortime/ContactActivity;->access$800(Lcom/badguy/terrortime/ContactActivity;)Lcom/badguy/terrortime/Client;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badguy/terrortime/Client;->getXmppUserName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener$1;->val$to:Lorg/jxmpp/jid/EntityBareJid;

    invoke-interface {v2}, Lorg/jxmpp/jid/EntityBareJid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener$1;->val$message:Lorg/jivesoftware/smack/packet/Message;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/Message;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badguy/terrortime/Message;-><init>(Ljava/lang/String;Ljava/lang/String;[BZ)V

    .line 296
    .local v0, "ttMessage":Lcom/badguy/terrortime/Message;
    iget-object v1, p0, Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener$1;->this$1:Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener;

    iget-object v1, v1, Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener;->this$0:Lcom/badguy/terrortime/ContactActivity;

    invoke-static {v1}, Lcom/badguy/terrortime/ContactActivity;->access$400(Lcom/badguy/terrortime/ContactActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener$1;->val$to:Lorg/jxmpp/jid/EntityBareJid;

    invoke-interface {v1}, Lorg/jxmpp/jid/EntityBareJid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener$1;->this$1:Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener;

    iget-object v2, v2, Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener;->this$0:Lcom/badguy/terrortime/ContactActivity;

    invoke-static {v2}, Lcom/badguy/terrortime/ContactActivity;->access$400(Lcom/badguy/terrortime/ContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener$1;->this$1:Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener;

    iget-object v1, v1, Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener;->this$0:Lcom/badguy/terrortime/ContactActivity;

    invoke-static {v1}, Lcom/badguy/terrortime/ContactActivity;->access$500(Lcom/badguy/terrortime/ContactActivity;)Lcom/badguy/terrortime/ContactListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener$1;->this$1:Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener;

    iget-object v2, v2, Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener;->this$0:Lcom/badguy/terrortime/ContactActivity;

    invoke-static {v2}, Lcom/badguy/terrortime/ContactActivity;->access$400(Lcom/badguy/terrortime/ContactActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badguy/terrortime/ContactListAdapter;->incrementCount(Ljava/lang/String;)V

    .line 300
    :cond_0
    new-instance v1, Lcom/badguy/terrortime/Message;

    iget-object v2, p0, Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener$1;->this$1:Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener;

    iget-object v2, v2, Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener;->this$0:Lcom/badguy/terrortime/ContactActivity;

    invoke-static {v2}, Lcom/badguy/terrortime/ContactActivity;->access$800(Lcom/badguy/terrortime/ContactActivity;)Lcom/badguy/terrortime/Client;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badguy/terrortime/Client;->getXmppUserName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener$1;->val$to:Lorg/jxmpp/jid/EntityBareJid;

    invoke-interface {v3}, Lorg/jxmpp/jid/EntityBareJid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener$1;->val$message:Lorg/jivesoftware/smack/packet/Message;

    invoke-virtual {v5}, Lorg/jivesoftware/smack/packet/Message;->getBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/badguy/terrortime/Message;-><init>(Ljava/lang/String;Ljava/lang/String;[BZ)V

    .line 301
    .local v1, "plainTextMessage":Lcom/badguy/terrortime/Message;
    iget-object v2, p0, Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener$1;->this$1:Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener;

    iget-object v2, v2, Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener;->this$0:Lcom/badguy/terrortime/ContactActivity;

    invoke-static {v2}, Lcom/badguy/terrortime/ContactActivity;->access$800(Lcom/badguy/terrortime/ContactActivity;)Lcom/badguy/terrortime/Client;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/badguy/terrortime/Client;->encryptMessage(Lcom/badguy/terrortime/Message;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 303
    move-object v1, v0

    .line 305
    :cond_1
    iget-object v2, p0, Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener$1;->this$1:Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener;

    iget-object v2, v2, Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener;->this$0:Lcom/badguy/terrortime/ContactActivity;

    iget-object v3, p0, Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener$1;->val$to:Lorg/jxmpp/jid/EntityBareJid;

    invoke-interface {v3}, Lorg/jxmpp/jid/EntityBareJid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/badguy/terrortime/ContactActivity;->sendChatBroadcast(Ljava/lang/String;Lcom/badguy/terrortime/Message;)V

    .line 307
    iget-object v2, p0, Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener$1;->this$1:Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener;

    iget-object v2, v2, Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener;->this$0:Lcom/badguy/terrortime/ContactActivity;

    invoke-static {v2}, Lcom/badguy/terrortime/ContactActivity;->access$900(Lcom/badguy/terrortime/ContactActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    iget-object v2, p0, Lcom/badguy/terrortime/ContactActivity$ChatOutgoingMessageListener$1;->val$message:Lorg/jivesoftware/smack/packet/Message;

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/badguy/terrortime/Message;->getContent()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/packet/Message;->setBody(Ljava/lang/String;)V

    .line 309
    return-void
.end method
