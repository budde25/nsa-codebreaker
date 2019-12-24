.class Lorg/jivesoftware/smack/AbstractXMPPConnection$10;
.super Ljava/lang/Object;
.source "AbstractXMPPConnection.java"

# interfaces
.implements Lorg/jivesoftware/smack/StanzaListener;


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

.field final synthetic val$callback:Lorg/jivesoftware/smack/StanzaListener;

.field final synthetic val$exceptionCallback:Lorg/jivesoftware/smack/ExceptionCallback;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/AbstractXMPPConnection;Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/ExceptionCallback;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smack/AbstractXMPPConnection;

    .line 1616
    iput-object p1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$10;->this$0:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    iput-object p2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$10;->val$callback:Lorg/jivesoftware/smack/StanzaListener;

    iput-object p3, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$10;->val$exceptionCallback:Lorg/jivesoftware/smack/ExceptionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 3
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;
        }
    .end annotation

    .line 1619
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$10;->this$0:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->removeAsyncStanzaListener(Lorg/jivesoftware/smack/StanzaListener;)Z

    move-result v0

    .line 1620
    .local v0, "removed":Z
    if-nez v0, :cond_0

    .line 1623
    return-void

    .line 1626
    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;->ifHasErrorThenThrow(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 1627
    iget-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$10;->val$callback:Lorg/jivesoftware/smack/StanzaListener;

    invoke-interface {v1, p1}, Lorg/jivesoftware/smack/StanzaListener;->processStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException$XMPPErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1633
    goto :goto_0

    .line 1629
    :catch_0
    move-exception v1

    .line 1630
    .local v1, "e":Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
    iget-object v2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$10;->val$exceptionCallback:Lorg/jivesoftware/smack/ExceptionCallback;

    if-eqz v2, :cond_1

    .line 1631
    invoke-interface {v2, v1}, Lorg/jivesoftware/smack/ExceptionCallback;->processException(Ljava/lang/Exception;)V

    .line 1634
    .end local v1    # "e":Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
    :cond_1
    :goto_0
    return-void
.end method
