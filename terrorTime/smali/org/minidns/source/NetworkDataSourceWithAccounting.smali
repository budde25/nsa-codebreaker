.class public Lorg/minidns/source/NetworkDataSourceWithAccounting;
.super Lorg/minidns/source/NetworkDataSource;
.source "NetworkDataSourceWithAccounting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;
    }
.end annotation


# instance fields
.field private final failedQueries:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final failedTcpQueries:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final failedUdpQueries:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final responseSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final successfulQueries:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final successfulTcpQueries:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final successfulUdpQueries:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final tcpResponseSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final udpResponseSize:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lorg/minidns/source/NetworkDataSource;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting;->successfulQueries:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting;->responseSize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting;->failedQueries:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting;->successfulUdpQueries:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting;->udpResponseSize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting;->failedUdpQueries:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting;->successfulTcpQueries:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting;->tcpResponseSize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting;->failedTcpQueries:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static synthetic access$100(Lorg/minidns/source/NetworkDataSourceWithAccounting;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lorg/minidns/source/NetworkDataSourceWithAccounting;

    .line 22
    iget-object v0, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting;->successfulQueries:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$200(Lorg/minidns/source/NetworkDataSourceWithAccounting;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lorg/minidns/source/NetworkDataSourceWithAccounting;

    .line 22
    iget-object v0, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting;->responseSize:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$300(Lorg/minidns/source/NetworkDataSourceWithAccounting;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lorg/minidns/source/NetworkDataSourceWithAccounting;

    .line 22
    iget-object v0, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting;->failedQueries:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$400(Lorg/minidns/source/NetworkDataSourceWithAccounting;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lorg/minidns/source/NetworkDataSourceWithAccounting;

    .line 22
    iget-object v0, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting;->successfulUdpQueries:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$500(Lorg/minidns/source/NetworkDataSourceWithAccounting;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lorg/minidns/source/NetworkDataSourceWithAccounting;

    .line 22
    iget-object v0, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting;->udpResponseSize:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$600(Lorg/minidns/source/NetworkDataSourceWithAccounting;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lorg/minidns/source/NetworkDataSourceWithAccounting;

    .line 22
    iget-object v0, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting;->failedUdpQueries:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$700(Lorg/minidns/source/NetworkDataSourceWithAccounting;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lorg/minidns/source/NetworkDataSourceWithAccounting;

    .line 22
    iget-object v0, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting;->successfulTcpQueries:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$800(Lorg/minidns/source/NetworkDataSourceWithAccounting;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lorg/minidns/source/NetworkDataSourceWithAccounting;

    .line 22
    iget-object v0, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting;->tcpResponseSize:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$900(Lorg/minidns/source/NetworkDataSourceWithAccounting;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lorg/minidns/source/NetworkDataSourceWithAccounting;

    .line 22
    iget-object v0, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting;->failedTcpQueries:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static from(Lorg/minidns/AbstractDnsClient;)Lorg/minidns/source/NetworkDataSourceWithAccounting;
    .locals 2
    .param p0, "client"    # Lorg/minidns/AbstractDnsClient;

    .line 89
    invoke-virtual {p0}, Lorg/minidns/AbstractDnsClient;->getDataSource()Lorg/minidns/source/DnsDataSource;

    move-result-object v0

    .line 90
    .local v0, "ds":Lorg/minidns/source/DnsDataSource;
    instance-of v1, v0, Lorg/minidns/source/NetworkDataSourceWithAccounting;

    if-eqz v1, :cond_0

    .line 91
    move-object v1, v0

    check-cast v1, Lorg/minidns/source/NetworkDataSourceWithAccounting;

    return-object v1

    .line 93
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public getStats()Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;
    .locals 2

    .line 85
    new-instance v0, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;-><init>(Lorg/minidns/source/NetworkDataSourceWithAccounting;Lorg/minidns/source/NetworkDataSourceWithAccounting$1;)V

    return-object v0
.end method

.method public bridge synthetic query(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;I)Lorg/minidns/dnsqueryresult/DnsQueryResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-virtual {p0, p1, p2, p3}, Lorg/minidns/source/NetworkDataSourceWithAccounting;->query(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;I)Lorg/minidns/dnsqueryresult/StandardDnsQueryResult;

    move-result-object p1

    return-object p1
.end method

.method public query(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;I)Lorg/minidns/dnsqueryresult/StandardDnsQueryResult;
    .locals 3
    .param p1, "message"    # Lorg/minidns/dnsmessage/DnsMessage;
    .param p2, "address"    # Ljava/net/InetAddress;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lorg/minidns/source/NetworkDataSource;->query(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;I)Lorg/minidns/dnsqueryresult/StandardDnsQueryResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .local v0, "response":Lorg/minidns/dnsqueryresult/StandardDnsQueryResult;
    nop

    .line 46
    iget-object v1, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting;->successfulQueries:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 47
    iget-object v1, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting;->responseSize:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, v0, Lorg/minidns/dnsqueryresult/StandardDnsQueryResult;->response:Lorg/minidns/dnsmessage/DnsMessage;

    invoke-virtual {v2}, Lorg/minidns/dnsmessage/DnsMessage;->toArray()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 49
    return-object v0

    .line 41
    .end local v0    # "response":Lorg/minidns/dnsqueryresult/StandardDnsQueryResult;
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting;->failedQueries:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 43
    throw v0
.end method

.method protected queryTcp(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;I)Lorg/minidns/dnsmessage/DnsMessage;
    .locals 3
    .param p1, "message"    # Lorg/minidns/dnsmessage/DnsMessage;
    .param p2, "address"    # Ljava/net/InetAddress;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lorg/minidns/source/NetworkDataSource;->queryTcp(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;I)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .local v0, "response":Lorg/minidns/dnsmessage/DnsMessage;
    nop

    .line 78
    iget-object v1, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting;->successfulTcpQueries:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 79
    iget-object v1, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting;->tcpResponseSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Lorg/minidns/dnsmessage/DnsMessage;->toArray()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 81
    return-object v0

    .line 73
    .end local v0    # "response":Lorg/minidns/dnsmessage/DnsMessage;
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting;->failedTcpQueries:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 75
    throw v0
.end method

.method protected queryUdp(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;I)Lorg/minidns/dnsmessage/DnsMessage;
    .locals 3
    .param p1, "message"    # Lorg/minidns/dnsmessage/DnsMessage;
    .param p2, "address"    # Ljava/net/InetAddress;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lorg/minidns/source/NetworkDataSource;->queryUdp(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;I)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .local v0, "response":Lorg/minidns/dnsmessage/DnsMessage;
    nop

    .line 62
    iget-object v1, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting;->successfulUdpQueries:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 63
    iget-object v1, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting;->udpResponseSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Lorg/minidns/dnsmessage/DnsMessage;->toArray()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 65
    return-object v0

    .line 57
    .end local v0    # "response":Lorg/minidns/dnsmessage/DnsMessage;
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting;->failedUdpQueries:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 59
    throw v0
.end method
