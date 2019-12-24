.class public final enum Lorg/minidns/iterative/ReliableDnsClient$Mode;
.super Ljava/lang/Enum;
.source "ReliableDnsClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/iterative/ReliableDnsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/minidns/iterative/ReliableDnsClient$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/minidns/iterative/ReliableDnsClient$Mode;

.field public static final enum iterativeOnly:Lorg/minidns/iterative/ReliableDnsClient$Mode;

.field public static final enum recursiveOnly:Lorg/minidns/iterative/ReliableDnsClient$Mode;

.field public static final enum recursiveWithIterativeFallback:Lorg/minidns/iterative/ReliableDnsClient$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 38
    new-instance v0, Lorg/minidns/iterative/ReliableDnsClient$Mode;

    const/4 v1, 0x0

    const-string v2, "recursiveWithIterativeFallback"

    invoke-direct {v0, v2, v1}, Lorg/minidns/iterative/ReliableDnsClient$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/minidns/iterative/ReliableDnsClient$Mode;->recursiveWithIterativeFallback:Lorg/minidns/iterative/ReliableDnsClient$Mode;

    .line 43
    new-instance v0, Lorg/minidns/iterative/ReliableDnsClient$Mode;

    const/4 v2, 0x1

    const-string v3, "recursiveOnly"

    invoke-direct {v0, v3, v2}, Lorg/minidns/iterative/ReliableDnsClient$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/minidns/iterative/ReliableDnsClient$Mode;->recursiveOnly:Lorg/minidns/iterative/ReliableDnsClient$Mode;

    .line 48
    new-instance v0, Lorg/minidns/iterative/ReliableDnsClient$Mode;

    const/4 v3, 0x2

    const-string v4, "iterativeOnly"

    invoke-direct {v0, v4, v3}, Lorg/minidns/iterative/ReliableDnsClient$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/minidns/iterative/ReliableDnsClient$Mode;->iterativeOnly:Lorg/minidns/iterative/ReliableDnsClient$Mode;

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/minidns/iterative/ReliableDnsClient$Mode;

    sget-object v4, Lorg/minidns/iterative/ReliableDnsClient$Mode;->recursiveWithIterativeFallback:Lorg/minidns/iterative/ReliableDnsClient$Mode;

    aput-object v4, v0, v1

    sget-object v1, Lorg/minidns/iterative/ReliableDnsClient$Mode;->recursiveOnly:Lorg/minidns/iterative/ReliableDnsClient$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/minidns/iterative/ReliableDnsClient$Mode;->iterativeOnly:Lorg/minidns/iterative/ReliableDnsClient$Mode;

    aput-object v1, v0, v3

    sput-object v0, Lorg/minidns/iterative/ReliableDnsClient$Mode;->$VALUES:[Lorg/minidns/iterative/ReliableDnsClient$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/minidns/iterative/ReliableDnsClient$Mode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 34
    const-class v0, Lorg/minidns/iterative/ReliableDnsClient$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/minidns/iterative/ReliableDnsClient$Mode;

    return-object v0
.end method

.method public static values()[Lorg/minidns/iterative/ReliableDnsClient$Mode;
    .locals 1

    .line 34
    sget-object v0, Lorg/minidns/iterative/ReliableDnsClient$Mode;->$VALUES:[Lorg/minidns/iterative/ReliableDnsClient$Mode;

    invoke-virtual {v0}, [Lorg/minidns/iterative/ReliableDnsClient$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/minidns/iterative/ReliableDnsClient$Mode;

    return-object v0
.end method
