.class Lorg/jivesoftware/smack/AbstractXMPPConnection$8;
.super Ljava/lang/Object;
.source "AbstractXMPPConnection.java"

# interfaces
.implements Lorg/jivesoftware/smack/StanzaListener;


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


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/AbstractXMPPConnection;Lorg/jivesoftware/smack/SmackFuture$InternalSmackFuture;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smack/AbstractXMPPConnection;

    .line 1550
    iput-object p1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$8;->this$0:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    iput-object p2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$8;->val$future:Lorg/jivesoftware/smack/SmackFuture$InternalSmackFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 3
    .param p1, "stanza"    # Lorg/jivesoftware/smack/packet/Stanza;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1553
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$8;->this$0:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->removeAsyncStanzaListener(Lorg/jivesoftware/smack/StanzaListener;)Z

    move-result v0

    .line 1554
    .local v0, "removed":Z
    if-nez v0, :cond_0

    .line 1557
    return-void

    .line 1560
    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;->ifHasErrorThenThrow(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 1562
    move-object v1, p1

    .line 1563
    .local v1, "s":Lorg/jivesoftware/smack/packet/Stanza;, "TS;"
    iget-object v2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$8;->val$future:Lorg/jivesoftware/smack/SmackFuture$InternalSmackFuture;

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/SmackFuture$InternalSmackFuture;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException$XMPPErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1567
    .end local v1    # "s":Lorg/jivesoftware/smack/packet/Stanza;, "TS;"
    goto :goto_0

    .line 1565
    :catch_0
    move-exception v1

    .line 1566
    .local v1, "exception":Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
    iget-object v2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$8;->val$future:Lorg/jivesoftware/smack/SmackFuture$InternalSmackFuture;

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/SmackFuture$InternalSmackFuture;->setException(Ljava/lang/Exception;)V

    .line 1568
    .end local v1    # "exception":Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
    :goto_0
    return-void
.end method
