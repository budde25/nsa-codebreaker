.class public Lorg/minidns/constants/DnsRootServer;
.super Ljava/lang/Object;
.source "DnsRootServer.java"


# static fields
.field protected static final IPV4_ROOT_SERVERS:[Ljava/net/Inet4Address;

.field private static final IPV4_ROOT_SERVER_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/net/Inet4Address;",
            ">;"
        }
    .end annotation
.end field

.field protected static final IPV6_ROOT_SERVERS:[Ljava/net/Inet6Address;

.field private static final IPV6_ROOT_SERVER_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/net/Inet6Address;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/minidns/constants/DnsRootServer;->IPV4_ROOT_SERVER_MAP:Ljava/util/Map;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/minidns/constants/DnsRootServer;->IPV6_ROOT_SERVER_MAP:Ljava/util/Map;

    .line 27
    const/16 v0, 0xd

    new-array v1, v0, [Ljava/net/Inet4Address;

    .line 28
    const/16 v2, 0xc6

    const/16 v3, 0x61

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/16 v6, 0x29

    invoke-static {v3, v2, v6, v4, v5}, Lorg/minidns/constants/DnsRootServer;->rootServerInet4Address(CIIII)Ljava/net/Inet4Address;

    move-result-object v6

    aput-object v6, v1, v4

    .line 29
    const/16 v6, 0xc0

    const/16 v7, 0x62

    const/16 v8, 0xe4

    const/16 v9, 0x4f

    const/16 v10, 0xc9

    invoke-static {v7, v6, v8, v9, v10}, Lorg/minidns/constants/DnsRootServer;->rootServerInet4Address(CIIII)Ljava/net/Inet4Address;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v1, v8

    .line 30
    const/16 v7, 0x21

    const/16 v9, 0xc

    const/16 v10, 0x63

    invoke-static {v10, v6, v7, v5, v9}, Lorg/minidns/constants/DnsRootServer;->rootServerInet4Address(CIIII)Ljava/net/Inet4Address;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v1, v11

    .line 31
    const/16 v10, 0xc7

    const/4 v12, 0x7

    const/16 v13, 0x64

    const/16 v14, 0x5b

    invoke-static {v13, v10, v12, v14, v0}, Lorg/minidns/constants/DnsRootServer;->rootServerInet4Address(CIIII)Ljava/net/Inet4Address;

    move-result-object v0

    const/4 v13, 0x3

    aput-object v0, v1, v13

    .line 32
    const/16 v0, 0xa

    const/16 v14, 0x65

    const/16 v15, 0xcb

    const/16 v13, 0xe6

    invoke-static {v14, v6, v15, v13, v0}, Lorg/minidns/constants/DnsRootServer;->rootServerInet4Address(CIIII)Ljava/net/Inet4Address;

    move-result-object v13

    aput-object v13, v1, v5

    .line 33
    const/4 v13, 0x5

    const/16 v14, 0x66

    const/16 v15, 0xf1

    invoke-static {v14, v6, v13, v13, v15}, Lorg/minidns/constants/DnsRootServer;->rootServerInet4Address(CIIII)Ljava/net/Inet4Address;

    move-result-object v14

    aput-object v14, v1, v13

    .line 34
    const/16 v14, 0x67

    const/16 v15, 0x70

    const/16 v13, 0x24

    invoke-static {v14, v6, v15, v13, v5}, Lorg/minidns/constants/DnsRootServer;->rootServerInet4Address(CIIII)Ljava/net/Inet4Address;

    move-result-object v13

    const/4 v14, 0x6

    aput-object v13, v1, v14

    .line 35
    const/16 v13, 0x68

    const/16 v14, 0xbe

    const/16 v15, 0x35

    invoke-static {v13, v2, v3, v14, v15}, Lorg/minidns/constants/DnsRootServer;->rootServerInet4Address(CIIII)Ljava/net/Inet4Address;

    move-result-object v2

    aput-object v2, v1, v12

    .line 36
    const/16 v2, 0x69

    const/16 v3, 0x24

    const/16 v13, 0x94

    const/16 v14, 0x11

    invoke-static {v2, v6, v3, v13, v14}, Lorg/minidns/constants/DnsRootServer;->rootServerInet4Address(CIIII)Ljava/net/Inet4Address;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 37
    const/16 v2, 0x6a

    const/16 v3, 0x3a

    const/16 v13, 0x80

    const/16 v14, 0x1e

    invoke-static {v2, v6, v3, v13, v14}, Lorg/minidns/constants/DnsRootServer;->rootServerInet4Address(CIIII)Ljava/net/Inet4Address;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 38
    const/16 v2, 0x6b

    const/16 v3, 0xc1

    const/16 v6, 0xe

    const/16 v13, 0x81

    invoke-static {v2, v3, v4, v6, v13}, Lorg/minidns/constants/DnsRootServer;->rootServerInet4Address(CIIII)Ljava/net/Inet4Address;

    move-result-object v2

    aput-object v2, v1, v0

    .line 39
    const/16 v2, 0x6c

    const/16 v3, 0x53

    const/16 v6, 0x2a

    invoke-static {v2, v10, v12, v3, v6}, Lorg/minidns/constants/DnsRootServer;->rootServerInet4Address(CIIII)Ljava/net/Inet4Address;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    .line 40
    const/16 v2, 0x6d

    const/16 v3, 0xca

    const/16 v6, 0x1b

    invoke-static {v2, v3, v9, v6, v7}, Lorg/minidns/constants/DnsRootServer;->rootServerInet4Address(CIIII)Ljava/net/Inet4Address;

    move-result-object v2

    aput-object v2, v1, v9

    sput-object v1, Lorg/minidns/constants/DnsRootServer;->IPV4_ROOT_SERVERS:[Ljava/net/Inet4Address;

    .line 43
    new-array v0, v0, [Ljava/net/Inet6Address;

    .line 44
    const/16 v16, 0x61

    const/16 v17, 0x2001

    const/16 v18, 0x503

    const v19, 0xba3e

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x2

    const/16 v24, 0x30

    invoke-static/range {v16 .. v24}, Lorg/minidns/constants/DnsRootServer;->rootServerInet6Address(CIIIIIIII)Ljava/net/Inet6Address;

    move-result-object v1

    aput-object v1, v0, v4

    .line 45
    const/16 v16, 0x62

    const/16 v18, 0x500

    const/16 v19, 0x84

    const/16 v23, 0x0

    const/16 v24, 0xb

    invoke-static/range {v16 .. v24}, Lorg/minidns/constants/DnsRootServer;->rootServerInet6Address(CIIIIIIII)Ljava/net/Inet6Address;

    move-result-object v1

    aput-object v1, v0, v8

    .line 46
    const/16 v16, 0x63

    const/16 v19, 0x2

    const/16 v24, 0xc

    invoke-static/range {v16 .. v24}, Lorg/minidns/constants/DnsRootServer;->rootServerInet6Address(CIIIIIIII)Ljava/net/Inet6Address;

    move-result-object v1

    aput-object v1, v0, v11

    .line 47
    const/16 v16, 0x64

    const/16 v19, 0x2d

    const/16 v24, 0xd

    invoke-static/range {v16 .. v24}, Lorg/minidns/constants/DnsRootServer;->rootServerInet6Address(CIIIIIIII)Ljava/net/Inet6Address;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 48
    const/16 v16, 0x66

    const/16 v19, 0x2f

    const/16 v24, 0xf

    invoke-static/range {v16 .. v24}, Lorg/minidns/constants/DnsRootServer;->rootServerInet6Address(CIIIIIIII)Ljava/net/Inet6Address;

    move-result-object v1

    aput-object v1, v0, v5

    .line 49
    const/16 v16, 0x68

    const/16 v19, 0x1

    const/16 v24, 0x53

    invoke-static/range {v16 .. v24}, Lorg/minidns/constants/DnsRootServer;->rootServerInet6Address(CIIIIIIII)Ljava/net/Inet6Address;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 50
    const/16 v3, 0x69

    const/16 v4, 0x2001

    const/16 v5, 0x7fe

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x53

    invoke-static/range {v3 .. v11}, Lorg/minidns/constants/DnsRootServer;->rootServerInet6Address(CIIIIIIII)Ljava/net/Inet6Address;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 51
    const/16 v3, 0x6a

    const/16 v5, 0x503

    const/16 v6, 0xc27

    const/4 v10, 0x2

    const/16 v11, 0x30

    invoke-static/range {v3 .. v11}, Lorg/minidns/constants/DnsRootServer;->rootServerInet6Address(CIIIIIIII)Ljava/net/Inet6Address;

    move-result-object v1

    aput-object v1, v0, v12

    .line 52
    const/16 v2, 0x6c

    const/16 v3, 0x2001

    const/16 v4, 0x500

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/16 v10, 0x42

    invoke-static/range {v2 .. v10}, Lorg/minidns/constants/DnsRootServer;->rootServerInet6Address(CIIIIIIII)Ljava/net/Inet6Address;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 53
    const/16 v3, 0x6d

    const/16 v4, 0x2001

    const/16 v5, 0xdc3

    const/4 v10, 0x0

    const/16 v11, 0x35

    invoke-static/range {v3 .. v11}, Lorg/minidns/constants/DnsRootServer;->rootServerInet6Address(CIIIIIIII)Ljava/net/Inet6Address;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lorg/minidns/constants/DnsRootServer;->IPV6_ROOT_SERVERS:[Ljava/net/Inet6Address;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIpv4RootServerById(C)Ljava/net/Inet4Address;
    .locals 2
    .param p0, "id"    # C

    .line 100
    sget-object v0, Lorg/minidns/constants/DnsRootServer;->IPV4_ROOT_SERVER_MAP:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    return-object v0
.end method

.method public static getIpv6RootServerById(C)Ljava/net/Inet6Address;
    .locals 2
    .param p0, "id"    # C

    .line 104
    sget-object v0, Lorg/minidns/constants/DnsRootServer;->IPV6_ROOT_SERVER_MAP:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Inet6Address;

    return-object v0
.end method

.method public static getRandomIpv4RootServer(Ljava/util/Random;)Ljava/net/Inet4Address;
    .locals 2
    .param p0, "random"    # Ljava/util/Random;

    .line 92
    sget-object v0, Lorg/minidns/constants/DnsRootServer;->IPV4_ROOT_SERVERS:[Ljava/net/Inet4Address;

    array-length v1, v0

    invoke-virtual {p0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getRandomIpv6RootServer(Ljava/util/Random;)Ljava/net/Inet6Address;
    .locals 2
    .param p0, "random"    # Ljava/util/Random;

    .line 96
    sget-object v0, Lorg/minidns/constants/DnsRootServer;->IPV6_ROOT_SERVERS:[Ljava/net/Inet6Address;

    array-length v1, v0

    invoke-virtual {p0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static rootServerInet4Address(CIIII)Ljava/net/Inet4Address;
    .locals 4
    .param p0, "rootServerId"    # C
    .param p1, "addr0"    # I
    .param p2, "addr1"    # I
    .param p3, "addr2"    # I
    .param p4, "addr3"    # I

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ".root-servers.net"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x4

    :try_start_0
    new-array v1, v1, [B

    const/4 v2, 0x0

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    int-to-byte v3, p2

    aput-byte v3, v1, v2

    const/4 v2, 0x2

    int-to-byte v3, p3

    aput-byte v3, v1, v2

    const/4 v2, 0x3

    int-to-byte v3, p4

    aput-byte v3, v1, v2

    invoke-static {v0, v1}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v1

    check-cast v1, Ljava/net/Inet4Address;

    .line 62
    .local v1, "inetAddress":Ljava/net/Inet4Address;
    sget-object v2, Lorg/minidns/constants/DnsRootServer;->IPV4_ROOT_SERVER_MAP:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    nop

    .line 68
    return-object v1

    .line 63
    .end local v1    # "inetAddress":Ljava/net/Inet4Address;
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static rootServerInet6Address(CIIIIIIII)Ljava/net/Inet6Address;
    .locals 4
    .param p0, "rootServerId"    # C
    .param p1, "addr0"    # I
    .param p2, "addr1"    # I
    .param p3, "addr2"    # I
    .param p4, "addr3"    # I
    .param p5, "addr4"    # I
    .param p6, "addr5"    # I
    .param p7, "addr6"    # I
    .param p8, "addr7"    # I

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ".root-servers.net"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "name":Ljava/lang/String;
    const/16 v1, 0x10

    :try_start_0
    new-array v1, v1, [B

    const/4 v2, 0x0

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    const/4 v2, 0x2

    shr-int/lit8 v3, p2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x3

    int-to-byte v3, p2

    aput-byte v3, v1, v2

    const/4 v2, 0x4

    shr-int/lit8 v3, p3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x5

    int-to-byte v3, p3

    aput-byte v3, v1, v2

    const/4 v2, 0x6

    shr-int/lit8 v3, p4, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x7

    int-to-byte v3, p4

    aput-byte v3, v1, v2

    shr-int/lit8 v2, p5, 0x8

    int-to-byte v2, v2

    const/16 v3, 0x8

    aput-byte v2, v1, v3

    const/16 v2, 0x9

    int-to-byte v3, p5

    aput-byte v3, v1, v2

    const/16 v2, 0xa

    shr-int/lit8 v3, p6, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0xb

    int-to-byte v3, p6

    aput-byte v3, v1, v2

    const/16 v2, 0xc

    shr-int/lit8 v3, p7, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0xd

    int-to-byte v3, p7

    aput-byte v3, v1, v2

    const/16 v2, 0xe

    shr-int/lit8 v3, p8, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0xf

    int-to-byte v3, p8

    aput-byte v3, v1, v2

    invoke-static {v0, v1}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v1

    check-cast v1, Ljava/net/Inet6Address;

    .line 83
    .local v1, "inetAddress":Ljava/net/Inet6Address;
    sget-object v2, Lorg/minidns/constants/DnsRootServer;->IPV6_ROOT_SERVER_MAP:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    nop

    .line 88
    return-object v1

    .line 84
    .end local v1    # "inetAddress":Ljava/net/Inet6Address;
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
