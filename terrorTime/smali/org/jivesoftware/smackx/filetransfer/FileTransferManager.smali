.class public final Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;
.super Lorg/jivesoftware/smack/Manager;
.source "FileTransferManager.java"


# static fields
.field private static final INSTANCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final fileTransferNegotiator:Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/filetransfer/FileTransferListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;->INSTANCES:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 7
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 72
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Manager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 63
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;->listeners:Ljava/util/List;

    .line 73
    nop

    .line 74
    invoke-static {p1}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;->fileTransferNegotiator:Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;

    .line 75
    new-instance v0, Lorg/jivesoftware/smackx/filetransfer/FileTransferManager$1;

    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    sget-object v6, Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;->async:Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;

    const-string v3, "si"

    const-string v4, "http://jabber.org/protocol/si"

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/jivesoftware/smackx/filetransfer/FileTransferManager$1;-><init>(Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V

    invoke-interface {p1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->registerIQRequestHandler(Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;)Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;

    .line 48
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;->listeners:Ljava/util/List;

    return-object v0
.end method

.method public static declared-synchronized getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    const-class v0, Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;

    .line 54
    .local v1, "fileTransferManager":Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;
    if-nez v1, :cond_0

    .line 55
    new-instance v2, Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    move-object v1, v2

    .line 56
    sget-object v2, Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_0
    monitor-exit v0

    return-object v1

    .line 52
    .end local v1    # "fileTransferManager":Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;
    .end local p0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public addFileTransferListener(Lorg/jivesoftware/smackx/filetransfer/FileTransferListener;)V
    .locals 1
    .param p1, "li"    # Lorg/jivesoftware/smackx/filetransfer/FileTransferListener;

    .line 99
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    return-void
.end method

.method protected createIncomingFileTransfer(Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;)Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;
    .locals 4
    .param p1, "request"    # Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;

    .line 147
    if-eqz p1, :cond_0

    .line 151
    new-instance v0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;

    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;->fileTransferNegotiator:Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;

    invoke-direct {v0, p1, v1}, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;-><init>(Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;)V

    .line 153
    .local v0, "transfer":Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;->getFileSize()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->setFileInfo(Ljava/lang/String;J)V

    .line 155
    return-object v0

    .line 148
    .end local v0    # "transfer":Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ReceiveRequest cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createOutgoingFileTransfer(Lorg/jxmpp/jid/EntityFullJid;)Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;
    .locals 4
    .param p1, "userID"    # Lorg/jxmpp/jid/EntityFullJid;

    .line 126
    if-eqz p1, :cond_0

    .line 130
    new-instance v0, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-interface {v1}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v1

    .line 131
    invoke-static {}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->getNextStreamID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;->fileTransferNegotiator:Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/jivesoftware/smackx/filetransfer/OutgoingFileTransfer;-><init>(Lorg/jxmpp/jid/Jid;Lorg/jxmpp/jid/Jid;Ljava/lang/String;Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;)V

    .line 130
    return-object v0

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "userID was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected rejectIncomingFileTransfer(Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;)V
    .locals 3
    .param p1, "request"    # Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 168
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;->getStreamInitiation()Lorg/jivesoftware/smackx/si/packet/StreamInitiation;

    move-result-object v0

    .line 174
    .local v0, "initiation":Lorg/jivesoftware/smackx/si/packet/StreamInitiation;
    sget-object v1, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->forbidden:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    invoke-static {v1}, Lorg/jivesoftware/smack/packet/StanzaError;->getBuilder(Lorg/jivesoftware/smack/packet/StanzaError$Condition;)Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jivesoftware/smack/packet/IQ;->createErrorResponse(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/StanzaError$Builder;)Lorg/jivesoftware/smack/packet/ErrorIQ;

    move-result-object v1

    .line 176
    .local v1, "rejection":Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/jivesoftware/smack/XMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 177
    return-void
.end method

.method public removeFileTransferListener(Lorg/jivesoftware/smackx/filetransfer/FileTransferListener;)V
    .locals 1
    .param p1, "li"    # Lorg/jivesoftware/smackx/filetransfer/FileTransferListener;

    .line 110
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 111
    return-void
.end method
