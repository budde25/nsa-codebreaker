.class Lorg/minidns/iterative/IterativeDnsClient$IpResultSet;
.super Ljava/lang/Object;
.source "IterativeDnsClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/iterative/IterativeDnsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IpResultSet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/minidns/iterative/IterativeDnsClient$IpResultSet$Builder;
    }
.end annotation


# instance fields
.field final addresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/Random;)V
    .locals 6
    .param p3, "random"    # Ljava/util/Random;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/Random;",
            ")V"
        }
    .end annotation

    .line 427
    .local p1, "ipv4Addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .local p2, "ipv6Addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    sget-object v0, Lorg/minidns/iterative/IterativeDnsClient$1;->$SwitchMap$org$minidns$AbstractDnsClient$IpVersionSetting:[I

    invoke-static {}, Lorg/minidns/iterative/IterativeDnsClient;->access$300()Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    move-result-object v1

    invoke-virtual {v1}, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    .line 439
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v0, v3

    .local v0, "size":I
    goto :goto_0

    .line 434
    .end local v0    # "size":I
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 435
    .restart local v0    # "size":I
    goto :goto_0

    .line 431
    .end local v0    # "size":I
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 432
    .restart local v0    # "size":I
    nop

    .line 443
    :goto_0
    if-nez v0, :cond_2

    .line 446
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/minidns/iterative/IterativeDnsClient$IpResultSet;->addresses:Ljava/util/List;

    goto :goto_2

    .line 449
    :cond_2
    invoke-static {}, Lorg/minidns/iterative/IterativeDnsClient;->access$400()Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    move-result-object v3

    iget-boolean v3, v3, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->v4:Z

    if-eqz v3, :cond_3

    .line 450
    invoke-static {p1, p3}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 452
    :cond_3
    invoke-static {}, Lorg/minidns/iterative/IterativeDnsClient;->access$500()Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    move-result-object v3

    iget-boolean v3, v3, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->v6:Z

    if-eqz v3, :cond_4

    .line 453
    invoke-static {p2, p3}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 456
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 459
    .local v3, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    sget-object v4, Lorg/minidns/iterative/IterativeDnsClient$1;->$SwitchMap$org$minidns$AbstractDnsClient$IpVersionSetting:[I

    invoke-static {}, Lorg/minidns/iterative/IterativeDnsClient;->access$600()Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    move-result-object v5

    invoke-virtual {v5}, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v2, :cond_8

    if-eq v4, v1, :cond_7

    const/4 v1, 0x3

    if-eq v4, v1, :cond_6

    const/4 v1, 0x4

    if-eq v4, v1, :cond_5

    goto :goto_1

    .line 471
    :cond_5
    invoke-interface {v3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 472
    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 467
    :cond_6
    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 468
    invoke-interface {v3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 469
    goto :goto_1

    .line 464
    :cond_7
    invoke-interface {v3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 465
    goto :goto_1

    .line 461
    :cond_8
    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 462
    nop

    .line 476
    :goto_1
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/minidns/iterative/IterativeDnsClient$IpResultSet;->addresses:Ljava/util/List;

    .line 478
    .end local v3    # "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    :goto_2
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/Random;Lorg/minidns/iterative/IterativeDnsClient$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Ljava/util/List;
    .param p3, "x2"    # Ljava/util/Random;
    .param p4, "x3"    # Lorg/minidns/iterative/IterativeDnsClient$1;

    .line 423
    invoke-direct {p0, p1, p2, p3}, Lorg/minidns/iterative/IterativeDnsClient$IpResultSet;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/Random;)V

    return-void
.end method
