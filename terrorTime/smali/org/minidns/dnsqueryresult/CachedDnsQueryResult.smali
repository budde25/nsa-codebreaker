.class public abstract Lorg/minidns/dnsqueryresult/CachedDnsQueryResult;
.super Lorg/minidns/dnsqueryresult/DnsQueryResult;
.source "CachedDnsQueryResult.java"


# instance fields
.field protected final cachedDnsQueryResult:Lorg/minidns/dnsqueryresult/DnsQueryResult;


# direct methods
.method protected constructor <init>(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsqueryresult/DnsQueryResult;)V
    .locals 1
    .param p1, "query"    # Lorg/minidns/dnsmessage/DnsMessage;
    .param p2, "response"    # Lorg/minidns/dnsmessage/DnsMessage;
    .param p3, "synthesynthesizationSource"    # Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 25
    sget-object v0, Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;->cachedSynthesized:Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;

    invoke-direct {p0, v0, p1, p2}, Lorg/minidns/dnsqueryresult/DnsQueryResult;-><init>(Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsmessage/DnsMessage;)V

    .line 26
    iput-object p3, p0, Lorg/minidns/dnsqueryresult/CachedDnsQueryResult;->cachedDnsQueryResult:Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 27
    return-void
.end method

.method protected constructor <init>(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsqueryresult/DnsQueryResult;)V
    .locals 2
    .param p1, "query"    # Lorg/minidns/dnsmessage/DnsMessage;
    .param p2, "cachedDnsQueryResult"    # Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 20
    sget-object v0, Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;->cachedDirect:Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;

    iget-object v1, p2, Lorg/minidns/dnsqueryresult/DnsQueryResult;->response:Lorg/minidns/dnsmessage/DnsMessage;

    invoke-direct {p0, v0, p1, v1}, Lorg/minidns/dnsqueryresult/DnsQueryResult;-><init>(Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsmessage/DnsMessage;)V

    .line 21
    iput-object p2, p0, Lorg/minidns/dnsqueryresult/CachedDnsQueryResult;->cachedDnsQueryResult:Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 22
    return-void
.end method
