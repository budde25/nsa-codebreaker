.class public abstract Lorg/minidns/AbstractDnsClient;
.super Ljava/lang/Object;
.source "AbstractDnsClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/minidns/AbstractDnsClient$IpVersionSetting;
    }
.end annotation


# static fields
.field protected static final DEFAULT_CACHE:Lorg/minidns/cache/LruCache;

.field protected static DEFAULT_IP_VERSION_SETTING:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

.field protected static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field protected final cache:Lorg/minidns/DnsCache;

.field protected dataSource:Lorg/minidns/source/DnsDataSource;

.field protected final insecureRandom:Ljava/util/Random;

.field protected ipVersionSetting:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

.field private final onResponseCallback:Lorg/minidns/source/DnsDataSource$OnResponseCallback;

.field protected final random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lorg/minidns/cache/LruCache;

    invoke-direct {v0}, Lorg/minidns/cache/LruCache;-><init>()V

    sput-object v0, Lorg/minidns/AbstractDnsClient;->DEFAULT_CACHE:Lorg/minidns/cache/LruCache;

    .line 48
    const-class v0, Lorg/minidns/AbstractDnsClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/minidns/AbstractDnsClient;->LOGGER:Ljava/util/logging/Logger;

    .line 96
    sget-object v0, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->v4v6:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    sput-object v0, Lorg/minidns/AbstractDnsClient;->DEFAULT_IP_VERSION_SETTING:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 138
    sget-object v0, Lorg/minidns/AbstractDnsClient;->DEFAULT_CACHE:Lorg/minidns/cache/LruCache;

    invoke-direct {p0, v0}, Lorg/minidns/AbstractDnsClient;-><init>(Lorg/minidns/DnsCache;)V

    .line 139
    return-void
.end method

.method protected constructor <init>(Lorg/minidns/DnsCache;)V
    .locals 2
    .param p1, "cache"    # Lorg/minidns/DnsCache;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lorg/minidns/AbstractDnsClient$1;

    invoke-direct {v0, p0}, Lorg/minidns/AbstractDnsClient$1;-><init>(Lorg/minidns/AbstractDnsClient;)V

    iput-object v0, p0, Lorg/minidns/AbstractDnsClient;->onResponseCallback:Lorg/minidns/source/DnsDataSource$OnResponseCallback;

    .line 69
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/minidns/AbstractDnsClient;->insecureRandom:Ljava/util/Random;

    .line 76
    new-instance v0, Lorg/minidns/source/NetworkDataSource;

    invoke-direct {v0}, Lorg/minidns/source/NetworkDataSource;-><init>()V

    iput-object v0, p0, Lorg/minidns/AbstractDnsClient;->dataSource:Lorg/minidns/source/DnsDataSource;

    .line 105
    sget-object v0, Lorg/minidns/AbstractDnsClient;->DEFAULT_IP_VERSION_SETTING:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    iput-object v0, p0, Lorg/minidns/AbstractDnsClient;->ipVersionSetting:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    .line 126
    :try_start_0
    const-string v0, "SHA1PRNG"

    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .local v0, "random":Ljava/util/Random;
    goto :goto_0

    .line 127
    .end local v0    # "random":Ljava/util/Random;
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e1":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    move-object v0, v1

    .line 130
    .local v0, "random":Ljava/util/Random;
    :goto_0
    iput-object v0, p0, Lorg/minidns/AbstractDnsClient;->random:Ljava/util/Random;

    .line 131
    iput-object p1, p0, Lorg/minidns/AbstractDnsClient;->cache:Lorg/minidns/DnsCache;

    .line 132
    return-void
.end method

.method private getCachedIPNameserverAddressesFor(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;)Ljava/util/Set;
    .locals 6
    .param p1, "dnsName"    # Lorg/minidns/dnsname/DnsName;
    .param p2, "type"    # Lorg/minidns/record/Record$TYPE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lorg/minidns/record/Data;",
            ">(",
            "Lorg/minidns/dnsname/DnsName;",
            "Lorg/minidns/record/Record$TYPE;",
            ")",
            "Ljava/util/Set<",
            "TD;>;"
        }
    .end annotation

    .line 444
    invoke-virtual {p0, p1}, Lorg/minidns/AbstractDnsClient;->getCachedNameserverRecordsFor(Lorg/minidns/dnsname/DnsName;)Ljava/util/Set;

    move-result-object v0

    .line 445
    .local v0, "nsSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/minidns/record/NS;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 448
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 449
    .local v1, "res":Ljava/util/Set;, "Ljava/util/Set<TD;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/minidns/record/NS;

    .line 451
    .local v3, "ns":Lorg/minidns/record/NS;
    sget-object v4, Lorg/minidns/AbstractDnsClient$2;->$SwitchMap$org$minidns$record$Record$TYPE:[I

    invoke-virtual {p2}, Lorg/minidns/record/Record$TYPE;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 456
    iget-object v4, v3, Lorg/minidns/record/NS;->target:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {p0, v4}, Lorg/minidns/AbstractDnsClient;->getCachedIPv6AddressesFor(Lorg/minidns/dnsname/DnsName;)Ljava/util/Set;

    move-result-object v4

    .line 457
    .local v4, "addresses":Ljava/util/Set;, "Ljava/util/Set<TD;>;"
    goto :goto_1

    .line 459
    .end local v4    # "addresses":Ljava/util/Set;, "Ljava/util/Set<TD;>;"
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 453
    :cond_2
    iget-object v4, v3, Lorg/minidns/record/NS;->target:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {p0, v4}, Lorg/minidns/AbstractDnsClient;->getCachedIPv4AddressesFor(Lorg/minidns/dnsname/DnsName;)Ljava/util/Set;

    move-result-object v4

    .line 454
    .restart local v4    # "addresses":Ljava/util/Set;, "Ljava/util/Set<TD;>;"
    nop

    .line 461
    :goto_1
    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 462
    .end local v3    # "ns":Lorg/minidns/record/NS;
    .end local v4    # "addresses":Ljava/util/Set;, "Ljava/util/Set<TD;>;"
    goto :goto_0

    .line 464
    :cond_3
    return-object v1
.end method

.method private getCachedRecordsFor(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;)Ljava/util/Set;
    .locals 4
    .param p1, "dnsName"    # Lorg/minidns/dnsname/DnsName;
    .param p2, "type"    # Lorg/minidns/record/Record$TYPE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lorg/minidns/record/Data;",
            ">(",
            "Lorg/minidns/dnsname/DnsName;",
            "Lorg/minidns/record/Record$TYPE;",
            ")",
            "Ljava/util/Set<",
            "TD;>;"
        }
    .end annotation

    .line 420
    new-instance v0, Lorg/minidns/dnsmessage/Question;

    invoke-direct {v0, p1, p2}, Lorg/minidns/dnsmessage/Question;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;)V

    .line 421
    .local v0, "dnsNameNs":Lorg/minidns/dnsmessage/Question;
    invoke-virtual {p0, v0}, Lorg/minidns/AbstractDnsClient;->getQueryFor(Lorg/minidns/dnsmessage/Question;)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object v1

    .line 422
    .local v1, "queryDnsNameNs":Lorg/minidns/dnsmessage/DnsMessage;
    iget-object v2, p0, Lorg/minidns/AbstractDnsClient;->cache:Lorg/minidns/DnsCache;

    invoke-virtual {v2, v1}, Lorg/minidns/DnsCache;->get(Lorg/minidns/dnsmessage/DnsMessage;)Lorg/minidns/dnsqueryresult/CachedDnsQueryResult;

    move-result-object v2

    .line 424
    .local v2, "cachedResult":Lorg/minidns/dnsqueryresult/DnsQueryResult;
    if-nez v2, :cond_0

    .line 425
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    return-object v3

    .line 427
    :cond_0
    iget-object v3, v2, Lorg/minidns/dnsqueryresult/DnsQueryResult;->response:Lorg/minidns/dnsmessage/DnsMessage;

    invoke-virtual {v3, v0}, Lorg/minidns/dnsmessage/DnsMessage;->getAnswersFor(Lorg/minidns/dnsmessage/Question;)Ljava/util/Set;

    move-result-object v3

    return-object v3
.end method

.method public static setDefaultIpVersion(Lorg/minidns/AbstractDnsClient$IpVersionSetting;)V
    .locals 1
    .param p0, "preferedIpVersion"    # Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    .line 99
    if-eqz p0, :cond_0

    .line 102
    sput-object p0, Lorg/minidns/AbstractDnsClient;->DEFAULT_IP_VERSION_SETTING:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    .line 103
    return-void

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method final buildMessage(Lorg/minidns/dnsmessage/Question;)Lorg/minidns/dnsmessage/DnsMessage$Builder;
    .locals 2
    .param p1, "question"    # Lorg/minidns/dnsmessage/Question;

    .line 302
    invoke-static {}, Lorg/minidns/dnsmessage/DnsMessage;->builder()Lorg/minidns/dnsmessage/DnsMessage$Builder;

    move-result-object v0

    .line 303
    .local v0, "message":Lorg/minidns/dnsmessage/DnsMessage$Builder;
    invoke-virtual {v0, p1}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->setQuestion(Lorg/minidns/dnsmessage/Question;)Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 304
    iget-object v1, p0, Lorg/minidns/AbstractDnsClient;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->setId(I)Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 305
    invoke-virtual {p0, v0}, Lorg/minidns/AbstractDnsClient;->newQuestion(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/dnsmessage/DnsMessage$Builder;

    move-result-object v0

    .line 306
    return-object v0
.end method

.method public getCache()Lorg/minidns/DnsCache;
    .locals 1

    .line 410
    iget-object v0, p0, Lorg/minidns/AbstractDnsClient;->cache:Lorg/minidns/DnsCache;

    return-object v0
.end method

.method public getCachedIPv4AddressesFor(Lorg/minidns/dnsname/DnsName;)Ljava/util/Set;
    .locals 1
    .param p1, "dnsName"    # Lorg/minidns/dnsname/DnsName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsname/DnsName;",
            ")",
            "Ljava/util/Set<",
            "Lorg/minidns/record/A;",
            ">;"
        }
    .end annotation

    .line 435
    sget-object v0, Lorg/minidns/record/Record$TYPE;->A:Lorg/minidns/record/Record$TYPE;

    invoke-direct {p0, p1, v0}, Lorg/minidns/AbstractDnsClient;->getCachedRecordsFor(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getCachedIPv4NameserverAddressesFor(Lorg/minidns/dnsname/DnsName;)Ljava/util/Set;
    .locals 1
    .param p1, "dnsName"    # Lorg/minidns/dnsname/DnsName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsname/DnsName;",
            ")",
            "Ljava/util/Set<",
            "Lorg/minidns/record/A;",
            ">;"
        }
    .end annotation

    .line 468
    sget-object v0, Lorg/minidns/record/Record$TYPE;->A:Lorg/minidns/record/Record$TYPE;

    invoke-direct {p0, p1, v0}, Lorg/minidns/AbstractDnsClient;->getCachedIPNameserverAddressesFor(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getCachedIPv6AddressesFor(Lorg/minidns/dnsname/DnsName;)Ljava/util/Set;
    .locals 1
    .param p1, "dnsName"    # Lorg/minidns/dnsname/DnsName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsname/DnsName;",
            ")",
            "Ljava/util/Set<",
            "Lorg/minidns/record/AAAA;",
            ">;"
        }
    .end annotation

    .line 439
    sget-object v0, Lorg/minidns/record/Record$TYPE;->AAAA:Lorg/minidns/record/Record$TYPE;

    invoke-direct {p0, p1, v0}, Lorg/minidns/AbstractDnsClient;->getCachedRecordsFor(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getCachedIPv6NameserverAddressesFor(Lorg/minidns/dnsname/DnsName;)Ljava/util/Set;
    .locals 1
    .param p1, "dnsName"    # Lorg/minidns/dnsname/DnsName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsname/DnsName;",
            ")",
            "Ljava/util/Set<",
            "Lorg/minidns/record/AAAA;",
            ">;"
        }
    .end annotation

    .line 472
    sget-object v0, Lorg/minidns/record/Record$TYPE;->AAAA:Lorg/minidns/record/Record$TYPE;

    invoke-direct {p0, p1, v0}, Lorg/minidns/AbstractDnsClient;->getCachedIPNameserverAddressesFor(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getCachedNameserverRecordsFor(Lorg/minidns/dnsname/DnsName;)Ljava/util/Set;
    .locals 1
    .param p1, "dnsName"    # Lorg/minidns/dnsname/DnsName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsname/DnsName;",
            ")",
            "Ljava/util/Set<",
            "Lorg/minidns/record/NS;",
            ">;"
        }
    .end annotation

    .line 431
    sget-object v0, Lorg/minidns/record/Record$TYPE;->NS:Lorg/minidns/record/Record$TYPE;

    invoke-direct {p0, p1, v0}, Lorg/minidns/AbstractDnsClient;->getCachedRecordsFor(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getDataSource()Lorg/minidns/source/DnsDataSource;
    .locals 1

    .line 385
    iget-object v0, p0, Lorg/minidns/AbstractDnsClient;->dataSource:Lorg/minidns/source/DnsDataSource;

    return-object v0
.end method

.method public getPreferedIpVersion()Lorg/minidns/AbstractDnsClient$IpVersionSetting;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/minidns/AbstractDnsClient;->ipVersionSetting:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    return-object v0
.end method

.method protected getQueryFor(Lorg/minidns/dnsmessage/Question;)Lorg/minidns/dnsmessage/DnsMessage;
    .locals 2
    .param p1, "q"    # Lorg/minidns/dnsmessage/Question;

    .line 414
    invoke-virtual {p0, p1}, Lorg/minidns/AbstractDnsClient;->buildMessage(Lorg/minidns/dnsmessage/Question;)Lorg/minidns/dnsmessage/DnsMessage$Builder;

    move-result-object v0

    .line 415
    .local v0, "messageBuilder":Lorg/minidns/dnsmessage/DnsMessage$Builder;
    invoke-virtual {v0}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->build()Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object v1

    .line 416
    .local v1, "query":Lorg/minidns/dnsmessage/DnsMessage;
    return-object v1
.end method

.method protected isResponseCacheable(Lorg/minidns/dnsmessage/Question;Lorg/minidns/dnsqueryresult/DnsQueryResult;)Z
    .locals 4
    .param p1, "q"    # Lorg/minidns/dnsmessage/Question;
    .param p2, "result"    # Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 286
    iget-object v0, p2, Lorg/minidns/dnsqueryresult/DnsQueryResult;->response:Lorg/minidns/dnsmessage/DnsMessage;

    .line 287
    .local v0, "dnsMessage":Lorg/minidns/dnsmessage/DnsMessage;
    iget-object v1, v0, Lorg/minidns/dnsmessage/DnsMessage;->answerSection:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/minidns/record/Record;

    .line 288
    .local v2, "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    invoke-virtual {v2, p1}, Lorg/minidns/record/Record;->isAnswer(Lorg/minidns/dnsmessage/Question;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 289
    const/4 v1, 0x1

    return v1

    .line 291
    .end local v2    # "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    :cond_0
    goto :goto_0

    .line 292
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method protected abstract newQuestion(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/dnsmessage/DnsMessage$Builder;
.end method

.method public final query(Ljava/lang/CharSequence;Lorg/minidns/record/Record$TYPE;)Lorg/minidns/dnsqueryresult/DnsQueryResult;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Lorg/minidns/record/Record$TYPE;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    new-instance v0, Lorg/minidns/dnsmessage/Question;

    sget-object v1, Lorg/minidns/record/Record$CLASS;->IN:Lorg/minidns/record/Record$CLASS;

    invoke-direct {v0, p1, p2, v1}, Lorg/minidns/dnsmessage/Question;-><init>(Ljava/lang/CharSequence;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;)V

    .line 183
    .local v0, "q":Lorg/minidns/dnsmessage/Question;
    invoke-virtual {p0, v0}, Lorg/minidns/AbstractDnsClient;->query(Lorg/minidns/dnsmessage/Question;)Lorg/minidns/dnsqueryresult/DnsQueryResult;

    move-result-object v1

    return-object v1
.end method

.method public query(Ljava/lang/String;Lorg/minidns/record/Record$TYPE;Ljava/net/InetAddress;)Lorg/minidns/dnsqueryresult/DnsQueryResult;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lorg/minidns/record/Record$TYPE;
    .param p3, "address"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    new-instance v0, Lorg/minidns/dnsmessage/Question;

    sget-object v1, Lorg/minidns/record/Record$CLASS;->IN:Lorg/minidns/record/Record$CLASS;

    invoke-direct {v0, p1, p2, v1}, Lorg/minidns/dnsmessage/Question;-><init>(Ljava/lang/CharSequence;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;)V

    .line 356
    .local v0, "q":Lorg/minidns/dnsmessage/Question;
    invoke-virtual {p0, v0, p3}, Lorg/minidns/AbstractDnsClient;->query(Lorg/minidns/dnsmessage/Question;Ljava/net/InetAddress;)Lorg/minidns/dnsqueryresult/DnsQueryResult;

    move-result-object v1

    return-object v1
.end method

.method public final query(Ljava/lang/String;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;)Lorg/minidns/dnsqueryresult/DnsQueryResult;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lorg/minidns/record/Record$TYPE;
    .param p3, "clazz"    # Lorg/minidns/record/Record$CLASS;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    new-instance v0, Lorg/minidns/dnsmessage/Question;

    invoke-direct {v0, p1, p2, p3}, Lorg/minidns/dnsmessage/Question;-><init>(Ljava/lang/CharSequence;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;)V

    .line 155
    .local v0, "q":Lorg/minidns/dnsmessage/Question;
    invoke-virtual {p0, v0}, Lorg/minidns/AbstractDnsClient;->query(Lorg/minidns/dnsmessage/Question;)Lorg/minidns/dnsqueryresult/DnsQueryResult;

    move-result-object v1

    return-object v1
.end method

.method public query(Ljava/lang/String;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;Ljava/net/InetAddress;)Lorg/minidns/dnsqueryresult/DnsQueryResult;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lorg/minidns/record/Record$TYPE;
    .param p3, "clazz"    # Lorg/minidns/record/Record$CLASS;
    .param p4, "address"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    new-instance v0, Lorg/minidns/dnsmessage/Question;

    invoke-direct {v0, p1, p2, p3}, Lorg/minidns/dnsmessage/Question;-><init>(Ljava/lang/CharSequence;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;)V

    .line 341
    .local v0, "q":Lorg/minidns/dnsmessage/Question;
    invoke-virtual {p0, v0, p4}, Lorg/minidns/AbstractDnsClient;->query(Lorg/minidns/dnsmessage/Question;Ljava/net/InetAddress;)Lorg/minidns/dnsqueryresult/DnsQueryResult;

    move-result-object v1

    return-object v1
.end method

.method public query(Ljava/lang/String;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;Ljava/net/InetAddress;I)Lorg/minidns/dnsqueryresult/DnsQueryResult;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lorg/minidns/record/Record$TYPE;
    .param p3, "clazz"    # Lorg/minidns/record/Record$CLASS;
    .param p4, "address"    # Ljava/net/InetAddress;
    .param p5, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    new-instance v0, Lorg/minidns/dnsmessage/Question;

    invoke-direct {v0, p1, p2, p3}, Lorg/minidns/dnsmessage/Question;-><init>(Ljava/lang/CharSequence;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;)V

    .line 325
    .local v0, "q":Lorg/minidns/dnsmessage/Question;
    invoke-virtual {p0, v0, p4, p5}, Lorg/minidns/AbstractDnsClient;->query(Lorg/minidns/dnsmessage/Question;Ljava/net/InetAddress;I)Lorg/minidns/dnsqueryresult/DnsQueryResult;

    move-result-object v1

    return-object v1
.end method

.method protected abstract query(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/dnsqueryresult/DnsQueryResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final query(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;)Lorg/minidns/dnsqueryresult/DnsQueryResult;
    .locals 1
    .param p1, "query"    # Lorg/minidns/dnsmessage/DnsMessage;
    .param p2, "host"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 360
    const/16 v0, 0x35

    invoke-virtual {p0, p1, p2, v0}, Lorg/minidns/AbstractDnsClient;->query(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;I)Lorg/minidns/dnsqueryresult/DnsQueryResult;

    move-result-object v0

    return-object v0
.end method

.method public final query(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;I)Lorg/minidns/dnsqueryresult/DnsQueryResult;
    .locals 11
    .param p1, "requestMessage"    # Lorg/minidns/dnsmessage/DnsMessage;
    .param p2, "address"    # Ljava/net/InetAddress;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lorg/minidns/AbstractDnsClient;->cache:Lorg/minidns/DnsCache;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/minidns/DnsCache;->get(Lorg/minidns/dnsmessage/DnsMessage;)Lorg/minidns/dnsqueryresult/CachedDnsQueryResult;

    move-result-object v0

    .line 240
    .local v0, "responseMessage":Lorg/minidns/dnsqueryresult/DnsQueryResult;
    :goto_0
    if-eqz v0, :cond_1

    .line 241
    return-object v0

    .line 244
    :cond_1
    invoke-virtual {p1}, Lorg/minidns/dnsmessage/DnsMessage;->getQuestion()Lorg/minidns/dnsmessage/Question;

    move-result-object v1

    .line 246
    .local v1, "q":Lorg/minidns/dnsmessage/Question;
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 247
    .local v2, "TRACE_LOG_LEVEL":Ljava/util/logging/Level;
    sget-object v3, Lorg/minidns/AbstractDnsClient;->LOGGER:Ljava/util/logging/Logger;

    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v5, v8

    const/4 v7, 0x2

    aput-object v1, v5, v7

    const/4 v9, 0x3

    aput-object p1, v5, v9

    const-string v10, "Asking {0} on {1} for {2} with:\n{3}"

    invoke-virtual {v3, v2, v10, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    :try_start_0
    iget-object v3, p0, Lorg/minidns/AbstractDnsClient;->dataSource:Lorg/minidns/source/DnsDataSource;

    invoke-interface {v3, p1, p2, p3}, Lorg/minidns/source/DnsDataSource;->query(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;I)Lorg/minidns/dnsqueryresult/DnsQueryResult;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 254
    nop

    .line 256
    sget-object v3, Lorg/minidns/AbstractDnsClient;->LOGGER:Ljava/util/logging/Logger;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object v1, v4, v7

    aput-object v0, v4, v9

    const-string v5, "Response from {0} on {1} for {2}:\n{3}"

    invoke-virtual {v3, v2, v5, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    iget-object v3, p0, Lorg/minidns/AbstractDnsClient;->onResponseCallback:Lorg/minidns/source/DnsDataSource$OnResponseCallback;

    invoke-interface {v3, p1, v0}, Lorg/minidns/source/DnsDataSource$OnResponseCallback;->onResponse(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsqueryresult/DnsQueryResult;)V

    .line 260
    return-object v0

    .line 251
    :catch_0
    move-exception v3

    .line 252
    .local v3, "e":Ljava/io/IOException;
    sget-object v5, Lorg/minidns/AbstractDnsClient;->LOGGER:Ljava/util/logging/Logger;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v8

    aput-object v1, v4, v7

    aput-object v3, v4, v9

    const-string v6, "IOException {0} on {1} while resolving {2}: {3}"

    invoke-virtual {v5, v2, v6, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    throw v3
.end method

.method public query(Lorg/minidns/dnsmessage/Question;)Lorg/minidns/dnsqueryresult/DnsQueryResult;
    .locals 2
    .param p1, "q"    # Lorg/minidns/dnsmessage/Question;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    invoke-virtual {p0, p1}, Lorg/minidns/AbstractDnsClient;->buildMessage(Lorg/minidns/dnsmessage/Question;)Lorg/minidns/dnsmessage/DnsMessage$Builder;

    move-result-object v0

    .line 188
    .local v0, "query":Lorg/minidns/dnsmessage/DnsMessage$Builder;
    invoke-virtual {p0, v0}, Lorg/minidns/AbstractDnsClient;->query(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/dnsqueryresult/DnsQueryResult;

    move-result-object v1

    return-object v1
.end method

.method public query(Lorg/minidns/dnsmessage/Question;Ljava/net/InetAddress;)Lorg/minidns/dnsqueryresult/DnsQueryResult;
    .locals 1
    .param p1, "q"    # Lorg/minidns/dnsmessage/Question;
    .param p2, "address"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    const/16 v0, 0x35

    invoke-virtual {p0, p1, p2, v0}, Lorg/minidns/AbstractDnsClient;->query(Lorg/minidns/dnsmessage/Question;Ljava/net/InetAddress;I)Lorg/minidns/dnsqueryresult/DnsQueryResult;

    move-result-object v0

    return-object v0
.end method

.method public final query(Lorg/minidns/dnsmessage/Question;Ljava/net/InetAddress;I)Lorg/minidns/dnsqueryresult/DnsQueryResult;
    .locals 2
    .param p1, "q"    # Lorg/minidns/dnsmessage/Question;
    .param p2, "server"    # Ljava/net/InetAddress;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    invoke-virtual {p0, p1}, Lorg/minidns/AbstractDnsClient;->getQueryFor(Lorg/minidns/dnsmessage/Question;)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object v0

    .line 234
    .local v0, "query":Lorg/minidns/dnsmessage/DnsMessage;
    invoke-virtual {p0, v0, p2, p3}, Lorg/minidns/AbstractDnsClient;->query(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;I)Lorg/minidns/dnsqueryresult/DnsQueryResult;

    move-result-object v1

    return-object v1
.end method

.method public final query(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;)Lorg/minidns/dnsqueryresult/DnsQueryResult;
    .locals 2
    .param p1, "name"    # Lorg/minidns/dnsname/DnsName;
    .param p2, "type"    # Lorg/minidns/record/Record$TYPE;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    new-instance v0, Lorg/minidns/dnsmessage/Question;

    sget-object v1, Lorg/minidns/record/Record$CLASS;->IN:Lorg/minidns/record/Record$CLASS;

    invoke-direct {v0, p1, p2, v1}, Lorg/minidns/dnsmessage/Question;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;)V

    .line 169
    .local v0, "q":Lorg/minidns/dnsmessage/Question;
    invoke-virtual {p0, v0}, Lorg/minidns/AbstractDnsClient;->query(Lorg/minidns/dnsmessage/Question;)Lorg/minidns/dnsqueryresult/DnsQueryResult;

    move-result-object v1

    return-object v1
.end method

.method public final queryAsync(Ljava/lang/CharSequence;Lorg/minidns/record/Record$TYPE;)Lorg/minidns/MiniDnsFuture;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Lorg/minidns/record/Record$TYPE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lorg/minidns/record/Record$TYPE;",
            ")",
            "Lorg/minidns/MiniDnsFuture<",
            "Lorg/minidns/dnsqueryresult/DnsQueryResult;",
            "Ljava/io/IOException;",
            ">;"
        }
    .end annotation

    .line 201
    new-instance v0, Lorg/minidns/dnsmessage/Question;

    sget-object v1, Lorg/minidns/record/Record$CLASS;->IN:Lorg/minidns/record/Record$CLASS;

    invoke-direct {v0, p1, p2, v1}, Lorg/minidns/dnsmessage/Question;-><init>(Ljava/lang/CharSequence;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;)V

    .line 202
    .local v0, "q":Lorg/minidns/dnsmessage/Question;
    invoke-virtual {p0, v0}, Lorg/minidns/AbstractDnsClient;->queryAsync(Lorg/minidns/dnsmessage/Question;)Lorg/minidns/MiniDnsFuture;

    move-result-object v1

    return-object v1
.end method

.method protected queryAsync(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/MiniDnsFuture;
    .locals 2
    .param p1, "query"    # Lorg/minidns/dnsmessage/DnsMessage$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsmessage/DnsMessage$Builder;",
            ")",
            "Lorg/minidns/MiniDnsFuture<",
            "Lorg/minidns/dnsqueryresult/DnsQueryResult;",
            "Ljava/io/IOException;",
            ">;"
        }
    .end annotation

    .line 220
    new-instance v0, Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture;

    invoke-direct {v0}, Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture;-><init>()V

    .line 223
    .local v0, "future":Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture;, "Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture<Lorg/minidns/dnsqueryresult/DnsQueryResult;Ljava/io/IOException;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/minidns/AbstractDnsClient;->query(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/dnsqueryresult/DnsQueryResult;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .local v1, "result":Lorg/minidns/dnsqueryresult/DnsQueryResult;
    nop

    .line 228
    invoke-virtual {v0, v1}, Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture;->setResult(Ljava/lang/Object;)V

    .line 229
    return-object v0

    .line 224
    .end local v1    # "result":Lorg/minidns/dnsqueryresult/DnsQueryResult;
    :catch_0
    move-exception v1

    .line 225
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v0, v1}, Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture;->setException(Ljava/lang/Exception;)V

    .line 226
    return-object v0
.end method

.method public final queryAsync(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;)Lorg/minidns/MiniDnsFuture;
    .locals 1
    .param p1, "query"    # Lorg/minidns/dnsmessage/DnsMessage;
    .param p2, "dnsServer"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsmessage/DnsMessage;",
            "Ljava/net/InetAddress;",
            ")",
            "Lorg/minidns/MiniDnsFuture<",
            "Lorg/minidns/dnsqueryresult/DnsQueryResult;",
            "Ljava/io/IOException;",
            ">;"
        }
    .end annotation

    .line 376
    const/16 v0, 0x35

    invoke-virtual {p0, p1, p2, v0}, Lorg/minidns/AbstractDnsClient;->queryAsync(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;I)Lorg/minidns/MiniDnsFuture;

    move-result-object v0

    return-object v0
.end method

.method public final queryAsync(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;I)Lorg/minidns/MiniDnsFuture;
    .locals 7
    .param p1, "requestMessage"    # Lorg/minidns/dnsmessage/DnsMessage;
    .param p2, "address"    # Ljava/net/InetAddress;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsmessage/DnsMessage;",
            "Ljava/net/InetAddress;",
            "I)",
            "Lorg/minidns/MiniDnsFuture<",
            "Lorg/minidns/dnsqueryresult/DnsQueryResult;",
            "Ljava/io/IOException;",
            ">;"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lorg/minidns/AbstractDnsClient;->cache:Lorg/minidns/DnsCache;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/minidns/DnsCache;->get(Lorg/minidns/dnsmessage/DnsMessage;)Lorg/minidns/dnsqueryresult/CachedDnsQueryResult;

    move-result-object v0

    .line 266
    .local v0, "responseMessage":Lorg/minidns/dnsqueryresult/DnsQueryResult;
    :goto_0
    if-eqz v0, :cond_1

    .line 267
    invoke-static {v0}, Lorg/minidns/MiniDnsFuture;->from(Ljava/lang/Object;)Lorg/minidns/MiniDnsFuture;

    move-result-object v1

    return-object v1

    .line 270
    :cond_1
    invoke-virtual {p1}, Lorg/minidns/dnsmessage/DnsMessage;->getQuestion()Lorg/minidns/dnsmessage/Question;

    move-result-object v1

    .line 272
    .local v1, "q":Lorg/minidns/dnsmessage/Question;
    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 273
    .local v2, "TRACE_LOG_LEVEL":Ljava/util/logging/Level;
    sget-object v3, Lorg/minidns/AbstractDnsClient;->LOGGER:Ljava/util/logging/Logger;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    const/4 v5, 0x3

    aput-object p1, v4, v5

    const-string v5, "Asynchronusly asking {0} on {1} for {2} with:\n{3}"

    invoke-virtual {v3, v2, v5, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    iget-object v3, p0, Lorg/minidns/AbstractDnsClient;->dataSource:Lorg/minidns/source/DnsDataSource;

    iget-object v4, p0, Lorg/minidns/AbstractDnsClient;->onResponseCallback:Lorg/minidns/source/DnsDataSource$OnResponseCallback;

    invoke-interface {v3, p1, p2, p3, v4}, Lorg/minidns/source/DnsDataSource;->queryAsync(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;ILorg/minidns/source/DnsDataSource$OnResponseCallback;)Lorg/minidns/MiniDnsFuture;

    move-result-object v3

    return-object v3
.end method

.method public final queryAsync(Lorg/minidns/dnsmessage/Question;)Lorg/minidns/MiniDnsFuture;
    .locals 2
    .param p1, "q"    # Lorg/minidns/dnsmessage/Question;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsmessage/Question;",
            ")",
            "Lorg/minidns/MiniDnsFuture<",
            "Lorg/minidns/dnsqueryresult/DnsQueryResult;",
            "Ljava/io/IOException;",
            ">;"
        }
    .end annotation

    .line 206
    invoke-virtual {p0, p1}, Lorg/minidns/AbstractDnsClient;->buildMessage(Lorg/minidns/dnsmessage/Question;)Lorg/minidns/dnsmessage/DnsMessage$Builder;

    move-result-object v0

    .line 207
    .local v0, "query":Lorg/minidns/dnsmessage/DnsMessage$Builder;
    invoke-virtual {p0, v0}, Lorg/minidns/AbstractDnsClient;->queryAsync(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/MiniDnsFuture;

    move-result-object v1

    return-object v1
.end method

.method public setDataSource(Lorg/minidns/source/DnsDataSource;)V
    .locals 1
    .param p1, "dataSource"    # Lorg/minidns/source/DnsDataSource;

    .line 398
    if-eqz p1, :cond_0

    .line 401
    iput-object p1, p0, Lorg/minidns/AbstractDnsClient;->dataSource:Lorg/minidns/source/DnsDataSource;

    .line 402
    return-void

    .line 399
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setPreferedIpVersion(Lorg/minidns/AbstractDnsClient$IpVersionSetting;)V
    .locals 1
    .param p1, "preferedIpVersion"    # Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    .line 108
    if-eqz p1, :cond_0

    .line 111
    iput-object p1, p0, Lorg/minidns/AbstractDnsClient;->ipVersionSetting:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    .line 112
    return-void

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
