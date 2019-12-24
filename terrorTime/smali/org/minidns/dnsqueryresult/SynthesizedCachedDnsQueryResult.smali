.class public Lorg/minidns/dnsqueryresult/SynthesizedCachedDnsQueryResult;
.super Lorg/minidns/dnsqueryresult/CachedDnsQueryResult;
.source "SynthesizedCachedDnsQueryResult.java"


# direct methods
.method public constructor <init>(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsqueryresult/DnsQueryResult;)V
    .locals 0
    .param p1, "query"    # Lorg/minidns/dnsmessage/DnsMessage;
    .param p2, "response"    # Lorg/minidns/dnsmessage/DnsMessage;
    .param p3, "synthesynthesizationSource"    # Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lorg/minidns/dnsqueryresult/CachedDnsQueryResult;-><init>(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsqueryresult/DnsQueryResult;)V

    .line 19
    return-void
.end method
