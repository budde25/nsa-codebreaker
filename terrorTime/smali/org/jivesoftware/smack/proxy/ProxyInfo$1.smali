.class synthetic Lorg/jivesoftware/smack/proxy/ProxyInfo$1;
.super Ljava/lang/Object;
.source "ProxyInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/proxy/ProxyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$jivesoftware$smack$proxy$ProxyInfo$ProxyType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    invoke-static {}, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->values()[Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/jivesoftware/smack/proxy/ProxyInfo$1;->$SwitchMap$org$jivesoftware$smack$proxy$ProxyInfo$ProxyType:[I

    :try_start_0
    sget-object v0, Lorg/jivesoftware/smack/proxy/ProxyInfo$1;->$SwitchMap$org$jivesoftware$smack$proxy$ProxyInfo$ProxyType:[I

    sget-object v1, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->HTTP:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lorg/jivesoftware/smack/proxy/ProxyInfo$1;->$SwitchMap$org$jivesoftware$smack$proxy$ProxyInfo$ProxyType:[I

    sget-object v1, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->SOCKS4:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lorg/jivesoftware/smack/proxy/ProxyInfo$1;->$SwitchMap$org$jivesoftware$smack$proxy$ProxyInfo$ProxyType:[I

    sget-object v1, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->SOCKS5:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    return-void
.end method
