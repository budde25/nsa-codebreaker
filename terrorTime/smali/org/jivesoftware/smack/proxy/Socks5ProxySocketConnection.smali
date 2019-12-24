.class public Lorg/jivesoftware/smack/proxy/Socks5ProxySocketConnection;
.super Ljava/lang/Object;
.source "Socks5ProxySocketConnection.java"

# interfaces
.implements Lorg/jivesoftware/smack/proxy/ProxySocketConnection;


# instance fields
.field private final proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/proxy/ProxyInfo;)V
    .locals 0
    .param p1, "proxy"    # Lorg/jivesoftware/smack/proxy/ProxyInfo;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketConnection;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    .line 37
    return-void
.end method

.method private static fill(Ljava/io/InputStream;[BI)V
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "buf"    # [B
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    const/4 v0, 0x0

    .line 296
    .local v0, "s":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 297
    sub-int v1, p2, v0

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 298
    .local v1, "i":I
    if-lez v1, :cond_0

    .line 302
    add-int/2addr v0, v1

    .line 303
    .end local v1    # "i":I
    goto :goto_0

    .line 299
    .restart local v1    # "i":I
    :cond_0
    new-instance v2, Lorg/jivesoftware/smack/proxy/ProxyException;

    sget-object v3, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->SOCKS5:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    const-string v4, "stream is closed"

    invoke-direct {v2, v3, v4}, Lorg/jivesoftware/smack/proxy/ProxyException;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;)V

    throw v2

    .line 304
    .end local v1    # "i":I
    :cond_1
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

    .line 42
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    const/4 v4, 0x0

    .line 43
    .local v4, "in":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 44
    .local v5, "out":Ljava/io/OutputStream;
    iget-object v0, v1, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketConnection;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->getProxyAddress()Ljava/lang/String;

    move-result-object v6

    .line 45
    .local v6, "proxy_host":Ljava/lang/String;
    iget-object v0, v1, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketConnection;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->getProxyPort()I

    move-result v7

    .line 46
    .local v7, "proxy_port":I
    iget-object v0, v1, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketConnection;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->getProxyUsername()Ljava/lang/String;

    move-result-object v8

    .line 47
    .local v8, "user":Ljava/lang/String;
    iget-object v0, v1, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketConnection;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->getProxyPassword()Ljava/lang/String;

    move-result-object v9

    .line 50
    .local v9, "passwd":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v6, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move/from16 v10, p4

    :try_start_1
    invoke-virtual {v2, v0, v10}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 51
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    move-object v4, v0

    .line 52
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    move-object v5, v0

    .line 54
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 56
    const/16 v0, 0x400

    new-array v0, v0, [B

    move-object v12, v0

    .line 57
    .local v12, "buf":[B
    const/4 v0, 0x0

    .line 80
    .local v0, "index":I
    add-int/lit8 v13, v0, 0x1

    .end local v0    # "index":I
    .local v13, "index":I
    const/4 v14, 0x5

    aput-byte v14, v12, v0

    .line 82
    add-int/lit8 v0, v13, 0x1

    .end local v13    # "index":I
    .restart local v0    # "index":I
    const/4 v15, 0x2

    aput-byte v15, v12, v13

    .line 83
    add-int/lit8 v13, v0, 0x1

    .end local v0    # "index":I
    .restart local v13    # "index":I
    const/4 v14, 0x0

    aput-byte v14, v12, v0

    .line 84
    add-int/lit8 v0, v13, 0x1

    .end local v13    # "index":I
    .restart local v0    # "index":I
    aput-byte v15, v12, v13

    .line 86
    invoke-virtual {v5, v12, v14, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 98
    invoke-static {v4, v12, v15}, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketConnection;->fill(Ljava/io/InputStream;[BI)V

    .line 100
    const/4 v13, 0x0

    .line 101
    .local v13, "check":Z
    aget-byte v14, v12, v11
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    and-int/lit16 v14, v14, 0xff

    const-string v11, "UTF-8"

    if-eqz v14, :cond_4

    if-eq v14, v15, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    if-eqz v8, :cond_3

    if-nez v9, :cond_1

    .line 107
    goto :goto_0

    .line 129
    :cond_1
    const/4 v0, 0x0

    .line 130
    add-int/lit8 v14, v0, 0x1

    const/16 v17, 0x1

    .end local v0    # "index":I
    .local v14, "index":I
    :try_start_2
    aput-byte v17, v12, v0

    .line 131
    add-int/lit8 v0, v14, 0x1

    .end local v14    # "index":I
    .restart local v0    # "index":I
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    int-to-byte v15, v15

    aput-byte v15, v12, v14

    .line 132
    invoke-virtual {v8, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v14

    .line 133
    .local v14, "userBytes":[B
    nop

    .line 134
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    .line 133
    const/4 v1, 0x0

    invoke-static {v14, v1, v12, v0, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 136
    invoke-virtual {v9, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 137
    .local v1, "passwordBytes":[B
    add-int/lit8 v15, v0, 0x1

    .end local v0    # "index":I
    .local v15, "index":I
    array-length v2, v1

    int-to-byte v2, v2

    aput-byte v2, v12, v0

    .line 138
    nop

    .line 139
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    .line 138
    const/4 v2, 0x0

    invoke-static {v1, v2, v12, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v15

    .line 142
    .end local v15    # "index":I
    .restart local v0    # "index":I
    invoke-virtual {v5, v12, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 158
    const/4 v2, 0x2

    invoke-static {v4, v12, v2}, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketConnection;->fill(Ljava/io/InputStream;[BI)V

    .line 159
    const/4 v2, 0x1

    aget-byte v15, v12, v2

    if-nez v15, :cond_2

    .line 160
    const/4 v13, 0x1

    move v1, v0

    goto :goto_1

    .line 159
    :cond_2
    move v1, v0

    goto :goto_1

    .line 166
    .end local v1    # "passwordBytes":[B
    .end local v14    # "userBytes":[B
    :cond_3
    :goto_0
    move v1, v0

    goto :goto_1

    .line 103
    :cond_4
    const/4 v13, 0x1

    .line 104
    move v1, v0

    .line 166
    .end local v0    # "index":I
    .local v1, "index":I
    :goto_1
    if-eqz v13, :cond_9

    .line 202
    const/4 v0, 0x0

    .line 203
    .end local v1    # "index":I
    .restart local v0    # "index":I
    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x5

    .end local v0    # "index":I
    .restart local v1    # "index":I
    aput-byte v2, v12, v0

    .line 204
    add-int/lit8 v0, v1, 0x1

    const/4 v2, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    aput-byte v2, v12, v1

    .line 205
    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    .end local v0    # "index":I
    .restart local v1    # "index":I
    aput-byte v2, v12, v0

    .line 207
    move-object/from16 v2, p2

    invoke-virtual {v2, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    move-object v11, v0

    .line 208
    .local v11, "hostb":[B
    array-length v0, v11

    move v14, v0

    .line 209
    .local v14, "len":I
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    const/4 v15, 0x3

    aput-byte v15, v12, v1

    .line 210
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    int-to-byte v15, v14

    aput-byte v15, v12, v0

    .line 211
    const/4 v0, 0x0

    invoke-static {v11, v0, v12, v1, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    add-int/2addr v1, v14

    .line 213
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    ushr-int/lit8 v15, v3, 0x8

    int-to-byte v15, v15

    aput-byte v15, v12, v1

    .line 214
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    and-int/lit16 v15, v3, 0xff

    int-to-byte v15, v15

    aput-byte v15, v12, v0

    .line 216
    const/4 v0, 0x0

    invoke-virtual {v5, v12, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 253
    const/4 v0, 0x4

    invoke-static {v4, v12, v0}, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketConnection;->fill(Ljava/io/InputStream;[BI)V

    .line 255
    const/4 v15, 0x1

    aget-byte v17, v12, v15

    if-nez v17, :cond_8

    .line 265
    const/4 v0, 0x3

    aget-byte v15, v12, v0

    and-int/lit16 v15, v15, 0xff

    move/from16 v16, v1

    const/4 v1, 0x1

    .end local v1    # "index":I
    .local v16, "index":I
    if-eq v15, v1, :cond_7

    if-eq v15, v0, :cond_6

    const/4 v0, 0x4

    if-eq v15, v0, :cond_5

    goto :goto_2

    .line 274
    :cond_5
    const/16 v0, 0x12

    invoke-static {v4, v12, v0}, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketConnection;->fill(Ljava/io/InputStream;[BI)V

    .line 275
    goto :goto_2

    .line 270
    :cond_6
    const/4 v1, 0x1

    invoke-static {v4, v12, v1}, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketConnection;->fill(Ljava/io/InputStream;[BI)V

    .line 271
    const/4 v0, 0x0

    aget-byte v0, v12, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x2

    add-int/2addr v0, v1

    invoke-static {v4, v12, v0}, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketConnection;->fill(Ljava/io/InputStream;[BI)V

    .line 272
    goto :goto_2

    .line 267
    :cond_7
    const/4 v0, 0x6

    invoke-static {v4, v12, v0}, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketConnection;->fill(Ljava/io/InputStream;[BI)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 268
    nop

    .line 290
    .end local v11    # "hostb":[B
    .end local v12    # "buf":[B
    .end local v13    # "check":Z
    .end local v14    # "len":I
    .end local v16    # "index":I
    :goto_2
    nop

    .line 291
    return-void

    .line 257
    .restart local v1    # "index":I
    .restart local v11    # "hostb":[B
    .restart local v12    # "buf":[B
    .restart local v13    # "check":Z
    .restart local v14    # "len":I
    :cond_8
    move/from16 v16, v1

    .end local v1    # "index":I
    .restart local v16    # "index":I
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 260
    goto :goto_3

    .line 259
    :catch_0
    move-exception v0

    .line 261
    :goto_3
    :try_start_4
    new-instance v0, Lorg/jivesoftware/smack/proxy/ProxyException;

    sget-object v1, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->SOCKS5:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "server returns "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget-byte v2, v12, v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/proxy/ProxyException;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;)V

    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "proxy_host":Ljava/lang/String;
    .end local v7    # "proxy_port":I
    .end local v8    # "user":Ljava/lang/String;
    .end local v9    # "passwd":Ljava/lang/String;
    .end local p1    # "socket":Ljava/net/Socket;
    .end local p2    # "host":Ljava/lang/String;
    .end local p3    # "port":I
    .end local p4    # "timeout":I
    throw v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 168
    .end local v11    # "hostb":[B
    .end local v14    # "len":I
    .end local v16    # "index":I
    .restart local v1    # "index":I
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "proxy_host":Ljava/lang/String;
    .restart local v7    # "proxy_port":I
    .restart local v8    # "user":Ljava/lang/String;
    .restart local v9    # "passwd":Ljava/lang/String;
    .restart local p1    # "socket":Ljava/net/Socket;
    .restart local p2    # "host":Ljava/lang/String;
    .restart local p3    # "port":I
    .restart local p4    # "timeout":I
    :cond_9
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    .line 171
    goto :goto_4

    .line 170
    :catch_1
    move-exception v0

    .line 172
    :goto_4
    :try_start_6
    new-instance v0, Lorg/jivesoftware/smack/proxy/ProxyException;

    sget-object v2, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->SOCKS5:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    const-string v11, "fail in SOCKS5 proxy"

    invoke-direct {v0, v2, v11}, Lorg/jivesoftware/smack/proxy/ProxyException;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;)V

    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "proxy_host":Ljava/lang/String;
    .end local v7    # "proxy_port":I
    .end local v8    # "user":Ljava/lang/String;
    .end local v9    # "passwd":Ljava/lang/String;
    .end local p1    # "socket":Ljava/net/Socket;
    .end local p2    # "host":Ljava/lang/String;
    .end local p3    # "port":I
    .end local p4    # "timeout":I
    throw v0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 282
    .end local v1    # "index":I
    .end local v12    # "buf":[B
    .end local v13    # "check":Z
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "proxy_host":Ljava/lang/String;
    .restart local v7    # "proxy_port":I
    .restart local v8    # "user":Ljava/lang/String;
    .restart local v9    # "passwd":Ljava/lang/String;
    .restart local p1    # "socket":Ljava/net/Socket;
    .restart local p2    # "host":Ljava/lang/String;
    .restart local p3    # "port":I
    .restart local p4    # "timeout":I
    :catch_2
    move-exception v0

    goto :goto_5

    .line 279
    :catch_3
    move-exception v0

    goto :goto_7

    .line 282
    :catch_4
    move-exception v0

    move/from16 v10, p4

    :goto_5
    move-object v1, v0

    .line 284
    .local v1, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 287
    goto :goto_6

    .line 286
    :catch_5
    move-exception v0

    .line 289
    :goto_6
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v0

    move/from16 v10, p4

    .line 280
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_7
    throw v0
.end method
