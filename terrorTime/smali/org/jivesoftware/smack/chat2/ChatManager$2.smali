.class Lorg/jivesoftware/smack/chat2/ChatManager$2;
.super Ljava/lang/Object;
.source "ChatManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/StanzaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/chat2/ChatManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/chat2/ChatManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/chat2/ChatManager;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smack/chat2/ChatManager;

    .line 127
    iput-object p1, p0, Lorg/jivesoftware/smack/chat2/ChatManager$2;->this$0:Lorg/jivesoftware/smack/chat2/ChatManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 5
    .param p1, "stanza"    # Lorg/jivesoftware/smack/packet/Stanza;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 130
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/packet/Message;

    .line 131
    .local v0, "message":Lorg/jivesoftware/smack/packet/Message;
    iget-object v1, p0, Lorg/jivesoftware/smack/chat2/ChatManager$2;->this$0:Lorg/jivesoftware/smack/chat2/ChatManager;

    invoke-static {v1, v0}, Lorg/jivesoftware/smack/chat2/ChatManager;->access$000(Lorg/jivesoftware/smack/chat2/ChatManager;Lorg/jivesoftware/smack/packet/Message;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    return-void

    .line 135
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Message;->getTo()Lorg/jxmpp/jid/Jid;

    move-result-object v1

    invoke-interface {v1}, Lorg/jxmpp/jid/Jid;->asEntityBareJidOrThrow()Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v1

    .line 136
    .local v1, "to":Lorg/jxmpp/jid/EntityBareJid;
    iget-object v2, p0, Lorg/jivesoftware/smack/chat2/ChatManager$2;->this$0:Lorg/jivesoftware/smack/chat2/ChatManager;

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/chat2/ChatManager;->chatWith(Lorg/jxmpp/jid/EntityBareJid;)Lorg/jivesoftware/smack/chat2/Chat;

    move-result-object v2

    .line 138
    .local v2, "chat":Lorg/jivesoftware/smack/chat2/Chat;
    iget-object v3, p0, Lorg/jivesoftware/smack/chat2/ChatManager$2;->this$0:Lorg/jivesoftware/smack/chat2/ChatManager;

    invoke-static {v3}, Lorg/jivesoftware/smack/chat2/ChatManager;->access$300(Lorg/jivesoftware/smack/chat2/ChatManager;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jivesoftware/smack/chat2/OutgoingChatMessageListener;

    .line 139
    .local v4, "listener":Lorg/jivesoftware/smack/chat2/OutgoingChatMessageListener;
    invoke-interface {v4, v1, v0, v2}, Lorg/jivesoftware/smack/chat2/OutgoingChatMessageListener;->newOutgoingMessage(Lorg/jxmpp/jid/EntityBareJid;Lorg/jivesoftware/smack/packet/Message;Lorg/jivesoftware/smack/chat2/Chat;)V

    .line 140
    .end local v4    # "listener":Lorg/jivesoftware/smack/chat2/OutgoingChatMessageListener;
    goto :goto_0

    .line 141
    :cond_1
    return-void
.end method
