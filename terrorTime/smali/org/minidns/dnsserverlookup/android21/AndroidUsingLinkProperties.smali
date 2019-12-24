.class public Lorg/minidns/dnsserverlookup/android21/AndroidUsingLinkProperties;
.super Lorg/minidns/dnsserverlookup/AbstractDnsServerLookupMechanism;
.source "AndroidUsingLinkProperties.java"


# instance fields
.field private final connectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    const-class v0, Lorg/minidns/dnsserverlookup/android21/AndroidUsingLinkProperties;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e6

    invoke-direct {p0, v0, v1}, Lorg/minidns/dnsserverlookup/AbstractDnsServerLookupMechanism;-><init>(Ljava/lang/String;I)V

    .line 54
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lorg/minidns/dnsserverlookup/android21/AndroidUsingLinkProperties;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 55
    return-void
.end method

.method private static hasDefaultRoute(Landroid/net/LinkProperties;)Z
    .locals 3
    .param p0, "linkProperties"    # Landroid/net/LinkProperties;

    .line 94
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 95
    .local v1, "route":Landroid/net/RouteInfo;
    invoke-virtual {v1}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    const/4 v0, 0x1

    return v0

    .line 98
    .end local v1    # "route":Landroid/net/RouteInfo;
    :cond_0
    goto :goto_0

    .line 99
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static setup(Landroid/content/Context;)Lorg/minidns/dnsserverlookup/android21/AndroidUsingLinkProperties;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 47
    new-instance v0, Lorg/minidns/dnsserverlookup/android21/AndroidUsingLinkProperties;

    invoke-direct {v0, p0}, Lorg/minidns/dnsserverlookup/android21/AndroidUsingLinkProperties;-><init>(Landroid/content/Context;)V

    .line 48
    .local v0, "androidUsingLinkProperties":Lorg/minidns/dnsserverlookup/android21/AndroidUsingLinkProperties;
    invoke-static {v0}, Lorg/minidns/DnsClient;->addDnsServerLookupMechanism(Lorg/minidns/dnsserverlookup/DnsServerLookupMechanism;)V

    .line 49
    return-object v0
.end method


# virtual methods
.method public getDnsServerAddresses()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lorg/minidns/dnsserverlookup/android21/AndroidUsingLinkProperties;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    .line 66
    .local v0, "networks":[Landroid/net/Network;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 67
    return-object v1

    .line 70
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 71
    .local v2, "servers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, v0, v5

    .line 72
    .local v6, "network":Landroid/net/Network;
    iget-object v7, p0, Lorg/minidns/dnsserverlookup/android21/AndroidUsingLinkProperties;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v7, v6}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v7

    .line 73
    .local v7, "linkProperties":Landroid/net/LinkProperties;
    if-nez v7, :cond_1

    .line 74
    goto :goto_1

    .line 78
    :cond_1
    invoke-static {v7}, Lorg/minidns/dnsserverlookup/android21/AndroidUsingLinkProperties;->hasDefaultRoute(Landroid/net/LinkProperties;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 79
    invoke-virtual {v7}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lorg/minidns/dnsserverlookup/android21/AndroidUsingLinkProperties;->toListOfStrings(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v2, v4, v8}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_1

    .line 81
    :cond_2
    invoke-virtual {v7}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lorg/minidns/dnsserverlookup/android21/AndroidUsingLinkProperties;->toListOfStrings(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 71
    .end local v6    # "network":Landroid/net/Network;
    .end local v7    # "linkProperties":Landroid/net/LinkProperties;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 85
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 86
    return-object v1

    .line 89
    :cond_4
    return-object v2
.end method

.method public isAvailable()Z
    .locals 2

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
