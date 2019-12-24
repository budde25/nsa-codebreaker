.class Lorg/jivesoftware/smack/proxy/HTTPProxySocketConnection;
.super Ljava/lang/Object;
.source "HTTPProxySocketConnection.java"

# interfaces
.implements Lorg/jivesoftware/smack/proxy/ProxySocketConnection;


# static fields
.field private static final RESPONSE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 123
    nop

    .line 124
    const-string v0, "HTTP/\\S+\\s(\\d+)\\s(.*)\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/proxy/HTTPProxySocketConnection;->RESPONSE_PATTERN:Ljava/util/regex/Pattern;

    .line 123
    return-void
.end method

.method constructor <init>(Lorg/jivesoftware/smack/proxy/ProxyInfo;)V
    .locals 0
    .param p1, "proxy"    # Lorg/jivesoftware/smack/proxy/ProxyInfo;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/jivesoftware/smack/proxy/HTTPProxySocketConnection;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    .line 42
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

    .line 47
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    iget-object v3, v0, Lorg/jivesoftware/smack/proxy/HTTPProxySocketConnection;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->getProxyAddress()Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "proxyhost":Ljava/lang/String;
    iget-object v4, v0, Lorg/jivesoftware/smack/proxy/HTTPProxySocketConnection;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->getProxyPort()I

    move-result v4

    .line 49
    .local v4, "proxyPort":I
    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    move-object/from16 v6, p1

    invoke-virtual {v6, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 50
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CONNECT "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, "hostport":Ljava/lang/String;
    iget-object v8, v0, Lorg/jivesoftware/smack/proxy/HTTPProxySocketConnection;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    invoke-virtual {v8}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->getProxyUsername()Ljava/lang/String;

    move-result-object v8

    .line 53
    .local v8, "username":Ljava/lang/String;
    if-nez v8, :cond_0

    .line 54
    const-string v9, ""

    .local v9, "proxyLine":Ljava/lang/String;
    goto :goto_0

    .line 57
    .end local v9    # "proxyLine":Ljava/lang/String;
    :cond_0
    iget-object v9, v0, Lorg/jivesoftware/smack/proxy/HTTPProxySocketConnection;->proxy:Lorg/jivesoftware/smack/proxy/ProxyInfo;

    invoke-virtual {v9}, Lorg/jivesoftware/smack/proxy/ProxyInfo;->getProxyPassword()Ljava/lang/String;

    move-result-object v9

    .line 58
    .local v9, "password":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\r\nProxy-Authorization: Basic "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/jivesoftware/smack/util/stringencoder/Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 60
    .local v9, "proxyLine":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " HTTP/1.1\r\nHost: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\r\n\r\n"

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 61
    const-string v11, "UTF-8"

    invoke-virtual {v7, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 60
    invoke-virtual {v10, v7}, Ljava/io/OutputStream;->write([B)V

    .line 63
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 64
    .local v7, "in":Ljava/io/InputStream;
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v11, 0x64

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 65
    .local v10, "got":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 68
    .local v11, "nlchars":I
    :goto_1
    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v12

    .line 69
    .local v12, "inByte":I
    const/4 v13, -0x1

    if-eq v12, v13, :cond_b

    .line 72
    int-to-char v13, v12

    .line 73
    .local v13, "c":C
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    const/16 v15, 0x400

    const-string v0, ", cancelling connection"

    if-gt v14, v15, :cond_a

    .line 79
    const/4 v14, 0x1

    if-eqz v11, :cond_1

    const/4 v15, 0x2

    if-ne v11, v15, :cond_2

    :cond_1
    const/16 v15, 0xd

    if-ne v13, v15, :cond_2

    .line 80
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 82
    :cond_2
    if-eq v11, v14, :cond_3

    const/4 v15, 0x3

    if-ne v11, v15, :cond_4

    :cond_3
    const/16 v15, 0xa

    if-ne v13, v15, :cond_4

    .line 83
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 86
    :cond_4
    const/4 v11, 0x0

    .line 88
    :goto_2
    const/4 v15, 0x4

    if-ne v11, v15, :cond_9

    .line 89
    nop

    .line 93
    .end local v12    # "inByte":I
    .end local v13    # "c":C
    if-ne v11, v15, :cond_8

    .line 99
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "gotstr":Ljava/lang/String;
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/StringReader;

    invoke-direct {v13, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v12, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 102
    .local v12, "br":Ljava/io/BufferedReader;
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .line 104
    .local v13, "response":Ljava/lang/String;
    if-eqz v13, :cond_7

    .line 109
    sget-object v15, Lorg/jivesoftware/smack/proxy/HTTPProxySocketConnection;->RESPONSE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v15, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    .line 110
    .local v15, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->matches()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 115
    invoke-virtual {v15, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 117
    .local v14, "code":I
    move-object/from16 v16, v0

    .end local v0    # "gotstr":Ljava/lang/String;
    .local v16, "gotstr":Ljava/lang/String;
    const/16 v0, 0xc8

    if-ne v14, v0, :cond_5

    .line 121
    return-void

    .line 118
    :cond_5
    new-instance v0, Lorg/jivesoftware/smack/proxy/ProxyException;

    sget-object v1, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->HTTP:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v4

    .end local v4    # "proxyPort":I
    .local v17, "proxyPort":I
    const-string v4, "Error code in proxy response: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/proxy/ProxyException;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;)V

    throw v0

    .line 111
    .end local v14    # "code":I
    .end local v16    # "gotstr":Ljava/lang/String;
    .end local v17    # "proxyPort":I
    .restart local v0    # "gotstr":Ljava/lang/String;
    .restart local v4    # "proxyPort":I
    :cond_6
    move-object/from16 v16, v0

    move/from16 v17, v4

    .end local v0    # "gotstr":Ljava/lang/String;
    .end local v4    # "proxyPort":I
    .restart local v16    # "gotstr":Ljava/lang/String;
    .restart local v17    # "proxyPort":I
    new-instance v0, Lorg/jivesoftware/smack/proxy/ProxyException;

    sget-object v1, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->HTTP:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected proxy response from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/proxy/ProxyException;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;)V

    throw v0

    .line 105
    .end local v15    # "m":Ljava/util/regex/Matcher;
    .end local v16    # "gotstr":Ljava/lang/String;
    .end local v17    # "proxyPort":I
    .restart local v0    # "gotstr":Ljava/lang/String;
    .restart local v4    # "proxyPort":I
    :cond_7
    move-object/from16 v16, v0

    move/from16 v17, v4

    .end local v0    # "gotstr":Ljava/lang/String;
    .end local v4    # "proxyPort":I
    .restart local v16    # "gotstr":Ljava/lang/String;
    .restart local v17    # "proxyPort":I
    new-instance v0, Lorg/jivesoftware/smack/proxy/ProxyException;

    sget-object v1, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->HTTP:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Empty proxy response from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", cancelling"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/proxy/ProxyException;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;)V

    throw v0

    .line 94
    .end local v12    # "br":Ljava/io/BufferedReader;
    .end local v13    # "response":Ljava/lang/String;
    .end local v16    # "gotstr":Ljava/lang/String;
    .end local v17    # "proxyPort":I
    .restart local v4    # "proxyPort":I
    :cond_8
    move/from16 v17, v4

    .end local v4    # "proxyPort":I
    .restart local v17    # "proxyPort":I
    new-instance v1, Lorg/jivesoftware/smack/proxy/ProxyException;

    sget-object v2, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->HTTP:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Never received blank line from "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/jivesoftware/smack/proxy/ProxyException;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;)V

    throw v1

    .line 88
    .end local v17    # "proxyPort":I
    .restart local v4    # "proxyPort":I
    .local v12, "inByte":I
    .local v13, "c":C
    :cond_9
    move/from16 v17, v4

    .line 91
    .end local v4    # "proxyPort":I
    .end local v12    # "inByte":I
    .end local v13    # "c":C
    .restart local v17    # "proxyPort":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    goto/16 :goto_1

    .line 75
    .end local v17    # "proxyPort":I
    .restart local v4    # "proxyPort":I
    .restart local v12    # "inByte":I
    .restart local v13    # "c":C
    :cond_a
    move/from16 v17, v4

    .end local v4    # "proxyPort":I
    .restart local v17    # "proxyPort":I
    new-instance v1, Lorg/jivesoftware/smack/proxy/ProxyException;

    sget-object v2, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->HTTP:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Received header of >1024 characters from "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/jivesoftware/smack/proxy/ProxyException;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;)V

    throw v1

    .line 70
    .end local v13    # "c":C
    .end local v17    # "proxyPort":I
    .restart local v4    # "proxyPort":I
    :cond_b
    new-instance v0, Lorg/jivesoftware/smack/proxy/ProxyException;

    sget-object v1, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->HTTP:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/proxy/ProxyException;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;)V

    throw v0
.end method
