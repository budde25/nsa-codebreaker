.class public Lorg/minidns/dnsserverlookup/UnixUsingEtcResolvConf;
.super Lorg/minidns/dnsserverlookup/AbstractDnsServerLookupMechanism;
.source "UnixUsingEtcResolvConf.java"


# static fields
.field public static final INSTANCE:Lorg/minidns/dnsserverlookup/DnsServerLookupMechanism;

.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final NAMESERVER_PATTERN:Ljava/util/regex/Pattern;

.field public static final PRIORITY:I = 0x7d0

.field private static final RESOLV_CONF_FILE:Ljava/lang/String; = "/etc/resolv.conf"

.field private static cached:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static lastModified:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lorg/minidns/dnsserverlookup/UnixUsingEtcResolvConf;

    invoke-direct {v0}, Lorg/minidns/dnsserverlookup/UnixUsingEtcResolvConf;-><init>()V

    sput-object v0, Lorg/minidns/dnsserverlookup/UnixUsingEtcResolvConf;->INSTANCE:Lorg/minidns/dnsserverlookup/DnsServerLookupMechanism;

    .line 32
    const-class v0, Lorg/minidns/dnsserverlookup/UnixUsingEtcResolvConf;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/minidns/dnsserverlookup/UnixUsingEtcResolvConf;->LOGGER:Ljava/util/logging/Logger;

    .line 35
    const-string v0, "^nameserver\\s+(.*)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/minidns/dnsserverlookup/UnixUsingEtcResolvConf;->NAMESERVER_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 41
    const-class v0, Lorg/minidns/dnsserverlookup/UnixUsingEtcResolvConf;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-direct {p0, v0, v1}, Lorg/minidns/dnsserverlookup/AbstractDnsServerLookupMechanism;-><init>(Ljava/lang/String;I)V

    .line 42
    return-void
.end method


# virtual methods
.method public getDnsServerAddresses()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 46
    const-string v0, "Could not close reader"

    new-instance v1, Ljava/io/File;

    const-string v2, "/etc/resolv.conf"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 49
    return-object v3

    .line 52
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 53
    .local v4, "currentLastModified":J
    sget-wide v6, Lorg/minidns/dnsserverlookup/UnixUsingEtcResolvConf;->lastModified:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_1

    sget-object v2, Lorg/minidns/dnsserverlookup/UnixUsingEtcResolvConf;->cached:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 54
    return-object v2

    .line 57
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v2, "servers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 60
    .local v6, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v6, v7

    .line 62
    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    .local v8, "line":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 63
    sget-object v7, Lorg/minidns/dnsserverlookup/UnixUsingEtcResolvConf;->NAMESERVER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 64
    .local v7, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 65
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .end local v7    # "matcher":Ljava/util/regex/Matcher;
    :cond_2
    goto :goto_0

    .line 72
    .end local v8    # "line":Ljava/lang/String;
    :cond_3
    nop

    .line 73
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 76
    :goto_1
    goto :goto_2

    .line 74
    :catch_0
    move-exception v7

    .line 75
    .local v7, "e":Ljava/io/IOException;
    sget-object v8, Lorg/minidns/dnsserverlookup/UnixUsingEtcResolvConf;->LOGGER:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v8, v9, v0, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v7    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 79
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 80
    sget-object v0, Lorg/minidns/dnsserverlookup/UnixUsingEtcResolvConf;->LOGGER:Ljava/util/logging/Logger;

    const-string v7, "Could not find any nameservers in /etc/resolv.conf"

    invoke-virtual {v0, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 81
    return-object v3

    .line 84
    :cond_4
    sput-object v2, Lorg/minidns/dnsserverlookup/UnixUsingEtcResolvConf;->cached:Ljava/util/List;

    .line 85
    sput-wide v4, Lorg/minidns/dnsserverlookup/UnixUsingEtcResolvConf;->lastModified:J

    .line 87
    sget-object v0, Lorg/minidns/dnsserverlookup/UnixUsingEtcResolvConf;->cached:Ljava/util/List;

    return-object v0

    .line 72
    :catchall_0
    move-exception v3

    goto :goto_4

    .line 68
    :catch_1
    move-exception v7

    .line 69
    .restart local v7    # "e":Ljava/io/IOException;
    :try_start_2
    sget-object v8, Lorg/minidns/dnsserverlookup/UnixUsingEtcResolvConf;->LOGGER:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v10, "Could not read from /etc/resolv.conf"

    invoke-virtual {v8, v9, v10, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    nop

    .line 72
    if-eqz v6, :cond_5

    .line 73
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 76
    goto :goto_3

    .line 74
    :catch_2
    move-exception v8

    .line 75
    .local v8, "e":Ljava/io/IOException;
    sget-object v9, Lorg/minidns/dnsserverlookup/UnixUsingEtcResolvConf;->LOGGER:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v9, v10, v0, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .end local v8    # "e":Ljava/io/IOException;
    :cond_5
    :goto_3
    return-object v3

    .line 72
    .end local v7    # "e":Ljava/io/IOException;
    :goto_4
    if-eqz v6, :cond_6

    .line 73
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 76
    goto :goto_5

    .line 74
    :catch_3
    move-exception v7

    .line 75
    .restart local v7    # "e":Ljava/io/IOException;
    sget-object v8, Lorg/minidns/dnsserverlookup/UnixUsingEtcResolvConf;->LOGGER:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v8, v9, v0, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    .end local v7    # "e":Ljava/io/IOException;
    :cond_6
    :goto_5
    throw v3
.end method

.method public isAvailable()Z
    .locals 3

    .line 92
    invoke-static {}, Lorg/minidns/util/PlatformDetection;->isAndroid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 94
    return v1

    .line 97
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/etc/resolv.conf"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 100
    return v1

    .line 102
    :cond_1
    const/4 v1, 0x1

    return v1
.end method
