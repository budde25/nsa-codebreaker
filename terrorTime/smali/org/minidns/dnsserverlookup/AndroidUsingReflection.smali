.class public Lorg/minidns/dnsserverlookup/AndroidUsingReflection;
.super Lorg/minidns/dnsserverlookup/AbstractDnsServerLookupMechanism;
.source "AndroidUsingReflection.java"


# static fields
.field public static final INSTANCE:Lorg/minidns/dnsserverlookup/DnsServerLookupMechanism;

.field public static final PRIORITY:I = 0x3e8


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lorg/minidns/dnsserverlookup/AndroidUsingReflection;

    invoke-direct {v0}, Lorg/minidns/dnsserverlookup/AndroidUsingReflection;-><init>()V

    sput-object v0, Lorg/minidns/dnsserverlookup/AndroidUsingReflection;->INSTANCE:Lorg/minidns/dnsserverlookup/DnsServerLookupMechanism;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 30
    const-class v0, Lorg/minidns/dnsserverlookup/AndroidUsingReflection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-direct {p0, v0, v1}, Lorg/minidns/dnsserverlookup/AbstractDnsServerLookupMechanism;-><init>(Ljava/lang/String;I)V

    .line 31
    return-void
.end method


# virtual methods
.method public getDnsServerAddresses()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 36
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 37
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 38
    .local v1, "SystemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 41
    .local v2, "method":Ljava/lang/reflect/Method;
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 43
    .local v4, "servers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "net.dns1"

    const-string v7, "net.dns2"

    const-string v8, "net.dns3"

    const-string v9, "net.dns4"

    filled-new-array {v5, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v5

    array-length v7, v5

    move v8, v6

    :goto_0
    if-ge v8, v7, :cond_7

    aget-object v9, v5, v8

    .line 46
    .local v9, "propKey":Ljava/lang/String;
    new-array v10, v3, [Ljava/lang/Object;

    aput-object v9, v10, v6

    invoke-virtual {v2, v0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 48
    .local v10, "value":Ljava/lang/String;
    if-nez v10, :cond_0

    goto :goto_1

    .line 49
    :cond_0
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_1

    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_1

    .line 52
    :cond_2
    invoke-static {v10}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v11

    .line 54
    .local v11, "ip":Ljava/net/InetAddress;
    if-nez v11, :cond_3

    goto :goto_1

    .line 56
    :cond_3
    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    .line 58
    if-nez v10, :cond_4

    goto :goto_1

    .line 59
    :cond_4
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_5

    goto :goto_1

    .line 60
    :cond_5
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    goto :goto_1

    .line 62
    :cond_6
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .end local v9    # "propKey":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    .end local v11    # "ip":Ljava/net/InetAddress;
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 65
    :cond_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v3, :cond_8

    .line 66
    return-object v4

    .line 71
    .end local v1    # "SystemProperties":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "servers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    goto :goto_2

    .line 68
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/minidns/dnsserverlookup/AndroidUsingReflection;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Exception in findDNSByReflection"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 77
    invoke-static {}, Lorg/minidns/util/PlatformDetection;->isAndroid()Z

    move-result v0

    return v0
.end method
