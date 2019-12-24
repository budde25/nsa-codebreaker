.class public Lorg/jivesoftware/smack/util/DNSUtil;
.super Ljava/lang/Object;
.source "DNSUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/util/DNSUtil$DomainType;
    }
.end annotation


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;

.field public static final XMPP_CLIENT_DNS_SRV_PREFIX:Ljava/lang/String; = "_xmpp-client._tcp"

.field public static final XMPP_SERVER_DNS_SRV_PREFIX:Ljava/lang/String; = "_xmpp-server._tcp"

.field private static daneProvider:Lorg/jivesoftware/smack/util/dns/SmackDaneProvider;

.field private static dnsResolver:Lorg/jivesoftware/smack/util/dns/DNSResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lorg/jivesoftware/smack/util/DNSUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/util/DNSUtil;->LOGGER:Ljava/util/logging/Logger;

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lorg/jivesoftware/smack/util/DNSUtil;->dnsResolver:Lorg/jivesoftware/smack/util/dns/DNSResolver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bisect([ID)I
    .locals 6
    .param p0, "array"    # [I
    .param p1, "value"    # D

    .line 262
    const/4 v0, 0x0

    .line 263
    .local v0, "pos":I
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p0, v2

    .line 264
    .local v3, "element":I
    int-to-double v4, v3

    cmpg-double v4, p1, v4

    if-gez v4, :cond_0

    .line 265
    goto :goto_1

    .line 266
    :cond_0
    nop

    .end local v3    # "element":I
    add-int/lit8 v0, v0, 0x1

    .line 263
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 268
    :cond_1
    :goto_1
    return v0
.end method

.method public static getDNSResolver()Lorg/jivesoftware/smack/util/dns/DNSResolver;
    .locals 1

    .line 66
    sget-object v0, Lorg/jivesoftware/smack/util/DNSUtil;->dnsResolver:Lorg/jivesoftware/smack/util/dns/DNSResolver;

    return-object v0
.end method

.method public static getDaneProvider()Lorg/jivesoftware/smack/util/dns/SmackDaneProvider;
    .locals 1

    .line 84
    sget-object v0, Lorg/jivesoftware/smack/util/DNSUtil;->daneProvider:Lorg/jivesoftware/smack/util/dns/SmackDaneProvider;

    return-object v0
.end method

.method private static resolveDomain(Lorg/minidns/dnsname/DnsName;Lorg/jivesoftware/smack/util/DNSUtil$DomainType;Ljava/util/List;Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;)Ljava/util/List;
    .locals 8
    .param p0, "domain"    # Lorg/minidns/dnsname/DnsName;
    .param p1, "domainType"    # Lorg/jivesoftware/smack/util/DNSUtil$DomainType;
    .param p3, "dnssecMode"    # Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsname/DnsName;",
            "Lorg/jivesoftware/smack/util/DNSUtil$DomainType;",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/util/dns/HostAddress;",
            ">;",
            "Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;",
            ")",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/util/dns/HostAddress;",
            ">;"
        }
    .end annotation

    .line 146
    .local p2, "failedAddresses":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/HostAddress;>;"
    sget-object v0, Lorg/jivesoftware/smack/util/DNSUtil;->dnsResolver:Lorg/jivesoftware/smack/util/dns/DNSResolver;

    if-eqz v0, :cond_6

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/HostAddress;>;"
    iget-object v1, p1, Lorg/jivesoftware/smack/util/DNSUtil$DomainType;->srvPrefix:Lorg/minidns/dnsname/DnsName;

    invoke-static {v1, p0}, Lorg/minidns/dnsname/DnsName;->from(Lorg/minidns/dnsname/DnsName;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/dnsname/DnsName;

    move-result-object v1

    .line 155
    .local v1, "srvDomain":Lorg/minidns/dnsname/DnsName;
    sget-object v2, Lorg/jivesoftware/smack/util/DNSUtil;->dnsResolver:Lorg/jivesoftware/smack/util/dns/DNSResolver;

    invoke-virtual {v2, v1, p2, p3}, Lorg/jivesoftware/smack/util/dns/DNSResolver;->lookupSRVRecords(Lorg/minidns/dnsname/DnsName;Ljava/util/List;Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;)Ljava/util/List;

    move-result-object v2

    .line 156
    .local v2, "srvRecords":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/SRVRecord;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 157
    sget-object v3, Lorg/jivesoftware/smack/util/DNSUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resolved SRV RR for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, "logMessage":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jivesoftware/smack/util/dns/SRVRecord;

    .line 160
    .local v5, "r":Lorg/jivesoftware/smack/util/dns/SRVRecord;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v5    # "r":Lorg/jivesoftware/smack/util/dns/SRVRecord;
    goto :goto_0

    .line 161
    :cond_0
    sget-object v4, Lorg/jivesoftware/smack/util/DNSUtil;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {v4, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 163
    .end local v3    # "logMessage":Ljava/lang/String;
    :cond_1
    invoke-static {v2}, Lorg/jivesoftware/smack/util/DNSUtil;->sortSRVRecords(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 164
    .local v3, "sortedRecords":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/HostAddress;>;"
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 165
    .end local v3    # "sortedRecords":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/HostAddress;>;"
    goto :goto_1

    .line 166
    :cond_2
    sget-object v3, Lorg/jivesoftware/smack/util/DNSUtil;->LOGGER:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not resolve DNS SRV resource records for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ". Consider adding those."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 169
    :goto_1
    const/4 v3, -0x1

    .line 170
    .local v3, "defaultPort":I
    sget-object v4, Lorg/jivesoftware/smack/util/DNSUtil$1;->$SwitchMap$org$jivesoftware$smack$util$DNSUtil$DomainType:[I

    invoke-virtual {p1}, Lorg/jivesoftware/smack/util/DNSUtil$DomainType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    goto :goto_2

    .line 175
    :cond_3
    const/16 v3, 0x1495

    goto :goto_2

    .line 172
    :cond_4
    const/16 v3, 0x1466

    .line 173
    nop

    .line 179
    :goto_2
    sget-object v4, Lorg/jivesoftware/smack/util/DNSUtil;->dnsResolver:Lorg/jivesoftware/smack/util/dns/DNSResolver;

    invoke-virtual {v4, p0, v3, p2, p3}, Lorg/jivesoftware/smack/util/dns/DNSResolver;->lookupHostAddress(Lorg/minidns/dnsname/DnsName;ILjava/util/List;Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;)Lorg/jivesoftware/smack/util/dns/HostAddress;

    move-result-object v4

    .line 180
    .local v4, "hostAddress":Lorg/jivesoftware/smack/util/dns/HostAddress;
    if-eqz v4, :cond_5

    .line 181
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_5
    return-object v0

    .line 147
    .end local v0    # "addresses":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/HostAddress;>;"
    .end local v1    # "srvDomain":Lorg/minidns/dnsname/DnsName;
    .end local v2    # "srvRecords":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/SRVRecord;>;"
    .end local v3    # "defaultPort":I
    .end local v4    # "hostAddress":Lorg/jivesoftware/smack/util/dns/HostAddress;
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No DNS Resolver active in Smack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static resolveXMPPServerDomain(Lorg/minidns/dnsname/DnsName;Ljava/util/List;Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;)Ljava/util/List;
    .locals 1
    .param p0, "domain"    # Lorg/minidns/dnsname/DnsName;
    .param p2, "dnssecMode"    # Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsname/DnsName;",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/util/dns/HostAddress;",
            ">;",
            "Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;",
            ")",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/util/dns/HostAddress;",
            ">;"
        }
    .end annotation

    .line 134
    .local p1, "failedAddresses":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/HostAddress;>;"
    sget-object v0, Lorg/jivesoftware/smack/util/DNSUtil$DomainType;->server:Lorg/jivesoftware/smack/util/DNSUtil$DomainType;

    invoke-static {p0, v0, p1, p2}, Lorg/jivesoftware/smack/util/DNSUtil;->resolveDomain(Lorg/minidns/dnsname/DnsName;Lorg/jivesoftware/smack/util/DNSUtil$DomainType;Ljava/util/List;Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static resolveXMPPServiceDomain(Lorg/minidns/dnsname/DnsName;Ljava/util/List;Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;)Ljava/util/List;
    .locals 1
    .param p0, "domain"    # Lorg/minidns/dnsname/DnsName;
    .param p2, "dnssecMode"    # Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsname/DnsName;",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/util/dns/HostAddress;",
            ">;",
            "Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;",
            ")",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/util/dns/HostAddress;",
            ">;"
        }
    .end annotation

    .line 115
    .local p1, "failedAddresses":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/HostAddress;>;"
    sget-object v0, Lorg/jivesoftware/smack/util/DNSUtil$DomainType;->client:Lorg/jivesoftware/smack/util/DNSUtil$DomainType;

    invoke-static {p0, v0, p1, p2}, Lorg/jivesoftware/smack/util/DNSUtil;->resolveDomain(Lorg/minidns/dnsname/DnsName;Lorg/jivesoftware/smack/util/DNSUtil$DomainType;Ljava/util/List;Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static setDNSResolver(Lorg/jivesoftware/smack/util/dns/DNSResolver;)V
    .locals 1
    .param p0, "resolver"    # Lorg/jivesoftware/smack/util/dns/DNSResolver;

    .line 57
    invoke-static {p0}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/util/dns/DNSResolver;

    sput-object v0, Lorg/jivesoftware/smack/util/DNSUtil;->dnsResolver:Lorg/jivesoftware/smack/util/dns/DNSResolver;

    .line 58
    return-void
.end method

.method public static setDaneProvider(Lorg/jivesoftware/smack/util/dns/SmackDaneProvider;)V
    .locals 1
    .param p0, "daneProvider"    # Lorg/jivesoftware/smack/util/dns/SmackDaneProvider;

    .line 75
    invoke-static {p0}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/util/dns/SmackDaneProvider;

    sput-object v0, Lorg/jivesoftware/smack/util/DNSUtil;->daneProvider:Lorg/jivesoftware/smack/util/dns/SmackDaneProvider;

    .line 76
    return-void
.end method

.method private static sortSRVRecords(Ljava/util/List;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/util/dns/SRVRecord;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/util/dns/HostAddress;",
            ">;"
        }
    .end annotation

    .line 198
    .local p0, "records":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/SRVRecord;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/util/dns/SRVRecord;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/dns/SRVRecord;->getFQDN()Lorg/minidns/dnsname/DnsName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/minidns/dnsname/DnsName;->isRootLabel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 202
    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 205
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 206
    .local v0, "buckets":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/util/List<Lorg/jivesoftware/smack/util/dns/SRVRecord;>;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/util/dns/SRVRecord;

    .line 207
    .local v2, "r":Lorg/jivesoftware/smack/util/dns/SRVRecord;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/util/dns/SRVRecord;->getPriority()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 208
    .local v3, "priority":Ljava/lang/Integer;
    invoke-interface {v0, v3}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 210
    .local v4, "bucket":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/SRVRecord;>;"
    if-nez v4, :cond_1

    .line 211
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    move-object v4, v5

    .line 212
    invoke-interface {v0, v3, v4}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_1
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    .end local v2    # "r":Lorg/jivesoftware/smack/util/dns/SRVRecord;
    .end local v3    # "priority":Ljava/lang/Integer;
    .end local v4    # "bucket":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/SRVRecord;>;"
    goto :goto_0

    .line 217
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 219
    .local v1, "res":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/HostAddress;>;"
    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 220
    .restart local v3    # "priority":Ljava/lang/Integer;
    invoke-interface {v0, v3}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 222
    .restart local v4    # "bucket":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/SRVRecord;>;"
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v6, v5

    .local v6, "bucketSize":I
    if-lez v5, :cond_7

    .line 223
    new-array v5, v6, [I

    .line 224
    .local v5, "totals":[I
    const/4 v7, 0x0

    .line 225
    .local v7, "running_total":I
    const/4 v8, 0x0

    .line 226
    .local v8, "count":I
    const/4 v9, 0x1

    .line 228
    .local v9, "zeroWeight":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/jivesoftware/smack/util/dns/SRVRecord;

    .line 229
    .local v11, "r":Lorg/jivesoftware/smack/util/dns/SRVRecord;
    invoke-virtual {v11}, Lorg/jivesoftware/smack/util/dns/SRVRecord;->getWeight()I

    move-result v12

    if-lez v12, :cond_3

    .line 230
    const/4 v9, 0x0

    .line 231
    goto :goto_4

    .line 233
    .end local v11    # "r":Lorg/jivesoftware/smack/util/dns/SRVRecord;
    :cond_3
    goto :goto_3

    .line 235
    :cond_4
    :goto_4
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/jivesoftware/smack/util/dns/SRVRecord;

    .line 236
    .restart local v11    # "r":Lorg/jivesoftware/smack/util/dns/SRVRecord;
    invoke-virtual {v11}, Lorg/jivesoftware/smack/util/dns/SRVRecord;->getWeight()I

    move-result v12

    add-int/2addr v12, v9

    add-int/2addr v7, v12

    .line 237
    aput v7, v5, v8

    .line 238
    nop

    .end local v11    # "r":Lorg/jivesoftware/smack/util/dns/SRVRecord;
    add-int/lit8 v8, v8, 0x1

    .line 239
    goto :goto_5

    .line 241
    :cond_5
    if-nez v7, :cond_6

    .line 245
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    int-to-double v12, v6

    mul-double/2addr v10, v12

    double-to-int v10, v10

    .local v10, "selectedPos":I
    goto :goto_6

    .line 247
    .end local v10    # "selectedPos":I
    :cond_6
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    int-to-double v12, v7

    mul-double/2addr v10, v12

    .line 248
    .local v10, "rnd":D
    invoke-static {v5, v10, v11}, Lorg/jivesoftware/smack/util/DNSUtil;->bisect([ID)I

    move-result v10

    .line 252
    .local v10, "selectedPos":I
    :goto_6
    invoke-interface {v4, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/jivesoftware/smack/util/dns/SRVRecord;

    .line 253
    .local v11, "chosenSRVRecord":Lorg/jivesoftware/smack/util/dns/SRVRecord;
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    .end local v5    # "totals":[I
    .end local v7    # "running_total":I
    .end local v8    # "count":I
    .end local v9    # "zeroWeight":I
    .end local v10    # "selectedPos":I
    .end local v11    # "chosenSRVRecord":Lorg/jivesoftware/smack/util/dns/SRVRecord;
    goto :goto_2

    .line 255
    .end local v3    # "priority":Ljava/lang/Integer;
    .end local v4    # "bucket":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/SRVRecord;>;"
    .end local v6    # "bucketSize":I
    :cond_7
    goto :goto_1

    .line 257
    :cond_8
    return-object v1
.end method
