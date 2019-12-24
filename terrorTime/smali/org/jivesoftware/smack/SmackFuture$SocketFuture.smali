.class public Lorg/jivesoftware/smack/SmackFuture$SocketFuture;
.super Lorg/jivesoftware/smack/SmackFuture$InternalSmackFuture;
.source "SmackFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/SmackFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SocketFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/SmackFuture$InternalSmackFuture<",
        "Ljava/net/Socket;",
        "Ljava/io/IOException;",
        ">;"
    }
.end annotation


# instance fields
.field private final socket:Ljava/net/Socket;

.field private wasInterrupted:Z

.field private final wasInterruptedLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljavax/net/SocketFactory;)V
    .locals 1
    .param p1, "socketFactory"    # Ljavax/net/SocketFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    invoke-direct {p0}, Lorg/jivesoftware/smack/SmackFuture$InternalSmackFuture;-><init>()V

    .line 202
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/SmackFuture$SocketFuture;->wasInterruptedLock:Ljava/lang/Object;

    .line 207
    invoke-virtual {p1}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/SmackFuture$SocketFuture;->socket:Ljava/net/Socket;

    .line 208
    return-void
.end method

.method static synthetic access$200(Lorg/jivesoftware/smack/SmackFuture$SocketFuture;)Ljava/net/Socket;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/SmackFuture$SocketFuture;

    .line 199
    iget-object v0, p0, Lorg/jivesoftware/smack/SmackFuture$SocketFuture;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$300(Lorg/jivesoftware/smack/SmackFuture$SocketFuture;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/SmackFuture$SocketFuture;

    .line 199
    iget-object v0, p0, Lorg/jivesoftware/smack/SmackFuture$SocketFuture;->wasInterruptedLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lorg/jivesoftware/smack/SmackFuture$SocketFuture;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/SmackFuture$SocketFuture;

    .line 199
    iget-boolean v0, p0, Lorg/jivesoftware/smack/SmackFuture$SocketFuture;->wasInterrupted:Z

    return v0
.end method

.method static synthetic access$500(Lorg/jivesoftware/smack/SmackFuture$SocketFuture;)V
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smack/SmackFuture$SocketFuture;

    .line 199
    invoke-direct {p0}, Lorg/jivesoftware/smack/SmackFuture$SocketFuture;->closeSocket()V

    return-void
.end method

.method private closeSocket()V
    .locals 4

    .line 249
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/SmackFuture$SocketFuture;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "ioException":Ljava/io/IOException;
    invoke-static {}, Lorg/jivesoftware/smack/SmackFuture;->access$600()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Could not close socket"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 254
    .end local v0    # "ioException":Ljava/io/IOException;
    :goto_0
    return-void
.end method


# virtual methods
.method public connectAsync(Ljava/net/SocketAddress;I)V
    .locals 1
    .param p1, "socketAddress"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I

    .line 226
    new-instance v0, Lorg/jivesoftware/smack/SmackFuture$SocketFuture$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/jivesoftware/smack/SmackFuture$SocketFuture$1;-><init>(Lorg/jivesoftware/smack/SmackFuture$SocketFuture;Ljava/net/SocketAddress;I)V

    invoke-static {v0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->asyncGo(Ljava/lang/Runnable;)V

    .line 245
    return-void
.end method

.method protected futureWait(J)V
    .locals 3
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 213
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/jivesoftware/smack/SmackFuture$InternalSmackFuture;->futureWait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    nop

    .line 223
    return-void

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "interruptedException":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lorg/jivesoftware/smack/SmackFuture$SocketFuture;->wasInterruptedLock:Ljava/lang/Object;

    monitor-enter v1

    .line 216
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lorg/jivesoftware/smack/SmackFuture$SocketFuture;->wasInterrupted:Z

    .line 217
    iget-object v2, p0, Lorg/jivesoftware/smack/SmackFuture$SocketFuture;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 218
    invoke-direct {p0}, Lorg/jivesoftware/smack/SmackFuture$SocketFuture;->closeSocket()V

    .line 220
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    throw v0

    .line 220
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
