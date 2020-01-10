.class Lorg/jivesoftware/smack/chat/ChatManager$2;
.super Ljava/lang/Object;
.source "ChatManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/StanzaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/chat/ChatManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/chat/ChatManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/chat/ChatManager;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smack/chat/ChatManager;

    .line 152
    iput-object p1, p0, Lorg/jivesoftware/smack/chat/ChatManager$2;->this$0:Lorg/jivesoftware/smack/chat/ChatManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 3
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 155
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/packet/Message;

    .line 157
    .local v0, "message":Lorg/jivesoftware/smack/packet/Message;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Message;->getThread()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 159
    iget-object v1, p0, Lorg/jivesoftware/smack/chat/ChatManager$2;->this$0:Lorg/jivesoftware/smack/chat/ChatManager;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/jivesoftware/smack/chat/ChatManager;->access$100(Lorg/jivesoftware/smack/chat/ChatManager;Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smack/chat/Chat;

    move-result-object v1

    .local v1, "chat":Lorg/jivesoftware/smack/chat/Chat;
    goto :goto_0

    .line 163
    .end local v1    # "chat":Lorg/jivesoftware/smack/chat/Chat;
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smack/chat/ChatManager$2;->this$0:Lorg/jivesoftware/smack/chat/ChatManager;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Message;->getThread()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/chat/ChatManager;->getThreadChat(Ljava/lang/String;)Lorg/jivesoftware/smack/chat/Chat;

    move-result-object v1

    .line 166
    .restart local v1    # "chat":Lorg/jivesoftware/smack/chat/Chat;
    :goto_0
    if-nez v1, :cond_1

    .line 167
    iget-object v2, p0, Lorg/jivesoftware/smack/chat/ChatManager$2;->this$0:Lorg/jivesoftware/smack/chat/ChatManager;

    invoke-static {v2, v0}, Lorg/jivesoftware/smack/chat/ChatManager;->access$200(Lorg/jivesoftware/smack/chat/ChatManager;Lorg/jivesoftware/smack/packet/Message;)Lorg/jivesoftware/smack/chat/Chat;

    move-result-object v1

    .line 170
    :cond_1
    if-nez v1, :cond_2

    .line 171
    return-void

    .line 174
    :cond_2
    invoke-static {v1, v0}, Lorg/jivesoftware/smack/chat/ChatManager;->access$300(Lorg/jivesoftware/smack/chat/Chat;Lorg/jivesoftware/smack/packet/Message;)V

    .line 175
    return-void
.end method
