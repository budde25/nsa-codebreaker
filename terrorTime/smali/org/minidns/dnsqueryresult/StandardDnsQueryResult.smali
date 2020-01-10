.class public Lorg/minidns/dnsqueryresult/StandardDnsQueryResult;
.super Lorg/minidns/dnsqueryresult/DnsQueryResult;
.source "StandardDnsQueryResult.java"


# instance fields
.field public final port:I

.field public final serverAddress:Ljava/net/InetAddress;


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;ILorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsmessage/DnsMessage;)V
    .locals 0
    .param p1, "serverAddress"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "queryMethod"    # Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;
    .param p4, "query"    # Lorg/minidns/dnsmessage/DnsMessage;
    .param p5, "responseDnsMessage"    # Lorg/minidns/dnsmessage/DnsMessage;

    .line 24
    invoke-direct {p0, p3, p4, p5}, Lorg/minidns/dnsqueryresult/DnsQueryResult;-><init>(Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsmessage/DnsMessage;)V

    .line 25
    iput-object p1, p0, Lorg/minidns/dnsqueryresult/StandardDnsQueryResult;->serverAddress:Ljava/net/InetAddress;

    .line 26
    iput p2, p0, Lorg/minidns/dnsqueryresult/StandardDnsQueryResult;->port:I

    .line 27
    return-void
.end method
