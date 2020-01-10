.class public abstract Lorg/minidns/source/AbstractDnsDataSource;
.super Ljava/lang/Object;
.source "AbstractDnsDataSource.java"

# interfaces
.implements Lorg/minidns/source/DnsDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/minidns/source/AbstractDnsDataSource$QueryMode;
    }
.end annotation


# instance fields
.field private cache:Lorg/minidns/DnsCache;

.field private queryMode:Lorg/minidns/source/AbstractDnsDataSource$QueryMode;

.field protected timeout:I

.field protected udpPayloadSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/16 v0, 0x400

    iput v0, p0, Lorg/minidns/source/AbstractDnsDataSource;->udpPayloadSize:I

    .line 46
    const/16 v0, 0x1388

    iput v0, p0, Lorg/minidns/source/AbstractDnsDataSource;->timeout:I

    .line 100
    sget-object v0, Lorg/minidns/source/AbstractDnsDataSource$QueryMode;->dontCare:Lorg/minidns/source/AbstractDnsDataSource$QueryMode;

    iput-object v0, p0, Lorg/minidns/source/AbstractDnsDataSource;->queryMode:Lorg/minidns/source/AbstractDnsDataSource$QueryMode;

    return-void
.end method


# virtual methods
.method protected final cacheResult(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsqueryresult/DnsQueryResult;)V
    .locals 1
    .param p1, "request"    # Lorg/minidns/dnsmessage/DnsMessage;
    .param p2, "response"    # Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 76
    iget-object v0, p0, Lorg/minidns/source/AbstractDnsDataSource;->cache:Lorg/minidns/DnsCache;

    .line 77
    .local v0, "activeCache":Lorg/minidns/DnsCache;
    if-nez v0, :cond_0

    .line 78
    return-void

    .line 80
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/minidns/DnsCache;->put(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsqueryresult/DnsQueryResult;)V

    .line 81
    return-void
.end method

.method public getQueryMode()Lorg/minidns/source/AbstractDnsDataSource$QueryMode;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/minidns/source/AbstractDnsDataSource;->queryMode:Lorg/minidns/source/AbstractDnsDataSource$QueryMode;

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .line 50
    iget v0, p0, Lorg/minidns/source/AbstractDnsDataSource;->timeout:I

    return v0
.end method

.method public getUdpPayloadSize()I
    .locals 1

    .line 63
    iget v0, p0, Lorg/minidns/source/AbstractDnsDataSource;->udpPayloadSize:I

    return v0
.end method

.method public abstract query(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;I)Lorg/minidns/dnsqueryresult/DnsQueryResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public queryAsync(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;ILorg/minidns/source/DnsDataSource$OnResponseCallback;)Lorg/minidns/MiniDnsFuture;
    .locals 2
    .param p1, "message"    # Lorg/minidns/dnsmessage/DnsMessage;
    .param p2, "address"    # Ljava/net/InetAddress;
    .param p3, "port"    # I
    .param p4, "onResponseCallback"    # Lorg/minidns/source/DnsDataSource$OnResponseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsmessage/DnsMessage;",
            "Ljava/net/InetAddress;",
            "I",
            "Lorg/minidns/source/DnsDataSource$OnResponseCallback;",
            ")",
            "Lorg/minidns/MiniDnsFuture<",
            "Lorg/minidns/dnsqueryresult/DnsQueryResult;",
            "Ljava/io/IOException;",
            ">;"
        }
    .end annotation

    .line 29
    new-instance v0, Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture;

    invoke-direct {v0}, Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture;-><init>()V

    .line 32
    .local v0, "future":Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture;, "Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture<Lorg/minidns/dnsqueryresult/DnsQueryResult;Ljava/io/IOException;>;"
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/minidns/source/AbstractDnsDataSource;->query(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;I)Lorg/minidns/dnsqueryresult/DnsQueryResult;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .local v1, "result":Lorg/minidns/dnsqueryresult/DnsQueryResult;
    nop

    .line 37
    invoke-virtual {v0, v1}, Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture;->setResult(Ljava/lang/Object;)V

    .line 38
    return-object v0

    .line 33
    .end local v1    # "result":Lorg/minidns/dnsqueryresult/DnsQueryResult;
    :catch_0
    move-exception v1

    .line 34
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v0, v1}, Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture;->setException(Ljava/lang/Exception;)V

    .line 35
    return-object v0
.end method

.method public setQueryMode(Lorg/minidns/source/AbstractDnsDataSource$QueryMode;)V
    .locals 1
    .param p1, "queryMode"    # Lorg/minidns/source/AbstractDnsDataSource$QueryMode;

    .line 103
    if-eqz p1, :cond_0

    .line 106
    iput-object p1, p0, Lorg/minidns/source/AbstractDnsDataSource;->queryMode:Lorg/minidns/source/AbstractDnsDataSource$QueryMode;

    .line 107
    return-void

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I

    .line 55
    if-lez p1, :cond_0

    .line 58
    iput p1, p0, Lorg/minidns/source/AbstractDnsDataSource;->timeout:I

    .line 59
    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUdpPayloadSize(I)V
    .locals 2
    .param p1, "udpPayloadSize"    # I

    .line 67
    if-lez p1, :cond_0

    .line 70
    iput p1, p0, Lorg/minidns/source/AbstractDnsDataSource;->udpPayloadSize:I

    .line 71
    return-void

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "UDP payload size must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
