.class public Lorg/minidns/hla/SrvResolverResult;
.super Lorg/minidns/hla/ResolverResult;
.source "SrvResolverResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/minidns/hla/SrvResolverResult$ResolvedSrvRecord;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/minidns/hla/ResolverResult<",
        "Lorg/minidns/record/SRV;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final ipVersion:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

.field private final resolver:Lorg/minidns/hla/ResolverApi;

.field private sortedSrvResolvedAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/minidns/hla/SrvResolverResult$ResolvedSrvRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final srvServiceProto:Lorg/minidns/hla/srv/SrvServiceProto;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 32
    return-void
.end method

.method constructor <init>(Lorg/minidns/hla/ResolverResult;Lorg/minidns/hla/srv/SrvServiceProto;Lorg/minidns/hla/ResolverApi;)V
    .locals 3
    .param p2, "srvServiceProto"    # Lorg/minidns/hla/srv/SrvServiceProto;
    .param p3, "resolver"    # Lorg/minidns/hla/ResolverApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/hla/ResolverResult<",
            "Lorg/minidns/record/SRV;",
            ">;",
            "Lorg/minidns/hla/srv/SrvServiceProto;",
            "Lorg/minidns/hla/ResolverApi;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/minidns/MiniDnsException$NullResultException;
        }
    .end annotation

    .line 41
    .local p1, "srvResult":Lorg/minidns/hla/ResolverResult;, "Lorg/minidns/hla/ResolverResult<Lorg/minidns/record/SRV;>;"
    iget-object v0, p1, Lorg/minidns/hla/ResolverResult;->question:Lorg/minidns/dnsmessage/Question;

    iget-object v1, p1, Lorg/minidns/hla/ResolverResult;->result:Lorg/minidns/dnsqueryresult/DnsQueryResult;

    iget-object v2, p1, Lorg/minidns/hla/ResolverResult;->unverifiedReasons:Ljava/util/Set;

    invoke-direct {p0, v0, v1, v2}, Lorg/minidns/hla/ResolverResult;-><init>(Lorg/minidns/dnsmessage/Question;Lorg/minidns/dnsqueryresult/DnsQueryResult;Ljava/util/Set;)V

    .line 42
    iput-object p3, p0, Lorg/minidns/hla/SrvResolverResult;->resolver:Lorg/minidns/hla/ResolverApi;

    .line 43
    invoke-virtual {p3}, Lorg/minidns/hla/ResolverApi;->getClient()Lorg/minidns/AbstractDnsClient;

    move-result-object v0

    invoke-virtual {v0}, Lorg/minidns/AbstractDnsClient;->getPreferedIpVersion()Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/hla/SrvResolverResult;->ipVersion:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    .line 44
    iput-object p2, p0, Lorg/minidns/hla/SrvResolverResult;->srvServiceProto:Lorg/minidns/hla/srv/SrvServiceProto;

    .line 45
    return-void
.end method

.method public static varargs sortMultiple([Ljava/util/Collection;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Collection<",
            "Lorg/minidns/hla/SrvResolverResult$ResolvedSrvRecord;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/minidns/hla/SrvResolverResult$ResolvedSrvRecord;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 173
    .local p0, "resolvedSrvRecordCollections":[Ljava/util/Collection;, "[Ljava/util/Collection<Lorg/minidns/hla/SrvResolverResult$ResolvedSrvRecord;>;"
    const/4 v0, 0x0

    .line 174
    .local v0, "srvRecordsCount":I
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .end local v0    # "srvRecordsCount":I
    .local v3, "srvRecordsCount":I
    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v4, p0, v0

    .line 175
    .local v4, "resolvedSrvRecords":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/minidns/hla/SrvResolverResult$ResolvedSrvRecord;>;"
    if-nez v4, :cond_0

    .line 176
    goto :goto_1

    .line 178
    :cond_0
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v5

    add-int/2addr v3, v5

    .line 174
    .end local v4    # "resolvedSrvRecords":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/minidns/hla/SrvResolverResult$ResolvedSrvRecord;>;"
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 182
    .local v0, "srvToSort":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/SRV;>;"
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1, v3}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 183
    .local v1, "identityMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/minidns/record/SRV;Lorg/minidns/hla/SrvResolverResult$ResolvedSrvRecord;>;"
    array-length v4, p0

    :goto_2
    if-ge v2, v4, :cond_4

    aget-object v5, p0, v2

    .line 184
    .local v5, "resolvedSrvRecords":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/minidns/hla/SrvResolverResult$ResolvedSrvRecord;>;"
    if-nez v5, :cond_2

    .line 185
    goto :goto_4

    .line 187
    :cond_2
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/minidns/hla/SrvResolverResult$ResolvedSrvRecord;

    .line 188
    .local v7, "resolvedSrvRecord":Lorg/minidns/hla/SrvResolverResult$ResolvedSrvRecord;
    iget-object v8, v7, Lorg/minidns/hla/SrvResolverResult$ResolvedSrvRecord;->srv:Lorg/minidns/record/SRV;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v8, v7, Lorg/minidns/hla/SrvResolverResult$ResolvedSrvRecord;->srv:Lorg/minidns/record/SRV;

    invoke-interface {v1, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .end local v7    # "resolvedSrvRecord":Lorg/minidns/hla/SrvResolverResult$ResolvedSrvRecord;
    goto :goto_3

    .line 183
    .end local v5    # "resolvedSrvRecords":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/minidns/hla/SrvResolverResult$ResolvedSrvRecord;>;"
    :cond_3
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 193
    :cond_4
    invoke-static {v0}, Lorg/minidns/util/SrvUtil;->sortSrvRecords(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    .line 194
    .local v2, "sortedSrvs":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/SRV;>;"
    nop

    .line 196
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 197
    .local v4, "res":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/hla/SrvResolverResult$ResolvedSrvRecord;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/minidns/record/SRV;

    .line 198
    .local v6, "sortedSrv":Lorg/minidns/record/SRV;
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/minidns/hla/SrvResolverResult$ResolvedSrvRecord;

    .line 199
    .restart local v7    # "resolvedSrvRecord":Lorg/minidns/hla/SrvResolverResult$ResolvedSrvRecord;
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    .end local v6    # "sortedSrv":Lorg/minidns/record/SRV;
    .end local v7    # "resolvedSrvRecord":Lorg/minidns/hla/SrvResolverResult$ResolvedSrvRecord;
    goto :goto_5

    .line 202
    :cond_5
    return-object v4
.end method


# virtual methods
.method public getSortedSrvResolvedAddresses()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/minidns/hla/SrvResolverResult$ResolvedSrvRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/minidns/hla/SrvResolverResult;->sortedSrvResolvedAddresses:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 57
    return-object v1

    .line 60
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/minidns/hla/SrvResolverResult;->throwIseIfErrorResponse()V

    .line 62
    invoke-virtual/range {p0 .. p0}, Lorg/minidns/hla/SrvResolverResult;->isServiceDecidedlyNotAvailableAtThisDomain()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    const/4 v1, 0x0

    return-object v1

    .line 66
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/minidns/hla/SrvResolverResult;->getAnswers()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lorg/minidns/util/SrvUtil;->sortSrvRecords(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 68
    .local v1, "srvRecords":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/SRV;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    .local v2, "res":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/hla/SrvResolverResult$ResolvedSrvRecord;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/minidns/record/SRV;

    .line 70
    .local v4, "srvRecord":Lorg/minidns/record/SRV;
    const/4 v5, 0x0

    .line 71
    .local v5, "aRecordsResult":Lorg/minidns/hla/ResolverResult;, "Lorg/minidns/hla/ResolverResult<Lorg/minidns/record/A;>;"
    const/4 v6, 0x0

    .line 72
    .local v6, "aaaaRecordsResult":Lorg/minidns/hla/ResolverResult;, "Lorg/minidns/hla/ResolverResult<Lorg/minidns/record/AAAA;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v7

    .line 73
    .local v7, "aRecords":Ljava/util/Set;, "Ljava/util/Set<Lorg/minidns/record/A;>;"
    iget-object v8, v0, Lorg/minidns/hla/SrvResolverResult;->ipVersion:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    iget-boolean v8, v8, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->v4:Z

    if-eqz v8, :cond_3

    .line 74
    iget-object v8, v0, Lorg/minidns/hla/SrvResolverResult;->resolver:Lorg/minidns/hla/ResolverApi;

    iget-object v9, v4, Lorg/minidns/record/SRV;->target:Lorg/minidns/dnsname/DnsName;

    const-class v10, Lorg/minidns/record/A;

    invoke-virtual {v8, v9, v10}, Lorg/minidns/hla/ResolverApi;->resolve(Lorg/minidns/dnsname/DnsName;Ljava/lang/Class;)Lorg/minidns/hla/ResolverResult;

    move-result-object v5

    .line 75
    invoke-virtual {v5}, Lorg/minidns/hla/ResolverResult;->wasSuccessful()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v5}, Lorg/minidns/hla/ResolverResult;->hasUnverifiedReasons()Z

    move-result v8

    if-nez v8, :cond_2

    .line 76
    invoke-virtual {v5}, Lorg/minidns/hla/ResolverResult;->getAnswers()Ljava/util/Set;

    move-result-object v7

    move-object v13, v5

    move-object v14, v7

    goto :goto_1

    .line 80
    :cond_2
    move-object v13, v5

    move-object v14, v7

    goto :goto_1

    .line 73
    :cond_3
    move-object v13, v5

    move-object v14, v7

    .line 80
    .end local v5    # "aRecordsResult":Lorg/minidns/hla/ResolverResult;, "Lorg/minidns/hla/ResolverResult<Lorg/minidns/record/A;>;"
    .end local v7    # "aRecords":Ljava/util/Set;, "Ljava/util/Set<Lorg/minidns/record/A;>;"
    .local v13, "aRecordsResult":Lorg/minidns/hla/ResolverResult;, "Lorg/minidns/hla/ResolverResult<Lorg/minidns/record/A;>;"
    .local v14, "aRecords":Ljava/util/Set;, "Ljava/util/Set<Lorg/minidns/record/A;>;"
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5

    .line 81
    .local v5, "aaaaRecords":Ljava/util/Set;, "Ljava/util/Set<Lorg/minidns/record/AAAA;>;"
    iget-object v7, v0, Lorg/minidns/hla/SrvResolverResult;->ipVersion:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    iget-boolean v7, v7, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->v6:Z

    if-eqz v7, :cond_5

    .line 82
    iget-object v7, v0, Lorg/minidns/hla/SrvResolverResult;->resolver:Lorg/minidns/hla/ResolverApi;

    iget-object v8, v4, Lorg/minidns/record/SRV;->target:Lorg/minidns/dnsname/DnsName;

    const-class v9, Lorg/minidns/record/AAAA;

    invoke-virtual {v7, v8, v9}, Lorg/minidns/hla/ResolverApi;->resolve(Lorg/minidns/dnsname/DnsName;Ljava/lang/Class;)Lorg/minidns/hla/ResolverResult;

    move-result-object v6

    .line 83
    invoke-virtual {v6}, Lorg/minidns/hla/ResolverResult;->wasSuccessful()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Lorg/minidns/hla/ResolverResult;->hasUnverifiedReasons()Z

    move-result v7

    if-nez v7, :cond_4

    .line 84
    invoke-virtual {v6}, Lorg/minidns/hla/ResolverResult;->getAnswers()Ljava/util/Set;

    move-result-object v5

    move-object v15, v5

    move-object/from16 v16, v6

    goto :goto_2

    .line 88
    :cond_4
    move-object v15, v5

    move-object/from16 v16, v6

    goto :goto_2

    .line 81
    :cond_5
    move-object v15, v5

    move-object/from16 v16, v6

    .line 88
    .end local v5    # "aaaaRecords":Ljava/util/Set;, "Ljava/util/Set<Lorg/minidns/record/AAAA;>;"
    .end local v6    # "aaaaRecordsResult":Lorg/minidns/hla/ResolverResult;, "Lorg/minidns/hla/ResolverResult<Lorg/minidns/record/AAAA;>;"
    .local v15, "aaaaRecords":Ljava/util/Set;, "Ljava/util/Set<Lorg/minidns/record/AAAA;>;"
    .local v16, "aaaaRecordsResult":Lorg/minidns/hla/ResolverResult;, "Lorg/minidns/hla/ResolverResult<Lorg/minidns/record/AAAA;>;"
    :goto_2
    invoke-interface {v14}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v15}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 96
    goto :goto_0

    .line 99
    :cond_6
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v6

    invoke-interface {v15}, Ljava/util/Set;->size()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v12, v5

    .line 100
    .local v12, "srvAddresses":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/InternetAddressRR;>;"
    sget-object v5, Lorg/minidns/hla/SrvResolverResult$1;->$SwitchMap$org$minidns$AbstractDnsClient$IpVersionSetting:[I

    iget-object v6, v0, Lorg/minidns/hla/SrvResolverResult;->ipVersion:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    invoke-virtual {v6}, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_a

    const/4 v6, 0x2

    if-eq v5, v6, :cond_9

    const/4 v6, 0x3

    if-eq v5, v6, :cond_8

    const/4 v6, 0x4

    if-eq v5, v6, :cond_7

    goto :goto_3

    .line 112
    :cond_7
    invoke-interface {v12, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 113
    invoke-interface {v12, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 108
    :cond_8
    invoke-interface {v12, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 109
    invoke-interface {v12, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 110
    goto :goto_3

    .line 105
    :cond_9
    invoke-interface {v12, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 106
    goto :goto_3

    .line 102
    :cond_a
    invoke-interface {v12, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 103
    nop

    .line 117
    :goto_3
    new-instance v17, Lorg/minidns/hla/SrvResolverResult$ResolvedSrvRecord;

    iget-object v5, v0, Lorg/minidns/hla/SrvResolverResult;->question:Lorg/minidns/dnsmessage/Question;

    iget-object v6, v5, Lorg/minidns/dnsmessage/Question;->name:Lorg/minidns/dnsname/DnsName;

    iget-object v7, v0, Lorg/minidns/hla/SrvResolverResult;->srvServiceProto:Lorg/minidns/hla/srv/SrvServiceProto;

    const/16 v18, 0x0

    move-object/from16 v5, v17

    move-object v8, v4

    move-object v9, v12

    move-object v10, v13

    move-object/from16 v11, v16

    move-object/from16 v19, v12

    .end local v12    # "srvAddresses":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/InternetAddressRR;>;"
    .local v19, "srvAddresses":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/InternetAddressRR;>;"
    move-object/from16 v12, v18

    invoke-direct/range {v5 .. v12}, Lorg/minidns/hla/SrvResolverResult$ResolvedSrvRecord;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/hla/srv/SrvServiceProto;Lorg/minidns/record/SRV;Ljava/util/List;Lorg/minidns/hla/ResolverResult;Lorg/minidns/hla/ResolverResult;Lorg/minidns/hla/SrvResolverResult$1;)V

    .line 119
    .local v5, "resolvedSrvAddresses":Lorg/minidns/hla/SrvResolverResult$ResolvedSrvRecord;
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    .end local v4    # "srvRecord":Lorg/minidns/record/SRV;
    .end local v5    # "resolvedSrvAddresses":Lorg/minidns/hla/SrvResolverResult$ResolvedSrvRecord;
    .end local v13    # "aRecordsResult":Lorg/minidns/hla/ResolverResult;, "Lorg/minidns/hla/ResolverResult<Lorg/minidns/record/A;>;"
    .end local v14    # "aRecords":Ljava/util/Set;, "Ljava/util/Set<Lorg/minidns/record/A;>;"
    .end local v15    # "aaaaRecords":Ljava/util/Set;, "Ljava/util/Set<Lorg/minidns/record/AAAA;>;"
    .end local v16    # "aaaaRecordsResult":Lorg/minidns/hla/ResolverResult;, "Lorg/minidns/hla/ResolverResult<Lorg/minidns/record/AAAA;>;"
    .end local v19    # "srvAddresses":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/InternetAddressRR;>;"
    goto/16 :goto_0

    .line 122
    :cond_b
    iput-object v2, v0, Lorg/minidns/hla/SrvResolverResult;->sortedSrvResolvedAddresses:Ljava/util/List;

    .line 124
    return-object v2
.end method

.method public isServiceDecidedlyNotAvailableAtThisDomain()Z
    .locals 4

    .line 128
    invoke-virtual {p0}, Lorg/minidns/hla/SrvResolverResult;->getAnswers()Ljava/util/Set;

    move-result-object v0

    .line 129
    .local v0, "answers":Ljava/util/Set;, "Ljava/util/Set<Lorg/minidns/record/SRV;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 130
    const/4 v1, 0x0

    return v1

    .line 133
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/minidns/record/SRV;

    .line 134
    .local v1, "singleAnswer":Lorg/minidns/record/SRV;
    invoke-virtual {v1}, Lorg/minidns/record/SRV;->isServiceAvailable()Z

    move-result v3

    xor-int/2addr v2, v3

    return v2
.end method
