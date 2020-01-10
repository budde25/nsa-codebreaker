.class public Lorg/minidns/record/DNSKEY;
.super Lorg/minidns/record/Data;
.source "DNSKEY.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final FLAG_REVOKE:S = 0x80s

.field public static final FLAG_SECURE_ENTRY_POINT:S = 0x1s

.field public static final FLAG_ZONE:S = 0x100s

.field public static final PROTOCOL_RFC4034:B = 0x3t


# instance fields
.field public final algorithm:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

.field public final algorithmByte:B

.field public final flags:S

.field private final key:[B

.field private transient keyBase64Cache:Ljava/lang/String;

.field private transient keyBigIntegerCache:Ljava/math/BigInteger;

.field private transient keyTag:Ljava/lang/Integer;

.field public final protocol:B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 27
    return-void
.end method

.method public constructor <init>(SBB[B)V
    .locals 1
    .param p1, "flags"    # S
    .param p2, "protocol"    # B
    .param p3, "algorithm"    # B
    .param p4, "key"    # [B

    .line 105
    invoke-static {p3}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->forByte(B)Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p4}, Lorg/minidns/record/DNSKEY;-><init>(SBLorg/minidns/constants/DnssecConstants$SignatureAlgorithm;[B)V

    .line 106
    return-void
.end method

.method private constructor <init>(SBLorg/minidns/constants/DnssecConstants$SignatureAlgorithm;B[B)V
    .locals 1
    .param p1, "flags"    # S
    .param p2, "protocol"    # B
    .param p3, "algorithm"    # Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;
    .param p4, "algorithmByte"    # B
    .param p5, "key"    # [B

    .line 93
    invoke-direct {p0}, Lorg/minidns/record/Data;-><init>()V

    .line 94
    iput-short p1, p0, Lorg/minidns/record/DNSKEY;->flags:S

    .line 95
    iput-byte p2, p0, Lorg/minidns/record/DNSKEY;->protocol:B

    .line 97
    nop

    .line 98
    iput-byte p4, p0, Lorg/minidns/record/DNSKEY;->algorithmByte:B

    .line 99
    if-eqz p3, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    invoke-static {p4}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->forByte(B)Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/minidns/record/DNSKEY;->algorithm:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 101
    iput-object p5, p0, Lorg/minidns/record/DNSKEY;->key:[B

    .line 102
    return-void
.end method

.method public constructor <init>(SBLorg/minidns/constants/DnssecConstants$SignatureAlgorithm;[B)V
    .locals 6
    .param p1, "flags"    # S
    .param p2, "protocol"    # B
    .param p3, "algorithm"    # Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;
    .param p4, "key"    # [B

    .line 109
    iget-byte v4, p3, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->number:B

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/minidns/record/DNSKEY;-><init>(SBLorg/minidns/constants/DnssecConstants$SignatureAlgorithm;B[B)V

    .line 110
    return-void
.end method

.method public static parse(Ljava/io/DataInputStream;I)Lorg/minidns/record/DNSKEY;
    .locals 5
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    .line 86
    .local v0, "flags":S
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 87
    .local v1, "protocol":B
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    .line 88
    .local v2, "algorithm":B
    add-int/lit8 v3, p1, -0x4

    new-array v3, v3, [B

    .line 89
    .local v3, "key":[B
    invoke-virtual {p0, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 90
    new-instance v4, Lorg/minidns/record/DNSKEY;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/minidns/record/DNSKEY;-><init>(SBB[B)V

    return-object v4
.end method


# virtual methods
.method public getKey()[B
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/minidns/record/DNSKEY;->key:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getKeyAsDataInputStream()Ljava/io/DataInputStream;
    .locals 3

    .line 166
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lorg/minidns/record/DNSKEY;->key:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public getKeyBase64()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lorg/minidns/record/DNSKEY;->keyBase64Cache:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lorg/minidns/record/DNSKEY;->key:[B

    invoke-static {v0}, Lorg/minidns/util/Base64;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/record/DNSKEY;->keyBase64Cache:Ljava/lang/String;

    .line 175
    :cond_0
    iget-object v0, p0, Lorg/minidns/record/DNSKEY;->keyBase64Cache:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyBigInteger()Ljava/math/BigInteger;
    .locals 2

    .line 181
    iget-object v0, p0, Lorg/minidns/record/DNSKEY;->keyBigIntegerCache:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/minidns/record/DNSKEY;->key:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v0, p0, Lorg/minidns/record/DNSKEY;->keyBigIntegerCache:Ljava/math/BigInteger;

    .line 184
    :cond_0
    iget-object v0, p0, Lorg/minidns/record/DNSKEY;->keyBigIntegerCache:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getKeyLength()I
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/minidns/record/DNSKEY;->key:[B

    array-length v0, v0

    return v0
.end method

.method public getKeyTag()I
    .locals 9

    .line 126
    iget-object v0, p0, Lorg/minidns/record/DNSKEY;->keyTag:Ljava/lang/Integer;

    if-nez v0, :cond_2

    .line 127
    invoke-virtual {p0}, Lorg/minidns/record/DNSKEY;->toByteArray()[B

    move-result-object v0

    .line 128
    .local v0, "recordBytes":[B
    const-wide/16 v1, 0x0

    .line 130
    .local v1, "ac":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 131
    and-int/lit8 v4, v3, 0x1

    const-wide/16 v5, 0xff

    if-lez v4, :cond_0

    aget-byte v4, v0, v3

    int-to-long v7, v4

    and-long v4, v7, v5

    goto :goto_1

    :cond_0
    aget-byte v4, v0, v3

    int-to-long v7, v4

    and-long v4, v7, v5

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    :goto_1
    add-long/2addr v1, v4

    .line 130
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 133
    .end local v3    # "i":I
    :cond_1
    const/16 v3, 0x10

    shr-long v3, v1, v3

    const-wide/32 v5, 0xffff

    and-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 134
    and-long v3, v1, v5

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lorg/minidns/record/DNSKEY;->keyTag:Ljava/lang/Integer;

    .line 136
    .end local v0    # "recordBytes":[B
    .end local v1    # "ac":J
    :cond_2
    iget-object v0, p0, Lorg/minidns/record/DNSKEY;->keyTag:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getType()Lorg/minidns/record/Record$TYPE;
    .locals 1

    .line 114
    sget-object v0, Lorg/minidns/record/Record$TYPE;->DNSKEY:Lorg/minidns/record/Record$TYPE;

    return-object v0
.end method

.method public isSecureEntryPoint()Z
    .locals 2

    .line 192
    iget-short v0, p0, Lorg/minidns/record/DNSKEY;->flags:S

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public keyEquals([B)Z
    .locals 1
    .param p1, "otherKey"    # [B

    .line 188
    iget-object v0, p0, Lorg/minidns/record/DNSKEY;->key:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public serialize(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    iget-short v0, p0, Lorg/minidns/record/DNSKEY;->flags:S

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 142
    iget-byte v0, p0, Lorg/minidns/record/DNSKEY;->protocol:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 143
    iget-object v0, p0, Lorg/minidns/record/DNSKEY;->algorithm:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    iget-byte v0, v0, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->number:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 144
    iget-object v0, p0, Lorg/minidns/record/DNSKEY;->key:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 145
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-short v1, p0, Lorg/minidns/record/DNSKEY;->flags:S

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lorg/minidns/record/DNSKEY;->protocol:B

    .line 151
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/minidns/record/DNSKEY;->algorithm:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 152
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/minidns/record/DNSKEY;->key:[B

    .line 153
    invoke-static {v1}, Lorg/minidns/util/Base64;->encodeToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 154
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
