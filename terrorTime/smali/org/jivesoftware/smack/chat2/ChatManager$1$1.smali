.class Lorg/jivesoftware/smack/chat2/ChatManager$1$1;
.super Ljava/lang/Object;
.source "ChatManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/chat2/ChatManager$1;->processStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/jivesoftware/smack/chat2/ChatManager$1;

.field final synthetic val$bareFrom:Lorg/jxmpp/jid/EntityBareJid;

.field final synthetic val$chat:Lorg/jivesoftware/smack/chat2/Chat;

.field final synthetic val$message:Lorg/jivesoftware/smack/packet/Message;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/chat2/ChatManager$1;Lorg/jxmpp/jid/EntityBareJid;Lorg/jivesoftware/smack/packet/Message;Lorg/jivesoftware/smack/chat2/Chat;)V
    .locals 0
    .param p1, "this$1"    # Lorg/jivesoftware/smack/chat2/ChatManager$1;

    .line 115
    iput-object p1, p0, Lorg/jivesoftware/smack/chat2/ChatManager$1$1;->this$1:Lorg/jivesoftware/smack/chat2/ChatManager$1;

    iput-object p2, p0, Lorg/jivesoftware/smack/chat2/ChatManager$1$1;->val$bareFrom:Lorg/jxmpp/jid/EntityBareJid;

    iput-object p3, p0, Lorg/jivesoftware/smack/chat2/ChatManager$1$1;->val$message:Lorg/jivesoftware/smack/packet/Message;

    iput-object p4, p0, Lorg/jivesoftware/smack/chat2/ChatManager$1$1;->val$chat:Lorg/jivesoftware/smack/chat2/Chat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 118
    iget-object v0, p0, Lorg/jivesoftware/smack/chat2/ChatManager$1$1;->this$1:Lorg/jivesoftware/smack/chat2/ChatManager$1;

    iget-object v0, v0, Lorg/jivesoftware/smack/chat2/ChatManager$1;->this$0:Lorg/jivesoftware/smack/chat2/ChatManager;

    invoke-static {v0}, Lorg/jivesoftware/smack/chat2/ChatManager;->access$100(Lorg/jivesoftware/smack/chat2/ChatManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/chat2/IncomingChatMessageListener;

    .line 119
    .local v1, "listener":Lorg/jivesoftware/smack/chat2/IncomingChatMessageListener;
    iget-object v2, p0, Lorg/jivesoftware/smack/chat2/ChatManager$1$1;->val$bareFrom:Lorg/jxmpp/jid/EntityBareJid;

    iget-object v3, p0, Lorg/jivesoftware/smack/chat2/ChatManager$1$1;->val$message:Lorg/jivesoftware/smack/packet/Message;

    iget-object v4, p0, Lorg/jivesoftware/smack/chat2/ChatManager$1$1;->val$chat:Lorg/jivesoftware/smack/chat2/Chat;

    invoke-interface {v1, v2, v3, v4}, Lorg/jivesoftware/smack/chat2/IncomingChatMessageListener;->newIncomingMessage(Lorg/jxmpp/jid/EntityBareJid;Lorg/jivesoftware/smack/packet/Message;Lorg/jivesoftware/smack/chat2/Chat;)V

    .line 120
    .end local v1    # "listener":Lorg/jivesoftware/smack/chat2/IncomingChatMessageListener;
    goto :goto_0

    .line 121
    :cond_0
    return-void
.end method
