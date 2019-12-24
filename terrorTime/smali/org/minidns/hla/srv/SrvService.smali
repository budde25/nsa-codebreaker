.class public final enum Lorg/minidns/hla/srv/SrvService;
.super Ljava/lang/Enum;
.source "SrvService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/minidns/hla/srv/SrvService;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/minidns/hla/srv/SrvService;

.field public static final enum xmpp_client:Lorg/minidns/hla/srv/SrvService;

.field public static final enum xmpp_server:Lorg/minidns/hla/srv/SrvService;

.field public static final enum xmpps_client:Lorg/minidns/hla/srv/SrvService;

.field public static final enum xmpps_server:Lorg/minidns/hla/srv/SrvService;


# instance fields
.field public final dnsLabel:Lorg/minidns/dnslabel/DnsLabel;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 18
    new-instance v0, Lorg/minidns/hla/srv/SrvService;

    const/4 v1, 0x0

    const-string v2, "xmpp_client"

    invoke-direct {v0, v2, v1}, Lorg/minidns/hla/srv/SrvService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/minidns/hla/srv/SrvService;->xmpp_client:Lorg/minidns/hla/srv/SrvService;

    .line 19
    new-instance v0, Lorg/minidns/hla/srv/SrvService;

    const/4 v2, 0x1

    const-string v3, "xmpp_server"

    invoke-direct {v0, v3, v2}, Lorg/minidns/hla/srv/SrvService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/minidns/hla/srv/SrvService;->xmpp_server:Lorg/minidns/hla/srv/SrvService;

    .line 26
    new-instance v0, Lorg/minidns/hla/srv/SrvService;

    const/4 v3, 0x2

    const-string v4, "xmpps_client"

    invoke-direct {v0, v4, v3}, Lorg/minidns/hla/srv/SrvService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/minidns/hla/srv/SrvService;->xmpps_client:Lorg/minidns/hla/srv/SrvService;

    .line 33
    new-instance v0, Lorg/minidns/hla/srv/SrvService;

    const/4 v4, 0x3

    const-string v5, "xmpps_server"

    invoke-direct {v0, v5, v4}, Lorg/minidns/hla/srv/SrvService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/minidns/hla/srv/SrvService;->xmpps_server:Lorg/minidns/hla/srv/SrvService;

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/minidns/hla/srv/SrvService;

    sget-object v5, Lorg/minidns/hla/srv/SrvService;->xmpp_client:Lorg/minidns/hla/srv/SrvService;

    aput-object v5, v0, v1

    sget-object v1, Lorg/minidns/hla/srv/SrvService;->xmpp_server:Lorg/minidns/hla/srv/SrvService;

    aput-object v1, v0, v2

    sget-object v1, Lorg/minidns/hla/srv/SrvService;->xmpps_client:Lorg/minidns/hla/srv/SrvService;

    aput-object v1, v0, v3

    sget-object v1, Lorg/minidns/hla/srv/SrvService;->xmpps_server:Lorg/minidns/hla/srv/SrvService;

    aput-object v1, v0, v4

    sput-object v0, Lorg/minidns/hla/srv/SrvService;->$VALUES:[Lorg/minidns/hla/srv/SrvService;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    invoke-virtual {p0}, Lorg/minidns/hla/srv/SrvService;->name()Ljava/lang/String;

    move-result-object p1

    const-string p2, "_"

    const-string v0, "-"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 41
    .local p1, "enumName":Ljava/lang/String;
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x5f

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/minidns/dnslabel/DnsLabel;->from(Ljava/lang/String;)Lorg/minidns/dnslabel/DnsLabel;

    move-result-object p2

    iput-object p2, p0, Lorg/minidns/hla/srv/SrvService;->dnsLabel:Lorg/minidns/dnslabel/DnsLabel;

    .line 42
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/minidns/hla/srv/SrvService;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 15
    const-class v0, Lorg/minidns/hla/srv/SrvService;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/minidns/hla/srv/SrvService;

    return-object v0
.end method

.method public static values()[Lorg/minidns/hla/srv/SrvService;
    .locals 1

    .line 15
    sget-object v0, Lorg/minidns/hla/srv/SrvService;->$VALUES:[Lorg/minidns/hla/srv/SrvService;

    invoke-virtual {v0}, [Lorg/minidns/hla/srv/SrvService;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/minidns/hla/srv/SrvService;

    return-object v0
.end method
