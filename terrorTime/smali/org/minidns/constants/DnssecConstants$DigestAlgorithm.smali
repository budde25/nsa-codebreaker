.class public final enum Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;
.super Ljava/lang/Enum;
.source "DnssecConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/constants/DnssecConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DigestAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

.field public static final enum GOST:Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

.field public static final enum SHA1:Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

.field public static final enum SHA256:Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

.field public static final enum SHA384:Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;


# instance fields
.field public final description:Ljava/lang/String;

.field public final value:B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 77
    new-instance v0, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "SHA1"

    const-string v4, "SHA-1"

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;->SHA1:Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    .line 78
    new-instance v0, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    const/4 v3, 0x2

    const-string v4, "SHA256"

    const-string v5, "SHA-256"

    invoke-direct {v0, v4, v2, v3, v5}, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;->SHA256:Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    .line 79
    new-instance v0, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    const/4 v4, 0x3

    const-string v5, "GOST"

    const-string v6, "GOST R 34.11-94"

    invoke-direct {v0, v5, v3, v4, v6}, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;->GOST:Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    .line 80
    new-instance v0, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    const/4 v5, 0x4

    const-string v6, "SHA384"

    const-string v7, "SHA-384"

    invoke-direct {v0, v6, v4, v5, v7}, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;->SHA384:Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    .line 76
    new-array v0, v5, [Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    sget-object v5, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;->SHA1:Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    aput-object v5, v0, v1

    sget-object v1, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;->SHA256:Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    aput-object v1, v0, v2

    sget-object v1, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;->GOST:Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    aput-object v1, v0, v3

    sget-object v1, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;->SHA384:Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    aput-object v1, v0, v4

    sput-object v0, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;->$VALUES:[Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

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

    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 84
    if-ltz p3, :cond_0

    const/16 p1, 0xff

    if-gt p3, p1, :cond_0

    .line 87
    int-to-byte p1, p3

    iput-byte p1, p0, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;->value:B

    .line 88
    iput-object p4, p0, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;->description:Ljava/lang/String;

    .line 89
    invoke-static {}, Lorg/minidns/constants/DnssecConstants;->access$100()Ljava/util/Map;

    move-result-object p1

    iget-byte p2, p0, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;->value:B

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void

    .line 85
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public static forByte(B)Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;
    .locals 2
    .param p0, "b"    # B

    .line 96
    invoke-static {}, Lorg/minidns/constants/DnssecConstants;->access$100()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 76
    const-class v0, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    return-object v0
.end method

.method public static values()[Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;
    .locals 1

    .line 76
    sget-object v0, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;->$VALUES:[Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    invoke-virtual {v0}, [Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    return-object v0
.end method
