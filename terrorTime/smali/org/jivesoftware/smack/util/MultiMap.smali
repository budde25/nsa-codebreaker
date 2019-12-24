.class public Lorg/jivesoftware/smack/util/MultiMap;
.super Ljava/lang/Object;
.source "MultiMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/util/MultiMap$SimpleMapEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DEFAULT_MAP_SIZE:I = 0x6

.field private static final ENTRY_LIST_SIZE:I = 0x3


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    .local p0, "this":Lorg/jivesoftware/smack/util/MultiMap;, "Lorg/jivesoftware/smack/util/MultiMap<TK;TV;>;"
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/util/MultiMap;-><init>(I)V

    .line 52
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 59
    .local p0, "this":Lorg/jivesoftware/smack/util/MultiMap;, "Lorg/jivesoftware/smack/util/MultiMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lorg/jivesoftware/smack/util/MultiMap;->map:Ljava/util/Map;

    .line 61
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 180
    .local p0, "this":Lorg/jivesoftware/smack/util/MultiMap;, "Lorg/jivesoftware/smack/util/MultiMap<TK;TV;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/MultiMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 181
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 76
    .local p0, "this":Lorg/jivesoftware/smack/util/MultiMap;, "Lorg/jivesoftware/smack/util/MultiMap<TK;TV;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/MultiMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 80
    .local p0, "this":Lorg/jivesoftware/smack/util/MultiMap;, "Lorg/jivesoftware/smack/util/MultiMap<TK;TV;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/MultiMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 81
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TV;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    const/4 v0, 0x1

    return v0

    .line 84
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<TV;>;"
    :cond_0
    goto :goto_0

    .line 85
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 201
    .local p0, "this":Lorg/jivesoftware/smack/util/MultiMap;, "Lorg/jivesoftware/smack/util/MultiMap<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/MultiMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 202
    .local v0, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    iget-object v1, p0, Lorg/jivesoftware/smack/util/MultiMap;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 203
    .local v2, "entries":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/List<TV;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 204
    .local v3, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 205
    .local v5, "value":Ljava/lang/Object;, "TV;"
    new-instance v6, Lorg/jivesoftware/smack/util/MultiMap$SimpleMapEntry;

    const/4 v7, 0x0

    invoke-direct {v6, v3, v5, v7}, Lorg/jivesoftware/smack/util/MultiMap$SimpleMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/jivesoftware/smack/util/MultiMap$1;)V

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 206
    .end local v5    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_1

    .line 207
    .end local v2    # "entries":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/List<TV;>;>;"
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    :cond_0
    goto :goto_0

    .line 208
    :cond_1
    return-object v0
.end method

.method public getAll(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 113
    .local p0, "this":Lorg/jivesoftware/smack/util/MultiMap;, "Lorg/jivesoftware/smack/util/MultiMap<TK;TV;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/MultiMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 114
    .local v0, "res":Ljava/util/List;, "Ljava/util/List<TV;>;"
    if-nez v0, :cond_0

    .line 115
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 117
    :cond_0
    return-object v0
.end method

.method public getFirst(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 95
    .local p0, "this":Lorg/jivesoftware/smack/util/MultiMap;, "Lorg/jivesoftware/smack/util/MultiMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/util/MultiMap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 96
    .local v0, "res":Ljava/util/List;, "Ljava/util/List<TV;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    const/4 v1, 0x0

    return-object v1

    .line 99
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 72
    .local p0, "this":Lorg/jivesoftware/smack/util/MultiMap;, "Lorg/jivesoftware/smack/util/MultiMap<TK;TV;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/MultiMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

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

    .line 184
    .local p0, "this":Lorg/jivesoftware/smack/util/MultiMap;, "Lorg/jivesoftware/smack/util/MultiMap<TK;TV;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/MultiMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .line 122
    .local p0, "this":Lorg/jivesoftware/smack/util/MultiMap;, "Lorg/jivesoftware/smack/util/MultiMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/MultiMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 123
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TV;>;"
    if-nez v0, :cond_0

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v1

    .line 125
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v1, p0, Lorg/jivesoftware/smack/util/MultiMap;->map:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const/4 v1, 0x0

    .local v1, "keyExisted":Z
    goto :goto_0

    .line 129
    .end local v1    # "keyExisted":Z
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    const/4 v1, 0x1

    .line 132
    .restart local v1    # "keyExisted":Z
    :goto_0
    return v1
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

    .line 174
    .local p0, "this":Lorg/jivesoftware/smack/util/MultiMap;, "Lorg/jivesoftware/smack/util/MultiMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
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

    .line 175
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/jivesoftware/smack/util/MultiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 176
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    goto :goto_0

    .line 177
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

    .line 142
    .local p0, "this":Lorg/jivesoftware/smack/util/MultiMap;, "Lorg/jivesoftware/smack/util/MultiMap<TK;TV;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/MultiMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 143
    .local v0, "res":Ljava/util/List;, "Ljava/util/List<TV;>;"
    if-nez v0, :cond_0

    .line 144
    const/4 v1, 0x0

    return-object v1

    .line 146
    :cond_0
    nop

    .line 147
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public removeOne(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)Z"
        }
    .end annotation

    .line 161
    .local p0, "this":Lorg/jivesoftware/smack/util/MultiMap;, "Lorg/jivesoftware/smack/util/MultiMap<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/MultiMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 162
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TV;>;"
    if-nez v0, :cond_0

    .line 163
    const/4 v1, 0x0

    return v1

    .line 165
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 166
    .local v1, "res":Z
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    iget-object v2, p0, Lorg/jivesoftware/smack/util/MultiMap;->map:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_1
    return v1
.end method

.method public size()I
    .locals 4

    .line 64
    .local p0, "this":Lorg/jivesoftware/smack/util/MultiMap;, "Lorg/jivesoftware/smack/util/MultiMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 65
    .local v0, "size":I
    iget-object v1, p0, Lorg/jivesoftware/smack/util/MultiMap;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 66
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<TV;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 67
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<TV;>;"
    goto :goto_0

    .line 68
    :cond_0
    return v0
.end method

.method public values()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 193
    .local p0, "this":Lorg/jivesoftware/smack/util/MultiMap;, "Lorg/jivesoftware/smack/util/MultiMap<TK;TV;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/MultiMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 194
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<TV;>;"
    iget-object v1, p0, Lorg/jivesoftware/smack/util/MultiMap;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 195
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<TV;>;"
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 196
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<TV;>;"
    goto :goto_0

    .line 197
    :cond_0
    return-object v0
.end method
