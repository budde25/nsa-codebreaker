.class public Lorg/minidns/source/NetworkDataSource;
.super Lorg/minidns/source/AbstractDnsDataSource;
.source "NetworkDataSource.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static final LOGGER:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    nop

    .line 36
    const-class v0, Lorg/minidns/source/NetworkDataSource;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/minidns/source/NetworkDataSource;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/minidns/source/AbstractDnsDataSource;-><init>()V

    return-void
.end method


# virtual methods
.method protected createDatagramSocket()Ljava/net/DatagramSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 156
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    return-object v0
.end method

.method protected createSocket()Ljava/net/Socket;
    .locals 1

    .line 146
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    return-object v0
.end method

.method public bridge synthetic query(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;I)Lorg/minidns/dnsqueryresult/DnsQueryResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lorg/minidns/source/NetworkDataSource;->query(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;I)Lorg/minidns/dnsqueryresult/StandardDnsQueryResult;

    move-result-object p1

    return-object p1
.end method

.method public query(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;I)Lorg/minidns/dnsqueryresult/StandardDnsQueryResult;
    .locals 12
    .param p1, "message"    # Lorg/minidns/dnsmessage/DnsMessage;
    .param p2, "address"    # Ljava/net/InetAddress;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lorg/minidns/source/NetworkDataSource;->getQueryMode()Lorg/minidns/source/AbstractDnsDataSource$QueryMode;

    move-result-object v0

    .line 43
    .local v0, "queryMode":Lorg/minidns/source/AbstractDnsDataSource$QueryMode;
    sget-object v1, Lorg/minidns/source/NetworkDataSource$1;->$SwitchMap$org$minidns$source$AbstractDnsDataSource$QueryMode:[I

    invoke-virtual {v0}, Lorg/minidns/source/AbstractDnsDataSource$QueryMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    .line 49
    const/4 v1, 0x0

    .line 50
    .local v1, "doUdpFirst":Z
    goto :goto_0

    .line 52
    .end local v1    # "doUdpFirst":Z
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported query mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_1
    const/4 v1, 0x1

    .line 47
    .restart local v1    # "doUdpFirst":Z
    nop

    .line 55
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v4

    .line 56
    .local v2, "ioExceptions":Ljava/util/List;, "Ljava/util/List<Ljava/io/IOException;>;"
    const/4 v4, 0x0

    .line 58
    .local v4, "dnsMessage":Lorg/minidns/dnsmessage/DnsMessage;
    if-eqz v1, :cond_4

    .line 60
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/minidns/source/NetworkDataSource;->queryUdp(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;I)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    .line 63
    goto :goto_1

    .line 61
    :catch_0
    move-exception v5

    .line 62
    .local v5, "e":Ljava/io/IOException;
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    .end local v5    # "e":Ljava/io/IOException;
    :goto_1
    if-eqz v4, :cond_2

    iget-boolean v5, v4, Lorg/minidns/dnsmessage/DnsMessage;->truncated:Z

    if-nez v5, :cond_2

    .line 67
    new-instance v3, Lorg/minidns/dnsqueryresult/StandardDnsQueryResult;

    sget-object v9, Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;->udp:Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;

    move-object v6, v3

    move-object v7, p2

    move v8, p3

    move-object v10, p1

    move-object v11, v4

    invoke-direct/range {v6 .. v11}, Lorg/minidns/dnsqueryresult/StandardDnsQueryResult;-><init>(Ljava/net/InetAddress;ILorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsmessage/DnsMessage;)V

    return-object v3

    .line 70
    :cond_2
    nop

    .line 71
    sget-object v5, Lorg/minidns/source/NetworkDataSource;->LOGGER:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    const-string v8, "response is truncated"

    goto :goto_2

    .line 72
    :cond_3
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/Serializable;

    :goto_2
    aput-object v8, v3, v7

    .line 71
    const-string v7, "Fallback to TCP because {0}"

    invoke-virtual {v5, v6, v7, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    :cond_4
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/minidns/source/NetworkDataSource;->queryTcp(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;I)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v3

    .line 80
    goto :goto_3

    .line 77
    :catch_1
    move-exception v3

    .line 78
    .local v3, "e":Ljava/io/IOException;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-static {v2}, Lorg/minidns/util/MultipleIoException;->throwIfRequired(Ljava/util/List;)V

    .line 82
    .end local v3    # "e":Ljava/io/IOException;
    :goto_3
    new-instance v3, Lorg/minidns/dnsqueryresult/StandardDnsQueryResult;

    sget-object v8, Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;->tcp:Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;

    move-object v5, v3

    move-object v6, p2

    move v7, p3

    move-object v9, p1

    move-object v10, v4

    invoke-direct/range {v5 .. v10}, Lorg/minidns/dnsqueryresult/StandardDnsQueryResult;-><init>(Ljava/net/InetAddress;ILorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsmessage/DnsMessage;)V

    return-object v3
.end method

.method protected queryTcp(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;I)Lorg/minidns/dnsmessage/DnsMessage;
    .locals 10
    .param p1, "message"    # Lorg/minidns/dnsmessage/DnsMessage;
    .param p2, "address"    # Ljava/net/InetAddress;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    const/4 v0, 0x0

    .line 114
    .local v0, "socket":Ljava/net/Socket;
    :try_start_0
    invoke-virtual {p0}, Lorg/minidns/source/NetworkDataSource;->createSocket()Ljava/net/Socket;

    move-result-object v1

    move-object v0, v1

    .line 115
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-direct {v1, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 116
    .local v1, "socketAddress":Ljava/net/SocketAddress;
    iget v2, p0, Lorg/minidns/source/NetworkDataSource;->timeout:I

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 117
    iget v2, p0, Lorg/minidns/source/NetworkDataSource;->timeout:I

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 118
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 119
    .local v2, "dos":Ljava/io/DataOutputStream;
    invoke-virtual {p1, v2}, Lorg/minidns/dnsmessage/DnsMessage;->writeTo(Ljava/io/OutputStream;)V

    .line 120
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 121
    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 122
    .local v3, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    .line 123
    .local v4, "length":I
    new-array v5, v4, [B

    .line 124
    .local v5, "data":[B
    const/4 v6, 0x0

    .line 125
    .local v6, "read":I
    :goto_0
    if-ge v6, v4, :cond_0

    .line 126
    sub-int v7, v4, v6

    invoke-virtual {v3, v5, v6, v7}, Ljava/io/DataInputStream;->read([BII)I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_0

    .line 128
    :cond_0
    new-instance v7, Lorg/minidns/dnsmessage/DnsMessage;

    invoke-direct {v7, v5}, Lorg/minidns/dnsmessage/DnsMessage;-><init>([B)V

    .line 129
    .local v7, "dnsMessage":Lorg/minidns/dnsmessage/DnsMessage;
    iget v8, v7, Lorg/minidns/dnsmessage/DnsMessage;->id:I

    iget v9, p1, Lorg/minidns/dnsmessage/DnsMessage;->id:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v8, v9, :cond_2

    .line 132
    nop

    .line 134
    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 132
    :cond_1
    return-object v7

    .line 130
    :cond_2
    :try_start_1
    new-instance v8, Lorg/minidns/MiniDnsException$IdMismatch;

    invoke-direct {v8, p1, v7}, Lorg/minidns/MiniDnsException$IdMismatch;-><init>(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsmessage/DnsMessage;)V

    .end local v0    # "socket":Ljava/net/Socket;
    .end local p1    # "message":Lorg/minidns/dnsmessage/DnsMessage;
    .end local p2    # "address":Ljava/net/InetAddress;
    .end local p3    # "port":I
    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    .end local v1    # "socketAddress":Ljava/net/SocketAddress;
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .end local v3    # "dis":Ljava/io/DataInputStream;
    .end local v4    # "length":I
    .end local v5    # "data":[B
    .end local v6    # "read":I
    .end local v7    # "dnsMessage":Lorg/minidns/dnsmessage/DnsMessage;
    .restart local v0    # "socket":Ljava/net/Socket;
    .restart local p1    # "message":Lorg/minidns/dnsmessage/DnsMessage;
    .restart local p2    # "address":Ljava/net/InetAddress;
    .restart local p3    # "port":I
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    .line 135
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 137
    :cond_3
    throw v1
.end method

.method protected queryUdp(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;I)Lorg/minidns/dnsmessage/DnsMessage;
    .locals 6
    .param p1, "message"    # Lorg/minidns/dnsmessage/DnsMessage;
    .param p2, "address"    # Ljava/net/InetAddress;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "socket":Ljava/net/DatagramSocket;
    invoke-virtual {p1, p2, p3}, Lorg/minidns/dnsmessage/DnsMessage;->asDatagram(Ljava/net/InetAddress;I)Ljava/net/DatagramPacket;

    move-result-object v1

    .line 90
    .local v1, "packet":Ljava/net/DatagramPacket;
    iget v2, p0, Lorg/minidns/source/NetworkDataSource;->udpPayloadSize:I

    new-array v2, v2, [B

    .line 92
    .local v2, "buffer":[B
    :try_start_0
    invoke-virtual {p0}, Lorg/minidns/source/NetworkDataSource;->createDatagramSocket()Ljava/net/DatagramSocket;

    move-result-object v3

    move-object v0, v3

    .line 93
    iget v3, p0, Lorg/minidns/source/NetworkDataSource;->timeout:I

    invoke-virtual {v0, v3}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 94
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 95
    new-instance v3, Ljava/net/DatagramPacket;

    array-length v4, v2

    invoke-direct {v3, v2, v4}, Ljava/net/DatagramPacket;-><init>([BI)V

    move-object v1, v3

    .line 96
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 97
    new-instance v3, Lorg/minidns/dnsmessage/DnsMessage;

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/minidns/dnsmessage/DnsMessage;-><init>([B)V

    .line 98
    .local v3, "dnsMessage":Lorg/minidns/dnsmessage/DnsMessage;
    iget v4, v3, Lorg/minidns/dnsmessage/DnsMessage;->id:I

    iget v5, p1, Lorg/minidns/dnsmessage/DnsMessage;->id:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v4, v5, :cond_1

    .line 101
    nop

    .line 103
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 101
    :cond_0
    return-object v3

    .line 99
    :cond_1
    :try_start_1
    new-instance v4, Lorg/minidns/MiniDnsException$IdMismatch;

    invoke-direct {v4, p1, v3}, Lorg/minidns/MiniDnsException$IdMismatch;-><init>(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsmessage/DnsMessage;)V

    .end local v0    # "socket":Ljava/net/DatagramSocket;
    .end local v1    # "packet":Ljava/net/DatagramPacket;
    .end local v2    # "buffer":[B
    .end local p1    # "message":Lorg/minidns/dnsmessage/DnsMessage;
    .end local p2    # "address":Ljava/net/InetAddress;
    .end local p3    # "port":I
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    .end local v3    # "dnsMessage":Lorg/minidns/dnsmessage/DnsMessage;
    .restart local v0    # "socket":Ljava/net/DatagramSocket;
    .restart local v1    # "packet":Ljava/net/DatagramPacket;
    .restart local v2    # "buffer":[B
    .restart local p1    # "message":Lorg/minidns/dnsmessage/DnsMessage;
    .restart local p2    # "address":Ljava/net/InetAddress;
    .restart local p3    # "port":I
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    .line 104
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 106
    :cond_2
    throw v3
.end method
