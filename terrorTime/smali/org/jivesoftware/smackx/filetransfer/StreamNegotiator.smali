.class public abstract Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
.super Lorg/jivesoftware/smack/Manager;
.source "StreamNegotiator.java"


# static fields
.field protected static final initationSetEvents:Lorg/jivesoftware/smack/util/EventManger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jivesoftware/smack/util/EventManger<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smack/packet/IQ;",
            "Lorg/jivesoftware/smack/SmackException$NotConnectedException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Lorg/jivesoftware/smack/util/EventManger;

    invoke-direct {v0}, Lorg/jivesoftware/smack/util/EventManger;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;->initationSetEvents:Lorg/jivesoftware/smack/util/EventManger;

    return-void
.end method

.method protected constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 0
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 51
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Manager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 52
    return-void
.end method

.method protected static createInitiationAccept(Lorg/jivesoftware/smackx/si/packet/StreamInitiation;[Ljava/lang/String;)Lorg/jivesoftware/smackx/si/packet/StreamInitiation;
    .locals 6
    .param p0, "streamInitiationOffer"    # Lorg/jivesoftware/smackx/si/packet/StreamInitiation;
    .param p1, "namespaces"    # [Ljava/lang/String;

    .line 77
    new-instance v0, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;-><init>()V

    .line 78
    .local v0, "response":Lorg/jivesoftware/smackx/si/packet/StreamInitiation;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 79
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;->getTo()Lorg/jxmpp/jid/Jid;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;->setFrom(Lorg/jxmpp/jid/Jid;)V

    .line 80
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->result:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 81
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;->getStanzaId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;->setStanzaId(Ljava/lang/String;)V

    .line 83
    new-instance v1, Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    sget-object v2, Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;->submit:Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;-><init>(Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;)V

    .line 84
    .local v1, "form":Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    new-instance v2, Lorg/jivesoftware/smackx/xdata/FormField;

    const-string v3, "stream-method"

    invoke-direct {v2, v3}, Lorg/jivesoftware/smackx/xdata/FormField;-><init>(Ljava/lang/String;)V

    .line 86
    .local v2, "field":Lorg/jivesoftware/smackx/xdata/FormField;
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, p1, v4

    .line 87
    .local v5, "namespace":Ljava/lang/String;
    invoke-virtual {v2, v5}, Lorg/jivesoftware/smackx/xdata/FormField;->addValue(Ljava/lang/CharSequence;)V

    .line 86
    .end local v5    # "namespace":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->addField(Lorg/jivesoftware/smackx/xdata/FormField;)V

    .line 91
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;->setFeatureNegotiationForm(Lorg/jivesoftware/smackx/xdata/packet/DataForm;)V

    .line 92
    return-object v0
.end method

.method public static signal(Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ;)V
    .locals 1
    .param p0, "eventKey"    # Ljava/lang/String;
    .param p1, "eventValue"    # Lorg/jivesoftware/smack/packet/IQ;

    .line 188
    sget-object v0, Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;->initationSetEvents:Lorg/jivesoftware/smack/util/EventManger;

    invoke-virtual {v0, p0, p1}, Lorg/jivesoftware/smack/util/EventManger;->signalEvent(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 189
    return-void
.end method


# virtual methods
.method public abstract createIncomingStream(Lorg/jivesoftware/smackx/si/packet/StreamInitiation;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException;
        }
    .end annotation
.end method

.method public abstract createOutgoingStream(Ljava/lang/String;Lorg/jxmpp/jid/Jid;Lorg/jxmpp/jid/Jid;)Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException;,
            Lorg/jivesoftware/smack/XMPPException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract getNamespaces()[Ljava/lang/String;
.end method

.method protected final initiateIncomingStream(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jivesoftware/smackx/si/packet/StreamInitiation;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 6
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p2, "initiation"    # Lorg/jivesoftware/smackx/si/packet/StreamInitiation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;
        }
    .end annotation

    .line 97
    nop

    .line 98
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;->getNamespaces()[Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {p2, v0}, Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;->createInitiationAccept(Lorg/jivesoftware/smackx/si/packet/StreamInitiation;[Ljava/lang/String;)Lorg/jivesoftware/smackx/si/packet/StreamInitiation;

    move-result-object v0

    .line 100
    .local v0, "response":Lorg/jivesoftware/smackx/si/packet/StreamInitiation;
    invoke-virtual {p2}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v1

    invoke-virtual {p2}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;->getSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;->newStreamInitiation(Lorg/jxmpp/jid/Jid;Ljava/lang/String;)V

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v2

    invoke-interface {v2}, Lorg/jxmpp/jid/Jid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;->getSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "eventKey":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;->initationSetEvents:Lorg/jivesoftware/smack/util/EventManger;

    invoke-interface {p1}, Lorg/jivesoftware/smack/XMPPConnection;->getReplyTimeout()J

    move-result-wide v3

    new-instance v5, Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator$1;

    invoke-direct {v5, p0, p1, v0}, Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator$1;-><init>(Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;Lorg/jivesoftware/smack/XMPPConnection;Lorg/jivesoftware/smackx/si/packet/StreamInitiation;)V

    invoke-virtual {v2, v1, v3, v4, v5}, Lorg/jivesoftware/smack/util/EventManger;->performActionAndWaitForEvent(Ljava/lang/Object;JLorg/jivesoftware/smack/util/EventManger$Callback;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/packet/IQ;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .local v2, "streamMethodInitiation":Lorg/jivesoftware/smack/packet/IQ;
    nop

    .line 122
    if-eqz v2, :cond_0

    .line 125
    invoke-static {v2}, Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;->ifHasErrorThenThrow(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 126
    return-object v2

    .line 123
    :cond_0
    const-string v3, "stream initiation"

    invoke-static {p1, v3}, Lorg/jivesoftware/smack/SmackException$NoResponseException;->newWith(Lorg/jivesoftware/smack/XMPPConnection;Ljava/lang/String;)Lorg/jivesoftware/smack/SmackException$NoResponseException;

    move-result-object v3

    throw v3

    .line 117
    .end local v2    # "streamMethodInitiation":Lorg/jivesoftware/smack/packet/IQ;
    :catch_0
    move-exception v2

    .line 119
    .local v2, "e":Ljava/lang/InterruptedException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method abstract negotiateIncomingStream(Lorg/jivesoftware/smack/packet/Stanza;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException;
        }
    .end annotation
.end method

.method protected abstract newStreamInitiation(Lorg/jxmpp/jid/Jid;Ljava/lang/String;)V
.end method
