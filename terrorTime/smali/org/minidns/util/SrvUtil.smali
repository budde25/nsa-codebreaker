.class public Lorg/minidns/util/SrvUtil;
.super Ljava/lang/Object;
.source "SrvUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bisect([ID)I
    .locals 6
    .param p0, "array"    # [I
    .param p1, "value"    # D

    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "pos":I
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p0, v2

    .line 106
    .local v3, "element":I
    int-to-double v4, v3

    cmpg-double v4, p1, v4

    if-gez v4, :cond_0

    .line 107
    goto :goto_1

    .line 108
    :cond_0
    nop

    .end local v3    # "element":I
    add-int/lit8 v0, v0, 0x1

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    :cond_1
    :goto_1
    return v0
.end method

.method public static sortSrvRecords(Ljava/util/Collection;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/minidns/record/SRV;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/minidns/record/SRV;",
            ">;"
        }
    .end annotation

    .line 40
    .local p0, "srvRecords":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/minidns/record/SRV;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/minidns/record/SRV;

    iget-object v0, v0, Lorg/minidns/record/SRV;->target:Lorg/minidns/dnsname/DnsName;

    sget-object v1, Lorg/minidns/dnsname/DnsName;->ROOT:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v0, v1}, Lorg/minidns/dnsname/DnsName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 45
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 46
    .local v0, "buckets":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/util/List<Lorg/minidns/record/SRV;>;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/minidns/record/SRV;

    .line 47
    .local v2, "srvRecord":Lorg/minidns/record/SRV;
    iget v3, v2, Lorg/minidns/record/SRV;->priority:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 48
    .local v3, "priority":Ljava/lang/Integer;
    invoke-interface {v0, v3}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 49
    .local v4, "bucket":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/SRV;>;"
    if-nez v4, :cond_1

    .line 50
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    move-object v4, v5

    .line 51
    invoke-interface {v0, v3, v4}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_1
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .end local v2    # "srvRecord":Lorg/minidns/record/SRV;
    .end local v3    # "priority":Ljava/lang/Integer;
    .end local v4    # "bucket":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/SRV;>;"
    goto :goto_0

    .line 56
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 58
    .local v1, "sortedSrvRecords":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/SRV;>;"
    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 66
    .local v3, "bucket":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/SRV;>;"
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v5, v4

    .local v5, "bucketSize":I
    if-lez v4, :cond_7

    .line 67
    new-array v4, v5, [I

    .line 69
    .local v4, "totals":[I
    const/4 v6, 0x1

    .line 70
    .local v6, "zeroWeight":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/minidns/record/SRV;

    .line 71
    .local v8, "srv":Lorg/minidns/record/SRV;
    iget v9, v8, Lorg/minidns/record/SRV;->weight:I

    if-lez v9, :cond_3

    .line 72
    const/4 v6, 0x0

    .line 73
    goto :goto_4

    .line 75
    .end local v8    # "srv":Lorg/minidns/record/SRV;
    :cond_3
    goto :goto_3

    .line 77
    :cond_4
    :goto_4
    const/4 v7, 0x0

    .local v7, "bucketWeightSum":I
    const/4 v8, 0x0

    .line 78
    .local v8, "count":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/minidns/record/SRV;

    .line 79
    .local v10, "srv":Lorg/minidns/record/SRV;
    iget v11, v10, Lorg/minidns/record/SRV;->weight:I

    add-int/2addr v11, v6

    add-int/2addr v7, v11

    .line 80
    add-int/lit8 v11, v8, 0x1

    .end local v8    # "count":I
    .local v11, "count":I
    aput v7, v4, v8

    .line 81
    .end local v10    # "srv":Lorg/minidns/record/SRV;
    move v8, v11

    goto :goto_5

    .line 84
    .end local v11    # "count":I
    .restart local v8    # "count":I
    :cond_5
    if-nez v7, :cond_6

    .line 88
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    int-to-double v11, v5

    mul-double/2addr v9, v11

    double-to-int v9, v9

    .local v9, "selectedPosition":I
    goto :goto_6

    .line 90
    .end local v9    # "selectedPosition":I
    :cond_6
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    int-to-double v11, v7

    mul-double/2addr v9, v11

    .line 91
    .local v9, "rnd":D
    invoke-static {v4, v9, v10}, Lorg/minidns/util/SrvUtil;->bisect([ID)I

    move-result v9

    .line 94
    .local v9, "selectedPosition":I
    :goto_6
    invoke-interface {v3, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/minidns/record/SRV;

    .line 95
    .local v10, "choosenSrvRecord":Lorg/minidns/record/SRV;
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .end local v4    # "totals":[I
    .end local v6    # "zeroWeight":I
    .end local v7    # "bucketWeightSum":I
    .end local v8    # "count":I
    .end local v9    # "selectedPosition":I
    .end local v10    # "choosenSrvRecord":Lorg/minidns/record/SRV;
    goto :goto_2

    .line 97
    .end local v3    # "bucket":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/SRV;>;"
    .end local v5    # "bucketSize":I
    :cond_7
    goto :goto_1

    .line 99
    :cond_8
    return-object v1
.end method
