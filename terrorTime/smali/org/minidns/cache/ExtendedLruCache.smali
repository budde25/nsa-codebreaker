.class public Lorg/minidns/cache/ExtendedLruCache;
.super Lorg/minidns/cache/LruCache;
.source "ExtendedLruCache.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lorg/minidns/cache/ExtendedLruCache;-><init>(I)V

    .line 35
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .line 38
    invoke-direct {p0, p1}, Lorg/minidns/cache/LruCache;-><init>(I)V

    .line 39
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0
    .param p1, "capacity"    # I
    .param p2, "maxTTL"    # J

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lorg/minidns/cache/LruCache;-><init>(IJ)V

    .line 43
    return-void
.end method

.method private final gather(Ljava/util/Map;Lorg/minidns/dnsmessage/DnsMessage;Ljava/util/List;Lorg/minidns/dnsname/DnsName;)V
    .locals 6
    .param p2, "q"    # Lorg/minidns/dnsmessage/DnsMessage;
    .param p4, "authoritativeZone"    # Lorg/minidns/dnsname/DnsName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/minidns/dnsmessage/DnsMessage;",
            "Ljava/util/List<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/Data;",
            ">;>;>;",
            "Lorg/minidns/dnsmessage/DnsMessage;",
            "Ljava/util/List<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/Data;",
            ">;>;",
            "Lorg/minidns/dnsname/DnsName;",
            ")V"
        }
    .end annotation

    .line 74
    .local p1, "extraCaches":Ljava/util/Map;, "Ljava/util/Map<Lorg/minidns/dnsmessage/DnsMessage;Ljava/util/List<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;>;"
    .local p3, "records":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/minidns/record/Record;

    .line 75
    .local v1, "extraRecord":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    invoke-virtual {p2}, Lorg/minidns/dnsmessage/DnsMessage;->getQuestion()Lorg/minidns/dnsmessage/Question;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p4}, Lorg/minidns/cache/ExtendedLruCache;->shouldGather(Lorg/minidns/record/Record;Lorg/minidns/dnsmessage/Question;Lorg/minidns/dnsname/DnsName;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 76
    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {v1}, Lorg/minidns/record/Record;->getQuestionMessage()Lorg/minidns/dnsmessage/DnsMessage$Builder;

    move-result-object v2

    .line 79
    .local v2, "additionalRecordQuestionBuilder":Lorg/minidns/dnsmessage/DnsMessage$Builder;
    if-nez v2, :cond_1

    .line 80
    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {v2, p2}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->copyFlagsFrom(Lorg/minidns/dnsmessage/DnsMessage;)V

    .line 84
    iget-object v3, p2, Lorg/minidns/dnsmessage/DnsMessage;->additionalSection:Ljava/util/List;

    invoke-virtual {v2, v3}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->setAdditionalResourceRecords(Ljava/util/Collection;)Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 86
    invoke-virtual {v2}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->build()Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object v3

    .line 87
    .local v3, "additionalRecordQuestion":Lorg/minidns/dnsmessage/DnsMessage;
    invoke-virtual {v3, p2}, Lorg/minidns/dnsmessage/DnsMessage;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 89
    goto :goto_0

    .line 92
    :cond_2
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 93
    .local v4, "additionalRecords":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;"
    if-nez v4, :cond_3

    .line 94
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    move-object v4, v5

    .line 95
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_3
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    .end local v1    # "extraRecord":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    .end local v2    # "additionalRecordQuestionBuilder":Lorg/minidns/dnsmessage/DnsMessage$Builder;
    .end local v3    # "additionalRecordQuestion":Lorg/minidns/dnsmessage/DnsMessage;
    .end local v4    # "additionalRecords":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;"
    goto :goto_0

    .line 99
    :cond_4
    return-void
.end method

.method private final putExtraCaches(Lorg/minidns/dnsqueryresult/DnsQueryResult;Ljava/util/Map;)V
    .locals 7
    .param p1, "synthesynthesizationSource"    # Lorg/minidns/dnsqueryresult/DnsQueryResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsqueryresult/DnsQueryResult;",
            "Ljava/util/Map<",
            "Lorg/minidns/dnsmessage/DnsMessage;",
            "Ljava/util/List<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/Data;",
            ">;>;>;)V"
        }
    .end annotation

    .line 102
    .local p2, "extraCaches":Ljava/util/Map;, "Ljava/util/Map<Lorg/minidns/dnsmessage/DnsMessage;Ljava/util/List<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;>;"
    iget-object v0, p1, Lorg/minidns/dnsqueryresult/DnsQueryResult;->response:Lorg/minidns/dnsmessage/DnsMessage;

    .line 103
    .local v0, "reply":Lorg/minidns/dnsmessage/DnsMessage;
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 104
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/minidns/dnsmessage/DnsMessage;Ljava/util/List<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/minidns/dnsmessage/DnsMessage;

    .line 105
    .local v3, "question":Lorg/minidns/dnsmessage/DnsMessage;
    invoke-virtual {v0}, Lorg/minidns/dnsmessage/DnsMessage;->asBuilder()Lorg/minidns/dnsmessage/DnsMessage$Builder;

    move-result-object v4

    .line 106
    invoke-virtual {v3}, Lorg/minidns/dnsmessage/DnsMessage;->getQuestion()Lorg/minidns/dnsmessage/Question;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->setQuestion(Lorg/minidns/dnsmessage/Question;)Lorg/minidns/dnsmessage/DnsMessage$Builder;

    move-result-object v4

    const/4 v5, 0x1

    .line 107
    invoke-virtual {v4, v5}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->setAuthoritativeAnswer(Z)Lorg/minidns/dnsmessage/DnsMessage$Builder;

    move-result-object v4

    .line 108
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v4, v5}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->addAnswers(Ljava/util/Collection;)Lorg/minidns/dnsmessage/DnsMessage$Builder;

    move-result-object v4

    .line 109
    invoke-virtual {v4}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->build()Lorg/minidns/dnsmessage/DnsMessage;

    move-result-object v4

    .line 110
    .local v4, "answer":Lorg/minidns/dnsmessage/DnsMessage;
    new-instance v5, Lorg/minidns/dnsqueryresult/SynthesizedCachedDnsQueryResult;

    invoke-direct {v5, v3, v4, p1}, Lorg/minidns/dnsqueryresult/SynthesizedCachedDnsQueryResult;-><init>(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsqueryresult/DnsQueryResult;)V

    .line 111
    .local v5, "cachedDnsQueryResult":Lorg/minidns/dnsqueryresult/CachedDnsQueryResult;
    monitor-enter p0

    .line 112
    :try_start_0
    iget-object v6, p0, Lorg/minidns/cache/ExtendedLruCache;->backend:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v3, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    monitor-exit p0

    .line 114
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/minidns/dnsmessage/DnsMessage;Ljava/util/List<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;>;"
    .end local v3    # "question":Lorg/minidns/dnsmessage/DnsMessage;
    .end local v4    # "answer":Lorg/minidns/dnsmessage/DnsMessage;
    .end local v5    # "cachedDnsQueryResult":Lorg/minidns/dnsqueryresult/CachedDnsQueryResult;
    goto :goto_0

    .line 113
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/minidns/dnsmessage/DnsMessage;Ljava/util/List<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;>;"
    .restart local v3    # "question":Lorg/minidns/dnsmessage/DnsMessage;
    .restart local v4    # "answer":Lorg/minidns/dnsmessage/DnsMessage;
    .restart local v5    # "cachedDnsQueryResult":Lorg/minidns/dnsqueryresult/CachedDnsQueryResult;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 115
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/minidns/dnsmessage/DnsMessage;Ljava/util/List<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;>;"
    .end local v3    # "question":Lorg/minidns/dnsmessage/DnsMessage;
    .end local v4    # "answer":Lorg/minidns/dnsmessage/DnsMessage;
    .end local v5    # "cachedDnsQueryResult":Lorg/minidns/dnsqueryresult/CachedDnsQueryResult;
    :cond_0
    return-void
.end method


# virtual methods
.method public offer(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsqueryresult/DnsQueryResult;Lorg/minidns/dnsname/DnsName;)V
    .locals 3
    .param p1, "query"    # Lorg/minidns/dnsmessage/DnsMessage;
    .param p2, "result"    # Lorg/minidns/dnsqueryresult/DnsQueryResult;
    .param p3, "authoritativeZone"    # Lorg/minidns/dnsname/DnsName;

    .line 60
    iget-object v0, p2, Lorg/minidns/dnsqueryresult/DnsQueryResult;->response:Lorg/minidns/dnsmessage/DnsMessage;

    .line 62
    .local v0, "reply":Lorg/minidns/dnsmessage/DnsMessage;
    nop

    .line 64
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, v0, Lorg/minidns/dnsmessage/DnsMessage;->additionalSection:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 67
    .local v1, "extraCaches":Ljava/util/Map;, "Ljava/util/Map<Lorg/minidns/dnsmessage/DnsMessage;Ljava/util/List<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;>;"
    iget-object v2, v0, Lorg/minidns/dnsmessage/DnsMessage;->authoritySection:Ljava/util/List;

    invoke-direct {p0, v1, p1, v2, p3}, Lorg/minidns/cache/ExtendedLruCache;->gather(Ljava/util/Map;Lorg/minidns/dnsmessage/DnsMessage;Ljava/util/List;Lorg/minidns/dnsname/DnsName;)V

    .line 68
    iget-object v2, v0, Lorg/minidns/dnsmessage/DnsMessage;->additionalSection:Ljava/util/List;

    invoke-direct {p0, v1, p1, v2, p3}, Lorg/minidns/cache/ExtendedLruCache;->gather(Ljava/util/Map;Lorg/minidns/dnsmessage/DnsMessage;Ljava/util/List;Lorg/minidns/dnsname/DnsName;)V

    .line 70
    invoke-direct {p0, p2, v1}, Lorg/minidns/cache/ExtendedLruCache;->putExtraCaches(Lorg/minidns/dnsqueryresult/DnsQueryResult;Ljava/util/Map;)V

    .line 71
    return-void
.end method

.method protected putNormalized(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsqueryresult/DnsQueryResult;)V
    .locals 4
    .param p1, "q"    # Lorg/minidns/dnsmessage/DnsMessage;
    .param p2, "result"    # Lorg/minidns/dnsqueryresult/DnsQueryResult;

    .line 47
    invoke-super {p0, p1, p2}, Lorg/minidns/cache/LruCache;->putNormalized(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsqueryresult/DnsQueryResult;)V

    .line 48
    iget-object v0, p2, Lorg/minidns/dnsqueryresult/DnsQueryResult;->response:Lorg/minidns/dnsmessage/DnsMessage;

    .line 49
    .local v0, "message":Lorg/minidns/dnsmessage/DnsMessage;
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, v0, Lorg/minidns/dnsmessage/DnsMessage;->additionalSection:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 51
    .local v1, "extraCaches":Ljava/util/Map;, "Ljava/util/Map<Lorg/minidns/dnsmessage/DnsMessage;Ljava/util/List<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;>;"
    iget-object v2, v0, Lorg/minidns/dnsmessage/DnsMessage;->answerSection:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {p0, v1, p1, v2, v3}, Lorg/minidns/cache/ExtendedLruCache;->gather(Ljava/util/Map;Lorg/minidns/dnsmessage/DnsMessage;Ljava/util/List;Lorg/minidns/dnsname/DnsName;)V

    .line 52
    iget-object v2, v0, Lorg/minidns/dnsmessage/DnsMessage;->authoritySection:Ljava/util/List;

    invoke-direct {p0, v1, p1, v2, v3}, Lorg/minidns/cache/ExtendedLruCache;->gather(Ljava/util/Map;Lorg/minidns/dnsmessage/DnsMessage;Ljava/util/List;Lorg/minidns/dnsname/DnsName;)V

    .line 53
    iget-object v2, v0, Lorg/minidns/dnsmessage/DnsMessage;->additionalSection:Ljava/util/List;

    invoke-direct {p0, v1, p1, v2, v3}, Lorg/minidns/cache/ExtendedLruCache;->gather(Ljava/util/Map;Lorg/minidns/dnsmessage/DnsMessage;Ljava/util/List;Lorg/minidns/dnsname/DnsName;)V

    .line 55
    invoke-direct {p0, p2, v1}, Lorg/minidns/cache/ExtendedLruCache;->putExtraCaches(Lorg/minidns/dnsqueryresult/DnsQueryResult;Ljava/util/Map;)V

    .line 56
    return-void
.end method

.method protected shouldGather(Lorg/minidns/record/Record;Lorg/minidns/dnsmessage/Question;Lorg/minidns/dnsname/DnsName;)Z
    .locals 3
    .param p2, "question"    # Lorg/minidns/dnsmessage/Question;
    .param p3, "authoritativeZone"    # Lorg/minidns/dnsname/DnsName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/Data;",
            ">;",
            "Lorg/minidns/dnsmessage/Question;",
            "Lorg/minidns/dnsname/DnsName;",
            ")Z"
        }
    .end annotation

    .line 118
    .local p1, "extraRecord":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    iget-object v0, p1, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    iget-object v1, p2, Lorg/minidns/dnsmessage/Question;->name:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v0, v1}, Lorg/minidns/dnsname/DnsName;->isChildOf(Lorg/minidns/dnsname/DnsName;)Z

    move-result v0

    .line 120
    .local v0, "extraRecordIsChildOfQuestion":Z
    const/4 v1, 0x0

    .line 121
    .local v1, "extraRecordIsChildOfAuthoritativeZone":Z
    if-eqz p3, :cond_0

    .line 122
    iget-object v2, p1, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v2, p3}, Lorg/minidns/dnsname/DnsName;->isChildOf(Lorg/minidns/dnsname/DnsName;)Z

    move-result v1

    .line 125
    :cond_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method
