.class public Lorg/jxmpp/util/cache/LruCache;
.super Ljava/util/LinkedHashMap;
.source "LruCache.java"

# interfaces
.implements Lorg/jxmpp/util/cache/Cache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>;",
        "Lorg/jxmpp/util/cache/Cache<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_SIZE:I = 0x32

.field private static final serialVersionUID:J = -0x451f63c30086572fL


# instance fields
.field private final cacheHits:Ljava/util/concurrent/atomic/AtomicLong;

.field private final cacheMisses:Ljava/util/concurrent/atomic/AtomicLong;

.field private maxCacheSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "maxSize"    # I

    .line 68
    .local p0, "this":Lorg/jxmpp/util/cache/LruCache;, "Lorg/jxmpp/util/cache/LruCache<TK;TV;>;"
    const/16 v0, 0x32

    if-ge p1, v0, :cond_0

    move v0, p1

    :cond_0
    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/jxmpp/util/cache/LruCache;->cacheHits:Ljava/util/concurrent/atomic/AtomicLong;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/jxmpp/util/cache/LruCache;->cacheMisses:Ljava/util/concurrent/atomic/AtomicLong;

    .line 70
    if-eqz p1, :cond_1

    .line 73
    iput p1, p0, Lorg/jxmpp/util/cache/LruCache;->maxCacheSize:I

    .line 74
    return-void

    .line 71
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Max cache size cannot be 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final clear()V
    .locals 3

    .line 119
    .local p0, "this":Lorg/jxmpp/util/cache/LruCache;, "Lorg/jxmpp/util/cache/LruCache<TK;TV;>;"
    monitor-enter p0

    .line 120
    :try_start_0
    invoke-super {p0}, Ljava/util/LinkedHashMap;->clear()V

    .line 121
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    iget-object v0, p0, Lorg/jxmpp/util/cache/LruCache;->cacheHits:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 123
    iget-object v0, p0, Lorg/jxmpp/util/cache/LruCache;->cacheMisses:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 124
    return-void

    .line 121
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .local p0, "this":Lorg/jxmpp/util/cache/LruCache;, "Lorg/jxmpp/util/cache/LruCache<TK;TV;>;"
    monitor-enter p0

    .line 143
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Lorg/jxmpp/util/cache/LruCache;, "Lorg/jxmpp/util/cache/LruCache<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .local p0, "this":Lorg/jxmpp/util/cache/LruCache;, "Lorg/jxmpp/util/cache/LruCache<TK;TV;>;"
    monitor-enter p0

    .line 153
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Lorg/jxmpp/util/cache/LruCache;, "Lorg/jxmpp/util/cache/LruCache<TK;TV;>;"
    .end local p1    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .local p0, "this":Lorg/jxmpp/util/cache/LruCache;, "Lorg/jxmpp/util/cache/LruCache<TK;TV;>;"
    monitor-enter p0

    .line 158
    :try_start_0
    invoke-super {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lorg/jxmpp/util/cache/LruCache;, "Lorg/jxmpp/util/cache/LruCache<TK;TV;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 96
    .local p0, "this":Lorg/jxmpp/util/cache/LruCache;, "Lorg/jxmpp/util/cache/LruCache<TK;TV;>;"
    monitor-enter p0

    .line 97
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 98
    .local v0, "cacheObject":Ljava/lang/Object;, "TV;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    if-nez v0, :cond_0

    .line 101
    iget-object v1, p0, Lorg/jxmpp/util/cache/LruCache;->cacheMisses:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 102
    const/4 v1, 0x0

    return-object v1

    .line 107
    :cond_0
    iget-object v1, p0, Lorg/jxmpp/util/cache/LruCache;->cacheHits:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 109
    return-object v0

    .line 98
    .end local v0    # "cacheObject":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getCacheHits()J
    .locals 2

    .line 172
    .local p0, "this":Lorg/jxmpp/util/cache/LruCache;, "Lorg/jxmpp/util/cache/LruCache<TK;TV;>;"
    iget-object v0, p0, Lorg/jxmpp/util/cache/LruCache;->cacheHits:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getCacheMisses()J
    .locals 2

    .line 181
    .local p0, "this":Lorg/jxmpp/util/cache/LruCache;, "Lorg/jxmpp/util/cache/LruCache<TK;TV;>;"
    iget-object v0, p0, Lorg/jxmpp/util/cache/LruCache;->cacheMisses:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getMaxCacheSize()I
    .locals 1

    .line 186
    .local p0, "this":Lorg/jxmpp/util/cache/LruCache;, "Lorg/jxmpp/util/cache/LruCache<TK;TV;>;"
    iget v0, p0, Lorg/jxmpp/util/cache/LruCache;->maxCacheSize:I

    return v0
.end method

.method public final declared-synchronized isEmpty()Z
    .locals 1

    .local p0, "this":Lorg/jxmpp/util/cache/LruCache;, "Lorg/jxmpp/util/cache/LruCache<TK;TV;>;"
    monitor-enter p0

    .line 133
    :try_start_0
    invoke-super {p0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Lorg/jxmpp/util/cache/LruCache;, "Lorg/jxmpp/util/cache/LruCache<TK;TV;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .local p0, "this":Lorg/jxmpp/util/cache/LruCache;, "Lorg/jxmpp/util/cache/LruCache<TK;TV;>;"
    monitor-enter p0

    .line 163
    :try_start_0
    invoke-super {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lorg/jxmpp/util/cache/LruCache;, "Lorg/jxmpp/util/cache/LruCache<TK;TV;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final lookup(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 88
    .local p0, "this":Lorg/jxmpp/util/cache/LruCache;, "Lorg/jxmpp/util/cache/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lorg/jxmpp/util/cache/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .local p0, "this":Lorg/jxmpp/util/cache/LruCache;, "Lorg/jxmpp/util/cache/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 83
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lorg/jxmpp/util/cache/LruCache;, "Lorg/jxmpp/util/cache/LruCache<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized putAll(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .local p0, "this":Lorg/jxmpp/util/cache/LruCache;, "Lorg/jxmpp/util/cache/LruCache<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    monitor-enter p0

    .line 148
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    .line 147
    .end local p0    # "this":Lorg/jxmpp/util/cache/LruCache;, "Lorg/jxmpp/util/cache/LruCache<TK;TV;>;"
    .end local p1    # "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .local p0, "this":Lorg/jxmpp/util/cache/LruCache;, "Lorg/jxmpp/util/cache/LruCache<TK;TV;>;"
    monitor-enter p0

    .line 114
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lorg/jxmpp/util/cache/LruCache;, "Lorg/jxmpp/util/cache/LruCache<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 78
    .local p0, "this":Lorg/jxmpp/util/cache/LruCache;, "Lorg/jxmpp/util/cache/LruCache<TK;TV;>;"
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Lorg/jxmpp/util/cache/LruCache;->size()I

    move-result v0

    iget v1, p0, Lorg/jxmpp/util/cache/LruCache;->maxCacheSize:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setMaxCacheSize(I)V
    .locals 0
    .param p1, "maxCacheSize"    # I

    .line 191
    .local p0, "this":Lorg/jxmpp/util/cache/LruCache;, "Lorg/jxmpp/util/cache/LruCache<TK;TV;>;"
    iput p1, p0, Lorg/jxmpp/util/cache/LruCache;->maxCacheSize:I

    .line 192
    return-void
.end method

.method public final declared-synchronized size()I
    .locals 1

    .local p0, "this":Lorg/jxmpp/util/cache/LruCache;, "Lorg/jxmpp/util/cache/LruCache<TK;TV;>;"
    monitor-enter p0

    .line 128
    :try_start_0
    invoke-super {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Lorg/jxmpp/util/cache/LruCache;, "Lorg/jxmpp/util/cache/LruCache<TK;TV;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .local p0, "this":Lorg/jxmpp/util/cache/LruCache;, "Lorg/jxmpp/util/cache/LruCache<TK;TV;>;"
    monitor-enter p0

    .line 138
    :try_start_0
    invoke-super {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lorg/jxmpp/util/cache/LruCache;, "Lorg/jxmpp/util/cache/LruCache<TK;TV;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
