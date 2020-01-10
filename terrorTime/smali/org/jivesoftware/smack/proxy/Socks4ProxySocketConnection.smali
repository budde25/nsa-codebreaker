.class public Lorg/jivesoftware/smack/proxy/Socks4ProxySocketConnection;
.super Ljava/lang/Object;
.source "Socks4ProxySocketConnection.java"

# interfaces
.implements Lorg/jivesoftware/smack/proxy/ProxySocketConnection;


# instance fields
.field private final proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/proxy/ProxyInfo;)V
    .locals 0
    .param p1, "proxy"    # Lorg/jivesoftware/smack/proxy/ProxyInfo;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/jivesoftware/smack/proxy/Socks4ProxySocketConnection;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    .line 38
    return-void
.end method


# virtual methods
.method public connect(Ljava/net/Socket;Ljava/lang/String;II)V
    .locals 18
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    const/4 v4, 0x0

    .line 44
    .local v4, "in":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 45
    .local v5, "out":Ljava/io/OutputStream;
    iget-object v0, v1, Lorg/jivesoftware/smack/proxy/Socks4ProxySocketConnection;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->getProxyAddress()Ljava/lang/String;

    move-result-object v6

    .line 46
    .local v6, "proxy_host":Ljava/lang/String;
    iget-object v0, v1, Lorg/jivesoftware/smack/proxy/Socks4ProxySocketConnection;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->getProxyPort()I

    move-result v7

    .line 47
    .local v7, "proxy_port":I
    iget-object v0, v1, Lorg/jivesoftware/smack/proxy/Socks4ProxySocketConnection;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->getProxyUsername()Ljava/lang/String;

    move-result-object v8

    .line 50
    .local v8, "user":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v6, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move/from16 v9, p4

    :try_start_1
    invoke-virtual {v2, v0, v9}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 51
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    move-object v4, v0

    .line 52
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    move-object v5, v0

    .line 53
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 55
    const/16 v0, 0x400

    new-array v0, v0, [B

    move-object v11, v0

    .line 56
    .local v11, "buf":[B
    const/4 v0, 0x0

    .line 76
    .local v0, "index":I
    const/4 v0, 0x0

    .line 77
    add-int/lit8 v12, v0, 0x1

    .end local v0    # "index":I
    .local v12, "index":I
    const/4 v13, 0x4

    aput-byte v13, v11, v0

    .line 78
    add-int/lit8 v0, v12, 0x1

    .end local v12    # "index":I
    .restart local v0    # "index":I
    aput-byte v10, v11, v12

    .line 80
    add-int/lit8 v12, v0, 0x1

    .end local v0    # "index":I
    .restart local v12    # "index":I
    ushr-int/lit8 v13, v3, 0x8

    int-to-byte v13, v13

    aput-byte v13, v11, v0

    .line 81
    add-int/lit8 v0, v12, 0x1

    .end local v12    # "index":I
    .restart local v0    # "index":I
    and-int/lit16 v13, v3, 0xff

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 83
    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v12

    .line 84
    .local v12, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v12}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v13

    .line 85
    .local v13, "byteAddress":[B
    const/4 v14, 0x0

    move v15, v14

    .local v15, "i":I
    :goto_0
    array-length v10, v13

    if-ge v15, v10, :cond_0

    .line 86
    add-int/lit8 v10, v0, 0x1

    .end local v0    # "index":I
    .local v10, "index":I
    aget-byte v16, v13, v15

    aput-byte v16, v11, v0

    .line 85
    add-int/lit8 v15, v15, 0x1

    move v0, v10

    const/4 v10, 0x1

    goto :goto_0

    .line 89
    .end local v10    # "index":I
    .end local v15    # "i":I
    .restart local v0    # "index":I
    :cond_0
    if-eqz v8, :cond_1

    .line 90
    const-string v10, "UTF-8"

    invoke-virtual {v8, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 91
    .local v10, "userBytes":[B
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    invoke-static {v10, v14, v11, v0, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v0, v15

    .line 94
    .end local v10    # "userBytes":[B
    :cond_1
    add-int/lit8 v10, v0, 0x1

    .end local v0    # "index":I
    .local v10, "index":I
    aput-byte v14, v11, v0

    .line 95
    invoke-virtual {v5, v11, v14, v10}, Ljava/io/OutputStream;->write([BII)V

    .line 124
    const/4 v15, 0x6

    .line 125
    .local v15, "len":I
    const/4 v0, 0x0

    move v14, v0

    .line 126
    .local v14, "s":I
    :goto_1
    if-ge v14, v15, :cond_3

    .line 127
    sub-int v0, v15, v14

    invoke-virtual {v4, v11, v14, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 128
    .local v0, "i":I
    if-lez v0, :cond_2

    .line 132
    add-int/2addr v14, v0

    .line 133
    .end local v0    # "i":I
    goto :goto_1

    .line 129
    .restart local v0    # "i":I
    :cond_2
    move/from16 v17, v0

    .end local v0    # "i":I
    .local v17, "i":I
    new-instance v0, Lorg/jivesoftware/smack/proxy/ProxyException;

    sget-object v1, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->SOCKS4:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    const-string v2, "stream is closed"

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/proxy/ProxyException;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;)V

    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "proxy_host":Ljava/lang/String;
    .end local v7    # "proxy_port":I
    .end local v8    # "user":Ljava/lang/String;
    .end local p1    # "socket":Ljava/net/Socket;
    .end local p2    # "host":Ljava/lang/String;
    .end local p3    # "port":I
    .end local p4    # "timeout":I
    throw v0

    .line 134
    .end local v17    # "i":I
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "proxy_host":Ljava/lang/String;
    .restart local v7    # "proxy_port":I
    .restart local v8    # "user":Ljava/lang/String;
    .restart local p1    # "socket":Ljava/net/Socket;
    .restart local p2    # "host":Ljava/lang/String;
    .restart local p3    # "port":I
    .restart local p4    # "timeout":I
    :cond_3
    const/4 v0, 0x0

    aget-byte v1, v11, v0

    if-nez v1, :cond_5

    .line 138
    const/4 v1, 0x1

    aget-byte v0, v11, v1

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_4

    .line 147
    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 148
    .local v1, "temp":[B
    const/4 v2, 0x0

    invoke-virtual {v4, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 160
    nop

    .line 161
    .end local v1    # "temp":[B
    .end local v10    # "index":I
    .end local v11    # "buf":[B
    .end local v12    # "inetAddress":Ljava/net/InetAddress;
    .end local v13    # "byteAddress":[B
    .end local v14    # "s":I
    .end local v15    # "len":I
    return-void

    .line 140
    .restart local v10    # "index":I
    .restart local v11    # "buf":[B
    .restart local v12    # "inetAddress":Ljava/net/InetAddress;
    .restart local v13    # "byteAddress":[B
    .restart local v14    # "s":I
    .restart local v15    # "len":I
    :cond_4
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 143
    goto :goto_2

    .line 142
    :catch_0
    move-exception v0

    .line 144
    :goto_2
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProxySOCKS4: server returns CD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget-byte v1, v11, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Lorg/jivesoftware/smack/proxy/ProxyException;

    sget-object v2, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->SOCKS4:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    invoke-direct {v1, v2, v0}, Lorg/jivesoftware/smack/proxy/ProxyException;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;)V

    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "proxy_host":Ljava/lang/String;
    .end local v7    # "proxy_port":I
    .end local v8    # "user":Ljava/lang/String;
    .end local p1    # "socket":Ljava/net/Socket;
    .end local p2    # "host":Ljava/lang/String;
    .end local p3    # "port":I
    .end local p4    # "timeout":I
    throw v1

    .line 135
    .end local v0    # "message":Ljava/lang/String;
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "proxy_host":Ljava/lang/String;
    .restart local v7    # "proxy_port":I
    .restart local v8    # "user":Ljava/lang/String;
    .restart local p1    # "socket":Ljava/net/Socket;
    .restart local p2    # "host":Ljava/lang/String;
    .restart local p3    # "port":I
    .restart local p4    # "timeout":I
    :cond_5
    new-instance v0, Lorg/jivesoftware/smack/proxy/ProxyException;

    sget-object v1, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->SOCKS4:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "server returns VN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-byte v3, v11, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/proxy/ProxyException;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;)V

    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "proxy_host":Ljava/lang/String;
    .end local v7    # "proxy_port":I
    .end local v8    # "user":Ljava/lang/String;
    .end local p1    # "socket":Ljava/net/Socket;
    .end local p2    # "host":Ljava/lang/String;
    .end local p3    # "port":I
    .end local p4    # "timeout":I
    throw v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 153
    .end local v10    # "index":I
    .end local v11    # "buf":[B
    .end local v12    # "inetAddress":Ljava/net/InetAddress;
    .end local v13    # "byteAddress":[B
    .end local v14    # "s":I
    .end local v15    # "len":I
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "proxy_host":Ljava/lang/String;
    .restart local v7    # "proxy_port":I
    .restart local v8    # "user":Ljava/lang/String;
    .restart local p1    # "socket":Ljava/net/Socket;
    .restart local p2    # "host":Ljava/lang/String;
    .restart local p3    # "port":I
    .restart local p4    # "timeout":I
    :catch_1
    move-exception v0

    goto :goto_3

    .line 150
    :catch_2
    move-exception v0

    goto :goto_5

    .line 153
    :catch_3
    move-exception v0

    move/from16 v9, p4

    :goto_3
    move-object v1, v0

    .line 155
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 158
    goto :goto_4

    .line 157
    :catch_4
    move-exception v0

    .line 159
    :goto_4
    new-instance v0, Lorg/jivesoftware/smack/proxy/ProxyException;

    sget-object v2, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->SOCKS4:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/jivesoftware/smack/proxy/ProxyException;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;)V

    throw v0

    .line 150
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v0

    move/from16 v9, p4

    .line 151
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_5
    throw v0
.end method
