.class public Lorg/jxmpp/util/cache/ExpirationCache;
.super Ljava/lang/Object;
.source "ExpirationCache.java"

# interfaces
.implements Lorg/jxmpp/util/cache/Cache;
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jxmpp/util/cache/ExpirationCache$EntryImpl;,
        Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/jxmpp/util/cache/Cache<",
        "TK;TV;>;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final cache:Lorg/jxmpp/util/cache/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jxmpp/util/cache/LruCache<",
            "TK;",
            "Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private defaultExpirationTime:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 1
    .param p1, "maxSize"    # I
    .param p2, "defaultExpirationTime"    # J

    .line 36
    .local p0, "this":Lorg/jxmpp/util/cache/ExpirationCache;, "Lorg/jxmpp/util/cache/ExpirationCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lorg/jxmpp/util/cache/LruCache;

    invoke-direct {v0, p1}, Lorg/jxmpp/util/cache/LruCache;-><init>(I)V

    iput-object v0, p0, Lorg/jxmpp/util/cache/ExpirationCache;->cache:Lorg/jxmpp/util/cache/LruCache;

    .line 38
    invoke-virtual {p0, p2, p3}, Lorg/jxmpp/util/cache/ExpirationCache;->setDefaultExpirationTime(J)V

    .line 39
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 175
    .local p0, "this":Lorg/jxmpp/util/cache/ExpirationCache;, "Lorg/jxmpp/util/cache/ExpirationCache<TK;TV;>;"
    iget-object v0, p0, Lorg/jxmpp/util/cache/ExpirationCache;->cache:Lorg/jxmpp/util/cache/LruCache;

    invoke-virtual {v0}, Lorg/jxmpp/util/cache/LruCache;->clear()V

    .line 176
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 158
    .local p0, "this":Lorg/jxmpp/util/cache/ExpirationCache;, "Lorg/jxmpp/util/cache/ExpirationCache<TK;TV;>;"
    iget-object v0, p0, Lorg/jxmpp/util/cache/ExpirationCache;->cache:Lorg/jxmpp/util/cache/LruCache;

    invoke-virtual {v0, p1}, Lorg/jxmpp/util/cache/LruCache;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 163
    .local p0, "this":Lorg/jxmpp/util/cache/ExpirationCache;, "Lorg/jxmpp/util/cache/ExpirationCache<TK;TV;>;"
    iget-object v0, p0, Lorg/jxmpp/util/cache/ExpirationCache;->cache:Lorg/jxmpp/util/cache/LruCache;

    invoke-virtual {v0, p1}, Lorg/jxmpp/util/cache/LruCache;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 194
    .local p0, "this":Lorg/jxmpp/util/cache/ExpirationCache;, "Lorg/jxmpp/util/cache/ExpirationCache<TK;TV;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 195
    .local v0, "res":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    iget-object v1, p0, Lorg/jxmpp/util/cache/ExpirationCache;->cache:Lorg/jxmpp/util/cache/LruCache;

    invoke-virtual {v1}, Lorg/jxmpp/util/cache/LruCache;->entrySet()Ljava/util/Set;

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

    .line 196
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement<TV;>;>;"
    new-instance v3, Lorg/jxmpp/util/cache/ExpirationCache$EntryImpl;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;

    invoke-static {v5}, Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;->access$100(Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/jxmpp/util/cache/ExpirationCache$EntryImpl;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 197
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement<TV;>;>;"
    goto :goto_0

    .line 198
    :cond_0
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
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

    .line 83
    .local p0, "this":Lorg/jxmpp/util/cache/ExpirationCache;, "Lorg/jxmpp/util/cache/ExpirationCache<TK;TV;>;"
    iget-object v0, p0, Lorg/jxmpp/util/cache/ExpirationCache;->cache:Lorg/jxmpp/util/cache/LruCache;

    invoke-virtual {v0, p1}, Lorg/jxmpp/util/cache/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;

    .line 84
    .local v0, "v":Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;, "Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement<TV;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 85
    return-object v1

    .line 87
    :cond_0
    invoke-static {v0}, Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;->access$200(Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    invoke-virtual {p0, p1}, Lorg/jxmpp/util/cache/ExpirationCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-object v1

    .line 91
    :cond_1
    invoke-static {v0}, Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;->access$100(Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getMaxCacheSize()I
    .locals 1

    .line 111
    .local p0, "this":Lorg/jxmpp/util/cache/ExpirationCache;, "Lorg/jxmpp/util/cache/ExpirationCache<TK;TV;>;"
    iget-object v0, p0, Lorg/jxmpp/util/cache/ExpirationCache;->cache:Lorg/jxmpp/util/cache/LruCache;

    invoke-virtual {v0}, Lorg/jxmpp/util/cache/LruCache;->getMaxCacheSize()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 153
    .local p0, "this":Lorg/jxmpp/util/cache/ExpirationCache;, "Lorg/jxmpp/util/cache/ExpirationCache<TK;TV;>;"
    iget-object v0, p0, Lorg/jxmpp/util/cache/ExpirationCache;->cache:Lorg/jxmpp/util/cache/LruCache;

    invoke-virtual {v0}, Lorg/jxmpp/util/cache/LruCache;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 180
    .local p0, "this":Lorg/jxmpp/util/cache/ExpirationCache;, "Lorg/jxmpp/util/cache/ExpirationCache<TK;TV;>;"
    iget-object v0, p0, Lorg/jxmpp/util/cache/ExpirationCache;->cache:Lorg/jxmpp/util/cache/LruCache;

    invoke-virtual {v0}, Lorg/jxmpp/util/cache/LruCache;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public lookup(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 76
    .local p0, "this":Lorg/jxmpp/util/cache/ExpirationCache;, "Lorg/jxmpp/util/cache/ExpirationCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lorg/jxmpp/util/cache/ExpirationCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 55
    .local p0, "this":Lorg/jxmpp/util/cache/ExpirationCache;, "Lorg/jxmpp/util/cache/ExpirationCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-wide v0, p0, Lorg/jxmpp/util/cache/ExpirationCache;->defaultExpirationTime:J

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/jxmpp/util/cache/ExpirationCache;->put(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 3
    .param p3, "expirationTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;J)TV;"
        }
    .end annotation

    .line 67
    .local p0, "this":Lorg/jxmpp/util/cache/ExpirationCache;, "Lorg/jxmpp/util/cache/ExpirationCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/jxmpp/util/cache/ExpirationCache;->cache:Lorg/jxmpp/util/cache/LruCache;

    new-instance v1, Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p3, p4, v2}, Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;-><init>(Ljava/lang/Object;JLorg/jxmpp/util/cache/ExpirationCache$1;)V

    invoke-virtual {v0, p1, v1}, Lorg/jxmpp/util/cache/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;

    .line 68
    .local v0, "eOld":Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;, "Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement<TV;>;"
    if-nez v0, :cond_0

    .line 69
    return-object v2

    .line 71
    :cond_0
    invoke-static {v0}, Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;->access$100(Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 168
    .local p0, "this":Lorg/jxmpp/util/cache/ExpirationCache;, "Lorg/jxmpp/util/cache/ExpirationCache<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 169
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/jxmpp/util/cache/ExpirationCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    goto :goto_0

    .line 171
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 102
    .local p0, "this":Lorg/jxmpp/util/cache/ExpirationCache;, "Lorg/jxmpp/util/cache/ExpirationCache<TK;TV;>;"
    iget-object v0, p0, Lorg/jxmpp/util/cache/ExpirationCache;->cache:Lorg/jxmpp/util/cache/LruCache;

    invoke-virtual {v0, p1}, Lorg/jxmpp/util/cache/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;

    .line 103
    .local v0, "e":Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;, "Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement<TV;>;"
    if-nez v0, :cond_0

    .line 104
    const/4 v1, 0x0

    return-object v1

    .line 106
    :cond_0
    invoke-static {v0}, Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;->access$100(Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public setDefaultExpirationTime(J)V
    .locals 2
    .param p1, "defaultExpirationTime"    # J

    .line 47
    .local p0, "this":Lorg/jxmpp/util/cache/ExpirationCache;, "Lorg/jxmpp/util/cache/ExpirationCache<TK;TV;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 50
    iput-wide p1, p0, Lorg/jxmpp/util/cache/ExpirationCache;->defaultExpirationTime:J

    .line 51
    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setMaxCacheSize(I)V
    .locals 1
    .param p1, "maxCacheSize"    # I

    .line 116
    .local p0, "this":Lorg/jxmpp/util/cache/ExpirationCache;, "Lorg/jxmpp/util/cache/ExpirationCache<TK;TV;>;"
    iget-object v0, p0, Lorg/jxmpp/util/cache/ExpirationCache;->cache:Lorg/jxmpp/util/cache/LruCache;

    invoke-virtual {v0, p1}, Lorg/jxmpp/util/cache/LruCache;->setMaxCacheSize(I)V

    .line 117
    return-void
.end method

.method public size()I
    .locals 1

    .line 148
    .local p0, "this":Lorg/jxmpp/util/cache/ExpirationCache;, "Lorg/jxmpp/util/cache/ExpirationCache<TK;TV;>;"
    iget-object v0, p0, Lorg/jxmpp/util/cache/ExpirationCache;->cache:Lorg/jxmpp/util/cache/LruCache;

    invoke-virtual {v0}, Lorg/jxmpp/util/cache/LruCache;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 185
    .local p0, "this":Lorg/jxmpp/util/cache/ExpirationCache;, "Lorg/jxmpp/util/cache/ExpirationCache<TK;TV;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 186
    .local v0, "res":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    iget-object v1, p0, Lorg/jxmpp/util/cache/ExpirationCache;->cache:Lorg/jxmpp/util/cache/LruCache;

    invoke-virtual {v1}, Lorg/jxmpp/util/cache/LruCache;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;

    .line 187
    .local v2, "value":Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;, "Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement<TV;>;"
    invoke-static {v2}, Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;->access$100(Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 188
    .end local v2    # "value":Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement;, "Lorg/jxmpp/util/cache/ExpirationCache$ExpireElement<TV;>;"
    goto :goto_0

    .line 189
    :cond_0
    return-object v0
.end method
