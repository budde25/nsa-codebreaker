.class Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer$1;
.super Ljava/lang/Object;
.source "IncomingFileTransfer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->receiveFile(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;

    .line 128
    iput-object p1, p0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;

    iput-object p2, p0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 132
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;

    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;

    invoke-static {v1}, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->access$100(Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->access$002(Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 138
    nop

    .line 140
    const/4 v0, 0x0

    .line 142
    .local v0, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer$1;->val$file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .line 143
    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;

    sget-object v2, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;->in_progress:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->setStatus(Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;)V

    .line 144
    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;

    iget-object v2, p0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;

    invoke-static {v2}, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->access$000(Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->writeToStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;

    sget-object v3, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;->error:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->setStatus(Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;)V

    .line 153
    iget-object v2, p0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;

    sget-object v3, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Error;->stream:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Error;

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->setError(Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Error;)V

    .line 154
    iget-object v2, p0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->setException(Ljava/lang/Exception;)V

    goto :goto_1

    .line 146
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 147
    .local v1, "e":Ljava/io/FileNotFoundException;
    iget-object v2, p0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;

    sget-object v3, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;->error:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->setStatus(Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;)V

    .line 148
    iget-object v2, p0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;

    sget-object v3, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Error;->bad_file:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Error;

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->setError(Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Error;)V

    .line 149
    iget-object v2, p0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->setException(Ljava/lang/Exception;)V

    .line 155
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    nop

    .line 158
    :goto_1
    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->getStatus()Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;->in_progress:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;

    sget-object v2, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;->complete:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->setStatus(Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;)V

    .line 161
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;

    invoke-static {v1}, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->access$000(Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 163
    :try_start_2
    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;

    invoke-static {v1}, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->access$000(Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 166
    goto :goto_2

    .line 164
    :catch_2
    move-exception v1

    .line 165
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->access$200()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Closing input stream"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    .line 170
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 173
    goto :goto_3

    .line 171
    :catch_3
    move-exception v1

    .line 172
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-static {}, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->access$200()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Closing output stream"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    return-void

    .line 134
    .end local v0    # "outputStream":Ljava/io/OutputStream;
    :catch_4
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;

    sget-object v2, Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;->error:Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->setStatus(Lorg/jivesoftware/smackx/filetransfer/FileTransfer$Status;)V

    .line 136
    iget-object v1, p0, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer$1;->this$0:Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smackx/filetransfer/IncomingFileTransfer;->setException(Ljava/lang/Exception;)V

    .line 137
    return-void
.end method
