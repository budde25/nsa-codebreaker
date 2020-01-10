.class public Lorg/jivesoftware/smack/util/dns/minidns/MiniDnsResolver;
.super Lorg/jivesoftware/smack/util/dns/DNSResolver;
.source "MiniDnsResolver.java"

# interfaces
.implements Lorg/jivesoftware/smack/initializer/SmackInitializer;


# static fields
.field private static final DNSSEC_RESOLVER:Lorg/minidns/hla/ResolverApi;

.field private static final INSTANCE:Lorg/jivesoftware/smack/util/dns/minidns/MiniDnsResolver;

.field private static final NON_DNSSEC_RESOLVER:Lorg/minidns/hla/ResolverApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lorg/jivesoftware/smack/util/dns/minidns/MiniDnsResolver;

    invoke-direct {v0}, Lorg/jivesoftware/smack/util/dns/minidns/MiniDnsResolver;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/util/dns/minidns/MiniDnsResolver;->INSTANCE:Lorg/jivesoftware/smack/util/dns/minidns/MiniDnsResolver;

    .line 56
    sget-object v0, Lorg/minidns/hla/DnssecResolverApi;->INSTANCE:Lorg/minidns/hla/DnssecResolverApi;

    sput-object v0, Lorg/jivesoftware/smack/util/dns/minidns/MiniDnsResolver;->DNSSEC_RESOLVER:Lorg/minidns/hla/ResolverApi;

    .line 58
    sget-object v0, Lorg/minidns/hla/ResolverApi;->INSTANCE:Lorg/minidns/hla/ResolverApi;

    sput-object v0, Lorg/jivesoftware/smack/util/dns/minidns/MiniDnsResolver;->NON_DNSSEC_RESOLVER:Lorg/minidns/hla/ResolverApi;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 65
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/util/dns/DNSResolver;-><init>(Z)V

    .line 66
    return-void
.end method

.method private static getExceptionFrom(Lorg/minidns/hla/ResolverResult;)Lorg/minidns/hla/ResolutionUnsuccessfulException;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/hla/ResolverResult<",
            "*>;)",
            "Lorg/minidns/hla/ResolutionUnsuccessfulException;"
        }
    .end annotation

    .line 218
    .local p0, "result":Lorg/minidns/hla/ResolverResult;, "Lorg/minidns/hla/ResolverResult<*>;"
    invoke-virtual {p0}, Lorg/minidns/hla/ResolverResult;->getQuestion()Lorg/minidns/dnsmessage/Question;

    move-result-object v0

    .line 219
    .local v0, "question":Lorg/minidns/dnsmessage/Question;
    invoke-virtual {p0}, Lorg/minidns/hla/ResolverResult;->getResponseCode()Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    move-result-object v1

    .line 220
    .local v1, "responseCode":Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;
    new-instance v2, Lorg/minidns/hla/ResolutionUnsuccessfulException;

    invoke-direct {v2, v0, v1}, Lorg/minidns/hla/ResolutionUnsuccessfulException;-><init>(Lorg/minidns/dnsmessage/Question;Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;)V

    .line 221
    .local v2, "resolutionUnsuccessfulException":Lorg/minidns/hla/ResolutionUnsuccessfulException;
    return-object v2
.end method

.method public static getInstance()Lorg/jivesoftware/smack/util/dns/DNSResolver;
    .locals 1

    .line 61
    sget-object v0, Lorg/jivesoftware/smack/util/dns/minidns/MiniDnsResolver;->INSTANCE:Lorg/jivesoftware/smack/util/dns/minidns/MiniDnsResolver;

    return-object v0
.end method

.method private static getResolver(Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;)Lorg/minidns/hla/ResolverApi;
    .locals 1
    .param p0, "dnssecMode"    # Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;

    .line 189
    sget-object v0, Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;->disabled:Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;

    if-ne p0, v0, :cond_0

    .line 190
    sget-object v0, Lorg/jivesoftware/smack/util/dns/minidns/MiniDnsResolver;->NON_DNSSEC_RESOLVER:Lorg/minidns/hla/ResolverApi;

    return-object v0

    .line 192
    :cond_0
    sget-object v0, Lorg/jivesoftware/smack/util/dns/minidns/MiniDnsResolver;->DNSSEC_RESOLVER:Lorg/minidns/hla/ResolverApi;

    return-object v0
.end method

.method public static setup()V
    .locals 1

    .line 178
    invoke-static {}, Lorg/jivesoftware/smack/util/dns/minidns/MiniDnsResolver;->getInstance()Lorg/jivesoftware/smack/util/dns/DNSResolver;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/DNSUtil;->setDNSResolver(Lorg/jivesoftware/smack/util/dns/DNSResolver;)V

    .line 179
    return-void
.end method

.method private static shouldAbortIfNotAuthentic(Lorg/minidns/dnsname/DnsName;Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;Lorg/minidns/hla/ResolverResult;Ljava/util/List;)Z
    .locals 4
    .param p0, "name"    # Lorg/minidns/dnsname/DnsName;
    .param p1, "dnssecMode"    # Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsname/DnsName;",
            "Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;",
            "Lorg/minidns/hla/ResolverResult<",
            "*>;",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/util/dns/HostAddress;",
            ">;)Z"
        }
    .end annotation

    .line 198
    .local p2, "result":Lorg/minidns/hla/ResolverResult;, "Lorg/minidns/hla/ResolverResult<*>;"
    .local p3, "failedAddresses":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/HostAddress;>;"
    sget-object v0, Lorg/jivesoftware/smack/util/dns/minidns/MiniDnsResolver$1;->$SwitchMap$org$jivesoftware$smack$ConnectionConfiguration$DnssecMode:[I

    invoke-virtual {p1}, Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 210
    goto :goto_0

    .line 212
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown DnssecMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_1
    invoke-virtual {p2}, Lorg/minidns/hla/ResolverResult;->isAuthenticData()Z

    move-result v0

    if-nez v0, :cond_2

    .line 204
    new-instance v0, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DNSSEC verification failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/minidns/hla/ResolverResult;->getUnverifiedReasons()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/minidns/dnssec/UnverifiedReason;

    invoke-virtual {v3}, Lorg/minidns/dnssec/UnverifiedReason;->getReasonString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, "exception":Ljava/lang/Exception;
    new-instance v2, Lorg/jivesoftware/smack/util/dns/HostAddress;

    invoke-direct {v2, p0, v0}, Lorg/jivesoftware/smack/util/dns/HostAddress;-><init>(Lorg/minidns/dnsname/DnsName;Ljava/lang/Exception;)V

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    return v1

    .line 214
    .end local v0    # "exception":Ljava/lang/Exception;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public initialize()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    .line 183
    invoke-static {}, Lorg/jivesoftware/smack/util/dns/minidns/MiniDnsResolver;->setup()V

    .line 184
    invoke-static {}, Lorg/jivesoftware/smack/util/dns/minidns/MiniDnsDane;->setup()V

    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method protected lookupHostAddress0(Lorg/minidns/dnsname/DnsName;Ljava/util/List;Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;)Ljava/util/List;
    .locals 10
    .param p1, "name"    # Lorg/minidns/dnsname/DnsName;
    .param p3, "dnssecMode"    # Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;
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
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 107
    .local p2, "failedAddresses":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/HostAddress;>;"
    invoke-static {p3}, Lorg/jivesoftware/smack/util/dns/minidns/MiniDnsResolver;->getResolver(Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;)Lorg/minidns/hla/ResolverApi;

    move-result-object v0

    .line 113
    .local v0, "resolver":Lorg/minidns/hla/ResolverApi;
    const/4 v1, 0x0

    :try_start_0
    const-class v2, Lorg/minidns/record/A;

    invoke-virtual {v0, p1, v2}, Lorg/minidns/hla/ResolverApi;->resolve(Lorg/minidns/dnsname/DnsName;Ljava/lang/Class;)Lorg/minidns/hla/ResolverResult;

    move-result-object v2

    .line 114
    .local v2, "aResult":Lorg/minidns/hla/ResolverResult;, "Lorg/minidns/hla/ResolverResult<Lorg/minidns/record/A;>;"
    const-class v3, Lorg/minidns/record/AAAA;

    invoke-virtual {v0, p1, v3}, Lorg/minidns/hla/ResolverApi;->resolve(Lorg/minidns/dnsname/DnsName;Ljava/lang/Class;)Lorg/minidns/hla/ResolverResult;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 118
    .local v3, "aaaaResult":Lorg/minidns/hla/ResolverResult;, "Lorg/minidns/hla/ResolverResult<Lorg/minidns/record/AAAA;>;"
    nop

    .line 120
    invoke-virtual {v2}, Lorg/minidns/hla/ResolverResult;->wasSuccessful()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lorg/minidns/hla/ResolverResult;->wasSuccessful()Z

    move-result v4

    if-nez v4, :cond_0

    .line 122
    new-instance v4, Lorg/jivesoftware/smack/util/dns/HostAddress;

    invoke-static {v2}, Lorg/jivesoftware/smack/util/dns/minidns/MiniDnsResolver;->getExceptionFrom(Lorg/minidns/hla/ResolverResult;)Lorg/minidns/hla/ResolutionUnsuccessfulException;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lorg/jivesoftware/smack/util/dns/HostAddress;-><init>(Lorg/minidns/dnsname/DnsName;Ljava/lang/Exception;)V

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v4, Lorg/jivesoftware/smack/util/dns/HostAddress;

    invoke-static {v3}, Lorg/jivesoftware/smack/util/dns/minidns/MiniDnsResolver;->getExceptionFrom(Lorg/minidns/hla/ResolverResult;)Lorg/minidns/hla/ResolutionUnsuccessfulException;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lorg/jivesoftware/smack/util/dns/HostAddress;-><init>(Lorg/minidns/dnsname/DnsName;Ljava/lang/Exception;)V

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    return-object v1

    .line 127
    :cond_0
    invoke-static {p1, p3, v2, p2}, Lorg/jivesoftware/smack/util/dns/minidns/MiniDnsResolver;->shouldAbortIfNotAuthentic(Lorg/minidns/dnsname/DnsName;Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;Lorg/minidns/hla/ResolverResult;Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 128
    invoke-static {p1, p3, v3, p2}, Lorg/jivesoftware/smack/util/dns/minidns/MiniDnsResolver;->shouldAbortIfNotAuthentic(Lorg/minidns/dnsname/DnsName;Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;Lorg/minidns/hla/ResolverResult;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_4

    .line 134
    :cond_1
    invoke-virtual {v2}, Lorg/minidns/hla/ResolverResult;->wasSuccessful()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    invoke-virtual {v2}, Lorg/minidns/hla/ResolverResult;->getAnswers()Ljava/util/Set;

    move-result-object v1

    .local v1, "aResults":Ljava/util/Set;, "Ljava/util/Set<Lorg/minidns/record/A;>;"
    goto :goto_0

    .line 138
    .end local v1    # "aResults":Ljava/util/Set;, "Ljava/util/Set<Lorg/minidns/record/A;>;"
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 143
    .restart local v1    # "aResults":Ljava/util/Set;, "Ljava/util/Set<Lorg/minidns/record/A;>;"
    :goto_0
    invoke-virtual {v3}, Lorg/minidns/hla/ResolverResult;->wasSuccessful()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 144
    invoke-virtual {v3}, Lorg/minidns/hla/ResolverResult;->getAnswers()Ljava/util/Set;

    move-result-object v4

    .local v4, "aaaaResults":Ljava/util/Set;, "Ljava/util/Set<Lorg/minidns/record/AAAA;>;"
    goto :goto_1

    .line 147
    .end local v4    # "aaaaResults":Ljava/util/Set;, "Ljava/util/Set<Lorg/minidns/record/AAAA;>;"
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    .line 150
    .restart local v4    # "aaaaResults":Ljava/util/Set;, "Ljava/util/Set<Lorg/minidns/record/AAAA;>;"
    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v6

    .line 151
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 153
    .local v5, "inetAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/minidns/record/A;

    .line 156
    .local v7, "a":Lorg/minidns/record/A;
    :try_start_1
    invoke-virtual {v7}, Lorg/minidns/record/A;->getIp()[B

    move-result-object v8

    invoke-static {v8}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v8
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    .line 160
    .local v8, "inetAddress":Ljava/net/InetAddress;
    nop

    .line 161
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    .end local v7    # "a":Lorg/minidns/record/A;
    .end local v8    # "inetAddress":Ljava/net/InetAddress;
    goto :goto_2

    .line 158
    .restart local v7    # "a":Lorg/minidns/record/A;
    :catch_0
    move-exception v8

    .line 159
    .local v8, "e":Ljava/net/UnknownHostException;
    goto :goto_2

    .line 163
    .end local v7    # "a":Lorg/minidns/record/A;
    .end local v8    # "e":Ljava/net/UnknownHostException;
    :cond_4
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/minidns/record/AAAA;

    .line 166
    .local v7, "aaaa":Lorg/minidns/record/AAAA;
    :try_start_2
    iget-object v8, p1, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    invoke-virtual {v7}, Lorg/minidns/record/AAAA;->getIp()[B

    move-result-object v9

    invoke-static {v8, v9}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v8
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1

    .line 170
    .local v8, "inetAddress":Ljava/net/InetAddress;
    nop

    .line 171
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    .end local v7    # "aaaa":Lorg/minidns/record/AAAA;
    .end local v8    # "inetAddress":Ljava/net/InetAddress;
    goto :goto_3

    .line 168
    .restart local v7    # "aaaa":Lorg/minidns/record/AAAA;
    :catch_1
    move-exception v8

    .line 169
    .local v8, "e":Ljava/net/UnknownHostException;
    goto :goto_3

    .line 174
    .end local v7    # "aaaa":Lorg/minidns/record/AAAA;
    .end local v8    # "e":Ljava/net/UnknownHostException;
    :cond_5
    return-object v5

    .line 129
    .end local v1    # "aResults":Ljava/util/Set;, "Ljava/util/Set<Lorg/minidns/record/A;>;"
    .end local v4    # "aaaaResults":Ljava/util/Set;, "Ljava/util/Set<Lorg/minidns/record/AAAA;>;"
    .end local v5    # "inetAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    :cond_6
    :goto_4
    return-object v1

    .line 115
    .end local v2    # "aResult":Lorg/minidns/hla/ResolverResult;, "Lorg/minidns/hla/ResolverResult<Lorg/minidns/record/A;>;"
    .end local v3    # "aaaaResult":Lorg/minidns/hla/ResolverResult;, "Lorg/minidns/hla/ResolverResult<Lorg/minidns/record/AAAA;>;"
    :catch_2
    move-exception v2

    .line 116
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lorg/jivesoftware/smack/util/dns/HostAddress;

    invoke-direct {v3, p1, v2}, Lorg/jivesoftware/smack/util/dns/HostAddress;-><init>(Lorg/minidns/dnsname/DnsName;Ljava/lang/Exception;)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    return-object v1
.end method

.method protected lookupSRVRecords0(Lorg/minidns/dnsname/DnsName;Ljava/util/List;Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;)Ljava/util/List;
    .locals 19
    .param p1, "name"    # Lorg/minidns/dnsname/DnsName;
    .param p3, "dnssecMode"    # Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;
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
            "Lorg/jivesoftware/smack/util/dns/SRVRecord;",
            ">;"
        }
    .end annotation

    .line 70
    .local p2, "failedAddresses":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/HostAddress;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-static/range {p3 .. p3}, Lorg/jivesoftware/smack/util/dns/minidns/MiniDnsResolver;->getResolver(Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;)Lorg/minidns/hla/ResolverApi;

    move-result-object v5

    .line 74
    .local v5, "resolver":Lorg/minidns/hla/ResolverApi;
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v5, v2}, Lorg/minidns/hla/ResolverApi;->resolveSrv(Lorg/minidns/dnsname/DnsName;)Lorg/minidns/hla/SrvResolverResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .local v0, "result":Lorg/minidns/hla/SrvResolverResult;
    nop

    .line 80
    invoke-virtual {v0}, Lorg/minidns/hla/SrvResolverResult;->getResolutionUnsuccessfulException()Lorg/minidns/hla/ResolutionUnsuccessfulException;

    move-result-object v7

    .line 81
    .local v7, "resolutionUnsuccessfulException":Lorg/minidns/hla/ResolutionUnsuccessfulException;
    if-eqz v7, :cond_0

    .line 82
    new-instance v8, Lorg/jivesoftware/smack/util/dns/HostAddress;

    invoke-direct {v8, v2, v7}, Lorg/jivesoftware/smack/util/dns/HostAddress;-><init>(Lorg/minidns/dnsname/DnsName;Ljava/lang/Exception;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    return-object v6

    .line 86
    :cond_0
    invoke-static {v2, v4, v0, v3}, Lorg/jivesoftware/smack/util/dns/minidns/MiniDnsResolver;->shouldAbortIfNotAuthentic(Lorg/minidns/dnsname/DnsName;Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;Lorg/minidns/hla/ResolverResult;Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 87
    return-object v6

    .line 90
    :cond_1
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 91
    .local v6, "res":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/SRVRecord;>;"
    invoke-virtual {v0}, Lorg/minidns/hla/SrvResolverResult;->getAnswers()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/minidns/record/SRV;

    .line 92
    .local v9, "srv":Lorg/minidns/record/SRV;
    iget-object v15, v9, Lorg/minidns/record/SRV;->target:Lorg/minidns/dnsname/DnsName;

    .line 93
    .local v15, "hostname":Lorg/minidns/dnsname/DnsName;
    invoke-virtual {v1, v15, v3, v4}, Lorg/jivesoftware/smack/util/dns/minidns/MiniDnsResolver;->lookupHostAddress0(Lorg/minidns/dnsname/DnsName;Ljava/util/List;Lorg/jivesoftware/smack/ConnectionConfiguration$DnssecMode;)Ljava/util/List;

    move-result-object v14

    .line 94
    .local v14, "hostAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-virtual {v1, v2, v15, v14}, Lorg/jivesoftware/smack/util/dns/minidns/MiniDnsResolver;->shouldContinue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 95
    goto :goto_0

    .line 98
    :cond_2
    new-instance v16, Lorg/jivesoftware/smack/util/dns/SRVRecord;

    iget v12, v9, Lorg/minidns/record/SRV;->port:I

    iget v13, v9, Lorg/minidns/record/SRV;->priority:I

    iget v11, v9, Lorg/minidns/record/SRV;->weight:I

    move-object/from16 v10, v16

    move/from16 v17, v11

    move-object v11, v15

    move-object/from16 v18, v14

    .end local v14    # "hostAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .local v18, "hostAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    move/from16 v14, v17

    move-object/from16 v17, v15

    .end local v15    # "hostname":Lorg/minidns/dnsname/DnsName;
    .local v17, "hostname":Lorg/minidns/dnsname/DnsName;
    move-object/from16 v15, v18

    invoke-direct/range {v10 .. v15}, Lorg/jivesoftware/smack/util/dns/SRVRecord;-><init>(Lorg/minidns/dnsname/DnsName;IIILjava/util/List;)V

    .line 99
    .local v10, "srvRecord":Lorg/jivesoftware/smack/util/dns/SRVRecord;
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    .end local v9    # "srv":Lorg/minidns/record/SRV;
    .end local v10    # "srvRecord":Lorg/jivesoftware/smack/util/dns/SRVRecord;
    .end local v17    # "hostname":Lorg/minidns/dnsname/DnsName;
    .end local v18    # "hostAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    goto :goto_0

    .line 102
    :cond_3
    return-object v6

    .line 75
    .end local v0    # "result":Lorg/minidns/hla/SrvResolverResult;
    .end local v6    # "res":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/util/dns/SRVRecord;>;"
    .end local v7    # "resolutionUnsuccessfulException":Lorg/minidns/hla/ResolutionUnsuccessfulException;
    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 76
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Lorg/jivesoftware/smack/util/dns/HostAddress;

    invoke-direct {v7, v2, v0}, Lorg/jivesoftware/smack/util/dns/HostAddress;-><init>(Lorg/minidns/dnsname/DnsName;Ljava/lang/Exception;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    return-object v6
.end method
