.class public final enum Lorg/minidns/AbstractDnsClient$IpVersionSetting;
.super Ljava/lang/Enum;
.source "AbstractDnsClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/AbstractDnsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IpVersionSetting"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/minidns/AbstractDnsClient$IpVersionSetting;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/minidns/AbstractDnsClient$IpVersionSetting;

.field public static final enum v4only:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

.field public static final enum v4v6:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

.field public static final enum v6only:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

.field public static final enum v6v4:Lorg/minidns/AbstractDnsClient$IpVersionSetting;


# instance fields
.field public final v4:Z

.field public final v6:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 80
    new-instance v0, Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "v4only"

    invoke-direct {v0, v3, v1, v2, v1}, Lorg/minidns/AbstractDnsClient$IpVersionSetting;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->v4only:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    .line 81
    new-instance v0, Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    const-string v3, "v6only"

    invoke-direct {v0, v3, v2, v1, v2}, Lorg/minidns/AbstractDnsClient$IpVersionSetting;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->v6only:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    .line 82
    new-instance v0, Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    const/4 v3, 0x2

    const-string v4, "v4v6"

    invoke-direct {v0, v4, v3, v2, v2}, Lorg/minidns/AbstractDnsClient$IpVersionSetting;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->v4v6:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    .line 83
    new-instance v0, Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    const/4 v4, 0x3

    const-string v5, "v6v4"

    invoke-direct {v0, v5, v4, v2, v2}, Lorg/minidns/AbstractDnsClient$IpVersionSetting;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->v6v4:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    .line 78
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    sget-object v5, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->v4only:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    aput-object v5, v0, v1

    sget-object v1, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->v6only:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    aput-object v1, v0, v2

    sget-object v1, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->v4v6:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    aput-object v1, v0, v3

    sget-object v1, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->v6v4:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    aput-object v1, v0, v4

    sput-object v0, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->$VALUES:[Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .param p3, "v4"    # Z
    .param p4, "v6"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 90
    iput-boolean p3, p0, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->v4:Z

    .line 91
    iput-boolean p4, p0, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->v6:Z

    .line 92
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/minidns/AbstractDnsClient$IpVersionSetting;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 78
    const-class v0, Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    return-object v0
.end method

.method public static values()[Lorg/minidns/AbstractDnsClient$IpVersionSetting;
    .locals 1

    .line 78
    sget-object v0, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->$VALUES:[Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    invoke-virtual {v0}, [Lorg/minidns/AbstractDnsClient$IpVersionSetting;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    return-object v0
.end method
