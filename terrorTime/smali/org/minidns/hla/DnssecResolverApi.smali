.class public Lorg/minidns/hla/DnssecResolverApi;
.super Lorg/minidns/hla/ResolverApi;
.source "DnssecResolverApi.java"


# static fields
.field public static final INSTANCE:Lorg/minidns/hla/DnssecResolverApi;


# instance fields
.field private final dnssecClient:Lorg/minidns/dnssec/DnssecClient;

.field private final iterativeOnlyDnssecClient:Lorg/minidns/dnssec/DnssecClient;

.field private final recursiveOnlyDnssecClient:Lorg/minidns/dnssec/DnssecClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lorg/minidns/hla/DnssecResolverApi;

    invoke-direct {v0}, Lorg/minidns/hla/DnssecResolverApi;-><init>()V

    sput-object v0, Lorg/minidns/hla/DnssecResolverApi;->INSTANCE:Lorg/minidns/hla/DnssecResolverApi;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    new-instance v0, Lorg/minidns/hla/DnssecResolverApi$1;

    invoke-direct {v0}, Lorg/minidns/hla/DnssecResolverApi$1;-><init>()V

    invoke-direct {p0, v0}, Lorg/minidns/hla/DnssecResolverApi;-><init>(Lorg/minidns/cache/MiniDnsCacheFactory;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/minidns/cache/MiniDnsCacheFactory;)V
    .locals 2
    .param p1, "cacheFactory"    # Lorg/minidns/cache/MiniDnsCacheFactory;

    .line 47
    new-instance v0, Lorg/minidns/dnssec/DnssecClient;

    invoke-interface {p1}, Lorg/minidns/cache/MiniDnsCacheFactory;->newCache()Lorg/minidns/DnsCache;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/minidns/dnssec/DnssecClient;-><init>(Lorg/minidns/DnsCache;)V

    invoke-direct {p0, v0, p1}, Lorg/minidns/hla/DnssecResolverApi;-><init>(Lorg/minidns/dnssec/DnssecClient;Lorg/minidns/cache/MiniDnsCacheFactory;)V

    .line 48
    return-void
.end method

.method private constructor <init>(Lorg/minidns/dnssec/DnssecClient;Lorg/minidns/cache/MiniDnsCacheFactory;)V
    .locals 2
    .param p1, "dnssecClient"    # Lorg/minidns/dnssec/DnssecClient;
    .param p2, "cacheFactory"    # Lorg/minidns/cache/MiniDnsCacheFactory;

    .line 51
    invoke-direct {p0, p1}, Lorg/minidns/hla/ResolverApi;-><init>(Lorg/minidns/AbstractDnsClient;)V

    .line 52
    iput-object p1, p0, Lorg/minidns/hla/DnssecResolverApi;->dnssecClient:Lorg/minidns/dnssec/DnssecClient;

    .line 56
    new-instance v0, Lorg/minidns/dnssec/DnssecClient;

    invoke-interface {p2}, Lorg/minidns/cache/MiniDnsCacheFactory;->newCache()Lorg/minidns/DnsCache;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/minidns/dnssec/DnssecClient;-><init>(Lorg/minidns/DnsCache;)V

    iput-object v0, p0, Lorg/minidns/hla/DnssecResolverApi;->iterativeOnlyDnssecClient:Lorg/minidns/dnssec/DnssecClient;

    .line 57
    iget-object v0, p0, Lorg/minidns/hla/DnssecResolverApi;->iterativeOnlyDnssecClient:Lorg/minidns/dnssec/DnssecClient;

    sget-object v1, Lorg/minidns/iterative/ReliableDnsClient$Mode;->iterativeOnly:Lorg/minidns/iterative/ReliableDnsClient$Mode;

    invoke-virtual {v0, v1}, Lorg/minidns/dnssec/DnssecClient;->setMode(Lorg/minidns/iterative/ReliableDnsClient$Mode;)V

    .line 59
    new-instance v0, Lorg/minidns/dnssec/DnssecClient;

    invoke-interface {p2}, Lorg/minidns/cache/MiniDnsCacheFactory;->newCache()Lorg/minidns/DnsCache;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/minidns/dnssec/DnssecClient;-><init>(Lorg/minidns/DnsCache;)V

    iput-object v0, p0, Lorg/minidns/hla/DnssecResolverApi;->recursiveOnlyDnssecClient:Lorg/minidns/dnssec/DnssecClient;

    .line 60
    iget-object v0, p0, Lorg/minidns/hla/DnssecResolverApi;->recursiveOnlyDnssecClient:Lorg/minidns/dnssec/DnssecClient;

    sget-object v1, Lorg/minidns/iterative/ReliableDnsClient$Mode;->recursiveOnly:Lorg/minidns/iterative/ReliableDnsClient$Mode;

    invoke-virtual {v0, v1}, Lorg/minidns/dnssec/DnssecClient;->setMode(Lorg/minidns/iterative/ReliableDnsClient$Mode;)V

    .line 61
    return-void
.end method

.method private static toResolverResult(Lorg/minidns/dnsmessage/Question;Lorg/minidns/dnssec/DnssecQueryResult;)Lorg/minidns/hla/ResolverResult;
    .locals 3
    .param p0, "question"    # Lorg/minidns/dnsmessage/Question;
    .param p1, "dnssecMessage"    # Lorg/minidns/dnssec/DnssecQueryResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lorg/minidns/record/Data;",
            ">(",
            "Lorg/minidns/dnsmessage/Question;",
            "Lorg/minidns/dnssec/DnssecQueryResult;",
            ")",
            "Lorg/minidns/hla/ResolverResult<",
            "TD;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/minidns/MiniDnsException$NullResultException;
        }
    .end annotation

    .line 120
    invoke-virtual {p1}, Lorg/minidns/dnssec/DnssecQueryResult;->getUnverifiedReasons()Ljava/util/Set;

    move-result-object v0

    .line 122
    .local v0, "unverifiedReasons":Ljava/util/Set;, "Ljava/util/Set<Lorg/minidns/dnssec/DnssecUnverifiedReason;>;"
    new-instance v1, Lorg/minidns/hla/ResolverResult;

    iget-object v2, p1, Lorg/minidns/dnssec/DnssecQueryResult;->dnsQueryResult:Lorg/minidns/dnsqueryresult/DnsQueryResult;

    invoke-direct {v1, p0, v2, v0}, Lorg/minidns/hla/ResolverResult;-><init>(Lorg/minidns/dnsmessage/Question;Lorg/minidns/dnsqueryresult/DnsQueryResult;Ljava/util/Set;)V

    return-object v1
.end method


# virtual methods
.method public getDnssecClient()Lorg/minidns/dnssec/DnssecClient;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/minidns/hla/DnssecResolverApi;->dnssecClient:Lorg/minidns/dnssec/DnssecClient;

    return-object v0
.end method

.method public resolve(Lorg/minidns/dnsmessage/Question;)Lorg/minidns/hla/ResolverResult;
    .locals 2
    .param p1, "question"    # Lorg/minidns/dnsmessage/Question;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lorg/minidns/record/Data;",
            ">(",
            "Lorg/minidns/dnsmessage/Question;",
            ")",
            "Lorg/minidns/hla/ResolverResult<",
            "TD;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lorg/minidns/hla/DnssecResolverApi;->dnssecClient:Lorg/minidns/dnssec/DnssecClient;

    invoke-virtual {v0, p1}, Lorg/minidns/dnssec/DnssecClient;->queryDnssec(Lorg/minidns/dnsmessage/Question;)Lorg/minidns/dnssec/DnssecQueryResult;

    move-result-object v0

    .line 66
    .local v0, "dnssecMessage":Lorg/minidns/dnssec/DnssecQueryResult;
    invoke-static {p1, v0}, Lorg/minidns/hla/DnssecResolverApi;->toResolverResult(Lorg/minidns/dnsmessage/Question;Lorg/minidns/dnssec/DnssecQueryResult;)Lorg/minidns/hla/ResolverResult;

    move-result-object v1

    return-object v1
.end method

.method public resolveDnssecReliable(Ljava/lang/String;Ljava/lang/Class;)Lorg/minidns/hla/ResolverResult;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lorg/minidns/record/Data;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TD;>;)",
            "Lorg/minidns/hla/ResolverResult<",
            "TD;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TD;>;"
    invoke-static {p1}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/minidns/hla/DnssecResolverApi;->resolveDnssecReliable(Lorg/minidns/dnsname/DnsName;Ljava/lang/Class;)Lorg/minidns/hla/ResolverResult;

    move-result-object v0

    return-object v0
.end method

.method public resolveDnssecReliable(Lorg/minidns/dnsmessage/Question;)Lorg/minidns/hla/ResolverResult;
    .locals 2
    .param p1, "question"    # Lorg/minidns/dnsmessage/Question;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lorg/minidns/record/Data;",
            ">(",
            "Lorg/minidns/dnsmessage/Question;",
            ")",
            "Lorg/minidns/hla/ResolverResult<",
            "TD;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lorg/minidns/hla/DnssecResolverApi;->recursiveOnlyDnssecClient:Lorg/minidns/dnssec/DnssecClient;

    invoke-virtual {v0, p1}, Lorg/minidns/dnssec/DnssecClient;->queryDnssec(Lorg/minidns/dnsmessage/Question;)Lorg/minidns/dnssec/DnssecQueryResult;

    move-result-object v0

    .line 109
    .local v0, "dnssecMessage":Lorg/minidns/dnssec/DnssecQueryResult;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/minidns/dnssec/DnssecQueryResult;->isAuthenticData()Z

    move-result v1

    if-nez v1, :cond_1

    .line 110
    :cond_0
    iget-object v1, p0, Lorg/minidns/hla/DnssecResolverApi;->iterativeOnlyDnssecClient:Lorg/minidns/dnssec/DnssecClient;

    invoke-virtual {v1, p1}, Lorg/minidns/dnssec/DnssecClient;->queryDnssec(Lorg/minidns/dnsmessage/Question;)Lorg/minidns/dnssec/DnssecQueryResult;

    move-result-object v0

    .line 112
    :cond_1
    invoke-static {p1, v0}, Lorg/minidns/hla/DnssecResolverApi;->toResolverResult(Lorg/minidns/dnsmessage/Question;Lorg/minidns/dnssec/DnssecQueryResult;)Lorg/minidns/hla/ResolverResult;

    move-result-object v1

    return-object v1
.end method

.method public resolveDnssecReliable(Lorg/minidns/dnsname/DnsName;Ljava/lang/Class;)Lorg/minidns/hla/ResolverResult;
    .locals 3
    .param p1, "name"    # Lorg/minidns/dnsname/DnsName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lorg/minidns/record/Data;",
            ">(",
            "Lorg/minidns/dnsname/DnsName;",
            "Ljava/lang/Class<",
            "TD;>;)",
            "Lorg/minidns/hla/ResolverResult<",
            "TD;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TD;>;"
    invoke-static {p2}, Lorg/minidns/record/Record$TYPE;->getType(Ljava/lang/Class;)Lorg/minidns/record/Record$TYPE;

    move-result-object v0

    .line 95
    .local v0, "t":Lorg/minidns/record/Record$TYPE;
    new-instance v1, Lorg/minidns/dnsmessage/Question;

    invoke-direct {v1, p1, v0}, Lorg/minidns/dnsmessage/Question;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;)V

    .line 96
    .local v1, "q":Lorg/minidns/dnsmessage/Question;
    invoke-virtual {p0, v1}, Lorg/minidns/hla/DnssecResolverApi;->resolveDnssecReliable(Lorg/minidns/dnsmessage/Question;)Lorg/minidns/hla/ResolverResult;

    move-result-object v2

    return-object v2
.end method
