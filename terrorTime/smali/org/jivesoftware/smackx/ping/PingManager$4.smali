.class Lorg/jivesoftware/smackx/ping/PingManager$4;
.super Lorg/jivesoftware/smack/SmackFuture$InternalProcessStanzaSmackFuture;
.source "PingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/ping/PingManager;->pingAsync(Lorg/jxmpp/jid/Jid;J)Lorg/jivesoftware/smack/SmackFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/SmackFuture$InternalProcessStanzaSmackFuture<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/ping/PingManager;

.field final synthetic val$jid:Lorg/jxmpp/jid/Jid;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/ping/PingManager;Lorg/jxmpp/jid/Jid;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smackx/ping/PingManager;

    .line 180
    iput-object p1, p0, Lorg/jivesoftware/smackx/ping/PingManager$4;->this$0:Lorg/jivesoftware/smackx/ping/PingManager;

    iput-object p2, p0, Lorg/jivesoftware/smackx/ping/PingManager$4;->val$jid:Lorg/jxmpp/jid/Jid;

    invoke-direct {p0}, Lorg/jivesoftware/smack/SmackFuture$InternalProcessStanzaSmackFuture;-><init>()V

    return-void
.end method


# virtual methods
.method public handleStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 1
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 183
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/ping/PingManager$4;->setResult(Ljava/lang/Object;)V

    .line 184
    return-void
.end method

.method public isNonFatalException(Ljava/lang/Exception;)Z
    .locals 3
    .param p1, "exception"    # Ljava/lang/Exception;

    .line 187
    instance-of v0, p1, Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;

    if-eqz v0, :cond_0

    .line 188
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;

    .line 189
    .local v0, "xmppErrorException":Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
    iget-object v1, p0, Lorg/jivesoftware/smackx/ping/PingManager$4;->this$0:Lorg/jivesoftware/smackx/ping/PingManager;

    iget-object v2, p0, Lorg/jivesoftware/smackx/ping/PingManager$4;->val$jid:Lorg/jxmpp/jid/Jid;

    invoke-static {v1, v2, v0}, Lorg/jivesoftware/smackx/ping/PingManager;->access$200(Lorg/jivesoftware/smackx/ping/PingManager;Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jivesoftware/smackx/ping/PingManager$4;->setResult(Ljava/lang/Object;)V

    .line 191
    return v1

    .line 194
    .end local v0    # "xmppErrorException":Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
