.class Lorg/jivesoftware/smack/chat2/ChatManager$1;
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

    .line 101
    iput-object p1, p0, Lorg/jivesoftware/smack/chat2/ChatManager$1;->this$0:Lorg/jivesoftware/smack/chat2/ChatManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 7
    .param p1, "stanza"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 104
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/packet/Message;

    .line 105
    .local v0, "message":Lorg/jivesoftware/smack/packet/Message;
    iget-object v1, p0, Lorg/jivesoftware/smack/chat2/ChatManager$1;->this$0:Lorg/jivesoftware/smack/chat2/ChatManager;

    invoke-static {v1, v0}, Lorg/jivesoftware/smack/chat2/ChatManager;->access$000(Lorg/jivesoftware/smack/chat2/ChatManager;Lorg/jivesoftware/smack/packet/Message;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    return-void

    .line 109
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v1

    .line 110
    .local v1, "from":Lorg/jxmpp/jid/Jid;
    invoke-interface {v1}, Lorg/jxmpp/jid/Jid;->asEntityFullJidOrThrow()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v2

    .line 111
    .local v2, "fullFrom":Lorg/jxmpp/jid/EntityFullJid;
    invoke-interface {v2}, Lorg/jxmpp/jid/EntityFullJid;->asEntityBareJid()Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v3

    .line 112
    .local v3, "bareFrom":Lorg/jxmpp/jid/EntityBareJid;
    iget-object v4, p0, Lorg/jivesoftware/smack/chat2/ChatManager$1;->this$0:Lorg/jivesoftware/smack/chat2/ChatManager;

    invoke-virtual {v4, v3}, Lorg/jivesoftware/smack/chat2/ChatManager;->chatWith(Lorg/jxmpp/jid/EntityBareJid;)Lorg/jivesoftware/smack/chat2/Chat;

    move-result-object v4

    .line 113
    .local v4, "chat":Lorg/jivesoftware/smack/chat2/Chat;
    iput-object v2, v4, Lorg/jivesoftware/smack/chat2/Chat;->lockedResource:Lorg/jxmpp/jid/EntityFullJid;

    .line 115
    iget-object v5, p0, Lorg/jivesoftware/smack/chat2/ChatManager$1;->this$0:Lorg/jivesoftware/smack/chat2/ChatManager;

    invoke-static {v5}, Lorg/jivesoftware/smack/chat2/ChatManager;->access$200(Lorg/jivesoftware/smack/chat2/ChatManager;)Lorg/jivesoftware/smack/AsyncButOrdered;

    move-result-object v5

    new-instance v6, Lorg/jivesoftware/smack/chat2/ChatManager$1$1;

    invoke-direct {v6, p0, v3, v0, v4}, Lorg/jivesoftware/smack/chat2/ChatManager$1$1;-><init>(Lorg/jivesoftware/smack/chat2/ChatManager$1;Lorg/jxmpp/jid/EntityBareJid;Lorg/jivesoftware/smack/packet/Message;Lorg/jivesoftware/smack/chat2/Chat;)V

    invoke-virtual {v5, v4, v6}, Lorg/jivesoftware/smack/AsyncButOrdered;->performAsyncButOrdered(Ljava/lang/Object;Ljava/lang/Runnable;)Z

    .line 124
    return-void
.end method
