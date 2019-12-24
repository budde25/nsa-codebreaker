.class public final enum Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;
.super Ljava/lang/Enum;
.source "DnsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/dnsmessage/DnsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RESPONSE_CODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

.field public static final enum BADALG:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

.field public static final enum BADCOOKIE:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

.field public static final enum BADKEY:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

.field public static final enum BADMODE:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

.field public static final enum BADNAME:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

.field public static final enum BADTIME:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

.field public static final enum BADTRUNC:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

.field public static final enum BADVERS_BADSIG:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

.field public static final enum FORMAT_ERR:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

.field private static final INVERSE_LUT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum NOT_AUTH:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

.field public static final enum NOT_ZONE:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

.field public static final enum NO_ERROR:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

.field public static final enum NO_IMP:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

.field public static final enum NXRRSET:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

.field public static final enum NX_DOMAIN:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

.field public static final enum REFUSED:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

.field public static final enum SERVER_FAIL:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

.field public static final enum YXDOMAIN:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

.field public static final enum YXRRSET:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;


# instance fields
.field private final value:B


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 63
    new-instance v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    const/4 v1, 0x0

    const-string v2, "NO_ERROR"

    invoke-direct {v0, v2, v1, v1}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->NO_ERROR:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 64
    new-instance v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    const/4 v2, 0x1

    const-string v3, "FORMAT_ERR"

    invoke-direct {v0, v3, v2, v2}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->FORMAT_ERR:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 65
    new-instance v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    const/4 v3, 0x2

    const-string v4, "SERVER_FAIL"

    invoke-direct {v0, v4, v3, v3}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->SERVER_FAIL:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 66
    new-instance v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    const/4 v4, 0x3

    const-string v5, "NX_DOMAIN"

    invoke-direct {v0, v5, v4, v4}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->NX_DOMAIN:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 67
    new-instance v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    const/4 v5, 0x4

    const-string v6, "NO_IMP"

    invoke-direct {v0, v6, v5, v5}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->NO_IMP:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 68
    new-instance v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    const/4 v6, 0x5

    const-string v7, "REFUSED"

    invoke-direct {v0, v7, v6, v6}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->REFUSED:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 69
    new-instance v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    const/4 v7, 0x6

    const-string v8, "YXDOMAIN"

    invoke-direct {v0, v8, v7, v7}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->YXDOMAIN:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 70
    new-instance v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    const/4 v8, 0x7

    const-string v9, "YXRRSET"

    invoke-direct {v0, v9, v8, v8}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->YXRRSET:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 71
    new-instance v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    const/16 v9, 0x8

    const-string v10, "NXRRSET"

    invoke-direct {v0, v10, v9, v9}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->NXRRSET:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 72
    new-instance v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    const/16 v10, 0x9

    const-string v11, "NOT_AUTH"

    invoke-direct {v0, v11, v10, v10}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->NOT_AUTH:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 73
    new-instance v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    const/16 v11, 0xa

    const-string v12, "NOT_ZONE"

    invoke-direct {v0, v12, v11, v11}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->NOT_ZONE:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 74
    new-instance v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    const/16 v12, 0xb

    const/16 v13, 0x10

    const-string v14, "BADVERS_BADSIG"

    invoke-direct {v0, v14, v12, v13}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->BADVERS_BADSIG:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 75
    new-instance v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    const/16 v14, 0x11

    const-string v15, "BADKEY"

    const/16 v12, 0xc

    invoke-direct {v0, v15, v12, v14}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->BADKEY:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 76
    new-instance v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    const/16 v12, 0x12

    const-string v15, "BADTIME"

    const/16 v11, 0xd

    invoke-direct {v0, v15, v11, v12}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->BADTIME:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 77
    new-instance v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    const-string v11, "BADMODE"

    const/16 v15, 0xe

    const/16 v10, 0x13

    invoke-direct {v0, v11, v15, v10}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->BADMODE:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 78
    new-instance v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    const-string v10, "BADNAME"

    const/16 v11, 0xf

    const/16 v15, 0x14

    invoke-direct {v0, v10, v11, v15}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->BADNAME:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 79
    new-instance v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    const-string v10, "BADALG"

    const/16 v11, 0x15

    invoke-direct {v0, v10, v13, v11}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->BADALG:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 80
    new-instance v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    const-string v10, "BADTRUNC"

    const/16 v11, 0x16

    invoke-direct {v0, v10, v14, v11}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->BADTRUNC:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 81
    new-instance v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    const-string v10, "BADCOOKIE"

    const/16 v11, 0x17

    invoke-direct {v0, v10, v12, v11}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->BADCOOKIE:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 62
    const/16 v0, 0x13

    new-array v0, v0, [Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    sget-object v10, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->NO_ERROR:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    aput-object v10, v0, v1

    sget-object v10, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->FORMAT_ERR:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    aput-object v10, v0, v2

    sget-object v2, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->SERVER_FAIL:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    aput-object v2, v0, v3

    sget-object v2, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->NX_DOMAIN:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    aput-object v2, v0, v4

    sget-object v2, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->NO_IMP:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    aput-object v2, v0, v5

    sget-object v2, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->REFUSED:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    aput-object v2, v0, v6

    sget-object v2, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->YXDOMAIN:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    aput-object v2, v0, v7

    sget-object v2, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->YXRRSET:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    aput-object v2, v0, v8

    sget-object v2, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->NXRRSET:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    aput-object v2, v0, v9

    sget-object v2, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->NOT_AUTH:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    const/16 v3, 0x9

    aput-object v2, v0, v3

    sget-object v2, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->NOT_ZONE:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    const/16 v3, 0xa

    aput-object v2, v0, v3

    sget-object v2, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->BADVERS_BADSIG:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    const/16 v3, 0xb

    aput-object v2, v0, v3

    sget-object v2, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->BADKEY:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    const/16 v3, 0xc

    aput-object v2, v0, v3

    sget-object v2, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->BADTIME:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    const/16 v3, 0xd

    aput-object v2, v0, v3

    sget-object v2, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->BADMODE:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    const/16 v3, 0xe

    aput-object v2, v0, v3

    sget-object v2, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->BADNAME:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    const/16 v3, 0xf

    aput-object v2, v0, v3

    sget-object v2, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->BADALG:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    aput-object v2, v0, v13

    sget-object v2, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->BADTRUNC:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    aput-object v2, v0, v14

    sget-object v2, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->BADCOOKIE:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    aput-object v2, v0, v12

    sput-object v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->$VALUES:[Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-static {}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->values()[Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    move-result-object v2

    array-length v2, v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->INVERSE_LUT:Ljava/util/Map;

    .line 90
    invoke-static {}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->values()[Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 91
    .local v3, "responseCode":Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;
    sget-object v4, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->INVERSE_LUT:Ljava/util/Map;

    iget-byte v5, v3, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->value:B

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .end local v3    # "responseCode":Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 106
    int-to-byte p1, p3

    iput-byte p1, p0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->value:B

    .line 107
    return-void
.end method

.method public static getResponseCode(I)Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;
    .locals 2
    .param p0, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 126
    if-ltz p0, :cond_0

    const v0, 0xffff

    if-gt p0, v0, :cond_0

    .line 129
    sget-object v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->INVERSE_LUT:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    return-object v0

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 62
    const-class v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    return-object v0
.end method

.method public static values()[Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;
    .locals 1

    .line 62
    sget-object v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->$VALUES:[Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    invoke-virtual {v0}, [Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    return-object v0
.end method


# virtual methods
.method public getValue()B
    .locals 1

    .line 115
    iget-byte v0, p0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->value:B

    return v0
.end method
