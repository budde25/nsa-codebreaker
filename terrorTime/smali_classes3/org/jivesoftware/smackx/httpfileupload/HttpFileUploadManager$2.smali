.class Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager$2;
.super Lorg/jivesoftware/smack/AbstractConnectionListener;
.source "HttpFileUploadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager;

    .line 118
    iput-object p1, p0, Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager$2;->this$0:Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager;

    invoke-direct {p0}, Lorg/jivesoftware/smack/AbstractConnectionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticated(Lorg/jivesoftware/smack/XMPPConnection;Z)V
    .locals 4
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p2, "resumed"    # Z

    .line 122
    if-eqz p2, :cond_0

    .line 123
    return-void

    .line 127
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager$2;->this$0:Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager;->discoverUploadService()Z
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException$XMPPErrorException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/jivesoftware/smack/SmackException$NotConnectedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/jivesoftware/smack/SmackException$NoResponseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    goto :goto_1

    .line 128
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

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {}, Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager;->access$000()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Error during discovering HTTP File Upload service"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
