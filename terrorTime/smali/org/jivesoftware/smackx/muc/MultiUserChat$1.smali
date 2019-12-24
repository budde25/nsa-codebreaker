.class Lorg/jivesoftware/smackx/muc/MultiUserChat$1;
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

    .line 164
    iput-object p1, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$1;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 4
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;
        }
    .end annotation

    .line 167
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/packet/Message;

    .line 169
    .local v0, "message":Lorg/jivesoftware/smack/packet/Message;
    invoke-static {}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->access$100()Lorg/jivesoftware/smack/AsyncButOrdered;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/muc/MultiUserChat$1;->this$0:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    new-instance v3, Lorg/jivesoftware/smackx/muc/MultiUserChat$1$1;

    invoke-direct {v3, p0, v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat$1$1;-><init>(Lorg/jivesoftware/smackx/muc/MultiUserChat$1;Lorg/jivesoftware/smack/packet/Message;)V

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smack/AsyncButOrdered;->performAsyncButOrdered(Ljava/lang/Object;Ljava/lang/Runnable;)Z

    .line 177
    return-void
.end method
