.class public final enum Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;
.super Ljava/lang/Enum;
.source "DnssecConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/constants/DnssecConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SignatureAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

.field public static final enum DH:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

.field public static final enum DSA:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

.field public static final enum DSA_NSEC3_SHA1:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

.field public static final enum ECC_GOST:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

.field public static final enum ECDSAP256SHA256:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

.field public static final enum ECDSAP384SHA384:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

.field public static final enum INDIRECT:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

.field public static final enum PRIVATEDNS:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

.field public static final enum PRIVATEOID:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

.field public static final enum RSAMD5:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum RSASHA1:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

.field public static final enum RSASHA1_NSEC3_SHA1:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

.field public static final enum RSASHA256:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

.field public static final enum RSASHA512:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;


# instance fields
.field public final description:Ljava/lang/String;

.field public final number:B


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 33
    new-instance v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "RSAMD5"

    const-string v4, "RSA/MD5"

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->RSAMD5:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 35
    new-instance v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    const/4 v3, 0x2

    const-string v4, "DH"

    const-string v5, "Diffie-Hellman"

    invoke-direct {v0, v4, v2, v3, v5}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->DH:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 36
    new-instance v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    const/4 v4, 0x3

    const-string v5, "DSA"

    const-string v6, "DSA/SHA1"

    invoke-direct {v0, v5, v3, v4, v6}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->DSA:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 37
    new-instance v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    const/4 v5, 0x5

    const-string v6, "RSASHA1"

    const-string v7, "RSA/SHA-1"

    invoke-direct {v0, v6, v4, v5, v7}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->RSASHA1:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 38
    new-instance v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    const/4 v6, 0x4

    const/4 v7, 0x6

    const-string v8, "DSA_NSEC3_SHA1"

    const-string v9, "DSA_NSEC3-SHA1"

    invoke-direct {v0, v8, v6, v7, v9}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->DSA_NSEC3_SHA1:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 39
    new-instance v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    const/4 v8, 0x7

    const-string v9, "RSASHA1_NSEC3_SHA1"

    const-string v10, "RSASHA1-NSEC3-SHA1"

    invoke-direct {v0, v9, v5, v8, v10}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->RSASHA1_NSEC3_SHA1:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 40
    new-instance v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    const/16 v9, 0x8

    const-string v10, "RSASHA256"

    const-string v11, "RSA/SHA-256"

    invoke-direct {v0, v10, v7, v9, v11}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->RSASHA256:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 41
    new-instance v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    const/16 v10, 0xa

    const-string v11, "RSASHA512"

    const-string v12, "RSA/SHA-512"

    invoke-direct {v0, v11, v8, v10, v12}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->RSASHA512:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 42
    new-instance v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    const/16 v11, 0xc

    const-string v12, "ECC_GOST"

    const-string v13, "GOST R 34.10-2001"

    invoke-direct {v0, v12, v9, v11, v13}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->ECC_GOST:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 43
    new-instance v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    const/16 v12, 0x9

    const/16 v13, 0xd

    const-string v14, "ECDSAP256SHA256"

    const-string v15, "ECDSA Curve P-256 with SHA-256"

    invoke-direct {v0, v14, v12, v13, v15}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->ECDSAP256SHA256:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 44
    new-instance v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    const/16 v14, 0xe

    const-string v15, "ECDSAP384SHA384"

    const-string v12, "ECDSA Curve P-384 with SHA-384"

    invoke-direct {v0, v15, v10, v14, v12}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->ECDSAP384SHA384:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 45
    new-instance v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    const/16 v12, 0xb

    const-string v15, "INDIRECT"

    const/16 v10, 0xfc

    const-string v9, "Reserved for Indirect Keys"

    invoke-direct {v0, v15, v12, v10, v9}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->INDIRECT:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 46
    new-instance v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    const-string v9, "PRIVATEDNS"

    const/16 v10, 0xfd

    const-string v15, "private algorithm"

    invoke-direct {v0, v9, v11, v10, v15}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->PRIVATEDNS:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 47
    new-instance v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    const-string v9, "PRIVATEOID"

    const/16 v10, 0xfe

    const-string v15, "private algorithm oid"

    invoke-direct {v0, v9, v13, v10, v15}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->PRIVATEOID:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 32
    new-array v0, v14, [Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    sget-object v9, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->RSAMD5:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    aput-object v9, v0, v1

    sget-object v1, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->DH:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    aput-object v1, v0, v2

    sget-object v1, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->DSA:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    aput-object v1, v0, v3

    sget-object v1, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->RSASHA1:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    aput-object v1, v0, v4

    sget-object v1, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->DSA_NSEC3_SHA1:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    aput-object v1, v0, v6

    sget-object v1, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->RSASHA1_NSEC3_SHA1:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    aput-object v1, v0, v5

    sget-object v1, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->RSASHA256:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    aput-object v1, v0, v7

    sget-object v1, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->RSASHA512:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    aput-object v1, v0, v8

    sget-object v1, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->ECC_GOST:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->ECDSAP256SHA256:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->ECDSAP384SHA384:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->INDIRECT:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    aput-object v1, v0, v12

    sget-object v1, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->PRIVATEDNS:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    aput-object v1, v0, v11

    sget-object v1, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->PRIVATEOID:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    aput-object v1, v0, v13

    sput-object v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->$VALUES:[Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "number"    # I
    .param p4, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    if-ltz p3, :cond_0

    const/16 p1, 0xff

    if-gt p3, p1, :cond_0

    .line 54
    int-to-byte p1, p3

    iput-byte p1, p0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->number:B

    .line 55
    iput-object p4, p0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->description:Ljava/lang/String;

    .line 56
    invoke-static {}, Lorg/minidns/constants/DnssecConstants;->access$000()Ljava/util/Map;

    move-result-object p1

    iget-byte p2, p0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->number:B

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public static forByte(B)Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;
    .locals 2
    .param p0, "b"    # B

    .line 63
    invoke-static {}, Lorg/minidns/constants/DnssecConstants;->access$000()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 32
    const-class v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    return-object v0
.end method

.method public static values()[Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;
    .locals 1

    .line 32
    sget-object v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->$VALUES:[Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    invoke-virtual {v0}, [Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    return-object v0
.end method
