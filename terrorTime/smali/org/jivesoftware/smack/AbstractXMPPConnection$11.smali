.class Lorg/jivesoftware/smack/AbstractXMPPConnection$11;
.super Ljava/lang/Object;
.source "AbstractXMPPConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/AbstractXMPPConnection;->sendStanzaWithResponseCallback(Lorg/jivesoftware/smack/packet/Stanza;Lorg/jivesoftware/smack/filter/StanzaFilter;Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/ExceptionCallback;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/AbstractXMPPConnection;

.field final synthetic val$exceptionCallback:Lorg/jivesoftware/smack/ExceptionCallback;

.field final synthetic val$packetListener:Lorg/jivesoftware/smack/StanzaListener;

.field final synthetic val$replyFilter:Lorg/jivesoftware/smack/filter/StanzaFilter;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/AbstractXMPPConnection;Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/ExceptionCallback;Lorg/jivesoftware/smack/filter/StanzaFilter;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smack/AbstractXMPPConnection;

    .line 1636
    iput-object p1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$11;->this$0:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    iput-object p2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$11;->val$packetListener:Lorg/jivesoftware/smack/StanzaListener;

    iput-object p3, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$11;->val$exceptionCallback:Lorg/jivesoftware/smack/ExceptionCallback;

    iput-object p4, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$11;->val$replyFilter:Lorg/jivesoftware/smack/filter/StanzaFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1639
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$11;->this$0:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    iget-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$11;->val$packetListener:Lorg/jivesoftware/smack/StanzaListener;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->removeAsyncStanzaListener(Lorg/jivesoftware/smack/StanzaListener;)Z

    move-result v0

    .line 1642
    .local v0, "removed":Z
    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$11;->val$exceptionCallback:Lorg/jivesoftware/smack/ExceptionCallback;

    if-eqz v1, :cond_1

    .line 1644
    iget-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$11;->this$0:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1646
    new-instance v1, Lorg/jivesoftware/smack/SmackException$NotConnectedException;

    iget-object v2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$11;->this$0:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    iget-object v3, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$11;->val$replyFilter:Lorg/jivesoftware/smack/filter/StanzaFilter;

    invoke-direct {v1, v2, v3}, Lorg/jivesoftware/smack/SmackException$NotConnectedException;-><init>(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .local v1, "exception":Ljava/lang/Exception;
    goto :goto_0

    .line 1648
    .end local v1    # "exception":Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$11;->this$0:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    iget-object v2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$11;->val$replyFilter:Lorg/jivesoftware/smack/filter/StanzaFilter;

    invoke-static {v1, v2}, Lorg/jivesoftware/smack/SmackException$NoResponseException;->newWith(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jivesoftware/smack/filter/StanzaFilter;)Lorg/jivesoftware/smack/SmackException$NoResponseException;

    move-result-object v1

    .line 1650
    .restart local v1    # "exception":Ljava/lang/Exception;
    :goto_0
    move-object v2, v1

    .line 1651
    .local v2, "exceptionToProcess":Ljava/lang/Exception;
    new-instance v3, Lorg/jivesoftware/smack/AbstractXMPPConnection$11$1;

    invoke-direct {v3, p0, v2}, Lorg/jivesoftware/smack/AbstractXMPPConnection$11$1;-><init>(Lorg/jivesoftware/smack/AbstractXMPPConnection$11;Ljava/lang/Exception;)V

    invoke-static {v3}, Lorg/jivesoftware/smack/util/Async;->go(Ljava/lang/Runnable;)Ljava/lang/Thread;

    .line 1658
    .end local v1    # "exception":Ljava/lang/Exception;
    .end local v2    # "exceptionToProcess":Ljava/lang/Exception;
    :cond_1
    return-void
.end method
