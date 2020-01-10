.class public Lorg/minidns/dnsserverlookup/AndroidUsingExec;
.super Lorg/minidns/dnsserverlookup/AbstractDnsServerLookupMechanism;
.source "AndroidUsingExec.java"


# static fields
.field public static final INSTANCE:Lorg/minidns/dnsserverlookup/DnsServerLookupMechanism;

.field public static final PRIORITY:I = 0x3e7

.field private static final PROP_DELIM:Ljava/lang/String; = "]: ["


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lorg/minidns/dnsserverlookup/AndroidUsingExec;

    invoke-direct {v0}, Lorg/minidns/dnsserverlookup/AndroidUsingExec;-><init>()V

    sput-object v0, Lorg/minidns/dnsserverlookup/AndroidUsingExec;->INSTANCE:Lorg/minidns/dnsserverlookup/DnsServerLookupMechanism;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 37
    const-class v0, Lorg/minidns/dnsserverlookup/AndroidUsingExec;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e7

    invoke-direct {p0, v0, v1}, Lorg/minidns/dnsserverlookup/AbstractDnsServerLookupMechanism;-><init>(Ljava/lang/String;I)V

    .line 38
    return-void
.end method

.method protected static parseProps(Ljava/io/BufferedReader;Z)Ljava/util/Set;
    .locals 9
    .param p0, "lnr"    # Ljava/io/BufferedReader;
    .param p1, "logWarning"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            "Z)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "line":Ljava/lang/String;
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 69
    .local v1, "server":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    if-eqz v2, :cond_9

    .line 70
    const-string v2, "]: ["

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 71
    .local v3, "split":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 72
    goto :goto_0

    .line 74
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 76
    .local v5, "property":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    .line 77
    .local v2, "valueStart":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v4

    .line 78
    .local v6, "valueEnd":I
    if-ge v6, v2, :cond_2

    .line 81
    if-eqz p1, :cond_0

    .line 82
    sget-object v4, Lorg/minidns/dnsserverlookup/AndroidUsingExec;->LOGGER:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Malformed property detected: \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x22

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 90
    goto :goto_0

    .line 93
    :cond_3
    const-string v7, ".dns"

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, ".dns1"

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 94
    const-string v7, ".dns2"

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, ".dns3"

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 95
    const-string v7, ".dns4"

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 99
    :cond_4
    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    .line 101
    .local v7, "ip":Ljava/net/InetAddress;
    if-nez v7, :cond_5

    goto :goto_0

    .line 103
    :cond_5
    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 105
    if-nez v4, :cond_6

    goto/16 :goto_0

    .line 106
    :cond_6
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_7

    goto/16 :goto_0

    .line 108
    :cond_7
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    .end local v2    # "valueStart":I
    .end local v3    # "split":I
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "property":Ljava/lang/String;
    .end local v6    # "valueEnd":I
    .end local v7    # "ip":Ljava/net/InetAddress;
    :cond_8
    goto/16 :goto_0

    .line 112
    :cond_9
    return-object v1
.end method


# virtual methods
.method public getDnsServerAddresses()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "getprop"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 44
    .local v0, "process":Ljava/lang/Process;
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 45
    .local v1, "inputStream":Ljava/io/InputStream;
    new-instance v2, Ljava/io/LineNumberReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 47
    .local v2, "lnr":Ljava/io/LineNumberReader;
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/minidns/dnsserverlookup/AndroidUsingExec;->parseProps(Ljava/io/BufferedReader;Z)Ljava/util/Set;

    move-result-object v3

    .line 48
    .local v3, "server":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 49
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    .local v4, "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    return-object v4

    .line 55
    .end local v0    # "process":Ljava/lang/Process;
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "lnr":Ljava/io/LineNumberReader;
    .end local v3    # "server":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lorg/minidns/dnsserverlookup/AndroidUsingExec;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception in findDNSByExec"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 61
    invoke-static {}, Lorg/minidns/util/PlatformDetection;->isAndroid()Z

    move-result v0

    return v0
.end method
