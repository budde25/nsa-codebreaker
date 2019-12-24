.class public Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportSession;
.super Lorg/jivesoftware/smackx/jingle/transports/JingleTransportSession;
.source "JingleIBBTransportSession.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smackx/jingle/transports/JingleTransportSession<",
        "Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/element/JingleIBBTransport;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private final transportManager:Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportSession;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/jingle/JingleSession;)V
    .locals 1
    .param p1, "session"    # Lorg/jivesoftware/smackx/jingle/JingleSession;

    .line 43
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/jingle/transports/JingleTransportSession;-><init>(Lorg/jivesoftware/smackx/jingle/JingleSession;)V

    .line 44
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportManager;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportSession;->transportManager:Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportManager;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportSession;)Lorg/jivesoftware/smackx/jingle/JingleSession;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportSession;

    .line 37
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportSession;->jingleSession:Lorg/jivesoftware/smackx/jingle/JingleSession;

    return-object v0
.end method

.method static synthetic access$100(Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportSession;)Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportSession;

    .line 37
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportSession;->theirProposal:Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic createTransport()Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportSession;->createTransport()Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/element/JingleIBBTransport;

    move-result-object v0

    return-object v0
.end method

.method public createTransport()Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/element/JingleIBBTransport;
    .locals 3

    .line 50
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportSession;->theirProposal:Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/element/JingleIBBTransport;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/element/JingleIBBTransport;-><init>()V

    return-object v0

    .line 53
    :cond_0
    new-instance v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/element/JingleIBBTransport;

    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportSession;->theirProposal:Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    check-cast v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/element/JingleIBBTransport;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/element/JingleIBBTransport;->getBlockSize()S

    move-result v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportSession;->theirProposal:Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    check-cast v2, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/element/JingleIBBTransport;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/element/JingleIBBTransport;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/element/JingleIBBTransport;-><init>(SLjava/lang/String;)V

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportSession;->transportManager:Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportManager;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportManager;->getNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleTransportInfo(Lorg/jivesoftware/smackx/jingle/element/Jingle;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 1
    .param p1, "transportInfo"    # Lorg/jivesoftware/smackx/jingle/element/Jingle;

    .line 107
    invoke-static {p1}, Lorg/jivesoftware/smack/packet/IQ;->createResultIQ(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    return-object v0
.end method

.method public initiateIncomingSession(Lorg/jivesoftware/smackx/jingle/transports/JingleTransportInitiationCallback;)V
    .locals 3
    .param p1, "callback"    # Lorg/jivesoftware/smackx/jingle/transports/JingleTransportInitiationCallback;

    .line 79
    sget-object v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportSession;->LOGGER:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "Await Jingle InBandBytestream session."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportSession;->jingleSession:Lorg/jivesoftware/smackx/jingle/JingleSession;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->getByteStreamManager(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;

    move-result-object v0

    new-instance v1, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportSession$1;

    invoke-direct {v1, p0, p1}, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportSession$1;-><init>(Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportSession;Lorg/jivesoftware/smackx/jingle/transports/JingleTransportInitiationCallback;)V

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->addIncomingBytestreamListener(Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;)V

    .line 98
    return-void
.end method

.method public initiateOutgoingSession(Lorg/jivesoftware/smackx/jingle/transports/JingleTransportInitiationCallback;)V
    .locals 3
    .param p1, "callback"    # Lorg/jivesoftware/smackx/jingle/transports/JingleTransportInitiationCallback;

    .line 65
    sget-object v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportSession;->LOGGER:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "Initiate Jingle InBandBytestream session."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 69
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportSession;->jingleSession:Lorg/jivesoftware/smackx/jingle/JingleSession;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->getByteStreamManager(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportSession;->jingleSession:Lorg/jivesoftware/smackx/jingle/JingleSession;

    .line 70
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getRemote()Lorg/jxmpp/jid/FullJid;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportSession;->theirProposal:Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    check-cast v2, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/element/JingleIBBTransport;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/element/JingleIBBTransport;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->establishSession(Lorg/jxmpp/jid/Jid;Ljava/lang/String;)Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;

    move-result-object v0

    .line 71
    .local v0, "session":Lorg/jivesoftware/smackx/bytestreams/BytestreamSession;
    invoke-interface {p1, v0}, Lorg/jivesoftware/smackx/jingle/transports/JingleTransportInitiationCallback;->onSessionInitiated(Lorg/jivesoftware/smackx/bytestreams/BytestreamSession;)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/SmackException$NoResponseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/jivesoftware/smack/SmackException$NotConnectedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/jivesoftware/smack/XMPPException$XMPPErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_1

    .line 72
    .end local v0    # "session":Lorg/jivesoftware/smackx/bytestreams/BytestreamSession;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    invoke-interface {p1, v0}, Lorg/jivesoftware/smackx/jingle/transports/JingleTransportInitiationCallback;->onException(Ljava/lang/Exception;)V

    .line 75
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public setTheirProposal(Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;)V
    .locals 1
    .param p1, "transport"    # Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    .line 60
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/element/JingleIBBTransport;

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportSession;->theirProposal:Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    .line 61
    return-void
.end method

.method public transportManager()Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jivesoftware/smackx/jingle/transports/JingleTransportManager<",
            "Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/element/JingleIBBTransport;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportSession;->jingleSession:Lorg/jivesoftware/smackx/jingle/JingleSession;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/JingleSession;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/jingle/transports/jingle_ibb/JingleIBBTransportManager;

    move-result-object v0

    return-object v0
.end method
