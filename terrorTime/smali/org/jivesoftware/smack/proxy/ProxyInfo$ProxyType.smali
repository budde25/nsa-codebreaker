.class public final enum Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;
.super Ljava/lang/Enum;
.source "ProxyInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/proxy/ProxyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProxyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

.field public static final enum HTTP:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

.field public static final enum SOCKS4:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

.field public static final enum SOCKS5:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 28
    new-instance v0, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    const/4 v1, 0x0

    const-string v2, "HTTP"

    invoke-direct {v0, v2, v1}, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->HTTP:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    .line 29
    new-instance v0, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    const/4 v2, 0x1

    const-string v3, "SOCKS4"

    invoke-direct {v0, v3, v2}, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->SOCKS4:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    .line 30
    new-instance v0, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    const/4 v3, 0x2

    const-string v4, "SOCKS5"

    invoke-direct {v0, v4, v3}, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->SOCKS5:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    sget-object v4, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->HTTP:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    aput-object v4, v0, v1

    sget-object v1, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->SOCKS4:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->SOCKS5:Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->$VALUES:[Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    const-class v0, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;
    .locals 1

    .line 27
    sget-object v0, Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->$VALUES:[Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    invoke-virtual {v0}, [Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smack/proxy/ProxyInfo$ProxyType;

    return-object v0
.end method
