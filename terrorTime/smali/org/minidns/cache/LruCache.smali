.class public Lorg/minidns/cache/LruCache;
.super Lorg/minidns/DnsCache;
.source "LruCache.java"


# instance fields
.field protected backend:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lorg/minidns/dnsmessage/DnsMessage;",
            "Lorg/minidns/dnsqueryresult/CachedDnsQueryResult;",
            ">;"
        }
    .end annotation
.end field

.field protected capacity:I

.field protected expireCount:J

.field protected hitCount:J

.field protected maxTTL:J

.field protected missCount:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 87
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lorg/minidns/cache/LruCache;-><init>(I)V

    .line 88
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .line 83
    const-wide v0, 0x7fffffffffffffffL

    invoke-direct {p0, p1, v0, v1}, Lorg/minidns/cache/LruCache;-><init>(IJ)V

    .line 84
    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 8
    .param p1, "capacity"    # I
    .param p2, "maxTTL"    # J

    .line 64
    invoke-direct {p0}, Lorg/minidns/DnsCache;-><init>()V

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/minidns/cache/LruCache;->missCount:J

    .line 36
    iput-wide v0, p0, Lorg/minidns/cache/LruCache;->expireCount:J

    .line 41
    iput-wide v0, p0, Lorg/minidns/cache/LruCache;->hitCount:J

    .line 65
    iput p1, p0, Lorg/minidns/cache/LruCache;->capacity:I

    .line 66
    iput-wide p2, p0, Lorg/minidns/cache/LruCache;->maxTTL:J

    .line 67
    new-instance v0, Lorg/minidns/cache/LruCache$1;

    add-int/lit8 v1, p1, 0x3

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x2

    .line 68
    const/16 v2, 0xb

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/high16 v5, 0x3f400000    # 0.75f

    const/4 v6, 0x1

    move-object v2, v0

    move-object v3, p0

    move v7, p1

    invoke-direct/range {v2 .. v7}, Lorg/minidns/cache/LruCache$1;-><init>(Lorg/minidns/cache/LruCache;IFZI)V

    iput-object v0, p0, Lorg/minidns/cache/LruCache;->backend:Ljava/util/LinkedHashMap;

    .line 76
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    .line 130
    :try_start_0
    iget-object v0, p0, Lorg/minidns/cache/LruCache;->backend:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 131
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/minidns/cache/LruCache;->missCount:J

    .line 132
    iput-wide v0, p0, Lorg/minidns/cache/LruCache;->hitCount:J

    .line 133
    iput-wide v0, p0, Lorg/minidns/cache/LruCache;->expireCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    .line 129
    .end local p0    # "this":Lorg/minidns/cache/LruCache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getExpireCount()J
    .locals 2

    .line 151
    iget-wide v0, p0, Lorg/minidns/cache/LruCache;->expireCount:J

    return-wide v0
.end method

.method public getHitCount()J
    .locals 2

    .line 159
    iget-wide v0, p0, Lorg/minidns/cache/LruCache;->hitCount:J

    return-wide v0
.end method

.method public getMissCount()J
    .locals 2

    .line 142
    iget-wide v0, p0, Lorg/minidns/cache/LruCache;->missCount:J

    return-wide v0
.end method

.method protected declared-synchronized getNormalized(Lorg/minidns/dnsmessage/DnsMessage;)Lorg/minidns/dnsqueryresult/CachedDnsQueryResult;
    .locals 18
    .param p1, "q"    # Lorg/minidns/dnsmessage/DnsMessage;

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v2, v1, Lorg/minidns/cache/LruCache;->backend:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/minidns/dnsqueryresult/CachedDnsQueryResult;

    .line 101
    .local v2, "result":Lorg/minidns/dnsqueryresult/CachedDnsQueryResult;
    const/4 v3, 0x0

    const-wide/16 v4, 0x1

    if-nez v2, :cond_0

    .line 102
    iget-wide v6, v1, Lorg/minidns/cache/LruCache;->missCount:J

    add-long/2addr v6, v4

    iput-wide v6, v1, Lorg/minidns/cache/LruCache;->missCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    return-object v3

    .line 106
    .end local p0    # "this":Lorg/minidns/cache/LruCache;
    :cond_0
    :try_start_1
    iget-object v6, v2, Lorg/minidns/dnsqueryresult/CachedDnsQueryResult;->response:Lorg/minidns/dnsmessage/DnsMessage;

    .line 110
    .local v6, "message":Lorg/minidns/dnsmessage/DnsMessage;
    invoke-virtual {v6}, Lorg/minidns/dnsmessage/DnsMessage;->getAnswersMinTtl()J

    move-result-wide v7

    .line 111
    .local v7, "answersMinTtl":J
    iget-wide v9, v1, Lorg/minidns/cache/LruCache;->maxTTL:J

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 113
    .local v9, "ttl":J
    iget-wide v11, v6, Lorg/minidns/dnsmessage/DnsMessage;->receiveTimestamp:J

    const-wide/16 v13, 0x3e8

    mul-long/2addr v13, v9

    add-long/2addr v11, v13

    .line 114
    .local v11, "expiryDate":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 115
    .local v13, "now":J
    cmp-long v15, v11, v13

    if-gez v15, :cond_1

    .line 116
    iget-wide v3, v1, Lorg/minidns/cache/LruCache;->missCount:J

    const-wide/16 v16, 0x1

    add-long v3, v3, v16

    iput-wide v3, v1, Lorg/minidns/cache/LruCache;->missCount:J

    .line 117
    iget-wide v3, v1, Lorg/minidns/cache/LruCache;->expireCount:J

    add-long v3, v3, v16

    iput-wide v3, v1, Lorg/minidns/cache/LruCache;->expireCount:J

    .line 118
    iget-object v3, v1, Lorg/minidns/cache/LruCache;->backend:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    monitor-exit p0

    const/4 v3, 0x0

    return-object v3

    .line 121
    :cond_1
    :try_start_2
    iget-wide v3, v1, Lorg/minidns/cache/LruCache;->hitCount:J

    const-wide/16 v15, 0x1

    add-long/2addr v3, v15

    iput-wide v3, v1, Lorg/minidns/cache/LruCache;->hitCount:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    monitor-exit p0

    return-object v2

    .line 99
    .end local v2    # "result":Lorg/minidns/dnsqueryresult/CachedDnsQueryResult;
    .end local v6    # "message":Lorg/minidns/dnsmessage/DnsMessage;
    .end local v7    # "answersMinTtl":J
    .end local v9    # "ttl":J
    .end local v11    # "expiryDate":J
    .end local v13    # "now":J
    .end local p1    # "q":Lorg/minidns/dnsmessage/DnsMessage;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public offer(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsqueryresult/DnsQueryResult;Lorg/minidns/dnsname/DnsName;)V
    .locals 0
    .param p1, "query"    # Lorg/minidns/dnsmessage/DnsMessage;
    .param p2, "result"    # Lorg/minidns/dnsqueryresult/DnsQueryResult;
    .param p3, "knownAuthoritativeZone"    # Lorg/minidns/dnsname/DnsName;

    .line 169
    return-void
.end method

.method protected declared-synchronized putNormalized(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsqueryresult/DnsQueryResult;)V
    .locals 4
    .param p1, "q"    # Lorg/minidns/dnsmessage/DnsMessage;
    .param p2, "result"    # Lorg/minidns/dnsqueryresult/DnsQueryResult;

    monitor-enter p0

    .line 92
    :try_start_0
    iget-object v0, p2, Lorg/minidns/dnsqueryresult/DnsQueryResult;->response:Lorg/minidns/dnsmessage/DnsMessage;

    iget-wide v0, v0, Lorg/minidns/dnsmessage/DnsMessage;->receiveTimestamp:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 93
    monitor-exit p0

    return-void

    .line 95
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/minidns/cache/LruCache;->backend:Ljava/util/LinkedHashMap;

    new-instance v1, Lorg/minidns/dnsqueryresult/DirectCachedDnsQueryResult;

    invoke-direct {v1, p1, p2}, Lorg/minidns/dnsqueryresult/DirectCachedDnsQueryResult;-><init>(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsqueryresult/DnsQueryResult;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    .line 91
    .end local p0    # "this":Lorg/minidns/cache/LruCache;
    .end local p1    # "q":Lorg/minidns/dnsmessage/DnsMessage;
    .end local p2    # "result":Lorg/minidns/dnsqueryresult/DnsQueryResult;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LRUCache{usage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/minidns/cache/LruCache;->backend:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/minidns/cache/LruCache;->capacity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/minidns/cache/LruCache;->hitCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", misses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/minidns/cache/LruCache;->missCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", expires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/minidns/cache/LruCache;->expireCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
