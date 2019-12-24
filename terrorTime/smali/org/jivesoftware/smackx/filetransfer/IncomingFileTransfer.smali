.class public Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;
.super Lorg/jivesoftware/smackx/filetransfer/FileTransfer;
.source "IncomingFileTransfer.java"


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private inputStream:Ljava/io/InputStream;

.field private receiveRequest:Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const-class v0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;)V
    .locals 2
    .param p1, "request"    # Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;
    .param p2, "transferNegotiator"    # Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;

    .line 68
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;->getRequestor()Lorg/jxmpp/jid/Jid;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;->getStreamID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lorg/jivesoftware/smackx/filetransfer/FileTransfer;-><init>(Lorg/jxmpp/jid/Jid;Ljava/lang/String;Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;)V

    .line 69
    iput-object p1, p0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->receiveRequest:Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;)Ljava/io/InputStream;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;

    .line 58
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$002(Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;
    .param p1, "x1"    # Ljava/io/InputStream;

    .line 58
    iput-object p1, p0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->inputStream:Ljava/io/InputStream;

    return-object p1
.end method

.method static synthetic access$100(Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;)Ljava/io/InputStream;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->negotiateStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/logging/Logger;
    .locals 1

    .line 58
    sget-object v0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->LOGGER:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;)Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;

    .line 58
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->receiveRequest:Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;

    return-object v0
.end method

.method private negotiateStream()Ljava/io/InputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 181
    sget-object v0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;->negotiating_transfer:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->setStatus(Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;)V

    .line 182
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->negotiator:Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;

    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->receiveRequest:Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;

    .line 183
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/filetransfer/FileTransferNegotiator;->selectStreamNegotiator(Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;)Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;

    move-result-object v0

    .line 184
    .local v0, "streamNegotiator":Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
    sget-object v1, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;->negotiating_stream:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->setStatus(Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;)V

    .line 185
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer$2;

    invoke-direct {v2, p0, v0}, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer$2;-><init>(Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 194
    .local v1, "streamNegotiatorTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/io/InputStream;>;"
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->run()V

    .line 197
    const-wide/16 v2, 0xf

    const/4 v4, 0x1

    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v5}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    .local v2, "inputStream":Ljava/io/InputStream;
    invoke-virtual {v1, v4}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 220
    nop

    .line 221
    sget-object v3, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;->negotiated:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    invoke-virtual {p0, v3}, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->setStatus(Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;)V

    .line 222
    return-object v2

    .line 219
    .end local v2    # "inputStream":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 215
    :catch_0
    move-exception v2

    .line 216
    .local v2, "e":Ljava/util/concurrent/TimeoutException;
    :try_start_1
    new-instance v3, Lorg/jivesoftware/smack/SmackException;

    const-string v5, "Request timed out"

    invoke-direct {v3, v5, v2}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "streamNegotiator":Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
    .end local v1    # "streamNegotiatorTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/io/InputStream;>;"
    throw v3

    .line 199
    .end local v2    # "e":Ljava/util/concurrent/TimeoutException;
    .restart local v0    # "streamNegotiator":Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
    .restart local v1    # "streamNegotiatorTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/io/InputStream;>;"
    :catch_1
    move-exception v2

    .line 200
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 201
    .local v3, "cause":Ljava/lang/Throwable;
    instance-of v5, v3, Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;

    if-nez v5, :cond_3

    .line 204
    instance-of v5, v3, Ljava/lang/InterruptedException;

    if-nez v5, :cond_2

    .line 207
    instance-of v5, v3, Lorg/jivesoftware/smack/SmackException$NoResponseException;

    if-nez v5, :cond_1

    .line 210
    instance-of v5, v3, Lorg/jivesoftware/smack/SmackException;

    if-eqz v5, :cond_0

    .line 211
    move-object v5, v3

    check-cast v5, Lorg/jivesoftware/smack/SmackException;

    .end local v0    # "streamNegotiator":Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
    .end local v1    # "streamNegotiatorTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/io/InputStream;>;"
    throw v5

    .line 213
    .restart local v0    # "streamNegotiator":Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
    .restart local v1    # "streamNegotiatorTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/io/InputStream;>;"
    :cond_0
    new-instance v5, Lorg/jivesoftware/smack/SmackException;

    const-string v6, "Error in execution"

    invoke-direct {v5, v6, v2}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "streamNegotiator":Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
    .end local v1    # "streamNegotiatorTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/io/InputStream;>;"
    throw v5

    .line 208
    .restart local v0    # "streamNegotiator":Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
    .restart local v1    # "streamNegotiatorTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/io/InputStream;>;"
    :cond_1
    move-object v5, v3

    check-cast v5, Lorg/jivesoftware/smack/SmackException$NoResponseException;

    .end local v0    # "streamNegotiator":Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
    .end local v1    # "streamNegotiatorTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/io/InputStream;>;"
    throw v5

    .line 205
    .restart local v0    # "streamNegotiator":Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
    .restart local v1    # "streamNegotiatorTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/io/InputStream;>;"
    :cond_2
    move-object v5, v3

    check-cast v5, Ljava/lang/InterruptedException;

    .end local v0    # "streamNegotiator":Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
    .end local v1    # "streamNegotiatorTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/io/InputStream;>;"
    throw v5

    .line 202
    .restart local v0    # "streamNegotiator":Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
    .restart local v1    # "streamNegotiatorTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/io/InputStream;>;"
    :cond_3
    move-object v5, v3

    check-cast v5, Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;

    .end local v0    # "streamNegotiator":Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
    .end local v1    # "streamNegotiatorTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/io/InputStream;>;"
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    .end local v2    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v3    # "cause":Ljava/lang/Throwable;
    .restart local v0    # "streamNegotiator":Lorg/jivesoftware/smackx/filetransfer/StreamNegotiator;
    .restart local v1    # "streamNegotiatorTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/io/InputStream;>;"
    :goto_0
    invoke-virtual {v1, v4}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    throw v2
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 227
    sget-object v0, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;->cancelled:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->setStatus(Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;)V

    .line 228
    return-void
.end method

.method public receiveFile()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->inputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 88
    :try_start_0
    invoke-direct {p0}, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->negotiateStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->inputStream:Ljava/io/InputStream;
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException$XMPPErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    nop

    .line 95
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->inputStream:Ljava/io/InputStream;

    return-object v0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->setException(Ljava/lang/Exception;)V

    .line 92
    throw v0

    .line 84
    .end local v0    # "e":Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Transfer already negotiated!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public receiveFile(Ljava/io/File;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    if-eqz p1, :cond_2

    .line 121
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 124
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer$1;

    invoke-direct {v1, p0, p1}, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer$1;-><init>(Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;Ljava/io/File;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File Transfer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->streamID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 177
    .local v0, "transferThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 178
    return-void

    .line 125
    .end local v0    # "transferThread":Ljava/lang/Thread;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot write to provided file"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
