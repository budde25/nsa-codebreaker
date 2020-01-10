.class public Lorg/minidns/util/InetAddressUtil;
.super Ljava/lang/Object;
.source "InetAddressUtil.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final IPV4_PATTERN:Ljava/util/regex/Pattern;

.field private static final IPV6_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    nop

    .line 51
    const-string v0, "\\A(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)(\\.(25[0-5]|2[0-4]\\d|[0-1]?\\d?\\d)){3}\\z"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/minidns/util/InetAddressUtil;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    .line 62
    const-string v0, "(([0-9a-fA-F]{1,4}:){7,7}[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,7}:|([0-9a-fA-F]{1,4}:){1,6}:[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,5}(:[0-9a-fA-F]{1,4}){1,2}|([0-9a-fA-F]{1,4}:){1,4}(:[0-9a-fA-F]{1,4}){1,3}|([0-9a-fA-F]{1,4}:){1,3}(:[0-9a-fA-F]{1,4}){1,4}|([0-9a-fA-F]{1,4}:){1,2}(:[0-9a-fA-F]{1,4}){1,5}|[0-9a-fA-F]{1,4}:((:[0-9a-fA-F]{1,4}){1,6})|:((:[0-9a-fA-F]{1,4}){1,7}|:)|fe80:(:[0-9a-fA-F]{0,4}){0,4}%[0-9a-zA-Z]{1,}|::(ffff(:0{1,4}){0,1}:){0,1}((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])|([0-9a-fA-F]{1,4}:){1,4}:((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9]))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/minidns/util/InetAddressUtil;->IPV6_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ipv4From(Ljava/lang/CharSequence;)Ljava/net/Inet4Address;
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 26
    :try_start_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .local v0, "inetAddress":Ljava/net/InetAddress;
    nop

    .line 30
    instance-of v1, v0, Ljava/net/Inet4Address;

    if-eqz v1, :cond_0

    .line 31
    move-object v1, v0

    check-cast v1, Ljava/net/Inet4Address;

    return-object v1

    .line 33
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 27
    .end local v0    # "inetAddress":Ljava/net/InetAddress;
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static ipv6From(Ljava/lang/CharSequence;)Ljava/net/Inet6Address;
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 39
    :try_start_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .local v0, "inetAddress":Ljava/net/InetAddress;
    nop

    .line 43
    instance-of v1, v0, Ljava/net/Inet6Address;

    if-eqz v1, :cond_0

    .line 44
    move-object v1, v0

    check-cast v1, Ljava/net/Inet6Address;

    return-object v1

    .line 46
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 40
    .end local v0    # "inetAddress":Ljava/net/InetAddress;
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static isIpAddress(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "address"    # Ljava/lang/CharSequence;

    .line 73
    invoke-static {p0}, Lorg/minidns/util/InetAddressUtil;->isIpV6Address(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/minidns/util/InetAddressUtil;->isIpV4Address(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isIpV4Address(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "address"    # Ljava/lang/CharSequence;

    .line 54
    if-nez p0, :cond_0

    .line 55
    const/4 v0, 0x0

    return v0

    .line 57
    :cond_0
    sget-object v0, Lorg/minidns/util/InetAddressUtil;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static isIpV6Address(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "address"    # Ljava/lang/CharSequence;

    .line 66
    if-nez p0, :cond_0

    .line 67
    const/4 v0, 0x0

    return v0

    .line 69
    :cond_0
    sget-object v0, Lorg/minidns/util/InetAddressUtil;->IPV6_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static reverseIpAddressOf(Ljava/net/Inet4Address;)Lorg/minidns/dnsname/DnsName;
    .locals 2
    .param p0, "inet4Address"    # Ljava/net/Inet4Address;

    .line 97
    invoke-virtual {p0}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "ipAddressParts":[Ljava/lang/String;
    nop

    .line 100
    invoke-static {v0}, Lorg/minidns/dnsname/DnsName;->from([Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    move-result-object v1

    return-object v1
.end method

.method public static reverseIpAddressOf(Ljava/net/Inet6Address;)Lorg/minidns/dnsname/DnsName;
    .locals 10
    .param p0, "inet6Address"    # Ljava/net/Inet6Address;

    .line 77
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "ipAddress":Ljava/lang/String;
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "ipAddressParts":[Ljava/lang/String;
    const/16 v2, 0x20

    new-array v2, v2, [Ljava/lang/String;

    .line 81
    .local v2, "parts":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 82
    .local v3, "currentPartNum":I
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_2

    .line 83
    aget-object v5, v1, v4

    .line 84
    .local v5, "currentPart":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    rsub-int/lit8 v6, v6, 0x4

    .line 85
    .local v6, "missingPlaces":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v6, :cond_0

    .line 86
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "currentPartNum":I
    .local v8, "currentPartNum":I
    const-string v9, "0"

    aput-object v9, v2, v3

    .line 85
    add-int/lit8 v7, v7, 0x1

    move v3, v8

    goto :goto_1

    .line 88
    .end local v7    # "j":I
    .end local v8    # "currentPartNum":I
    .restart local v3    # "currentPartNum":I
    :cond_0
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 89
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "currentPartNum":I
    .restart local v8    # "currentPartNum":I
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v3

    .line 88
    add-int/lit8 v7, v7, 0x1

    move v3, v8

    goto :goto_2

    .line 82
    .end local v5    # "currentPart":Ljava/lang/String;
    .end local v6    # "missingPlaces":I
    .end local v7    # "j":I
    .end local v8    # "currentPartNum":I
    .restart local v3    # "currentPartNum":I
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 93
    .end local v4    # "i":I
    :cond_2
    invoke-static {v2}, Lorg/minidns/dnsname/DnsName;->from([Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    move-result-object v4

    return-object v4
.end method
