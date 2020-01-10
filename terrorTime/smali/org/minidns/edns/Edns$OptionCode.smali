.class public final enum Lorg/minidns/edns/Edns$OptionCode;
.super Ljava/lang/Enum;
.source "Edns.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/edns/Edns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OptionCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/minidns/edns/Edns$OptionCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/minidns/edns/Edns$OptionCode;

.field private static INVERSE_LUT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/minidns/edns/Edns$OptionCode;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum NSID:Lorg/minidns/edns/Edns$OptionCode;

.field public static final enum UNKNOWN:Lorg/minidns/edns/Edns$OptionCode;


# instance fields
.field public final asInt:I

.field public final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lorg/minidns/edns/EdnsOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 45
    new-instance v0, Lorg/minidns/edns/Edns$OptionCode;

    const-class v1, Lorg/minidns/edns/UnknownEdnsOption;

    const/4 v2, 0x0

    const-string v3, "UNKNOWN"

    const/4 v4, -0x1

    invoke-direct {v0, v3, v2, v4, v1}, Lorg/minidns/edns/Edns$OptionCode;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lorg/minidns/edns/Edns$OptionCode;->UNKNOWN:Lorg/minidns/edns/Edns$OptionCode;

    .line 46
    new-instance v0, Lorg/minidns/edns/Edns$OptionCode;

    const-class v1, Lorg/minidns/edns/Nsid;

    const/4 v3, 0x1

    const-string v4, "NSID"

    const/4 v5, 0x3

    invoke-direct {v0, v4, v3, v5, v1}, Lorg/minidns/edns/Edns$OptionCode;-><init>(Ljava/lang/String;IILjava/lang/Class;)V

    sput-object v0, Lorg/minidns/edns/Edns$OptionCode;->NSID:Lorg/minidns/edns/Edns$OptionCode;

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/minidns/edns/Edns$OptionCode;

    sget-object v1, Lorg/minidns/edns/Edns$OptionCode;->UNKNOWN:Lorg/minidns/edns/Edns$OptionCode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/minidns/edns/Edns$OptionCode;->NSID:Lorg/minidns/edns/Edns$OptionCode;

    aput-object v1, v0, v3

    sput-object v0, Lorg/minidns/edns/Edns$OptionCode;->$VALUES:[Lorg/minidns/edns/Edns$OptionCode;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-static {}, Lorg/minidns/edns/Edns$OptionCode;->values()[Lorg/minidns/edns/Edns$OptionCode;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/minidns/edns/Edns$OptionCode;->INVERSE_LUT:Ljava/util/Map;

    .line 52
    invoke-static {}, Lorg/minidns/edns/Edns$OptionCode;->values()[Lorg/minidns/edns/Edns$OptionCode;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 53
    .local v3, "optionCode":Lorg/minidns/edns/Edns$OptionCode;
    sget-object v4, Lorg/minidns/edns/Edns$OptionCode;->INVERSE_LUT:Ljava/util/Map;

    iget v5, v3, Lorg/minidns/edns/Edns$OptionCode;->asInt:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .end local v3    # "optionCode":Lorg/minidns/edns/Edns$OptionCode;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/Class;)V
    .locals 0
    .param p3, "optionCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Lorg/minidns/edns/EdnsOption;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/minidns/edns/EdnsOption;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput p3, p0, Lorg/minidns/edns/Edns$OptionCode;->asInt:I

    .line 62
    iput-object p4, p0, Lorg/minidns/edns/Edns$OptionCode;->clazz:Ljava/lang/Class;

    .line 63
    return-void
.end method

.method public static from(I)Lorg/minidns/edns/Edns$OptionCode;
    .locals 2
    .param p0, "optionCode"    # I

    .line 66
    sget-object v0, Lorg/minidns/edns/Edns$OptionCode;->INVERSE_LUT:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/minidns/edns/Edns$OptionCode;

    .line 67
    .local v0, "res":Lorg/minidns/edns/Edns$OptionCode;
    if-nez v0, :cond_0

    sget-object v0, Lorg/minidns/edns/Edns$OptionCode;->UNKNOWN:Lorg/minidns/edns/Edns$OptionCode;

    .line 68
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/minidns/edns/Edns$OptionCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 44
    const-class v0, Lorg/minidns/edns/Edns$OptionCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/minidns/edns/Edns$OptionCode;

    return-object v0
.end method

.method public static values()[Lorg/minidns/edns/Edns$OptionCode;
    .locals 1

    .line 44
    sget-object v0, Lorg/minidns/edns/Edns$OptionCode;->$VALUES:[Lorg/minidns/edns/Edns$OptionCode;

    invoke-virtual {v0}, [Lorg/minidns/edns/Edns$OptionCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/minidns/edns/Edns$OptionCode;

    return-object v0
.end method
