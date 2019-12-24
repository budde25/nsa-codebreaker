.class public abstract Lorg/minidns/DnsCache;
.super Ljava/lang/Object;
.source "DnsCache.java"


# static fields
.field public static final DEFAULT_CACHE_SIZE:I = 0x200


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Lorg/minidns/dnsmessage/DnsMessage;)Lorg/minidns/dnsqueryresult/CachedDnsQueryResult;
    .locals 1
    .param p1, "query"    # Lorg/minidns/dnsmessage/DnsMessage;

    .line 45
    invoke-virtual {p1}, Lorg/minidns/dnsmessage/DnsMessage;->asNormalizedVersion()Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/minidns/DnsCache;->getNormalized(Lorg/minidns/dnsmessage/DnsMessage;)Lorg/minidns/dnsqueryresult/CachedDnsQueryResult;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getNormalized(Lorg/minidns/dnsmessage/DnsMessage;)Lorg/minidns/dnsqueryresult/CachedDnsQueryResult;
.end method

.method public abstract offer(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsqueryresult/DnsQueryResult;Lorg/minidns/dnsname/DnsName;)V
.end method

.method public final put(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsqueryresult/DnsQueryResult;)V
    .locals 1
    .param p1, "query"    # Lorg/minidns/dnsmessage/DnsMessage;
    .param p2, "result"    # Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 32
    invoke-virtual {p1}, Lorg/minidns/dnsmessage/DnsMessage;->asNormalizedVersion()Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/minidns/DnsCache;->putNormalized(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsqueryresult/DnsQueryResult;)V

    .line 33
    return-void
.end method

.method protected abstract putNormalized(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsqueryresult/DnsQueryResult;)V
.end method
