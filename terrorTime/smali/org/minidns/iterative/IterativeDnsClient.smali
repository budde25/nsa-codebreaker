.class public Lorg/minidns/iterative/IterativeDnsClient;
.super Lorg/minidns/AbstractDnsClient;
.source "IterativeDnsClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/minidns/iterative/IterativeDnsClient$IpResultSet;
    }
.end annotation


# instance fields
.field maxSteps:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lorg/minidns/AbstractDnsClient;-><init>()V

    .line 52
    const/16 v0, 0x80

    iput v0, p0, Lorg/minidns/iterative/IterativeDnsClient;->maxSteps:I

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/minidns/DnsCache;)V
    .locals 1
    .param p1, "cache"    # Lorg/minidns/DnsCache;

    .line 67
    invoke-direct {p0, p1}, Lorg/minidns/AbstractDnsClient;-><init>(Lorg/minidns/DnsCache;)V

    .line 52
    const/16 v0, 0x80

    iput v0, p0, Lorg/minidns/iterative/IterativeDnsClient;->maxSteps:I

    .line 68
    return-void
.end method

.method protected static abortIfFatal(Ljava/io/IOException;)V
    .locals 1
    .param p0, "ioException"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 496
    instance-of v0, p0, Lorg/minidns/iterative/IterativeClientException$LoopDetected;

    if-nez v0, :cond_0

    .line 499
    return-void

    .line 497
    :cond_0
    throw p0
.end method

.method static synthetic access$300()Lorg/minidns/AbstractDnsClient$IpVersionSetting;
    .locals 1

    .line 50
    sget-object v0, Lorg/minidns/iterative/IterativeDnsClient;->DEFAULT_IP_VERSION_SETTING:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    return-object v0
.end method

.method static synthetic access$400()Lorg/minidns/AbstractDnsClient$IpVersionSetting;
    .locals 1

    .line 50
    sget-object v0, Lorg/minidns/iterative/IterativeDnsClient;->DEFAULT_IP_VERSION_SETTING:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    return-object v0
.end method

.method static synthetic access$500()Lorg/minidns/AbstractDnsClient$IpVersionSetting;
    .locals 1

    .line 50
    sget-object v0, Lorg/minidns/iterative/IterativeDnsClient;->DEFAULT_IP_VERSION_SETTING:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    return-object v0
.end method

.method static synthetic access$600()Lorg/minidns/AbstractDnsClient$IpVersionSetting;
    .locals 1

    .line 50
    sget-object v0, Lorg/minidns/iterative/IterativeDnsClient;->DEFAULT_IP_VERSION_SETTING:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    return-object v0
.end method

.method public static getRootServer(C)Ljava/util/List;
    .locals 1
    .param p0, "rootServerId"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 369
    sget-object v0, Lorg/minidns/iterative/IterativeDnsClient;->DEFAULT_IP_VERSION_SETTING:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    invoke-static {p0, v0}, Lorg/minidns/iterative/IterativeDnsClient;->getRootServer(CLorg/minidns/AbstractDnsClient$IpVersionSetting;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getRootServer(CLorg/minidns/AbstractDnsClient$IpVersionSetting;)Ljava/util/List;
    .locals 6
    .param p0, "rootServerId"    # C
    .param p1, "setting"    # Lorg/minidns/AbstractDnsClient$IpVersionSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Lorg/minidns/AbstractDnsClient$IpVersionSetting;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 373
    invoke-static {p0}, Lorg/minidns/constants/DnsRootServer;->getIpv4RootServerById(C)Ljava/net/Inet4Address;

    move-result-object v0

    .line 374
    .local v0, "ipv4Root":Ljava/net/Inet4Address;
    invoke-static {p0}, Lorg/minidns/constants/DnsRootServer;->getIpv6RootServerById(C)Ljava/net/Inet6Address;

    move-result-object v1

    .line 375
    .local v1, "ipv6Root":Ljava/net/Inet6Address;
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 376
    .local v2, "res":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    sget-object v4, Lorg/minidns/iterative/IterativeDnsClient$1;->$SwitchMap$org$minidns$AbstractDnsClient$IpVersionSetting:[I

    invoke-virtual {p1}, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    if-eq v4, v3, :cond_4

    const/4 v3, 0x3

    if-eq v4, v3, :cond_2

    const/4 v3, 0x4

    if-eq v4, v3, :cond_0

    goto :goto_0

    .line 396
    :cond_0
    if-eqz v1, :cond_1

    .line 397
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    :cond_1
    if-eqz v0, :cond_6

    .line 400
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 388
    :cond_2
    if-eqz v0, :cond_3

    .line 389
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    :cond_3
    if-eqz v1, :cond_6

    .line 392
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 383
    :cond_4
    if-eqz v1, :cond_6

    .line 384
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 378
    :cond_5
    if-eqz v0, :cond_6

    .line 379
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    :cond_6
    :goto_0
    return-object v2
.end method

.method private static getTargets(Ljava/util/Collection;Ljava/util/Collection;)[Ljava/net/InetAddress;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/minidns/record/InternetAddressRR;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Lorg/minidns/record/InternetAddressRR;",
            ">;)[",
            "Ljava/net/InetAddress;"
        }
    .end annotation

    .line 87
    .local p0, "primaryTargets":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/minidns/record/InternetAddressRR;>;"
    .local p1, "secondaryTargets":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/minidns/record/InternetAddressRR;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/net/InetAddress;

    .line 89
    .local v0, "res":[Ljava/net/InetAddress;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/minidns/record/InternetAddressRR;

    .line 90
    .local v2, "arr":Lorg/minidns/record/InternetAddressRR;
    aget-object v5, v0, v4

    if-nez v5, :cond_0

    .line 91
    invoke-virtual {v2}, Lorg/minidns/record/InternetAddressRR;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v5

    aput-object v5, v0, v4

    .line 93
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 94
    goto :goto_0

    .line 97
    :cond_0
    aget-object v1, v0, v3

    if-nez v1, :cond_1

    .line 98
    invoke-virtual {v2}, Lorg/minidns/record/InternetAddressRR;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    aput-object v1, v0, v3

    .line 103
    .end local v2    # "arr":Lorg/minidns/record/InternetAddressRR;
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/minidns/record/InternetAddressRR;

    .line 104
    .restart local v2    # "arr":Lorg/minidns/record/InternetAddressRR;
    aget-object v5, v0, v4

    if-nez v5, :cond_2

    .line 105
    invoke-virtual {v2}, Lorg/minidns/record/InternetAddressRR;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v5

    aput-object v5, v0, v4

    .line 106
    goto :goto_1

    .line 108
    :cond_2
    aget-object v1, v0, v3

    if-nez v1, :cond_3

    .line 109
    invoke-virtual {v2}, Lorg/minidns/record/InternetAddressRR;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    aput-object v1, v0, v3

    .line 114
    .end local v2    # "arr":Lorg/minidns/record/InternetAddressRR;
    :cond_3
    return-object v0
.end method

.method private static inetAddressFromRecord(Ljava/lang/String;Lorg/minidns/record/A;)Ljava/net/InetAddress;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "recordPayload"    # Lorg/minidns/record/A;

    .line 352
    :try_start_0
    invoke-virtual {p1}, Lorg/minidns/record/A;->getIp()[B

    move-result-object v0

    invoke-static {p0, v0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 353
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static inetAddressFromRecord(Ljava/lang/String;Lorg/minidns/record/AAAA;)Ljava/net/InetAddress;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "recordPayload"    # Lorg/minidns/record/AAAA;

    .line 361
    :try_start_0
    invoke-virtual {p1}, Lorg/minidns/record/AAAA;->getIp()[B

    move-result-object v0

    invoke-static {p0, v0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 362
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private newIpResultSetBuilder()Lorg/minidns/iterative/IterativeDnsClient$IpResultSet$Builder;
    .locals 3

    .line 420
    new-instance v0, Lorg/minidns/iterative/IterativeDnsClient$IpResultSet$Builder;

    iget-object v1, p0, Lorg/minidns/iterative/IterativeDnsClient;->insecureRandom:Ljava/util/Random;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/minidns/iterative/IterativeDnsClient$IpResultSet$Builder;-><init>(Ljava/util/Random;Lorg/minidns/iterative/IterativeDnsClient$1;)V

    return-object v0
.end method

.method private queryRecursive(Lorg/minidns/iterative/ResolutionState;Lorg/minidns/dnsmessage/DnsMessage;)Lorg/minidns/dnsqueryresult/DnsQueryResult;
    .locals 11
    .param p1, "resolutionState"    # Lorg/minidns/iterative/ResolutionState;
    .param p2, "q"    # Lorg/minidns/dnsmessage/DnsMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    const/4 v0, 0x0

    .local v0, "primaryTarget":Ljava/net/InetAddress;
    const/4 v1, 0x0

    .line 120
    .local v1, "secondaryTarget":Ljava/net/InetAddress;
    invoke-virtual {p2}, Lorg/minidns/dnsmessage/DnsMessage;->getQuestion()Lorg/minidns/dnsmessage/Question;

    move-result-object v2

    .line 121
    .local v2, "question":Lorg/minidns/dnsmessage/Question;
    iget-object v3, v2, Lorg/minidns/dnsmessage/Question;->name:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v3}, Lorg/minidns/dnsname/DnsName;->getParent()Lorg/minidns/dnsname/DnsName;

    move-result-object v3

    .line 123
    .local v3, "parent":Lorg/minidns/dnsname/DnsName;
    sget-object v4, Lorg/minidns/iterative/IterativeDnsClient$1;->$SwitchMap$org$minidns$AbstractDnsClient$IpVersionSetting:[I

    iget-object v5, p0, Lorg/minidns/iterative/IterativeDnsClient;->ipVersionSetting:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    invoke-virtual {v5}, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v4, v8, :cond_5

    if-eq v4, v7, :cond_2

    const/4 v9, 0x0

    if-eq v4, v6, :cond_1

    if-ne v4, v5, :cond_0

    .line 150
    invoke-virtual {p0, v3}, Lorg/minidns/iterative/IterativeDnsClient;->getCachedIPv6NameserverAddressesFor(Lorg/minidns/dnsname/DnsName;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {p0, v3}, Lorg/minidns/iterative/IterativeDnsClient;->getCachedIPv4NameserverAddressesFor(Lorg/minidns/dnsname/DnsName;)Ljava/util/Set;

    move-result-object v10

    invoke-static {v4, v10}, Lorg/minidns/iterative/IterativeDnsClient;->getTargets(Ljava/util/Collection;Ljava/util/Collection;)[Ljava/net/InetAddress;

    move-result-object v4

    .line 151
    .local v4, "v6v4targets":[Ljava/net/InetAddress;
    aget-object v0, v4, v9

    .line 152
    aget-object v1, v4, v8

    .line 153
    goto :goto_2

    .line 155
    .end local v4    # "v6v4targets":[Ljava/net/InetAddress;
    :cond_0
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 145
    :cond_1
    invoke-virtual {p0, v3}, Lorg/minidns/iterative/IterativeDnsClient;->getCachedIPv4NameserverAddressesFor(Lorg/minidns/dnsname/DnsName;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {p0, v3}, Lorg/minidns/iterative/IterativeDnsClient;->getCachedIPv6NameserverAddressesFor(Lorg/minidns/dnsname/DnsName;)Ljava/util/Set;

    move-result-object v10

    invoke-static {v4, v10}, Lorg/minidns/iterative/IterativeDnsClient;->getTargets(Ljava/util/Collection;Ljava/util/Collection;)[Ljava/net/InetAddress;

    move-result-object v4

    .line 146
    .local v4, "v4v6targets":[Ljava/net/InetAddress;
    aget-object v0, v4, v9

    .line 147
    aget-object v1, v4, v8

    .line 148
    goto :goto_2

    .line 135
    .end local v4    # "v4v6targets":[Ljava/net/InetAddress;
    :cond_2
    invoke-virtual {p0, v3}, Lorg/minidns/iterative/IterativeDnsClient;->getCachedIPv6NameserverAddressesFor(Lorg/minidns/dnsname/DnsName;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/minidns/record/AAAA;

    .line 136
    .local v9, "aaaa":Lorg/minidns/record/AAAA;
    if-nez v0, :cond_3

    .line 137
    invoke-virtual {v9}, Lorg/minidns/record/AAAA;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 138
    goto :goto_0

    .line 140
    :cond_3
    invoke-virtual {v9}, Lorg/minidns/record/AAAA;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 141
    nop

    .line 143
    .end local v9    # "aaaa":Lorg/minidns/record/AAAA;
    :cond_4
    goto :goto_2

    .line 125
    :cond_5
    invoke-virtual {p0, v3}, Lorg/minidns/iterative/IterativeDnsClient;->getCachedIPv4NameserverAddressesFor(Lorg/minidns/dnsname/DnsName;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/minidns/record/A;

    .line 126
    .local v9, "a":Lorg/minidns/record/A;
    if-nez v0, :cond_6

    .line 127
    invoke-virtual {v9}, Lorg/minidns/record/A;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 128
    goto :goto_1

    .line 130
    :cond_6
    invoke-virtual {v9}, Lorg/minidns/record/A;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 131
    nop

    .line 133
    .end local v9    # "a":Lorg/minidns/record/A;
    :cond_7
    nop

    .line 158
    :goto_2
    move-object v4, v3

    .line 159
    .local v4, "authoritativeZone":Lorg/minidns/dnsname/DnsName;
    if-nez v0, :cond_c

    .line 160
    sget-object v4, Lorg/minidns/dnsname/DnsName;->ROOT:Lorg/minidns/dnsname/DnsName;

    .line 161
    sget-object v9, Lorg/minidns/iterative/IterativeDnsClient$1;->$SwitchMap$org$minidns$AbstractDnsClient$IpVersionSetting:[I

    iget-object v10, p0, Lorg/minidns/iterative/IterativeDnsClient;->ipVersionSetting:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    invoke-virtual {v10}, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->ordinal()I

    move-result v10

    aget v9, v9, v10

    if-eq v9, v8, :cond_b

    if-eq v9, v7, :cond_a

    if-eq v9, v6, :cond_9

    if-eq v9, v5, :cond_8

    goto :goto_3

    .line 173
    :cond_8
    iget-object v5, p0, Lorg/minidns/iterative/IterativeDnsClient;->insecureRandom:Ljava/util/Random;

    invoke-static {v5}, Lorg/minidns/constants/DnsRootServer;->getRandomIpv6RootServer(Ljava/util/Random;)Ljava/net/Inet6Address;

    move-result-object v0

    .line 174
    iget-object v5, p0, Lorg/minidns/iterative/IterativeDnsClient;->insecureRandom:Ljava/util/Random;

    invoke-static {v5}, Lorg/minidns/constants/DnsRootServer;->getRandomIpv4RootServer(Ljava/util/Random;)Ljava/net/Inet4Address;

    move-result-object v1

    goto :goto_3

    .line 169
    :cond_9
    iget-object v5, p0, Lorg/minidns/iterative/IterativeDnsClient;->insecureRandom:Ljava/util/Random;

    invoke-static {v5}, Lorg/minidns/constants/DnsRootServer;->getRandomIpv4RootServer(Ljava/util/Random;)Ljava/net/Inet4Address;

    move-result-object v0

    .line 170
    iget-object v5, p0, Lorg/minidns/iterative/IterativeDnsClient;->insecureRandom:Ljava/util/Random;

    invoke-static {v5}, Lorg/minidns/constants/DnsRootServer;->getRandomIpv6RootServer(Ljava/util/Random;)Ljava/net/Inet6Address;

    move-result-object v1

    .line 171
    goto :goto_3

    .line 166
    :cond_a
    iget-object v5, p0, Lorg/minidns/iterative/IterativeDnsClient;->insecureRandom:Ljava/util/Random;

    invoke-static {v5}, Lorg/minidns/constants/DnsRootServer;->getRandomIpv6RootServer(Ljava/util/Random;)Ljava/net/Inet6Address;

    move-result-object v0

    .line 167
    goto :goto_3

    .line 163
    :cond_b
    iget-object v5, p0, Lorg/minidns/iterative/IterativeDnsClient;->insecureRandom:Ljava/util/Random;

    invoke-static {v5}, Lorg/minidns/constants/DnsRootServer;->getRandomIpv4RootServer(Ljava/util/Random;)Ljava/net/Inet4Address;

    move-result-object v0

    .line 179
    :cond_c
    :goto_3
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 182
    .local v5, "ioExceptions":Ljava/util/List;, "Ljava/util/List<Ljava/io/IOException;>;"
    :try_start_0
    invoke-direct {p0, p1, p2, v0, v4}, Lorg/minidns/iterative/IterativeDnsClient;->queryRecursive(Lorg/minidns/iterative/ResolutionState;Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/dnsqueryresult/DnsQueryResult;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 183
    :catch_0
    move-exception v6

    .line 184
    .local v6, "ioException":Ljava/io/IOException;
    invoke-static {v6}, Lorg/minidns/iterative/IterativeDnsClient;->abortIfFatal(Ljava/io/IOException;)V

    .line 185
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    .end local v6    # "ioException":Ljava/io/IOException;
    if-eqz v1, :cond_d

    .line 190
    :try_start_1
    invoke-direct {p0, p1, p2, v1, v4}, Lorg/minidns/iterative/IterativeDnsClient;->queryRecursive(Lorg/minidns/iterative/ResolutionState;Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/dnsqueryresult/DnsQueryResult;

    move-result-object v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v6

    .line 191
    :catch_1
    move-exception v6

    .line 192
    .restart local v6    # "ioException":Ljava/io/IOException;
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    .end local v6    # "ioException":Ljava/io/IOException;
    :cond_d
    invoke-static {v5}, Lorg/minidns/util/MultipleIoException;->throwIfRequired(Ljava/util/List;)V

    .line 197
    const/4 v6, 0x0

    return-object v6
.end method

.method private queryRecursive(Lorg/minidns/iterative/ResolutionState;Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/dnsqueryresult/DnsQueryResult;
    .locals 19
    .param p1, "resolutionState"    # Lorg/minidns/iterative/ResolutionState;
    .param p2, "q"    # Lorg/minidns/dnsmessage/DnsMessage;
    .param p3, "address"    # Ljava/net/InetAddress;
    .param p4, "authoritativeZone"    # Lorg/minidns/dnsname/DnsName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual {v2, v4, v3}, Lorg/minidns/iterative/ResolutionState;->recurse(Ljava/net/InetAddress;Lorg/minidns/dnsmessage/DnsMessage;)V

    .line 203
    invoke-virtual {v1, v3, v4}, Lorg/minidns/iterative/IterativeDnsClient;->query(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;)Lorg/minidns/dnsqueryresult/DnsQueryResult;

    move-result-object v6

    .line 205
    .local v6, "dnsQueryResult":Lorg/minidns/dnsqueryresult/DnsQueryResult;
    iget-object v7, v6, Lorg/minidns/dnsqueryresult/DnsQueryResult;->response:Lorg/minidns/dnsmessage/DnsMessage;

    .line 206
    .local v7, "resMessage":Lorg/minidns/dnsmessage/DnsMessage;
    iget-boolean v0, v7, Lorg/minidns/dnsmessage/DnsMessage;->authoritativeAnswer:Z

    if-eqz v0, :cond_0

    .line 207
    return-object v6

    .line 210
    :cond_0
    iget-object v0, v1, Lorg/minidns/iterative/IterativeDnsClient;->cache:Lorg/minidns/DnsCache;

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, v1, Lorg/minidns/iterative/IterativeDnsClient;->cache:Lorg/minidns/DnsCache;

    invoke-virtual {v0, v3, v6, v5}, Lorg/minidns/DnsCache;->offer(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsqueryresult/DnsQueryResult;Lorg/minidns/dnsname/DnsName;)V

    .line 214
    :cond_1
    invoke-virtual {v7}, Lorg/minidns/dnsmessage/DnsMessage;->copyAuthority()Ljava/util/List;

    move-result-object v8

    .line 216
    .local v8, "authorities":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object v9, v0

    .line 219
    .local v9, "ioExceptions":Ljava/util/List;, "Ljava/util/List<Ljava/io/IOException;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;"
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 220
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/minidns/record/Record;

    const-class v11, Lorg/minidns/record/NS;

    invoke-virtual {v0, v11}, Lorg/minidns/record/Record;->ifPossibleAs(Ljava/lang/Class;)Lorg/minidns/record/Record;

    move-result-object v11

    .line 221
    .local v11, "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<Lorg/minidns/record/NS;>;"
    if-nez v11, :cond_2

    .line 222
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    .line 223
    goto :goto_0

    .line 225
    :cond_2
    iget-object v0, v11, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    check-cast v0, Lorg/minidns/record/NS;

    iget-object v12, v0, Lorg/minidns/record/NS;->target:Lorg/minidns/dnsname/DnsName;

    .line 226
    .local v12, "name":Lorg/minidns/dnsname/DnsName;
    invoke-direct {v1, v7, v12}, Lorg/minidns/iterative/IterativeDnsClient;->searchAdditional(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/iterative/IterativeDnsClient$IpResultSet;

    move-result-object v13

    .line 227
    .local v13, "gluedNs":Lorg/minidns/iterative/IterativeDnsClient$IpResultSet;
    iget-object v0, v13, Lorg/minidns/iterative/IterativeDnsClient$IpResultSet;->addresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "addressIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 228
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Ljava/net/InetAddress;

    .line 229
    .local v15, "target":Ljava/net/InetAddress;
    const/16 v16, 0x0

    .line 231
    .local v16, "recursive":Lorg/minidns/dnsqueryresult/DnsQueryResult;
    :try_start_0
    iget-object v0, v11, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    invoke-direct {v1, v2, v3, v15, v0}, Lorg/minidns/iterative/IterativeDnsClient;->queryRecursive(Lorg/minidns/iterative/ResolutionState;Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/dnsqueryresult/DnsQueryResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v16    # "recursive":Lorg/minidns/dnsqueryresult/DnsQueryResult;
    .local v0, "recursive":Lorg/minidns/dnsqueryresult/DnsQueryResult;
    nop

    .line 242
    return-object v0

    .line 232
    .end local v0    # "recursive":Lorg/minidns/dnsqueryresult/DnsQueryResult;
    .restart local v16    # "recursive":Lorg/minidns/dnsqueryresult/DnsQueryResult;
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lorg/minidns/iterative/IterativeDnsClient;->abortIfFatal(Ljava/io/IOException;)V

    .line 234
    sget-object v4, Lorg/minidns/iterative/IterativeDnsClient;->LOGGER:Ljava/util/logging/Logger;

    move-object/from16 v17, v7

    .end local v7    # "resMessage":Lorg/minidns/dnsmessage/DnsMessage;
    .local v17, "resMessage":Lorg/minidns/dnsmessage/DnsMessage;
    sget-object v7, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    move-object/from16 v18, v11

    .end local v11    # "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<Lorg/minidns/record/NS;>;"
    .local v18, "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<Lorg/minidns/record/NS;>;"
    const-string v11, "Exception while recursing"

    invoke-virtual {v4, v7, v11, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    invoke-virtual/range {p1 .. p1}, Lorg/minidns/iterative/ResolutionState;->decrementSteps()V

    .line 236
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 238
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    .line 240
    :cond_3
    move-object/from16 v4, p3

    move-object/from16 v7, v17

    move-object/from16 v11, v18

    goto :goto_1

    .line 227
    .end local v0    # "e":Ljava/io/IOException;
    .end local v15    # "target":Ljava/net/InetAddress;
    .end local v16    # "recursive":Lorg/minidns/dnsqueryresult/DnsQueryResult;
    .end local v17    # "resMessage":Lorg/minidns/dnsmessage/DnsMessage;
    .end local v18    # "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<Lorg/minidns/record/NS;>;"
    .restart local v7    # "resMessage":Lorg/minidns/dnsmessage/DnsMessage;
    .restart local v11    # "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<Lorg/minidns/record/NS;>;"
    :cond_4
    move-object/from16 v17, v7

    move-object/from16 v18, v11

    .line 244
    .end local v7    # "resMessage":Lorg/minidns/dnsmessage/DnsMessage;
    .end local v11    # "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<Lorg/minidns/record/NS;>;"
    .end local v12    # "name":Lorg/minidns/dnsname/DnsName;
    .end local v13    # "gluedNs":Lorg/minidns/iterative/IterativeDnsClient$IpResultSet;
    .end local v14    # "addressIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .restart local v17    # "resMessage":Lorg/minidns/dnsmessage/DnsMessage;
    move-object/from16 v4, p3

    goto :goto_0

    .line 219
    .end local v17    # "resMessage":Lorg/minidns/dnsmessage/DnsMessage;
    .restart local v7    # "resMessage":Lorg/minidns/dnsmessage/DnsMessage;
    :cond_5
    move-object/from16 v17, v7

    .line 247
    .end local v7    # "resMessage":Lorg/minidns/dnsmessage/DnsMessage;
    .end local v10    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;"
    .restart local v17    # "resMessage":Lorg/minidns/dnsmessage/DnsMessage;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lorg/minidns/record/Record;

    .line 248
    .local v7, "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    invoke-virtual/range {p2 .. p2}, Lorg/minidns/dnsmessage/DnsMessage;->getQuestion()Lorg/minidns/dnsmessage/Question;

    move-result-object v10

    .line 249
    .local v10, "question":Lorg/minidns/dnsmessage/Question;
    iget-object v0, v7, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    check-cast v0, Lorg/minidns/record/NS;

    iget-object v11, v0, Lorg/minidns/record/NS;->target:Lorg/minidns/dnsname/DnsName;

    .line 253
    .local v11, "name":Lorg/minidns/dnsname/DnsName;
    iget-object v0, v10, Lorg/minidns/dnsmessage/Question;->name:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v0, v11}, Lorg/minidns/dnsname/DnsName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v10, Lorg/minidns/dnsmessage/Question;->type:Lorg/minidns/record/Record$TYPE;

    sget-object v12, Lorg/minidns/record/Record$TYPE;->A:Lorg/minidns/record/Record$TYPE;

    if-eq v0, v12, :cond_6

    iget-object v0, v10, Lorg/minidns/dnsmessage/Question;->type:Lorg/minidns/record/Record$TYPE;

    sget-object v12, Lorg/minidns/record/Record$TYPE;->AAAA:Lorg/minidns/record/Record$TYPE;

    if-ne v0, v12, :cond_7

    .line 254
    goto :goto_2

    .line 256
    :cond_7
    const/4 v12, 0x0

    .line 258
    .local v12, "res":Lorg/minidns/iterative/IterativeDnsClient$IpResultSet;
    :try_start_1
    invoke-direct {v1, v2, v11}, Lorg/minidns/iterative/IterativeDnsClient;->resolveIpRecursive(Lorg/minidns/iterative/ResolutionState;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/iterative/IterativeDnsClient$IpResultSet;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v12, v0

    .line 262
    goto :goto_3

    .line 259
    :catch_1
    move-exception v0

    move-object v13, v0

    move-object v0, v13

    .line 260
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual/range {p1 .. p1}, Lorg/minidns/iterative/ResolutionState;->decrementSteps()V

    .line 261
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    if-nez v12, :cond_8

    .line 264
    goto :goto_2

    .line 267
    :cond_8
    iget-object v0, v12, Lorg/minidns/iterative/IterativeDnsClient$IpResultSet;->addresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/net/InetAddress;

    .line 268
    .local v14, "target":Ljava/net/InetAddress;
    const/4 v15, 0x0

    .line 270
    .local v15, "recursive":Lorg/minidns/dnsqueryresult/DnsQueryResult;
    :try_start_2
    iget-object v0, v7, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    invoke-direct {v1, v2, v3, v14, v0}, Lorg/minidns/iterative/IterativeDnsClient;->queryRecursive(Lorg/minidns/iterative/ResolutionState;Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/dnsqueryresult/DnsQueryResult;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 275
    .end local v15    # "recursive":Lorg/minidns/dnsqueryresult/DnsQueryResult;
    .local v0, "recursive":Lorg/minidns/dnsqueryresult/DnsQueryResult;
    nop

    .line 276
    return-object v0

    .line 271
    .end local v0    # "recursive":Lorg/minidns/dnsqueryresult/DnsQueryResult;
    .restart local v15    # "recursive":Lorg/minidns/dnsqueryresult/DnsQueryResult;
    :catch_2
    move-exception v0

    .line 272
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual/range {p1 .. p1}, Lorg/minidns/iterative/ResolutionState;->decrementSteps()V

    .line 273
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    goto :goto_4

    .line 278
    .end local v0    # "e":Ljava/io/IOException;
    .end local v7    # "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    .end local v10    # "question":Lorg/minidns/dnsmessage/Question;
    .end local v11    # "name":Lorg/minidns/dnsname/DnsName;
    .end local v12    # "res":Lorg/minidns/iterative/IterativeDnsClient$IpResultSet;
    .end local v14    # "target":Ljava/net/InetAddress;
    .end local v15    # "recursive":Lorg/minidns/dnsqueryresult/DnsQueryResult;
    :cond_9
    goto :goto_2

    .line 280
    :cond_a
    invoke-static {v9}, Lorg/minidns/util/MultipleIoException;->throwIfRequired(Ljava/util/List;)V

    .line 284
    new-instance v0, Lorg/minidns/iterative/IterativeClientException$NotAuthoritativeNorGlueRrFound;

    invoke-direct {v0, v3, v6, v5}, Lorg/minidns/iterative/IterativeClientException$NotAuthoritativeNorGlueRrFound;-><init>(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsqueryresult/DnsQueryResult;Lorg/minidns/dnsname/DnsName;)V

    throw v0
.end method

.method private resolveIpRecursive(Lorg/minidns/iterative/ResolutionState;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/iterative/IterativeDnsClient$IpResultSet;
    .locals 10
    .param p1, "resolutionState"    # Lorg/minidns/iterative/ResolutionState;
    .param p2, "name"    # Lorg/minidns/dnsname/DnsName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    invoke-direct {p0}, Lorg/minidns/iterative/IterativeDnsClient;->newIpResultSetBuilder()Lorg/minidns/iterative/IterativeDnsClient$IpResultSet$Builder;

    move-result-object v0

    .line 290
    .local v0, "res":Lorg/minidns/iterative/IterativeDnsClient$IpResultSet$Builder;
    iget-object v1, p0, Lorg/minidns/iterative/IterativeDnsClient;->ipVersionSetting:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    iget-boolean v1, v1, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->v4:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 292
    new-instance v1, Lorg/minidns/dnsmessage/Question;

    sget-object v3, Lorg/minidns/record/Record$TYPE;->A:Lorg/minidns/record/Record$TYPE;

    invoke-direct {v1, p2, v3}, Lorg/minidns/dnsmessage/Question;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;)V

    .line 293
    .local v1, "question":Lorg/minidns/dnsmessage/Question;
    invoke-virtual {p0, v1}, Lorg/minidns/iterative/IterativeDnsClient;->getQueryFor(Lorg/minidns/dnsmessage/Question;)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object v3

    .line 294
    .local v3, "query":Lorg/minidns/dnsmessage/DnsMessage;
    invoke-direct {p0, p1, v3}, Lorg/minidns/iterative/IterativeDnsClient;->queryRecursive(Lorg/minidns/iterative/ResolutionState;Lorg/minidns/dnsmessage/DnsMessage;)Lorg/minidns/dnsqueryresult/DnsQueryResult;

    move-result-object v4

    .line 296
    .local v4, "aDnsQueryResult":Lorg/minidns/dnsqueryresult/DnsQueryResult;
    if-eqz v4, :cond_0

    iget-object v5, v4, Lorg/minidns/dnsqueryresult/DnsQueryResult;->response:Lorg/minidns/dnsmessage/DnsMessage;

    goto :goto_0

    :cond_0
    move-object v5, v2

    .line 297
    .local v5, "aMessage":Lorg/minidns/dnsmessage/DnsMessage;
    :goto_0
    if-eqz v5, :cond_3

    .line 298
    iget-object v6, v5, Lorg/minidns/dnsmessage/DnsMessage;->answerSection:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/minidns/record/Record;

    .line 299
    .local v7, "answer":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    invoke-virtual {v7, v1}, Lorg/minidns/record/Record;->isAnswer(Lorg/minidns/dnsmessage/Question;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 300
    iget-object v8, p2, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    iget-object v9, v7, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    check-cast v9, Lorg/minidns/record/A;

    invoke-static {v8, v9}, Lorg/minidns/iterative/IterativeDnsClient;->inetAddressFromRecord(Ljava/lang/String;Lorg/minidns/record/A;)Ljava/net/InetAddress;

    move-result-object v8

    .line 301
    .local v8, "inetAddress":Ljava/net/InetAddress;
    invoke-static {v0}, Lorg/minidns/iterative/IterativeDnsClient$IpResultSet$Builder;->access$000(Lorg/minidns/iterative/IterativeDnsClient$IpResultSet$Builder;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v8    # "inetAddress":Ljava/net/InetAddress;
    goto :goto_2

    .line 302
    :cond_1
    iget-object v8, v7, Lorg/minidns/record/Record;->type:Lorg/minidns/record/Record$TYPE;

    sget-object v9, Lorg/minidns/record/Record$TYPE;->CNAME:Lorg/minidns/record/Record$TYPE;

    if-ne v8, v9, :cond_2

    iget-object v8, v7, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v8, p2}, Lorg/minidns/dnsname/DnsName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 303
    iget-object v2, v7, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    check-cast v2, Lorg/minidns/record/RRWithTarget;

    iget-object v2, v2, Lorg/minidns/record/RRWithTarget;->target:Lorg/minidns/dnsname/DnsName;

    invoke-direct {p0, p1, v2}, Lorg/minidns/iterative/IterativeDnsClient;->resolveIpRecursive(Lorg/minidns/iterative/ResolutionState;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/iterative/IterativeDnsClient$IpResultSet;

    move-result-object v2

    return-object v2

    .line 302
    :cond_2
    :goto_2
    nop

    .line 305
    .end local v7    # "answer":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    goto :goto_1

    .line 309
    .end local v1    # "question":Lorg/minidns/dnsmessage/Question;
    .end local v3    # "query":Lorg/minidns/dnsmessage/DnsMessage;
    .end local v4    # "aDnsQueryResult":Lorg/minidns/dnsqueryresult/DnsQueryResult;
    .end local v5    # "aMessage":Lorg/minidns/dnsmessage/DnsMessage;
    :cond_3
    iget-object v1, p0, Lorg/minidns/iterative/IterativeDnsClient;->ipVersionSetting:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    iget-boolean v1, v1, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->v6:Z

    if-eqz v1, :cond_7

    .line 311
    new-instance v1, Lorg/minidns/dnsmessage/Question;

    sget-object v3, Lorg/minidns/record/Record$TYPE;->AAAA:Lorg/minidns/record/Record$TYPE;

    invoke-direct {v1, p2, v3}, Lorg/minidns/dnsmessage/Question;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;)V

    .line 312
    .restart local v1    # "question":Lorg/minidns/dnsmessage/Question;
    invoke-virtual {p0, v1}, Lorg/minidns/iterative/IterativeDnsClient;->getQueryFor(Lorg/minidns/dnsmessage/Question;)Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object v3

    .line 313
    .restart local v3    # "query":Lorg/minidns/dnsmessage/DnsMessage;
    invoke-direct {p0, p1, v3}, Lorg/minidns/iterative/IterativeDnsClient;->queryRecursive(Lorg/minidns/iterative/ResolutionState;Lorg/minidns/dnsmessage/DnsMessage;)Lorg/minidns/dnsqueryresult/DnsQueryResult;

    move-result-object v4

    .line 315
    .restart local v4    # "aDnsQueryResult":Lorg/minidns/dnsqueryresult/DnsQueryResult;
    if-eqz v4, :cond_4

    iget-object v2, v4, Lorg/minidns/dnsqueryresult/DnsQueryResult;->response:Lorg/minidns/dnsmessage/DnsMessage;

    .line 316
    .local v2, "aMessage":Lorg/minidns/dnsmessage/DnsMessage;
    :cond_4
    if-eqz v2, :cond_7

    .line 317
    iget-object v5, v2, Lorg/minidns/dnsmessage/DnsMessage;->answerSection:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/minidns/record/Record;

    .line 318
    .local v6, "answer":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    invoke-virtual {v6, v1}, Lorg/minidns/record/Record;->isAnswer(Lorg/minidns/dnsmessage/Question;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 319
    iget-object v7, p2, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    iget-object v8, v6, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    check-cast v8, Lorg/minidns/record/AAAA;

    invoke-static {v7, v8}, Lorg/minidns/iterative/IterativeDnsClient;->inetAddressFromRecord(Ljava/lang/String;Lorg/minidns/record/AAAA;)Ljava/net/InetAddress;

    move-result-object v7

    .line 320
    .local v7, "inetAddress":Ljava/net/InetAddress;
    invoke-static {v0}, Lorg/minidns/iterative/IterativeDnsClient$IpResultSet$Builder;->access$100(Lorg/minidns/iterative/IterativeDnsClient$IpResultSet$Builder;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v7    # "inetAddress":Ljava/net/InetAddress;
    goto :goto_4

    .line 321
    :cond_5
    iget-object v7, v6, Lorg/minidns/record/Record;->type:Lorg/minidns/record/Record$TYPE;

    sget-object v8, Lorg/minidns/record/Record$TYPE;->CNAME:Lorg/minidns/record/Record$TYPE;

    if-ne v7, v8, :cond_6

    iget-object v7, v6, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v7, p2}, Lorg/minidns/dnsname/DnsName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 322
    iget-object v5, v6, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    check-cast v5, Lorg/minidns/record/RRWithTarget;

    iget-object v5, v5, Lorg/minidns/record/RRWithTarget;->target:Lorg/minidns/dnsname/DnsName;

    invoke-direct {p0, p1, v5}, Lorg/minidns/iterative/IterativeDnsClient;->resolveIpRecursive(Lorg/minidns/iterative/ResolutionState;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/iterative/IterativeDnsClient$IpResultSet;

    move-result-object v5

    return-object v5

    .line 321
    :cond_6
    :goto_4
    nop

    .line 324
    .end local v6    # "answer":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    goto :goto_3

    .line 328
    .end local v1    # "question":Lorg/minidns/dnsmessage/Question;
    .end local v2    # "aMessage":Lorg/minidns/dnsmessage/DnsMessage;
    .end local v3    # "query":Lorg/minidns/dnsmessage/DnsMessage;
    .end local v4    # "aDnsQueryResult":Lorg/minidns/dnsqueryresult/DnsQueryResult;
    :cond_7
    invoke-virtual {v0}, Lorg/minidns/iterative/IterativeDnsClient$IpResultSet$Builder;->build()Lorg/minidns/iterative/IterativeDnsClient$IpResultSet;

    move-result-object v1

    return-object v1
.end method

.method private searchAdditional(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/iterative/IterativeDnsClient$IpResultSet;
    .locals 6
    .param p1, "message"    # Lorg/minidns/dnsmessage/DnsMessage;
    .param p2, "name"    # Lorg/minidns/dnsname/DnsName;

    .line 333
    invoke-direct {p0}, Lorg/minidns/iterative/IterativeDnsClient;->newIpResultSetBuilder()Lorg/minidns/iterative/IterativeDnsClient$IpResultSet$Builder;

    move-result-object v0

    .line 334
    .local v0, "res":Lorg/minidns/iterative/IterativeDnsClient$IpResultSet$Builder;
    iget-object v1, p1, Lorg/minidns/dnsmessage/DnsMessage;->additionalSection:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/minidns/record/Record;

    .line 335
    .local v2, "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    iget-object v3, v2, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v3, p2}, Lorg/minidns/dnsname/DnsName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 336
    goto :goto_0

    .line 338
    :cond_0
    sget-object v3, Lorg/minidns/iterative/IterativeDnsClient$1;->$SwitchMap$org$minidns$record$Record$TYPE:[I

    iget-object v4, v2, Lorg/minidns/record/Record;->type:Lorg/minidns/record/Record$TYPE;

    invoke-virtual {v4}, Lorg/minidns/record/Record$TYPE;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    goto :goto_1

    .line 343
    :cond_1
    invoke-static {v0}, Lorg/minidns/iterative/IterativeDnsClient$IpResultSet$Builder;->access$100(Lorg/minidns/iterative/IterativeDnsClient$IpResultSet$Builder;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p2, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    iget-object v5, v2, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    check-cast v5, Lorg/minidns/record/AAAA;

    invoke-static {v4, v5}, Lorg/minidns/iterative/IterativeDnsClient;->inetAddressFromRecord(Ljava/lang/String;Lorg/minidns/record/AAAA;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 340
    :cond_2
    invoke-static {v0}, Lorg/minidns/iterative/IterativeDnsClient$IpResultSet$Builder;->access$000(Lorg/minidns/iterative/IterativeDnsClient$IpResultSet$Builder;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p2, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    iget-object v5, v2, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    check-cast v5, Lorg/minidns/record/A;

    invoke-static {v4, v5}, Lorg/minidns/iterative/IterativeDnsClient;->inetAddressFromRecord(Ljava/lang/String;Lorg/minidns/record/A;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    nop

    .line 346
    .end local v2    # "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    :goto_1
    goto :goto_0

    .line 347
    :cond_3
    invoke-virtual {v0}, Lorg/minidns/iterative/IterativeDnsClient$IpResultSet$Builder;->build()Lorg/minidns/iterative/IterativeDnsClient$IpResultSet;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected isResponseCacheable(Lorg/minidns/dnsmessage/Question;Lorg/minidns/dnsqueryresult/DnsQueryResult;)Z
    .locals 1
    .param p1, "q"    # Lorg/minidns/dnsmessage/Question;
    .param p2, "result"    # Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 409
    iget-object v0, p2, Lorg/minidns/dnsqueryresult/DnsQueryResult;->response:Lorg/minidns/dnsmessage/DnsMessage;

    iget-boolean v0, v0, Lorg/minidns/dnsmessage/DnsMessage;->authoritativeAnswer:Z

    return v0
.end method

.method protected newQuestion(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/dnsmessage/DnsMessage$Builder;
    .locals 2
    .param p1, "message"    # Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 414
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->setRecursionDesired(Z)Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 415
    invoke-virtual {p1}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->getEdnsBuilder()Lorg/minidns/edns/Edns$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/minidns/iterative/IterativeDnsClient;->dataSource:Lorg/minidns/source/DnsDataSource;

    invoke-interface {v1}, Lorg/minidns/source/DnsDataSource;->getUdpPayloadSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/minidns/edns/Edns$Builder;->setUdpPayloadSize(I)Lorg/minidns/edns/Edns$Builder;

    .line 416
    return-object p1
.end method

.method protected query(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/dnsqueryresult/DnsQueryResult;
    .locals 3
    .param p1, "queryBuilder"    # Lorg/minidns/dnsmessage/DnsMessage$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-virtual {p1}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->build()Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object v0

    .line 80
    .local v0, "q":Lorg/minidns/dnsmessage/DnsMessage;
    new-instance v1, Lorg/minidns/iterative/ResolutionState;

    invoke-direct {v1, p0}, Lorg/minidns/iterative/ResolutionState;-><init>(Lorg/minidns/iterative/IterativeDnsClient;)V

    .line 81
    .local v1, "resolutionState":Lorg/minidns/iterative/ResolutionState;
    invoke-direct {p0, v1, v0}, Lorg/minidns/iterative/IterativeDnsClient;->queryRecursive(Lorg/minidns/iterative/ResolutionState;Lorg/minidns/dnsmessage/DnsMessage;)Lorg/minidns/dnsqueryresult/DnsQueryResult;

    move-result-object v2

    .line 82
    .local v2, "result":Lorg/minidns/dnsqueryresult/DnsQueryResult;
    return-object v2
.end method
