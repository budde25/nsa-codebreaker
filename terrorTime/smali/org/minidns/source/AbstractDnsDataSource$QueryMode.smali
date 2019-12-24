.class public final enum Lorg/minidns/source/AbstractDnsDataSource$QueryMode;
.super Ljava/lang/Enum;
.source "AbstractDnsDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/source/AbstractDnsDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QueryMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/minidns/source/AbstractDnsDataSource$QueryMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/minidns/source/AbstractDnsDataSource$QueryMode;

.field public static final enum dontCare:Lorg/minidns/source/AbstractDnsDataSource$QueryMode;

.field public static final enum tcp:Lorg/minidns/source/AbstractDnsDataSource$QueryMode;

.field public static final enum udpTcp:Lorg/minidns/source/AbstractDnsDataSource$QueryMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 87
    new-instance v0, Lorg/minidns/source/AbstractDnsDataSource$QueryMode;

    const/4 v1, 0x0

    const-string v2, "dontCare"

    invoke-direct {v0, v2, v1}, Lorg/minidns/source/AbstractDnsDataSource$QueryMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/minidns/source/AbstractDnsDataSource$QueryMode;->dontCare:Lorg/minidns/source/AbstractDnsDataSource$QueryMode;

    .line 92
    new-instance v0, Lorg/minidns/source/AbstractDnsDataSource$QueryMode;

    const/4 v2, 0x1

    const-string v3, "udpTcp"

    invoke-direct {v0, v3, v2}, Lorg/minidns/source/AbstractDnsDataSource$QueryMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/minidns/source/AbstractDnsDataSource$QueryMode;->udpTcp:Lorg/minidns/source/AbstractDnsDataSource$QueryMode;

    .line 97
    new-instance v0, Lorg/minidns/source/AbstractDnsDataSource$QueryMode;

    const/4 v3, 0x2

    const-string v4, "tcp"

    invoke-direct {v0, v4, v3}, Lorg/minidns/source/AbstractDnsDataSource$QueryMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/minidns/source/AbstractDnsDataSource$QueryMode;->tcp:Lorg/minidns/source/AbstractDnsDataSource$QueryMode;

    .line 83
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/minidns/source/AbstractDnsDataSource$QueryMode;

    sget-object v4, Lorg/minidns/source/AbstractDnsDataSource$QueryMode;->dontCare:Lorg/minidns/source/AbstractDnsDataSource$QueryMode;

    aput-object v4, v0, v1

    sget-object v1, Lorg/minidns/source/AbstractDnsDataSource$QueryMode;->udpTcp:Lorg/minidns/source/AbstractDnsDataSource$QueryMode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/minidns/source/AbstractDnsDataSource$QueryMode;->tcp:Lorg/minidns/source/AbstractDnsDataSource$QueryMode;

    aput-object v1, v0, v3

    sput-object v0, Lorg/minidns/source/AbstractDnsDataSource$QueryMode;->$VALUES:[Lorg/minidns/source/AbstractDnsDataSource$QueryMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/minidns/source/AbstractDnsDataSource$QueryMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 83
    const-class v0, Lorg/minidns/source/AbstractDnsDataSource$QueryMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/minidns/source/AbstractDnsDataSource$QueryMode;

    return-object v0
.end method

.method public static values()[Lorg/minidns/source/AbstractDnsDataSource$QueryMode;
    .locals 1

    .line 83
    sget-object v0, Lorg/minidns/source/AbstractDnsDataSource$QueryMode;->$VALUES:[Lorg/minidns/source/AbstractDnsDataSource$QueryMode;

    invoke-virtual {v0}, [Lorg/minidns/source/AbstractDnsDataSource$QueryMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/minidns/source/AbstractDnsDataSource$QueryMode;

    return-object v0
.end method
