.class public final Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;
.super Ljava/lang/Object;
.source "Socks5Proxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy$Socks5ServerProcess;
    }
.end annotation


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static localSocks5ProxyEnabled:Z

.field private static localSocks5ProxyPort:I

.field private static socks5Server:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;


# instance fields
.field private final allowedConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final localAddresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private serverProcess:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy$Socks5ServerProcess;

.field private serverSocket:Ljava/net/ServerSocket;

.field private serverThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    const-class v0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->LOGGER:Ljava/util/logging/Logger;

    .line 78
    const/4 v0, 0x1

    sput-boolean v0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->localSocks5ProxyEnabled:Z

    .line 84
    const/16 v0, -0x1e61

    sput v0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->localSocks5ProxyPort:I

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->connectionMap:Ljava/util/Map;

    .line 99
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->allowedConnections:Ljava/util/List;

    .line 101
    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->localAddresses:Ljava/util/Set;

    .line 107
    new-instance v0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy$Socks5ServerProcess;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy$Socks5ServerProcess;-><init>(Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy$1;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->serverProcess:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy$Socks5ServerProcess;

    .line 111
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .local v0, "networkInterfaces":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    nop

    .line 115
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 116
    .local v1, "localHostAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 121
    .local v3, "networkInterface":Ljava/net/NetworkInterface;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v4

    .line 122
    .local v4, "inetAddresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    invoke-static {v4}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetAddress;

    .line 123
    .local v6, "address":Ljava/net/InetAddress;
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    .end local v6    # "address":Ljava/net/InetAddress;
    goto :goto_1

    .line 125
    .end local v3    # "networkInterface":Ljava/net/NetworkInterface;
    .end local v4    # "inetAddresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_0
    goto :goto_0

    .line 126
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 129
    invoke-virtual {p0, v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->replaceLocalAddresses(Ljava/util/Collection;)V

    .line 130
    return-void

    .line 127
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Could not determine any local host address"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 112
    .end local v0    # "networkInterfaces":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v1    # "localHostAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic access$100(Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;)Ljava/net/ServerSocket;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;

    .line 72
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->serverSocket:Ljava/net/ServerSocket;

    return-object v0
.end method

.method static synthetic access$200(Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;

    .line 72
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->allowedConnections:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;

    .line 72
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->connectionMap:Ljava/util/Map;

    return-object v0
.end method

.method public static getLocalSocks5ProxyPort()I
    .locals 1

    .line 156
    sget v0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->localSocks5ProxyPort:I

    return v0
.end method

.method public static declared-synchronized getSocks5Proxy()Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;
    .locals 2

    const-class v0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;

    monitor-enter v0

    .line 178
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->socks5Server:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;

    if-nez v1, :cond_0

    .line 179
    new-instance v1, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;-><init>()V

    sput-object v1, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->socks5Server:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;

    .line 181
    :cond_0
    invoke-static {}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->isLocalSocks5ProxyEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    sget-object v1, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->socks5Server:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->start()V

    .line 184
    :cond_1
    sget-object v1, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->socks5Server:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 177
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isLocalSocks5ProxyEnabled()Z
    .locals 1

    .line 138
    sget-boolean v0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->localSocks5ProxyEnabled:Z

    return v0
.end method

.method public static setLocalSocks5ProxyEnabled(Z)V
    .locals 0
    .param p0, "localSocks5ProxyEnabled"    # Z

    .line 147
    sput-boolean p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->localSocks5ProxyEnabled:Z

    .line 148
    return-void
.end method

.method public static setLocalSocks5ProxyPort(I)V
    .locals 2
    .param p0, "localSocks5ProxyPort"    # I

    .line 166
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const v1, 0xffff

    if-gt v0, v1, :cond_0

    .line 169
    sput p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->localSocks5ProxyPort:I

    .line 170
    return-void

    .line 167
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "localSocks5ProxyPort must be within (-65535,65535)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addLocalAddress(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .line 269
    if-nez p1, :cond_0

    .line 270
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->localAddresses:Ljava/util/Set;

    monitor-enter v0

    .line 273
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->localAddresses:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 274
    monitor-exit v0

    .line 275
    return-void

    .line 274
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addTransfer(Ljava/lang/String;)V
    .locals 1
    .param p1, "digest"    # Ljava/lang/String;

    .line 354
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->allowedConnections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    return-void
.end method

.method public getLocalAddresses()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->localAddresses:Ljava/util/Set;

    monitor-enter v0

    .line 298
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->localAddresses:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 299
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPort()I
    .locals 1

    .line 328
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    const/4 v0, -0x1

    return v0

    .line 331
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method protected getSocket(Ljava/lang/String;)Ljava/net/Socket;
    .locals 1
    .param p1, "digest"    # Ljava/lang/String;

    .line 343
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->connectionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .line 379
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeLocalAddress(Ljava/lang/String;)Z
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .line 285
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->localAddresses:Ljava/util/Set;

    monitor-enter v0

    .line 286
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->localAddresses:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 287
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected removeTransfer(Ljava/lang/String;)V
    .locals 1
    .param p1, "digest"    # Ljava/lang/String;

    .line 367
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->allowedConnections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 368
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->connectionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    return-void
.end method

.method public replaceLocalAddresses(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 313
    .local p1, "addresses":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 316
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->localAddresses:Ljava/util/Set;

    monitor-enter v0

    .line 317
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->localAddresses:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 318
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->localAddresses:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 319
    monitor-exit v0

    .line 320
    return-void

    .line 319
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 314
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "list must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 5

    monitor-enter p0

    .line 191
    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->isRunning()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 192
    monitor-exit p0

    return-void

    .line 195
    :cond_0
    :try_start_1
    invoke-static {}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->getLocalSocks5ProxyPort()I

    move-result v0

    if-gez v0, :cond_2

    .line 196
    invoke-static {}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->getLocalSocks5ProxyPort()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    .local v0, "port":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const v2, 0xffff

    sub-int/2addr v2, v0

    if-ge v1, v2, :cond_1

    .line 199
    :try_start_2
    new-instance v2, Ljava/net/ServerSocket;

    add-int v3, v0, v1

    invoke-direct {v2, v3}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->serverSocket:Ljava/net/ServerSocket;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 200
    goto :goto_1

    .line 202
    .end local p0    # "this":Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;
    :catch_0
    move-exception v2

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    .end local v0    # "port":I
    .end local v1    # "i":I
    :cond_1
    :goto_1
    goto :goto_2

    .line 208
    :cond_2
    :try_start_3
    new-instance v0, Ljava/net/ServerSocket;

    invoke-static {}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->getLocalSocks5ProxyPort()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->serverSocket:Ljava/net/ServerSocket;

    .line 211
    :goto_2
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->serverSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_3

    .line 212
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->serverProcess:Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy$Socks5ServerProcess;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->serverThread:Ljava/lang/Thread;

    .line 213
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->serverThread:Ljava/lang/Thread;

    const-string v1, "Smack Local SOCKS5 Proxy"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->serverThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 215
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->serverThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 221
    :cond_3
    goto :goto_3

    .line 218
    :catch_1
    move-exception v0

    .line 220
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    sget-object v1, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t setup local SOCKS5 proxy on port "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->getLocalSocks5ProxyPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 222
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    monitor-exit p0

    return-void

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    .line 228
    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->isRunning()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 229
    monitor-exit p0

    return-void

    .line 233
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    goto :goto_0

    .line 235
    .end local p0    # "this":Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;
    :catch_0
    move-exception v0

    .line 239
    :goto_0
    :try_start_2
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->serverThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->serverThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 241
    :try_start_3
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->serverThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 242
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->serverThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 246
    goto :goto_1

    .line 244
    :catch_1
    move-exception v0

    .line 248
    :cond_1
    :goto_1
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->serverThread:Ljava/lang/Thread;

    .line 249
    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/socks5/Socks5Proxy;->serverSocket:Ljava/net/ServerSocket;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 251
    monitor-exit p0

    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
