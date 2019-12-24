.class final Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener;
.super Lorg/jivesoftware/smack/iqrequest/AbstractIqRequestHandler;
.source "InitiationListener.java"


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private final initiationListenerExecutor:Ljava/util/concurrent/ExecutorService;

.field private final manager:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;)V
    .locals 4
    .param p1, "manager"    # Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;

    .line 56
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    sget-object v1, Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;->async:Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;

    const-string v2, "query"

    const-string v3, "http://jabber.org/protocol/bytestreams"

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/jivesoftware/smack/iqrequest/AbstractIqRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V

    .line 57
    iput-object p1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener;->manager:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;

    .line 58
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener;->initiationListenerExecutor:Ljava/util/concurrent/ExecutorService;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener;Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener;
    .param p1, "x1"    # Lorg/jivesoftware/smack/packet/Stanza;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener;->processRequest(Lorg/jivesoftware/smack/packet/Stanza;)V

    return-void
.end method

.method static synthetic access$100()Ljava/util/logging/Logger;
    .locals 1

    .line 41
    sget-object v0, Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener;->LOGGER:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private processRequest(Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 5
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 81
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;

    .line 83
    .local v0, "byteStreamRequest":Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v2

    invoke-interface {v2}, Lorg/jxmpp/jid/Jid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->getSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;->signal(Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ;)V

    .line 86
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener;->manager:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->getIgnoredBytestreamRequests()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->getSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    return-void

    .line 91
    :cond_0
    new-instance v1, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;

    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener;->manager:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;

    invoke-direct {v1, v2, v0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;-><init>(Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;)V

    .line 95
    .local v1, "request":Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamRequest;
    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener;->manager:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->getUserListener(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;

    move-result-object v2

    .line 96
    .local v2, "userListener":Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;
    if-eqz v2, :cond_1

    .line 97
    invoke-interface {v2, v1}, Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;->incomingBytestreamRequest(Lorg/jivesoftware/smackx/bytestreams/BytestreamRequest;)V

    goto :goto_1

    .line 100
    :cond_1
    iget-object v3, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener;->manager:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->getAllRequestListeners()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 104
    iget-object v3, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener;->manager:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->getAllRequestListeners()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;

    .line 105
    .local v4, "listener":Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;
    invoke-interface {v4, v1}, Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;->incomingBytestreamRequest(Lorg/jivesoftware/smackx/bytestreams/BytestreamRequest;)V

    .line 106
    .end local v4    # "listener":Lorg/jivesoftware/smackx/bytestreams/BytestreamListener;
    goto :goto_0

    :cond_2
    goto :goto_1

    .line 113
    :cond_3
    iget-object v3, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener;->manager:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;

    invoke-virtual {v3, v0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5BytestreamManager;->replyRejectPacket(Lorg/jivesoftware/smack/packet/IQ;)V

    .line 115
    :goto_1
    return-void
.end method


# virtual methods
.method public handleIQRequest(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 2
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/IQ;

    .line 64
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener;->initiationListenerExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener$1;

    invoke-direct {v1, p0, p1}, Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener$1;-><init>(Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener;Lorg/jivesoftware/smack/packet/IQ;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method protected shutdown()V
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/InitiationListener;->initiationListenerExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 122
    return-void
.end method
