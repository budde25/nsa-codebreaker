.class Lorg/jivesoftware/smack/ReconnectionManager$3;
.super Lorg/jivesoftware/smack/AbstractConnectionListener;
.source "ReconnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/ReconnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/ReconnectionManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/ReconnectionManager;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smack/ReconnectionManager;

    .line 405
    iput-object p1, p0, Lorg/jivesoftware/smack/ReconnectionManager$3;->this$0:Lorg/jivesoftware/smack/ReconnectionManager;

    invoke-direct {p0}, Lorg/jivesoftware/smack/AbstractConnectionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticated(Lorg/jivesoftware/smack/XMPPConnection;Z)V
    .locals 2
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p2, "resumed"    # Z

    .line 414
    iget-object v0, p0, Lorg/jivesoftware/smack/ReconnectionManager$3;->this$0:Lorg/jivesoftware/smack/ReconnectionManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/jivesoftware/smack/ReconnectionManager;->done:Z

    .line 415
    return-void
.end method

.method public connectionClosed()V
    .locals 2

    .line 409
    iget-object v0, p0, Lorg/jivesoftware/smack/ReconnectionManager$3;->this$0:Lorg/jivesoftware/smack/ReconnectionManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/jivesoftware/smack/ReconnectionManager;->done:Z

    .line 410
    return-void
.end method

.method public connectionClosedOnError(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;

    .line 419
    iget-object v0, p0, Lorg/jivesoftware/smack/ReconnectionManager$3;->this$0:Lorg/jivesoftware/smack/ReconnectionManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/jivesoftware/smack/ReconnectionManager;->done:Z

    .line 420
    invoke-virtual {v0}, Lorg/jivesoftware/smack/ReconnectionManager;->isAutomaticReconnectEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    return-void

    .line 423
    :cond_0
    instance-of v0, p1, Lorg/jivesoftware/smack/XMPPException$StreamErrorException;

    if-eqz v0, :cond_1

    .line 424
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/XMPPException$StreamErrorException;

    .line 425
    .local v0, "xmppEx":Lorg/jivesoftware/smack/XMPPException$StreamErrorException;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPException$StreamErrorException;->getStreamError()Lorg/jivesoftware/smack/packet/StreamError;

    move-result-object v1

    .line 427
    .local v1, "error":Lorg/jivesoftware/smack/packet/StreamError;
    sget-object v2, Lorg/jivesoftware/smack/packet/StreamError$Condition;->conflict:Lorg/jivesoftware/smack/packet/StreamError$Condition;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/StreamError;->getCondition()Lorg/jivesoftware/smack/packet/StreamError$Condition;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 428
    return-void

    .line 432
    .end local v0    # "xmppEx":Lorg/jivesoftware/smack/XMPPException$StreamErrorException;
    .end local v1    # "error":Lorg/jivesoftware/smack/packet/StreamError;
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smack/ReconnectionManager$3;->this$0:Lorg/jivesoftware/smack/ReconnectionManager;

    invoke-static {v0}, Lorg/jivesoftware/smack/ReconnectionManager;->access$700(Lorg/jivesoftware/smack/ReconnectionManager;)V

    .line 433
    return-void
.end method
