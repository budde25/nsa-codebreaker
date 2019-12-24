.class public final enum Lorg/minidns/dnsmessage/DnsMessage$OPCODE;
.super Ljava/lang/Enum;
.source "DnsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/dnsmessage/DnsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OPCODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/minidns/dnsmessage/DnsMessage$OPCODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

.field private static final INVERSE_LUT:[Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

.field public static final enum INVERSE_QUERY:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

.field public static final enum NOTIFY:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

.field public static final enum QUERY:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

.field public static final enum STATUS:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

.field public static final enum UNASSIGNED3:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

.field public static final enum UPDATE:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;


# instance fields
.field private final value:B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 142
    new-instance v0, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    const/4 v1, 0x0

    const-string v2, "QUERY"

    invoke-direct {v0, v2, v1}, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->QUERY:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 143
    new-instance v0, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    const/4 v2, 0x1

    const-string v3, "INVERSE_QUERY"

    invoke-direct {v0, v3, v2}, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->INVERSE_QUERY:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 144
    new-instance v0, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    const/4 v3, 0x2

    const-string v4, "STATUS"

    invoke-direct {v0, v4, v3}, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->STATUS:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 145
    new-instance v0, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    const/4 v4, 0x3

    const-string v5, "UNASSIGNED3"

    invoke-direct {v0, v5, v4}, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->UNASSIGNED3:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 146
    new-instance v0, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    const/4 v5, 0x4

    const-string v6, "NOTIFY"

    invoke-direct {v0, v6, v5}, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->NOTIFY:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 147
    new-instance v0, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    const/4 v6, 0x5

    const-string v7, "UPDATE"

    invoke-direct {v0, v7, v6}, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->UPDATE:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 141
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    sget-object v7, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->QUERY:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    aput-object v7, v0, v1

    sget-object v7, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->INVERSE_QUERY:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    aput-object v7, v0, v2

    sget-object v2, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->STATUS:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    aput-object v2, v0, v3

    sget-object v2, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->UNASSIGNED3:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    aput-object v2, v0, v4

    sget-object v2, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->NOTIFY:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    aput-object v2, v0, v5

    sget-object v2, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->UPDATE:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    aput-object v2, v0, v6

    sput-object v0, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->$VALUES:[Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 153
    invoke-static {}, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->values()[Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    sput-object v0, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->INVERSE_LUT:[Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 156
    invoke-static {}, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->values()[Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 157
    .local v3, "opcode":Lorg/minidns/dnsmessage/DnsMessage$OPCODE;
    sget-object v4, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->INVERSE_LUT:[Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    invoke-virtual {v3}, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->getValue()B

    move-result v5

    aget-object v4, v4, v5

    if-nez v4, :cond_0

    .line 160
    sget-object v4, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->INVERSE_LUT:[Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    invoke-virtual {v3}, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->getValue()B

    move-result v5

    aput-object v3, v4, v5

    .line 156
    .end local v3    # "opcode":Lorg/minidns/dnsmessage/DnsMessage$OPCODE;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    .restart local v3    # "opcode":Lorg/minidns/dnsmessage/DnsMessage$OPCODE;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 162
    .end local v3    # "opcode":Lorg/minidns/dnsmessage/DnsMessage$OPCODE;
    :cond_1
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 173
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 174
    invoke-virtual {p0}, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->ordinal()I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, p0, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->value:B

    .line 175
    return-void
.end method

.method public static getOpcode(I)Lorg/minidns/dnsmessage/DnsMessage$OPCODE;
    .locals 2
    .param p0, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 195
    if-ltz p0, :cond_1

    const/16 v0, 0xf

    if-gt p0, v0, :cond_1

    .line 198
    sget-object v0, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->INVERSE_LUT:[Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    array-length v1, v0

    if-lt p0, v1, :cond_0

    .line 199
    const/4 v0, 0x0

    return-object v0

    .line 201
    :cond_0
    aget-object v0, v0, p0

    return-object v0

    .line 196
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/minidns/dnsmessage/DnsMessage$OPCODE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 141
    const-class v0, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    return-object v0
.end method

.method public static values()[Lorg/minidns/dnsmessage/DnsMessage$OPCODE;
    .locals 1

    .line 141
    sget-object v0, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->$VALUES:[Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    invoke-virtual {v0}, [Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    return-object v0
.end method


# virtual methods
.method public getValue()B
    .locals 1

    .line 183
    iget-byte v0, p0, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->value:B

    return v0
.end method
