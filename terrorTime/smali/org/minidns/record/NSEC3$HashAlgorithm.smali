.class public final enum Lorg/minidns/record/NSEC3$HashAlgorithm;
.super Ljava/lang/Enum;
.source "NSEC3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/record/NSEC3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HashAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/minidns/record/NSEC3$HashAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/minidns/record/NSEC3$HashAlgorithm;

.field public static final enum RESERVED:Lorg/minidns/record/NSEC3$HashAlgorithm;

.field public static final enum SHA1:Lorg/minidns/record/NSEC3$HashAlgorithm;


# instance fields
.field public final description:Ljava/lang/String;

.field public final value:B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 47
    new-instance v0, Lorg/minidns/record/NSEC3$HashAlgorithm;

    const/4 v1, 0x0

    const-string v2, "RESERVED"

    const-string v3, "Reserved"

    invoke-direct {v0, v2, v1, v1, v3}, Lorg/minidns/record/NSEC3$HashAlgorithm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/minidns/record/NSEC3$HashAlgorithm;->RESERVED:Lorg/minidns/record/NSEC3$HashAlgorithm;

    .line 48
    new-instance v0, Lorg/minidns/record/NSEC3$HashAlgorithm;

    const/4 v2, 0x1

    const-string v3, "SHA1"

    const-string v4, "SHA-1"

    invoke-direct {v0, v3, v2, v2, v4}, Lorg/minidns/record/NSEC3$HashAlgorithm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/minidns/record/NSEC3$HashAlgorithm;->SHA1:Lorg/minidns/record/NSEC3$HashAlgorithm;

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/minidns/record/NSEC3$HashAlgorithm;

    sget-object v3, Lorg/minidns/record/NSEC3$HashAlgorithm;->RESERVED:Lorg/minidns/record/NSEC3$HashAlgorithm;

    aput-object v3, v0, v1

    sget-object v1, Lorg/minidns/record/NSEC3$HashAlgorithm;->SHA1:Lorg/minidns/record/NSEC3$HashAlgorithm;

    aput-object v1, v0, v2

    sput-object v0, Lorg/minidns/record/NSEC3$HashAlgorithm;->$VALUES:[Lorg/minidns/record/NSEC3$HashAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # I
    .param p4, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    if-ltz p3, :cond_0

    const/16 p1, 0xff

    if-gt p3, p1, :cond_0

    .line 55
    int-to-byte p1, p3

    iput-byte p1, p0, Lorg/minidns/record/NSEC3$HashAlgorithm;->value:B

    .line 56
    iput-object p4, p0, Lorg/minidns/record/NSEC3$HashAlgorithm;->description:Ljava/lang/String;

    .line 57
    invoke-static {}, Lorg/minidns/record/NSEC3;->access$000()Ljava/util/Map;

    move-result-object p1

    iget-byte p2, p0, Lorg/minidns/record/NSEC3$HashAlgorithm;->value:B

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void

    .line 53
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public static forByte(B)Lorg/minidns/record/NSEC3$HashAlgorithm;
    .locals 2
    .param p0, "b"    # B

    .line 64
    invoke-static {}, Lorg/minidns/record/NSEC3;->access$000()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/minidns/record/NSEC3$HashAlgorithm;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/minidns/record/NSEC3$HashAlgorithm;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 46
    const-class v0, Lorg/minidns/record/NSEC3$HashAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/minidns/record/NSEC3$HashAlgorithm;

    return-object v0
.end method

.method public static values()[Lorg/minidns/record/NSEC3$HashAlgorithm;
    .locals 1

    .line 46
    sget-object v0, Lorg/minidns/record/NSEC3$HashAlgorithm;->$VALUES:[Lorg/minidns/record/NSEC3$HashAlgorithm;

    invoke-virtual {v0}, [Lorg/minidns/record/NSEC3$HashAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/minidns/record/NSEC3$HashAlgorithm;

    return-object v0
.end method
