.class public Lorg/minidns/dnsqueryresult/DirectCachedDnsQueryResult;
.super Lorg/minidns/dnsqueryresult/CachedDnsQueryResult;
.source "DirectCachedDnsQueryResult.java"


# direct methods
.method public constructor <init>(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsqueryresult/DnsQueryResult;)V
    .locals 0
    .param p1, "query"    # Lorg/minidns/dnsmessage/DnsMessage;
    .param p2, "cachedDnsQueryResult"    # Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 18
    invoke-direct {p0, p1, p2}, Lorg/minidns/dnsqueryresult/CachedDnsQueryResult;-><init>(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsqueryresult/DnsQueryResult;)V

    .line 19
    return-void
.end method
