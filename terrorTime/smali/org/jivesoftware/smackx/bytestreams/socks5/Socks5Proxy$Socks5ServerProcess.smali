.class Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy$Socks5ServerProcess;
.super Ljava/lang/Object;
.source "Socks5Proxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Socks5ServerProcess"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;


# direct methods
.method private constructor <init>(Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy$Socks5ServerProcess;->this$0:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;
    .param p2, "x1"    # Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy$1;

    .line 385
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy$Socks5ServerProcess;-><init>(Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;)V

    return-void
.end method

.method private establishConnection(Ljava/net/Socket;)V
    .locals 13
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 434
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 435
    .local v0, "out":Ljava/io/DataOutputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 438
    .local v1, "in":Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v2

    .line 439
    .local v2, "b":I
    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 444
    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v2

    .line 447
    new-array v4, v2, [B

    .line 448
    .local v4, "auth":[B
    invoke-virtual {v1, v4}, Ljava/io/DataInputStream;->readFully([B)V

    .line 450
    const/4 v5, 0x2

    new-array v5, v5, [B

    .line 451
    .local v5, "authMethodSelectionResponse":[B
    const/4 v6, 0x0

    aput-byte v3, v5, v6

    .line 454
    const/4 v7, 0x0

    .line 455
    .local v7, "noAuthMethodFound":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v9, v4

    if-ge v8, v9, :cond_1

    .line 456
    aget-byte v9, v4, v8

    if-nez v9, :cond_0

    .line 457
    const/4 v7, 0x1

    .line 458
    goto :goto_1

    .line 455
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 462
    .end local v8    # "i":I
    :cond_1
    :goto_1
    const/4 v8, 0x1

    if-eqz v7, :cond_3

    .line 469
    aput-byte v6, v5, v8

    .line 470
    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 471
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 474
    invoke-static {v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Utils;->receiveSocks5Message(Ljava/io/DataInputStream;)[B

    move-result-object v9

    .line 477
    .local v9, "connectionRequest":[B
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x4

    aget-byte v11, v9, v11

    const-string v12, "UTF-8"

    invoke-direct {v10, v9, v3, v11, v12}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 480
    .local v10, "responseDigest":Ljava/lang/String;
    iget-object v11, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy$Socks5ServerProcess;->this$0:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;

    invoke-static {v11}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->access$200(Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 488
    aput-byte v6, v9, v8

    .line 489
    invoke-virtual {v0, v9}, Ljava/io/DataOutputStream;->write([B)V

    .line 490
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 493
    iget-object v3, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy$Socks5ServerProcess;->this$0:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;

    invoke-static {v3}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->access$300(Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v10, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    return-void

    .line 481
    :cond_2
    aput-byte v3, v9, v8

    .line 482
    invoke-virtual {v0, v9}, Ljava/io/DataOutputStream;->write([B)V

    .line 483
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 485
    new-instance v3, Lorg/jivesoftware/smack/SmackException;

    const-string v6, "Connection is not allowed"

    invoke-direct {v3, v6}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 463
    .end local v9    # "connectionRequest":[B
    .end local v10    # "responseDigest":Ljava/lang/String;
    :cond_3
    const/4 v3, -0x1

    aput-byte v3, v5, v8

    .line 464
    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 465
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 466
    new-instance v3, Lorg/jivesoftware/smack/SmackException;

    const-string v6, "Authentication method not supported"

    invoke-direct {v3, v6}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 440
    .end local v4    # "auth":[B
    .end local v5    # "authMethodSelectionResponse":[B
    .end local v7    # "noAuthMethodFound":Z
    :cond_4
    new-instance v3, Lorg/jivesoftware/smack/SmackException;

    const-string v4, "Only SOCKS5 supported"

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 390
    :goto_0
    const/4 v0, 0x0

    .line 394
    .local v0, "socket":Ljava/net/Socket;
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy$Socks5ServerProcess;->this$0:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;

    invoke-static {v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->access$100(Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;)Ljava/net/ServerSocket;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy$Socks5ServerProcess;->this$0:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;

    invoke-static {v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->access$100(Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;)Ljava/net/ServerSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 395
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 400
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy$Socks5ServerProcess;->this$0:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;

    invoke-static {v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->access$100(Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;)Ljava/net/ServerSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    move-object v0, v1

    .line 403
    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy$Socks5ServerProcess;->establishConnection(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 396
    :cond_1
    :goto_1
    return-void

    .line 412
    :catch_0
    move-exception v1

    .line 414
    .local v1, "e":Ljava/lang/Exception;
    if-eqz v0, :cond_2

    .line 415
    :try_start_1
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 418
    :catch_1
    move-exception v2

    goto :goto_4

    .line 420
    :cond_2
    :goto_2
    goto :goto_4

    .line 406
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 421
    :goto_3
    nop

    .line 422
    .end local v0    # "socket":Ljava/net/Socket;
    :goto_4
    goto :goto_0
.end method
