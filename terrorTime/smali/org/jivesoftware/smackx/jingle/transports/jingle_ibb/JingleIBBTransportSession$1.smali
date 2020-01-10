.class Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportSession$1;
.super Ljava/lang/Object;
.source "JingleIBBTransportSession.java"

# interfaces
.implements Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportSession;->initiateIncomingSession(Lorg/jivesoftware/smackx/jingle/transports/JingleTransportInitiationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportSession;

.field final synthetic val$callback:Lorg/jivesoftware/smackx/jingle/transports/JingleTransportInitiationCallback;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportSession;Lorg/jivesoftware/smackx/jingle/transports/JingleTransportInitiationCallback;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportSession;

    .line 81
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportSession$1;->this$0:Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportSession;

    iput-object p2, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportSession$1;->val$callback:Lorg/jivesoftware/smackx/jingle/transports/JingleTransportInitiationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public incomingBytestreamRequest(Lorg/jivesoftware/smackx/bytestreams/BytestreamRequest;)V
    .locals 2
    .param p1, "request"    # Lorg/jivesoftware/smackx/bytestreams/BytestreamRequest;

    .line 84
    invoke-interface {p1}, Lorg/jivesoftware/smackx/bytestreams/BytestreamRequest;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v0

    invoke-interface {v0}, Lorg/jxmpp/jid/Jid;->asFullJidIfPossible()Lorg/jxmpp/jid/FullJid;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportSession$1;->this$0:Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportSession;

    invoke-static {v1}, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportSession;->access$000(Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportSession;)Lorg/jivesoftware/smackx/jingle/JingleSession;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getRemote()Lorg/jxmpp/jid/FullJid;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jxmpp/jid/FullJid;->equals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {p1}, Lorg/jivesoftware/smackx/bytestreams/BytestreamRequest;->getSessionID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportSession$1;->this$0:Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportSession;

    invoke-static {v1}, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportSession;->access$100(Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportSession;)Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/element/JingleIBBTransport;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/element/JingleIBBTransport;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    :try_start_0
    invoke-interface {p1}, Lorg/jivesoftware/smackx/bytestreams/BytestreamRequest;->accept()Lorg/jivesoftware/smackx/bytestreams/BytestreamSession;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/jivesoftware/smack/SmackException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/jivesoftware/smack/XMPPException$XMPPErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .local v0, "session":Lorg/jivesoftware/smackx/bytestreams/BytestreamSession;
    nop

    .line 94
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportSession$1;->val$callback:Lorg/jivesoftware/smackx/jingle/transports/JingleTransportInitiationCallback;

    invoke-interface {v1, v0}, Lorg/jivesoftware/smackx/jingle/transports/JingleTransportInitiationCallback;->onSessionInitiated(Lorg/jivesoftware/smackx/bytestreams/BytestreamSession;)V

    goto :goto_1

    .line 90
    .end local v0    # "session":Lorg/jivesoftware/smackx/bytestreams/BytestreamSession;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportSession$1;->val$callback:Lorg/jivesoftware/smackx/jingle/transports/JingleTransportInitiationCallback;

    invoke-interface {v1, v0}, Lorg/jivesoftware/smackx/jingle/transports/JingleTransportInitiationCallback;->onException(Ljava/lang/Exception;)V

    .line 92
    return-void

    .line 96
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-void
.end method
