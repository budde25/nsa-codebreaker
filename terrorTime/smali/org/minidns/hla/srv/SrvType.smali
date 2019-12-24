.class public final enum Lorg/minidns/hla/srv/SrvType;
.super Ljava/lang/Enum;
.source "SrvType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/minidns/hla/srv/SrvType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/minidns/hla/srv/SrvType;

.field public static final enum xmpp_client:Lorg/minidns/hla/srv/SrvType;

.field public static final enum xmpp_server:Lorg/minidns/hla/srv/SrvType;


# instance fields
.field public final proto:Lorg/minidns/hla/srv/SrvProto;

.field public final service:Lorg/minidns/hla/srv/SrvService;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 16
    new-instance v0, Lorg/minidns/hla/srv/SrvType;

    sget-object v1, Lorg/minidns/hla/srv/SrvService;->xmpp_client:Lorg/minidns/hla/srv/SrvService;

    sget-object v2, Lorg/minidns/hla/srv/SrvProto;->tcp:Lorg/minidns/hla/srv/SrvProto;

    const/4 v3, 0x0

    const-string v4, "xmpp_client"

    invoke-direct {v0, v4, v3, v1, v2}, Lorg/minidns/hla/srv/SrvType;-><init>(Ljava/lang/String;ILorg/minidns/hla/srv/SrvService;Lorg/minidns/hla/srv/SrvProto;)V

    sput-object v0, Lorg/minidns/hla/srv/SrvType;->xmpp_client:Lorg/minidns/hla/srv/SrvType;

    .line 17
    new-instance v0, Lorg/minidns/hla/srv/SrvType;

    sget-object v1, Lorg/minidns/hla/srv/SrvService;->xmpp_server:Lorg/minidns/hla/srv/SrvService;

    sget-object v2, Lorg/minidns/hla/srv/SrvProto;->tcp:Lorg/minidns/hla/srv/SrvProto;

    const/4 v4, 0x1

    const-string v5, "xmpp_server"

    invoke-direct {v0, v5, v4, v1, v2}, Lorg/minidns/hla/srv/SrvType;-><init>(Ljava/lang/String;ILorg/minidns/hla/srv/SrvService;Lorg/minidns/hla/srv/SrvProto;)V

    sput-object v0, Lorg/minidns/hla/srv/SrvType;->xmpp_server:Lorg/minidns/hla/srv/SrvType;

    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/minidns/hla/srv/SrvType;

    sget-object v1, Lorg/minidns/hla/srv/SrvType;->xmpp_client:Lorg/minidns/hla/srv/SrvType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/minidns/hla/srv/SrvType;->xmpp_server:Lorg/minidns/hla/srv/SrvType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/minidns/hla/srv/SrvType;->$VALUES:[Lorg/minidns/hla/srv/SrvType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/minidns/hla/srv/SrvService;Lorg/minidns/hla/srv/SrvProto;)V
    .locals 0
    .param p3, "service"    # Lorg/minidns/hla/srv/SrvService;
    .param p4, "proto"    # Lorg/minidns/hla/srv/SrvProto;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/hla/srv/SrvService;",
            "Lorg/minidns/hla/srv/SrvProto;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput-object p3, p0, Lorg/minidns/hla/srv/SrvType;->service:Lorg/minidns/hla/srv/SrvService;

    .line 26
    iput-object p4, p0, Lorg/minidns/hla/srv/SrvType;->proto:Lorg/minidns/hla/srv/SrvProto;

    .line 27
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/minidns/hla/srv/SrvType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 13
    const-class v0, Lorg/minidns/hla/srv/SrvType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/minidns/hla/srv/SrvType;

    return-object v0
.end method

.method public static values()[Lorg/minidns/hla/srv/SrvType;
    .locals 1

    .line 13
    sget-object v0, Lorg/minidns/hla/srv/SrvType;->$VALUES:[Lorg/minidns/hla/srv/SrvType;

    invoke-virtual {v0}, [Lorg/minidns/hla/srv/SrvType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/minidns/hla/srv/SrvType;

    return-object v0
.end method
