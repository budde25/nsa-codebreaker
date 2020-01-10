.class public Lorg/minidns/record/AAAA;
.super Lorg/minidns/record/InternetAddressRR;
.source "AAAA.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "ipv6CharSequence"    # Ljava/lang/CharSequence;

    .line 43
    invoke-static {p1}, Lorg/minidns/util/InetAddressUtil;->ipv6From(Ljava/lang/CharSequence;)Ljava/net/Inet6Address;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/minidns/record/AAAA;-><init>(Ljava/net/Inet6Address;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/net/Inet6Address;)V
    .locals 1
    .param p1, "inet6address"    # Ljava/net/Inet6Address;

    .line 31
    invoke-virtual {p1}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/minidns/record/InternetAddressRR;-><init>([B)V

    .line 32
    nop

    .line 33
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "ip"    # [B

    .line 36
    invoke-direct {p0, p1}, Lorg/minidns/record/InternetAddressRR;-><init>([B)V

    .line 37
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 40
    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IPv6 address in AAAA record is always 16 byte"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parse(Ljava/io/DataInputStream;)Lorg/minidns/record/AAAA;
    .locals 2
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 49
    .local v0, "ip":[B
    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 50
    new-instance v1, Lorg/minidns/record/AAAA;

    invoke-direct {v1, v0}, Lorg/minidns/record/AAAA;-><init>([B)V

    return-object v1
.end method


# virtual methods
.method public getType()Lorg/minidns/record/Record$TYPE;
    .locals 1

    .line 27
    sget-object v0, Lorg/minidns/record/Record$TYPE;->AAAA:Lorg/minidns/record/Record$TYPE;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/minidns/record/AAAA;->ip:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 57
    if-eqz v1, :cond_0

    .line 58
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    :cond_0
    iget-object v2, p0, Lorg/minidns/record/AAAA;->ip:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    iget-object v3, p0, Lorg/minidns/record/AAAA;->ip:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 64
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
