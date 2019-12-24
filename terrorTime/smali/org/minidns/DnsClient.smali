.class public Lorg/minidns/DnsClient;
.super Lorg/minidns/AbstractDnsClient;
.source "DnsClient.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final LOOKUP_MECHANISMS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/minidns/dnsserverlookup/DnsServerLookupMechanism;",
            ">;"
        }
    .end annotation
.end field

.field static final STATIC_IPV4_DNS_SERVERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/Inet4Address;",
            ">;"
        }
    .end annotation
.end field

.field static final STATIC_IPV6_DNS_SERVERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/Inet6Address;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklistedDnsServers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private askForDnssec:Z

.field private disableResultFilter:Z

.field private final nonRaServers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private useHardcodedDnsServers:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 48
    nop

    .line 50
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lorg/minidns/DnsClient;->LOOKUP_MECHANISMS:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lorg/minidns/DnsClient;->STATIC_IPV4_DNS_SERVERS:Ljava/util/Set;

    .line 53
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lorg/minidns/DnsClient;->STATIC_IPV6_DNS_SERVERS:Ljava/util/Set;

    .line 56
    sget-object v0, Lorg/minidns/dnsserverlookup/AndroidUsingExec;->INSTANCE:Lorg/minidns/dnsserverlookup/DnsServerLookupMechanism;

    invoke-static {v0}, Lorg/minidns/DnsClient;->addDnsServerLookupMechanism(Lorg/minidns/dnsserverlookup/DnsServerLookupMechanism;)V

    .line 57
    sget-object v0, Lorg/minidns/dnsserverlookup/AndroidUsingReflection;->INSTANCE:Lorg/minidns/dnsserverlookup/DnsServerLookupMechanism;

    invoke-static {v0}, Lorg/minidns/DnsClient;->addDnsServerLookupMechanism(Lorg/minidns/dnsserverlookup/DnsServerLookupMechanism;)V

    .line 58
    sget-object v0, Lorg/minidns/dnsserverlookup/UnixUsingEtcResolvConf;->INSTANCE:Lorg/minidns/dnsserverlookup/DnsServerLookupMechanism;

    invoke-static {v0}, Lorg/minidns/DnsClient;->addDnsServerLookupMechanism(Lorg/minidns/dnsserverlookup/DnsServerLookupMechanism;)V

    .line 61
    :try_start_0
    const-string v0, "8.8.8.8"

    invoke-static {v0}, Lorg/minidns/util/InetAddressUtil;->ipv4From(Ljava/lang/CharSequence;)Ljava/net/Inet4Address;

    move-result-object v0

    .line 62
    .local v0, "googleV4Dns":Ljava/net/Inet4Address;
    sget-object v1, Lorg/minidns/DnsClient;->STATIC_IPV4_DNS_SERVERS:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    nop

    .end local v0    # "googleV4Dns":Ljava/net/Inet4Address;
    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lorg/minidns/DnsClient;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Could not add static IPv4 DNS Server"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    :try_start_1
    const-string v0, "[2001:4860:4860::8888]"

    invoke-static {v0}, Lorg/minidns/util/InetAddressUtil;->ipv6From(Ljava/lang/CharSequence;)Ljava/net/Inet6Address;

    move-result-object v0

    .line 69
    .local v0, "googleV6Dns":Ljava/net/Inet6Address;
    sget-object v1, Lorg/minidns/DnsClient;->STATIC_IPV6_DNS_SERVERS:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 72
    nop

    .end local v0    # "googleV6Dns":Ljava/net/Inet6Address;
    goto :goto_1

    .line 70
    :catch_1
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lorg/minidns/DnsClient;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Could not add static IPv6 DNS Server"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/minidns/DnsClient;->blacklistedDnsServers:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 88
    invoke-direct {p0}, Lorg/minidns/AbstractDnsClient;-><init>()V

    .line 77
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/DnsClient;->nonRaServers:Ljava/util/Set;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/minidns/DnsClient;->askForDnssec:Z

    .line 80
    iput-boolean v0, p0, Lorg/minidns/DnsClient;->disableResultFilter:Z

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/minidns/DnsClient;->useHardcodedDnsServers:Z

    .line 89
    return-void
.end method

.method public constructor <init>(Lorg/minidns/DnsCache;)V
    .locals 2
    .param p1, "dnsCache"    # Lorg/minidns/DnsCache;

    .line 92
    invoke-direct {p0, p1}, Lorg/minidns/AbstractDnsClient;-><init>(Lorg/minidns/DnsCache;)V

    .line 77
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/DnsClient;->nonRaServers:Ljava/util/Set;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/minidns/DnsClient;->askForDnssec:Z

    .line 80
    iput-boolean v0, p0, Lorg/minidns/DnsClient;->disableResultFilter:Z

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/minidns/DnsClient;->useHardcodedDnsServers:Z

    .line 93
    return-void
.end method

.method public static addBlacklistedDnsServer(Ljava/lang/String;)Z
    .locals 1
    .param p0, "dnsServer"    # Ljava/lang/String;

    .line 427
    sget-object v0, Lorg/minidns/DnsClient;->blacklistedDnsServers:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static addDnsServerLookupMechanism(Lorg/minidns/dnsserverlookup/DnsServerLookupMechanism;)V
    .locals 3
    .param p0, "dnsServerLookup"    # Lorg/minidns/dnsserverlookup/DnsServerLookupMechanism;

    .line 399
    invoke-interface {p0}, Lorg/minidns/dnsserverlookup/DnsServerLookupMechanism;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    sget-object v0, Lorg/minidns/DnsClient;->LOGGER:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not adding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/minidns/dnsserverlookup/DnsServerLookupMechanism;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " as it is not available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 401
    return-void

    .line 403
    :cond_0
    sget-object v0, Lorg/minidns/DnsClient;->LOOKUP_MECHANISMS:Ljava/util/List;

    monitor-enter v0

    .line 408
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lorg/minidns/DnsClient;->LOOKUP_MECHANISMS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 409
    .local v1, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/minidns/dnsserverlookup/DnsServerLookupMechanism;>;"
    sget-object v2, Lorg/minidns/DnsClient;->LOOKUP_MECHANISMS:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 410
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 415
    sget-object v2, Lorg/minidns/DnsClient;->LOOKUP_MECHANISMS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 416
    sget-object v2, Lorg/minidns/DnsClient;->LOOKUP_MECHANISMS:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 417
    nop

    .end local v1    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/minidns/dnsserverlookup/DnsServerLookupMechanism;>;"
    monitor-exit v0

    .line 418
    return-void

    .line 417
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static findDNS()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lorg/minidns/DnsClient;->LOOKUP_MECHANISMS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/minidns/dnsserverlookup/DnsServerLookupMechanism;

    .line 278
    .local v2, "mechanism":Lorg/minidns/dnsserverlookup/DnsServerLookupMechanism;
    invoke-interface {v2}, Lorg/minidns/dnsserverlookup/DnsServerLookupMechanism;->getDnsServerAddresses()Ljava/util/List;

    move-result-object v0

    .line 279
    if-nez v0, :cond_0

    .line 280
    goto :goto_0

    .line 283
    :cond_0
    nop

    .line 292
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 293
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "The DNS server lookup mechanism \'"

    if-eqz v4, :cond_3

    .line 294
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 295
    .local v4, "potentialDnsServer":Ljava/lang/String;
    invoke-static {v4}, Lorg/minidns/util/InetAddressUtil;->isIpAddress(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, "\'"

    if-nez v6, :cond_1

    .line 296
    sget-object v6, Lorg/minidns/DnsClient;->LOGGER:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lorg/minidns/dnsserverlookup/DnsServerLookupMechanism;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' returned an invalid non-IP address result: \'"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 298
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 299
    :cond_1
    sget-object v6, Lorg/minidns/DnsClient;->blacklistedDnsServers:Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 300
    sget-object v6, Lorg/minidns/DnsClient;->LOGGER:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lorg/minidns/dnsserverlookup/DnsServerLookupMechanism;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' returned a blacklisted result: \'"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 302
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 304
    .end local v4    # "potentialDnsServer":Ljava/lang/String;
    :cond_2
    :goto_2
    goto :goto_1

    .line 306
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 307
    goto :goto_3

    .line 309
    :cond_4
    sget-object v4, Lorg/minidns/DnsClient;->LOGGER:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lorg/minidns/dnsserverlookup/DnsServerLookupMechanism;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' returned not a single valid IP address after sanitazion"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 312
    .end local v2    # "mechanism":Lorg/minidns/dnsserverlookup/DnsServerLookupMechanism;
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    goto/16 :goto_0

    .line 314
    :cond_5
    :goto_3
    return-object v0
.end method

.method public static findDnsAddresses()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 330
    invoke-static {}, Lorg/minidns/DnsClient;->findDNS()Ljava/util/List;

    move-result-object v0

    .line 332
    .local v0, "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 333
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 336
    :cond_0
    sget-object v1, Lorg/minidns/DnsClient;->DEFAULT_IP_VERSION_SETTING:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    .line 338
    .local v1, "setting":Lorg/minidns/AbstractDnsClient$IpVersionSetting;
    const/4 v2, 0x0

    .line 339
    .local v2, "ipv4DnsServer":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet4Address;>;"
    const/4 v3, 0x0

    .line 340
    .local v3, "ipv6DnsServer":Ljava/util/List;, "Ljava/util/List<Ljava/net/Inet6Address;>;"
    iget-boolean v4, v1, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->v4:Z

    if-eqz v4, :cond_1

    .line 341
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v4

    .line 343
    :cond_1
    iget-boolean v4, v1, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->v6:Z

    if-eqz v4, :cond_2

    .line 344
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v4

    .line 347
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 351
    .local v5, "dnsServerString":Ljava/lang/String;
    nop

    .line 355
    :try_start_0
    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    .local v6, "dnsServerAddress":Ljava/net/InetAddress;
    nop

    .line 360
    instance-of v7, v6, Ljava/net/Inet4Address;

    if-eqz v7, :cond_4

    .line 361
    iget-boolean v7, v1, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->v4:Z

    if-nez v7, :cond_3

    .line 362
    goto :goto_0

    .line 364
    :cond_3
    move-object v7, v6

    check-cast v7, Ljava/net/Inet4Address;

    .line 365
    .local v7, "ipv4DnsServerAddress":Ljava/net/Inet4Address;
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    .end local v7    # "ipv4DnsServerAddress":Ljava/net/Inet4Address;
    goto :goto_1

    :cond_4
    instance-of v7, v6, Ljava/net/Inet6Address;

    if-eqz v7, :cond_6

    .line 367
    iget-boolean v7, v1, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->v6:Z

    if-nez v7, :cond_5

    .line 368
    goto :goto_0

    .line 370
    :cond_5
    move-object v7, v6

    check-cast v7, Ljava/net/Inet6Address;

    .line 371
    .local v7, "ipv6DnsServerAddress":Ljava/net/Inet6Address;
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    .end local v7    # "ipv6DnsServerAddress":Ljava/net/Inet6Address;
    nop

    .line 375
    .end local v5    # "dnsServerString":Ljava/lang/String;
    .end local v6    # "dnsServerAddress":Ljava/net/InetAddress;
    :goto_1
    goto :goto_0

    .line 373
    .restart local v5    # "dnsServerString":Ljava/lang/String;
    .restart local v6    # "dnsServerAddress":Ljava/net/InetAddress;
    :cond_6
    new-instance v4, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The address \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "\' is neither of type Inet(4|6)Address"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 356
    .end local v6    # "dnsServerAddress":Ljava/net/InetAddress;
    :catch_0
    move-exception v6

    .line 357
    .local v6, "e":Ljava/net/UnknownHostException;
    sget-object v7, Lorg/minidns/DnsClient;->LOGGER:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not transform \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\' to InetAddress"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 358
    goto :goto_0

    .line 377
    .end local v5    # "dnsServerString":Ljava/lang/String;
    .end local v6    # "e":Ljava/net/UnknownHostException;
    :cond_7
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 379
    .local v4, "dnsServers":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    sget-object v5, Lorg/minidns/DnsClient$3;->$SwitchMap$org$minidns$AbstractDnsClient$IpVersionSetting:[I

    invoke-virtual {v1}, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_b

    const/4 v6, 0x2

    if-eq v5, v6, :cond_a

    const/4 v6, 0x3

    if-eq v5, v6, :cond_9

    const/4 v6, 0x4

    if-eq v5, v6, :cond_8

    goto :goto_2

    .line 392
    :cond_8
    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 389
    :cond_9
    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 390
    goto :goto_2

    .line 385
    :cond_a
    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 386
    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 387
    goto :goto_2

    .line 381
    :cond_b
    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 382
    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 383
    nop

    .line 395
    :goto_2
    return-object v4
.end method

.method private getServerAddresses()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 103
    invoke-static {}, Lorg/minidns/DnsClient;->findDnsAddresses()Ljava/util/List;

    move-result-object v0

    .line 105
    .local v0, "dnsServerAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/net/InetAddress;

    .line 106
    .local v2, "selectedHardcodedDnsServerAddresses":[Ljava/net/InetAddress;
    iget-boolean v3, p0, Lorg/minidns/DnsClient;->useHardcodedDnsServers:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 107
    const/4 v3, 0x0

    .local v3, "primaryHardcodedDnsServer":Ljava/net/InetAddress;
    const/4 v5, 0x0

    .line 108
    .local v5, "secondaryHardcodedDnsServer":Ljava/net/InetAddress;
    sget-object v6, Lorg/minidns/DnsClient$3;->$SwitchMap$org$minidns$AbstractDnsClient$IpVersionSetting:[I

    iget-object v7, p0, Lorg/minidns/DnsClient;->ipVersionSetting:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    invoke-virtual {v7}, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    if-eq v6, v1, :cond_2

    const/4 v1, 0x3

    if-eq v6, v1, :cond_1

    const/4 v1, 0x4

    if-eq v6, v1, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p0}, Lorg/minidns/DnsClient;->getRandomHarcodedIpv6DnsServer()Ljava/net/InetAddress;

    move-result-object v3

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {p0}, Lorg/minidns/DnsClient;->getRandomHardcodedIpv4DnsServer()Ljava/net/InetAddress;

    move-result-object v3

    .line 119
    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {p0}, Lorg/minidns/DnsClient;->getRandomHarcodedIpv6DnsServer()Ljava/net/InetAddress;

    move-result-object v3

    .line 115
    invoke-virtual {p0}, Lorg/minidns/DnsClient;->getRandomHardcodedIpv4DnsServer()Ljava/net/InetAddress;

    move-result-object v5

    .line 116
    goto :goto_0

    .line 110
    :cond_3
    invoke-virtual {p0}, Lorg/minidns/DnsClient;->getRandomHardcodedIpv4DnsServer()Ljava/net/InetAddress;

    move-result-object v3

    .line 111
    invoke-virtual {p0}, Lorg/minidns/DnsClient;->getRandomHarcodedIpv6DnsServer()Ljava/net/InetAddress;

    move-result-object v5

    .line 112
    nop

    .line 124
    :goto_0
    aput-object v3, v2, v4

    .line 125
    aput-object v5, v2, v7

    .line 127
    .end local v3    # "primaryHardcodedDnsServer":Ljava/net/InetAddress;
    .end local v5    # "secondaryHardcodedDnsServer":Ljava/net/InetAddress;
    :cond_4
    array-length v1, v2

    :goto_1
    if-ge v4, v1, :cond_6

    aget-object v3, v2, v4

    .line 128
    .local v3, "selectedHardcodedDnsServerAddress":Ljava/net/InetAddress;
    if-nez v3, :cond_5

    goto :goto_2

    .line 129
    :cond_5
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    .end local v3    # "selectedHardcodedDnsServerAddress":Ljava/net/InetAddress;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 132
    :cond_6
    return-object v0
.end method

.method public static removeBlacklistedDnsServer(Ljava/lang/String;)Z
    .locals 1
    .param p0, "dnsServer"    # Ljava/lang/String;

    .line 431
    sget-object v0, Lorg/minidns/DnsClient;->blacklistedDnsServers:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static removeDNSServerLookupMechanism(Lorg/minidns/dnsserverlookup/DnsServerLookupMechanism;)Z
    .locals 2
    .param p0, "dnsServerLookup"    # Lorg/minidns/dnsserverlookup/DnsServerLookupMechanism;

    .line 421
    sget-object v0, Lorg/minidns/DnsClient;->LOOKUP_MECHANISMS:Ljava/util/List;

    monitor-enter v0

    .line 422
    :try_start_0
    sget-object v1, Lorg/minidns/DnsClient;->LOOKUP_MECHANISMS:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 423
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getRandomHarcodedIpv6DnsServer()Ljava/net/InetAddress;
    .locals 2

    .line 463
    sget-object v0, Lorg/minidns/DnsClient;->STATIC_IPV6_DNS_SERVERS:Ljava/util/Set;

    iget-object v1, p0, Lorg/minidns/DnsClient;->insecureRandom:Ljava/util/Random;

    invoke-static {v0, v1}, Lorg/minidns/util/CollectionsUtil;->getRandomFrom(Ljava/util/Set;Ljava/util/Random;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    return-object v0
.end method

.method public getRandomHardcodedIpv4DnsServer()Ljava/net/InetAddress;
    .locals 2

    .line 459
    sget-object v0, Lorg/minidns/DnsClient;->STATIC_IPV4_DNS_SERVERS:Ljava/util/Set;

    iget-object v1, p0, Lorg/minidns/DnsClient;->insecureRandom:Ljava/util/Random;

    invoke-static {v0, v1}, Lorg/minidns/util/CollectionsUtil;->getRandomFrom(Ljava/util/Set;Ljava/util/Random;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    return-object v0
.end method

.method public isAskForDnssec()Z
    .locals 1

    .line 435
    iget-boolean v0, p0, Lorg/minidns/DnsClient;->askForDnssec:Z

    return v0
.end method

.method public isDisableResultFilter()Z
    .locals 1

    .line 443
    iget-boolean v0, p0, Lorg/minidns/DnsClient;->disableResultFilter:Z

    return v0
.end method

.method public isUseHardcodedDnsServersEnabled()Z
    .locals 1

    .line 451
    iget-boolean v0, p0, Lorg/minidns/DnsClient;->useHardcodedDnsServers:Z

    return v0
.end method

.method protected newQuestion(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/dnsmessage/DnsMessage$Builder;
    .locals 2
    .param p1, "message"    # Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 97
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->setRecursionDesired(Z)Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 98
    invoke-virtual {p1}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->getEdnsBuilder()Lorg/minidns/edns/Edns$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/minidns/DnsClient;->dataSource:Lorg/minidns/source/DnsDataSource;

    invoke-interface {v1}, Lorg/minidns/source/DnsDataSource;->getUdpPayloadSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/minidns/edns/Edns$Builder;->setUdpPayloadSize(I)Lorg/minidns/edns/Edns$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/minidns/DnsClient;->askForDnssec:Z

    invoke-virtual {v0, v1}, Lorg/minidns/edns/Edns$Builder;->setDnssecOk(Z)Lorg/minidns/edns/Edns$Builder;

    .line 99
    return-object p1
.end method

.method public query(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/dnsqueryresult/DnsQueryResult;
    .locals 11
    .param p1, "queryBuilder"    # Lorg/minidns/dnsmessage/DnsMessage$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    invoke-virtual {p0, p1}, Lorg/minidns/DnsClient;->newQuestion(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/dnsmessage/DnsMessage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->build()Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object v0

    .line 143
    .local v0, "q":Lorg/minidns/dnsmessage/DnsMessage;
    iget-object v1, p0, Lorg/minidns/DnsClient;->cache:Lorg/minidns/DnsCache;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/minidns/DnsClient;->cache:Lorg/minidns/DnsCache;

    invoke-virtual {v1, v0}, Lorg/minidns/DnsCache;->get(Lorg/minidns/dnsmessage/DnsMessage;)Lorg/minidns/dnsqueryresult/CachedDnsQueryResult;

    move-result-object v1

    .line 144
    .local v1, "dnsQueryResult":Lorg/minidns/dnsqueryresult/DnsQueryResult;
    :goto_0
    if-eqz v1, :cond_1

    .line 145
    return-object v1

    .line 148
    :cond_1
    invoke-direct {p0}, Lorg/minidns/DnsClient;->getServerAddresses()Ljava/util/List;

    move-result-object v2

    .line 150
    .local v2, "dnsServerAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 151
    .local v3, "ioExceptions":Ljava/util/List;, "Ljava/util/List<Ljava/io/IOException;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 152
    .local v5, "dns":Ljava/net/InetAddress;
    iget-object v6, p0, Lorg/minidns/DnsClient;->nonRaServers:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 153
    sget-object v6, Lorg/minidns/DnsClient;->LOGGER:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " because it was marked as \"recursion not available\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 154
    goto :goto_1

    .line 158
    :cond_3
    :try_start_0
    invoke-virtual {p0, v0, v5}, Lorg/minidns/DnsClient;->query(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;)Lorg/minidns/dnsqueryresult/DnsQueryResult;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v6

    .line 162
    nop

    .line 164
    iget-object v6, v1, Lorg/minidns/dnsqueryresult/DnsQueryResult;->response:Lorg/minidns/dnsmessage/DnsMessage;

    .line 165
    .local v6, "responseMessage":Lorg/minidns/dnsmessage/DnsMessage;
    iget-boolean v7, v6, Lorg/minidns/dnsmessage/DnsMessage;->recursionAvailable:Z

    if-nez v7, :cond_4

    .line 166
    iget-object v7, p0, Lorg/minidns/DnsClient;->nonRaServers:Ljava/util/Set;

    invoke-interface {v7, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 167
    .local v7, "newRaServer":Z
    if-eqz v7, :cond_2

    .line 168
    sget-object v8, Lorg/minidns/DnsClient;->LOGGER:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The DNS server "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " returned a response without the \"recursion available\" (RA) flag set. This likely indicates a misconfiguration because the server is not suitable for DNS resolution"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1

    .line 174
    .end local v7    # "newRaServer":Z
    :cond_4
    iget-boolean v7, p0, Lorg/minidns/DnsClient;->disableResultFilter:Z

    if-eqz v7, :cond_5

    .line 175
    return-object v1

    .line 178
    :cond_5
    sget-object v7, Lorg/minidns/DnsClient$3;->$SwitchMap$org$minidns$dnsmessage$DnsMessage$RESPONSE_CODE:[I

    iget-object v8, v6, Lorg/minidns/dnsmessage/DnsMessage;->responseCode:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    invoke-virtual {v8}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/4 v8, 0x1

    if-eq v7, v8, :cond_7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_7

    .line 183
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Response from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " asked for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/minidns/dnsmessage/DnsMessage;->getQuestion()Lorg/minidns/dnsmessage/Question;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " with error code: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lorg/minidns/dnsmessage/DnsMessage;->responseCode:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 185
    .local v7, "warning":Ljava/lang/String;
    sget-object v8, Lorg/minidns/DnsClient;->LOGGER:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 188
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 190
    :cond_6
    sget-object v8, Lorg/minidns/DnsClient;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {v8, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 192
    new-instance v8, Lorg/minidns/MiniDnsException$ErrorResponseException;

    invoke-direct {v8, v0, v1}, Lorg/minidns/MiniDnsException$ErrorResponseException;-><init>(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsqueryresult/DnsQueryResult;)V

    .line 193
    .local v8, "exception":Lorg/minidns/MiniDnsException$ErrorResponseException;
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    goto/16 :goto_1

    .line 181
    .end local v7    # "warning":Ljava/lang/String;
    .end local v8    # "exception":Lorg/minidns/MiniDnsException$ErrorResponseException;
    :cond_7
    nop

    .line 197
    return-object v1

    .line 159
    .end local v6    # "responseMessage":Lorg/minidns/dnsmessage/DnsMessage;
    :catch_0
    move-exception v6

    .line 160
    .local v6, "ioe":Ljava/io/IOException;
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    goto/16 :goto_1

    .line 199
    .end local v5    # "dns":Ljava/net/InetAddress;
    .end local v6    # "ioe":Ljava/io/IOException;
    :cond_8
    invoke-static {v3}, Lorg/minidns/util/MultipleIoException;->throwIfRequired(Ljava/util/List;)V

    .line 202
    new-instance v4, Lorg/minidns/MiniDnsException$NoQueryPossibleException;

    invoke-direct {v4, v0}, Lorg/minidns/MiniDnsException$NoQueryPossibleException;-><init>(Lorg/minidns/dnsmessage/DnsMessage;)V

    throw v4
.end method

.method protected queryAsync(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/MiniDnsFuture;
    .locals 11
    .param p1, "queryBuilder"    # Lorg/minidns/dnsmessage/DnsMessage$Builder;
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

    .line 207
    invoke-virtual {p0, p1}, Lorg/minidns/DnsClient;->newQuestion(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/dnsmessage/DnsMessage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->build()Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object v0

    .line 213
    .local v0, "q":Lorg/minidns/dnsmessage/DnsMessage;
    iget-object v1, p0, Lorg/minidns/DnsClient;->cache:Lorg/minidns/DnsCache;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/minidns/DnsClient;->cache:Lorg/minidns/DnsCache;

    invoke-virtual {v1, v0}, Lorg/minidns/DnsCache;->get(Lorg/minidns/dnsmessage/DnsMessage;)Lorg/minidns/dnsqueryresult/CachedDnsQueryResult;

    move-result-object v1

    .line 214
    .local v1, "responseMessage":Lorg/minidns/dnsqueryresult/DnsQueryResult;
    :goto_0
    if-eqz v1, :cond_1

    .line 215
    invoke-static {v1}, Lorg/minidns/MiniDnsFuture;->from(Ljava/lang/Object;)Lorg/minidns/MiniDnsFuture;

    move-result-object v2

    return-object v2

    .line 218
    :cond_1
    invoke-direct {p0}, Lorg/minidns/DnsClient;->getServerAddresses()Ljava/util/List;

    move-result-object v2

    .line 220
    .local v2, "dnsServerAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    new-instance v3, Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture;

    invoke-direct {v3}, Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture;-><init>()V

    .line 221
    .local v3, "future":Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture;, "Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture<Lorg/minidns/dnsqueryresult/DnsQueryResult;Ljava/io/IOException;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 224
    .local v4, "exceptions":Ljava/util/List;, "Ljava/util/List<Ljava/io/IOException;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 225
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 226
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetAddress;

    .line 227
    .local v6, "dns":Ljava/net/InetAddress;
    iget-object v7, p0, Lorg/minidns/DnsClient;->nonRaServers:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 228
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 229
    sget-object v7, Lorg/minidns/DnsClient;->LOGGER:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " because it was marked as \"recursion not available\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 230
    goto :goto_1

    .line 232
    .end local v6    # "dns":Ljava/net/InetAddress;
    :cond_2
    goto :goto_1

    .line 234
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 236
    .local v6, "futures":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/MiniDnsFuture<Lorg/minidns/dnsqueryresult/DnsQueryResult;Ljava/io/IOException;>;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/InetAddress;

    .line 237
    .local v8, "dns":Ljava/net/InetAddress;
    invoke-virtual {v3}, Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture;->isDone()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 238
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/minidns/MiniDnsFuture;

    .line 239
    .local v9, "futureToCancel":Lorg/minidns/MiniDnsFuture;, "Lorg/minidns/MiniDnsFuture<Lorg/minidns/dnsqueryresult/DnsQueryResult;Ljava/io/IOException;>;"
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lorg/minidns/MiniDnsFuture;->cancel(Z)Z

    .line 240
    .end local v9    # "futureToCancel":Lorg/minidns/MiniDnsFuture;, "Lorg/minidns/MiniDnsFuture<Lorg/minidns/dnsqueryresult/DnsQueryResult;Ljava/io/IOException;>;"
    goto :goto_3

    .line 241
    :cond_4
    goto :goto_4

    .line 244
    :cond_5
    invoke-virtual {p0, v0, v8}, Lorg/minidns/DnsClient;->queryAsync(Lorg/minidns/dnsmessage/DnsMessage;Ljava/net/InetAddress;)Lorg/minidns/MiniDnsFuture;

    move-result-object v9

    .line 245
    .local v9, "f":Lorg/minidns/MiniDnsFuture;, "Lorg/minidns/MiniDnsFuture<Lorg/minidns/dnsqueryresult/DnsQueryResult;Ljava/io/IOException;>;"
    new-instance v10, Lorg/minidns/DnsClient$1;

    invoke-direct {v10, p0, v3}, Lorg/minidns/DnsClient$1;-><init>(Lorg/minidns/DnsClient;Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture;)V

    invoke-virtual {v9, v10}, Lorg/minidns/MiniDnsFuture;->onSuccess(Lorg/minidns/util/SuccessCallback;)Lorg/minidns/util/CallbackRecipient;

    .line 251
    new-instance v10, Lorg/minidns/DnsClient$2;

    invoke-direct {v10, p0, v4, v2, v3}, Lorg/minidns/DnsClient$2;-><init>(Lorg/minidns/DnsClient;Ljava/util/List;Ljava/util/List;Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture;)V

    invoke-virtual {v9, v10}, Lorg/minidns/MiniDnsFuture;->onError(Lorg/minidns/util/ExceptionCallback;)Lorg/minidns/util/CallbackRecipient;

    .line 260
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    .end local v8    # "dns":Ljava/net/InetAddress;
    .end local v9    # "f":Lorg/minidns/MiniDnsFuture;, "Lorg/minidns/MiniDnsFuture<Lorg/minidns/dnsqueryresult/DnsQueryResult;Ljava/io/IOException;>;"
    goto :goto_2

    .line 263
    :cond_6
    :goto_4
    return-object v3
.end method

.method public setAskForDnssec(Z)V
    .locals 0
    .param p1, "askForDnssec"    # Z

    .line 439
    iput-boolean p1, p0, Lorg/minidns/DnsClient;->askForDnssec:Z

    .line 440
    return-void
.end method

.method public setDisableResultFilter(Z)V
    .locals 0
    .param p1, "disableResultFilter"    # Z

    .line 447
    iput-boolean p1, p0, Lorg/minidns/DnsClient;->disableResultFilter:Z

    .line 448
    return-void
.end method

.method public setUseHardcodedDnsServers(Z)V
    .locals 0
    .param p1, "useHardcodedDnsServers"    # Z

    .line 455
    iput-boolean p1, p0, Lorg/minidns/DnsClient;->useHardcodedDnsServers:Z

    .line 456
    return-void
.end method
