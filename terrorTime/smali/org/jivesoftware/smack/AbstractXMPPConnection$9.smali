.class Lorg/jivesoftware/smack/AbstractXMPPConnection$9;
.super Ljava/lang/Object;
.source "AbstractXMPPConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/AbstractXMPPConnection;->sendAsync(Lorg/jivesoftware/smack/packet/Stanza;Lorg/jivesoftware/smack/filter/StanzaFilter;J)Lorg/jivesoftware/smack/SmackFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/AbstractXMPPConnection;

.field final synthetic val$future:Lorg/jivesoftware/smack/SmackFuture$InternalSmackFuture;

.field final synthetic val$replyFilter:Lorg/jivesoftware/smack/filter/StanzaFilter;

.field final synthetic val$stanzaListener:Lorg/jivesoftware/smack/StanzaListener;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/AbstractXMPPConnection;Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;Lorg/jivesoftware/smack/SmackFuture$InternalSmackFuture;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smack/AbstractXMPPConnection;

    .line 1570
    iput-object p1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$9;->this$0:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    iput-object p2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$9;->val$stanzaListener:Lorg/jivesoftware/smack/StanzaListener;

    iput-object p3, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$9;->val$replyFilter:Lorg/jivesoftware/smack/filter/StanzaFilter;

    iput-object p4, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$9;->val$future:Lorg/jivesoftware/smack/SmackFuture$InternalSmackFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1573
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$9;->this$0:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    iget-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$9;->val$stanzaListener:Lorg/jivesoftware/smack/StanzaListener;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->removeAsyncStanzaListener(Lorg/jivesoftware/smack/StanzaListener;)Z

    move-result v0

    .line 1574
    .local v0, "removed":Z
    if-nez v0, :cond_0

    .line 1577
    return-void

    .line 1583
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$9;->this$0:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1585
    new-instance v1, Lorg/jivesoftware/smack/SmackException$NotConnectedException;

    iget-object v2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$9;->this$0:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    iget-object v3, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$9;->val$replyFilter:Lorg/jivesoftware/smack/filter/StanzaFilter;

    invoke-direct {v1, v2, v3}, Lorg/jivesoftware/smack/SmackException$NotConnectedException;-><init>(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .local v1, "exception":Ljava/lang/Exception;
    goto :goto_0

    .line 1588
    .end local v1    # "exception":Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$9;->this$0:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    iget-object v2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$9;->val$replyFilter:Lorg/jivesoftware/smack/filter/StanzaFilter;

    invoke-static {v1, v2}, Lorg/jivesoftware/smack/SmackException$NoResponseException;->newWith(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jivesoftware/smack/filter/StanzaFilter;)Lorg/jivesoftware/smack/SmackException$NoResponseException;

    move-result-object v1

    .line 1590
    .restart local v1    # "exception":Ljava/lang/Exception;
    :goto_0
    iget-object v2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$9;->val$future:Lorg/jivesoftware/smack/SmackFuture$InternalSmackFuture;

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/SmackFuture$InternalSmackFuture;->setException(Ljava/lang/Exception;)V

    .line 1591
    return-void
.end method
