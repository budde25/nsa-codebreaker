.class public Lorg/minidns/MiniDnsInitialization;
.super Ljava/lang/Object;
.source "MiniDnsInitialization.java"


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;

.field static final VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 22
    const-class v0, Lorg/minidns/MiniDnsInitialization;

    const-string v1, "IOException closing stream"

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    sput-object v2, Lorg/minidns/MiniDnsInitialization;->LOGGER:Ljava/util/logging/Logger;

    .line 28
    const/4 v2, 0x0

    .line 30
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v3, "org.minidns/version"

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 31
    .local v0, "is":Ljava/io/InputStream;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 32
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 37
    .local v0, "miniDnsVersion":Ljava/lang/String;
    nop

    .line 39
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 42
    :goto_0
    goto :goto_1

    .line 40
    :catch_0
    move-exception v3

    .line 41
    .local v3, "e":Ljava/io/IOException;
    sget-object v4, Lorg/minidns/MiniDnsInitialization;->LOGGER:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v4, v5, v1, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 37
    .end local v0    # "miniDnsVersion":Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 33
    :catch_1
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v3, Lorg/minidns/MiniDnsInitialization;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "Could not determine MiniDNS version"

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    const-string v3, "unkown"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v3

    .line 37
    .local v0, "miniDnsVersion":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 39
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 45
    :cond_0
    :goto_1
    sput-object v0, Lorg/minidns/MiniDnsInitialization;->VERSION:Ljava/lang/String;

    .line 46
    .end local v0    # "miniDnsVersion":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    return-void

    .line 37
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :goto_2
    if-eqz v2, :cond_1

    .line 39
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 42
    goto :goto_3

    .line 40
    :catch_2
    move-exception v3

    .line 41
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v4, Lorg/minidns/MiniDnsInitialization;->LOGGER:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v4, v5, v1, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    throw v0
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
