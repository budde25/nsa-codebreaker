.class public Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;
.super Ljava/lang/Object;
.source "Socks5Client.java"


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field protected digest:Ljava/lang/String;

.field protected streamHost:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;Ljava/lang/String;)V
    .locals 0
    .param p1, "streamHost"    # Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;
    .param p2, "digest"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;->streamHost:Lorg/jivesoftware/smackx/bytestreams/socks5/packet/Bytestream$StreamHost;

    .line 65
    iput-object p2, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;->digest:Ljava/lang/String;

    .line 66
    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .line 47
    sget-object v0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;->LOGGER:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private createSocks5ConnectRequest()[B
    .locals 8

    .line 205
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;->digest:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .local v0, "addr":[B
    nop

    .line 211
    array-length v1, v0

    add-int/lit8 v1, v1, 0x7

    new-array v1, v1, [B

    .line 212
    .local v1, "data":[B
    const/4 v2, 0x5

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 213
    const/4 v4, 0x1

    aput-byte v4, v1, v4

    .line 214
    const/4 v5, 0x2

    aput-byte v3, v1, v5

    .line 215
    const/4 v6, 0x3

    aput-byte v6, v1, v6

    .line 216
    const/4 v6, 0x4

    array-length v7, v0

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    .line 217
    array-length v6, v0

    invoke-static {v0, v3, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    array-length v2, v1

    sub-int/2addr v2, v5

    aput-byte v3, v1, v2

    .line 219
    array-length v2, v1

    sub-int/2addr v2, v4

    aput-byte v3, v1, v2

    .line 221
    return-object v1

    .line 207
    .end local v0    # "addr":[B
    .end local v1    # "data":[B
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method protected establish(Ljava/net/Socket;)V
    .locals 9
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 156
    .local v0, "in":Ljava/io/DataInputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 159
    .local v1, "out":Ljava/io/DataOutputStream;
    const/4 v2, 0x3

    new-array v2, v2, [B

    .line 161
    .local v2, "cmd":[B
    const/4 v3, 0x5

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    .line 162
    const/4 v5, 0x1

    aput-byte v5, v2, v5

    .line 163
    const/4 v6, 0x2

    aput-byte v4, v2, v6

    .line 165
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 166
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 168
    new-array v6, v6, [B

    .line 169
    .local v6, "response":[B
    invoke-virtual {v0, v6}, Ljava/io/DataInputStream;->readFully([B)V

    .line 172
    aget-byte v7, v6, v4

    if-ne v7, v3, :cond_1

    aget-byte v3, v6, v5

    if-nez v3, :cond_1

    .line 177
    invoke-direct {p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;->createSocks5ConnectRequest()[B

    move-result-object v3

    .line 178
    .local v3, "connectionRequest":[B
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 179
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 182
    invoke-static {v0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Utils;->receiveSocks5Message(Ljava/io/DataInputStream;)[B

    move-result-object v7

    .line 185
    .local v7, "connectionResponse":[B
    aput-byte v4, v3, v5

    .line 186
    invoke-static {v3, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 192
    return-void

    .line 187
    :cond_0
    new-instance v4, Lorg/jivesoftware/smack/SmackException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Connection request does not equal connection response. Response: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-static {v7}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ". Request: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 173
    .end local v3    # "connectionRequest":[B
    .end local v7    # "connectionResponse":[B
    :cond_1
    new-instance v3, Lorg/jivesoftware/smack/SmackException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Remote SOCKS5 server responded with unexpected version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v4, v6, v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v4, v6, v5

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ". Should be 0x05 0x00."

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getSocket(I)Ljava/net/Socket;
    .locals 6
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Lorg/jivesoftware/smack/SmackException;,
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client$1;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client$1;-><init>(Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Client;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 113
    .local v0, "futureTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/net/Socket;>;"
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 114
    .local v1, "executor":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 118
    int-to-long v2, p1

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/Socket;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 120
    :catch_0
    move-exception v2

    .line 121
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 122
    .local v3, "cause":Ljava/lang/Throwable;
    if-eqz v3, :cond_1

    .line 124
    instance-of v4, v3, Ljava/io/IOException;

    if-nez v4, :cond_0

    .line 127
    instance-of v4, v3, Lorg/jivesoftware/smack/SmackException;

    if-eqz v4, :cond_1

    .line 128
    move-object v4, v3

    check-cast v4, Lorg/jivesoftware/smack/SmackException;

    throw v4

    .line 125
    :cond_0
    move-object v4, v3

    check-cast v4, Ljava/io/IOException;

    throw v4

    .line 133
    :cond_1
    new-instance v4, Lorg/jivesoftware/smack/SmackException;

    const-string v5, "Error while connecting to SOCKS5 proxy"

    invoke-direct {v4, v5, v2}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method
