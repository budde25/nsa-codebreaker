.class Lorg/jivesoftware/smackx/filetransfer/FileTransferManager$1;
.super Lorg/jivesoftware/smack/iqrequest/AbstractIqRequestHandler;
.source "FileTransferManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;
    .param p2, "arg0"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/String;
    .param p4, "arg2"    # Lorg/jivesoftware/smack/packet/IQ$Type;
    .param p5, "arg3"    # Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;

    .line 76
    iput-object p1, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferManager$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/jivesoftware/smack/iqrequest/AbstractIqRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V

    return-void
.end method


# virtual methods
.method public handleIQRequest(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 4
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/IQ;

    .line 79
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;

    .line 80
    .local v0, "si":Lorg/jivesoftware/smackx/si/packet/StreamInitiation;
    new-instance v1, Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;

    iget-object v2, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferManager$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;

    invoke-direct {v1, v2, v0}, Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;-><init>(Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;Lorg/jivesoftware/smackx/si/packet/StreamInitiation;)V

    .line 81
    .local v1, "request":Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;
    iget-object v2, p0, Lorg/jivesoftware/smackx/filetransfer/FileTransferManager$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;

    invoke-static {v2}, Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;->access$000(Lorg/jivesoftware/smackx/filetransfer/FileTransferManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smackx/filetransfer/FileTransferListener;

    .line 82
    .local v3, "listener":Lorg/jivesoftware/smackx/filetransfer/FileTransferListener;
    invoke-interface {v3, v1}, Lorg/jivesoftware/smackx/filetransfer/FileTransferListener;->fileTransferRequest(Lorg/jivesoftware/smackx/filetransfer/FileTransferRequest;)V

    .line 83
    .end local v3    # "listener":Lorg/jivesoftware/smackx/filetransfer/FileTransferListener;
    goto :goto_0

    .line 84
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method
