.class Lorg/jivesoftware/smackx/chatstates/ChatStateManager$1;
.super Ljava/lang/Object;
.source "ChatStateManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/chat2/OutgoingChatMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/chatstates/ChatStateManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/chatstates/ChatStateManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/chatstates/ChatStateManager;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smackx/chatstates/ChatStateManager;

    .line 116
    iput-object p1, p0, Lorg/jivesoftware/smackx/chatstates/ChatStateManager$1;->this$0:Lorg/jivesoftware/smackx/chatstates/ChatStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newOutgoingMessage(Lorg/jxmpp/jid/EntityBareJid;Lorg/jivesoftware/smack/packet/Message;Lorg/jivesoftware/smack/chat2/Chat;)V
    .locals 2
    .param p1, "to"    # Lorg/jxmpp/jid/EntityBareJid;
    .param p2, "message"    # Lorg/jivesoftware/smack/packet/Message;
    .param p3, "chat"    # Lorg/jivesoftware/smack/chat2/Chat;

    .line 119
    if-nez p3, :cond_0

    .line 120
    return-void

    .line 124
    :cond_0
    invoke-static {}, Lorg/jivesoftware/smackx/chatstates/ChatStateManager;->access$000()Lorg/jivesoftware/smack/filter/StanzaFilter;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/jivesoftware/smack/filter/StanzaFilter;->accept(Lorg/jivesoftware/smack/packet/Stanza;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smackx/chatstates/ChatStateManager$1;->this$0:Lorg/jivesoftware/smackx/chatstates/ChatStateManager;

    sget-object v1, Lorg/jivesoftware/smackx/chatstates/ChatState;->active:Lorg/jivesoftware/smackx/chatstates/ChatState;

    invoke-static {v0, p3, v1}, Lorg/jivesoftware/smackx/chatstates/ChatStateManager;->access$100(Lorg/jivesoftware/smackx/chatstates/ChatStateManager;Lorg/jivesoftware/smack/chat2/Chat;Lorg/jivesoftware/smackx/chatstates/ChatState;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    new-instance v0, Lorg/jivesoftware/smackx/chatstates/packet/ChatStateExtension;

    sget-object v1, Lorg/jivesoftware/smackx/chatstates/ChatState;->active:Lorg/jivesoftware/smackx/chatstates/ChatState;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/chatstates/packet/ChatStateExtension;-><init>(Lorg/jivesoftware/smackx/chatstates/ChatState;)V

    invoke-virtual {p2, v0}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 132
    :cond_2
    return-void
.end method
