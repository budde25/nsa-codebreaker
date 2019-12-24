.class Lorg/jivesoftware/smackx/muc/MultiUserChat$2;
.super Ljava/lang/Object;
.source "MultiUserChat.java"

# interfaces
.implements Lorg/jivesoftware/smack/StanzaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/muc/MultiUserChat;-><init>(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jxmpp/jid/EntityBareJid;Lorg/jivesoftware/smackx/muc/MultiUserChatManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/muc/MultiUserChat;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smackx/muc/MultiUserChat;

    .line 181
    iput-object p1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$2;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 5
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 184
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/packet/Message;

    .line 185
    .local v0, "msg":Lorg/jivesoftware/smack/packet/Message;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v1

    invoke-interface {v1}, Lorg/jxmpp/jid/Jid;->asEntityFullJidIfPossible()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v1

    .line 187
    .local v1, "from":Lorg/jxmpp/jid/EntityFullJid;
    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$2;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Message;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->access$202(Lorg/jivesoftware/smackx/muc/MultiUserChat;Ljava/lang/String;)Ljava/lang/String;

    .line 189
    invoke-static {}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->access$100()Lorg/jivesoftware/smack/AsyncButOrdered;

    move-result-object v2

    iget-object v3, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$2;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    new-instance v4, Lorg/jivesoftware/smackx/muc/MultiUserChat$2$1;

    invoke-direct {v4, p0, v0, v1}, Lorg/jivesoftware/smackx/muc/MultiUserChat$2$1;-><init>(Lorg/jivesoftware/smackx/muc/MultiUserChat$2;Lorg/jivesoftware/smack/packet/Message;Lorg/jxmpp/jid/EntityFullJid;)V

    invoke-virtual {v2, v3, v4}, Lorg/jivesoftware/smack/AsyncButOrdered;->performAsyncButOrdered(Ljava/lang/Object;Ljava/lang/Runnable;)Z

    .line 198
    return-void
.end method
