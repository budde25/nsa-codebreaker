.class public Lorg/jivesoftware/smack/proxy/ProxyInfo;
.super Ljava/lang/Object;
.source "ProxyInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;
    }
.end annotation


# instance fields
.field private proxyAddress:Ljava/lang/String;

.field private proxyPassword:Ljava/lang/String;

.field private proxyPort:I

.field private final proxySocketConnection:Lorg/jivesoftware/smack/proxy/ProxySocketConnection;

.field private proxyType:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

.field private proxyUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pType"    # Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;
    .param p2, "pHost"    # Ljava/lang/String;
    .param p3, "pPort"    # I
    .param p4, "pUser"    # Ljava/lang/String;
    .param p5, "pPass"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/jivesoftware/smack/proxy/ProxyInfo;->proxyType:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    .line 43
    iput-object p2, p0, Lorg/jivesoftware/smack/proxy/ProxyInfo;->proxyAddress:Ljava/lang/String;

    .line 44
    iput p3, p0, Lorg/jivesoftware/smack/proxy/ProxyInfo;->proxyPort:I

    .line 45
    iput-object p4, p0, Lorg/jivesoftware/smack/proxy/ProxyInfo;->proxyUsername:Ljava/lang/String;

    .line 46
    iput-object p5, p0, Lorg/jivesoftware/smack/proxy/ProxyInfo;->proxyPassword:Ljava/lang/String;

    .line 47
    sget-object v0, Lorg/jivesoftware/smack/proxy/ProxyInfo$1;->$SwitchMap$org$jivesoftware$smack$proxy$ProxyInfo$ProxyType:[I

    iget-object v1, p0, Lorg/jivesoftware/smack/proxy/ProxyInfo;->proxyType:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 55
    new-instance v0, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketConnection;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/proxy/Socks5ProxySocketConnection;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/proxy/ProxyInfo;->proxySocketConnection:Lorg/jivesoftware/smack/proxy/ProxySocketConnection;

    .line 56
    goto :goto_0

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 52
    :cond_1
    new-instance v0, Lorg/jivesoftware/smack/proxy/Socks4ProxySocketConnection;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/proxy/Socks4ProxySocketConnection;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/proxy/ProxyInfo;->proxySocketConnection:Lorg/jivesoftware/smack/proxy/ProxySocketConnection;

    .line 53
    goto :goto_0

    .line 49
    :cond_2
    new-instance v0, Lorg/jivesoftware/smack/proxy/HTTPProxySocketConnection;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/proxy/HTTPProxySocketConnection;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/proxy/ProxyInfo;->proxySocketConnection:Lorg/jivesoftware/smack/proxy/ProxySocketConnection;

    .line 50
    nop

    .line 60
    :goto_0
    return-void
.end method

.method public static forHttpProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/proxy/ProxyInfo;
    .locals 7
    .param p0, "pHost"    # Ljava/lang/String;
    .param p1, "pPort"    # I
    .param p2, "pUser"    # Ljava/lang/String;
    .param p3, "pPass"    # Ljava/lang/String;

    .line 64
    new-instance v6, Lorg/jivesoftware/smack/proxy/ProxyInfo;

    sget-object v1, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->HTTP:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    move-object v0, v6

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smack/proxy/ProxyInfo;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public static forSocks4Proxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/proxy/ProxyInfo;
    .locals 7
    .param p0, "pHost"    # Ljava/lang/String;
    .param p1, "pPort"    # I
    .param p2, "pUser"    # Ljava/lang/String;
    .param p3, "pPass"    # Ljava/lang/String;

    .line 69
    new-instance v6, Lorg/jivesoftware/smack/proxy/ProxyInfo;

    sget-object v1, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->SOCKS4:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    move-object v0, v6

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smack/proxy/ProxyInfo;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public static forSocks5Proxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/proxy/ProxyInfo;
    .locals 7
    .param p0, "pHost"    # Ljava/lang/String;
    .param p1, "pPort"    # I
    .param p2, "pUser"    # Ljava/lang/String;
    .param p3, "pPass"    # Ljava/lang/String;

    .line 74
    new-instance v6, Lorg/jivesoftware/smack/proxy/ProxyInfo;

    sget-object v1, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->SOCKS5:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    move-object v0, v6

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smack/proxy/ProxyInfo;-><init>(Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public getProxyAddress()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/jivesoftware/smack/proxy/ProxyInfo;->proxyAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPassword()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/jivesoftware/smack/proxy/ProxyInfo;->proxyPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPort()I
    .locals 1

    .line 86
    iget v0, p0, Lorg/jivesoftware/smack/proxy/ProxyInfo;->proxyPort:I

    return v0
.end method

.method public getProxySocketConnection()Lorg/jivesoftware/smack/proxy/ProxySocketConnection;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/jivesoftware/smack/proxy/ProxyInfo;->proxySocketConnection:Lorg/jivesoftware/smack/proxy/ProxySocketConnection;

    return-object v0
.end method

.method public getProxyType()Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/jivesoftware/smack/proxy/ProxyInfo;->proxyType:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    return-object v0
.end method

.method public getProxyUsername()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/jivesoftware/smack/proxy/ProxyInfo;->proxyUsername:Ljava/lang/String;

    return-object v0
.end method
