.class public final enum Lorg/minidns/record/TLSA$MatchingType;
.super Ljava/lang/Enum;
.source "TLSA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/record/TLSA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MatchingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/minidns/record/TLSA$MatchingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/minidns/record/TLSA$MatchingType;

.field public static final enum noHash:Lorg/minidns/record/TLSA$MatchingType;

.field public static final enum sha256:Lorg/minidns/record/TLSA$MatchingType;

.field public static final enum sha512:Lorg/minidns/record/TLSA$MatchingType;


# instance fields
.field public final byteValue:B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 59
    new-instance v0, Lorg/minidns/record/TLSA$MatchingType;

    const/4 v1, 0x0

    const-string v2, "noHash"

    invoke-direct {v0, v2, v1, v1}, Lorg/minidns/record/TLSA$MatchingType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/minidns/record/TLSA$MatchingType;->noHash:Lorg/minidns/record/TLSA$MatchingType;

    .line 60
    new-instance v0, Lorg/minidns/record/TLSA$MatchingType;

    const/4 v2, 0x1

    const-string v3, "sha256"

    invoke-direct {v0, v3, v2, v2}, Lorg/minidns/record/TLSA$MatchingType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/minidns/record/TLSA$MatchingType;->sha256:Lorg/minidns/record/TLSA$MatchingType;

    .line 61
    new-instance v0, Lorg/minidns/record/TLSA$MatchingType;

    const/4 v3, 0x2

    const-string v4, "sha512"

    invoke-direct {v0, v4, v3, v3}, Lorg/minidns/record/TLSA$MatchingType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/minidns/record/TLSA$MatchingType;->sha512:Lorg/minidns/record/TLSA$MatchingType;

    .line 58
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/minidns/record/TLSA$MatchingType;

    sget-object v4, Lorg/minidns/record/TLSA$MatchingType;->noHash:Lorg/minidns/record/TLSA$MatchingType;

    aput-object v4, v0, v1

    sget-object v1, Lorg/minidns/record/TLSA$MatchingType;->sha256:Lorg/minidns/record/TLSA$MatchingType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/minidns/record/TLSA$MatchingType;->sha512:Lorg/minidns/record/TLSA$MatchingType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/minidns/record/TLSA$MatchingType;->$VALUES:[Lorg/minidns/record/TLSA$MatchingType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .param p3, "byteValue"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput-byte p3, p0, Lorg/minidns/record/TLSA$MatchingType;->byteValue:B

    .line 68
    invoke-static {}, Lorg/minidns/record/TLSA;->access$200()Ljava/util/Map;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/minidns/record/TLSA$MatchingType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 58
    const-class v0, Lorg/minidns/record/TLSA$MatchingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/minidns/record/TLSA$MatchingType;

    return-object v0
.end method

.method public static values()[Lorg/minidns/record/TLSA$MatchingType;
    .locals 1

    .line 58
    sget-object v0, Lorg/minidns/record/TLSA$MatchingType;->$VALUES:[Lorg/minidns/record/TLSA$MatchingType;

    invoke-virtual {v0}, [Lorg/minidns/record/TLSA$MatchingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/minidns/record/TLSA$MatchingType;

    return-object v0
.end method
