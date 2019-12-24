.class public Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;
.super Ljava/lang/Object;
.source "FileTransferRequest.java"


# instance fields
.field private final manager:Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;

.field private final streamInitiation:Lorg/jivesoftware/smackx/si/packet/StreamInitiation;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;Lorg/jivesoftware/smackx/si/packet/StreamInitiation;)V
    .locals 0
    .param p1, "manager"    # Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;
    .param p2, "si"    # Lorg/jivesoftware/smackx/si/packet/StreamInitiation;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p2, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;->streamInitiation:Lorg/jivesoftware/smackx/si/packet/StreamInitiation;

    .line 48
    iput-object p1, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;->manager:Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;

    .line 49
    return-void
.end method


# virtual methods
.method public accept()Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;->manager:Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;

    invoke-virtual {v0, p0}, Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;->createIncomingFileTransfer(Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;)Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;->streamInitiation:Lorg/jivesoftware/smackx/si/packet/StreamInitiation;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;->getFile()Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;->getDesc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;->streamInitiation:Lorg/jivesoftware/smackx/si/packet/StreamInitiation;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;->getFile()Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .line 66
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;->streamInitiation:Lorg/jivesoftware/smackx/si/packet/StreamInitiation;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;->getFile()Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;->streamInitiation:Lorg/jivesoftware/smackx/si/packet/StreamInitiation;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;->getMimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestor()Lorg/jxmpp/jid/Jid;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;->streamInitiation:Lorg/jivesoftware/smackx/si/packet/StreamInitiation;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v0

    return-object v0
.end method

.method public getStreamID()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;->streamInitiation:Lorg/jivesoftware/smackx/si/packet/StreamInitiation;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;->getSessionID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getStreamInitiation()Lorg/jivesoftware/smackx/si/packet/StreamInitiation;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;->streamInitiation:Lorg/jivesoftware/smackx/si/packet/StreamInitiation;

    return-object v0
.end method

.method public reject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;->manager:Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;

    invoke-virtual {v0, p0}, Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;->rejectIncomingFileTransfer(Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;)V

    .line 139
    return-void
.end method
