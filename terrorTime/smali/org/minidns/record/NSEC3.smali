.class public Lorg/minidns/record/NSEC3;
.super Lorg/minidns/record/Data;
.source "NSEC3.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/minidns/record/NSEC3$HashAlgorithm;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final FLAG_OPT_OUT:B = 0x1t

.field private static final HASH_ALGORITHM_LUT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Byte;",
            "Lorg/minidns/record/NSEC3$HashAlgorithm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final flags:B

.field public final hashAlgorithm:Lorg/minidns/record/NSEC3$HashAlgorithm;

.field public final hashAlgorithmByte:B

.field public final iterations:I

.field private final nextHashed:[B

.field private nextHashedBase32Cache:Ljava/lang/String;

.field private nextHashedDnsLabelCache:Lorg/minidns/dnslabel/DnsLabel;

.field private final salt:[B

.field private final typeBitmap:[B

.field public final types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/minidns/record/Record$TYPE;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    nop

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/minidns/record/NSEC3;->HASH_ALGORITHM_LUT:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(BBI[B[BLjava/util/List;)V
    .locals 8
    .param p1, "hashAlgorithm"    # B
    .param p2, "flags"    # B
    .param p3, "iterations"    # I
    .param p4, "salt"    # [B
    .param p5, "nextHashed"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BBI[B[B",
            "Ljava/util/List<",
            "Lorg/minidns/record/Record$TYPE;",
            ">;)V"
        }
    .end annotation

    .line 139
    .local p6, "types":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record$TYPE;>;"
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/minidns/record/NSEC3;-><init>(Lorg/minidns/record/NSEC3$HashAlgorithm;BBI[B[BLjava/util/List;)V

    .line 140
    return-void
.end method

.method public varargs constructor <init>(BBI[B[B[Lorg/minidns/record/Record$TYPE;)V
    .locals 8
    .param p1, "hashAlgorithm"    # B
    .param p2, "flags"    # B
    .param p3, "iterations"    # I
    .param p4, "salt"    # [B
    .param p5, "nextHashed"    # [B
    .param p6, "types"    # [Lorg/minidns/record/Record$TYPE;

    .line 143
    invoke-static {p6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/minidns/record/NSEC3;-><init>(Lorg/minidns/record/NSEC3$HashAlgorithm;BBI[B[BLjava/util/List;)V

    .line 144
    return-void
.end method

.method private constructor <init>(Lorg/minidns/record/NSEC3$HashAlgorithm;BBI[B[BLjava/util/List;)V
    .locals 1
    .param p1, "hashAlgorithm"    # Lorg/minidns/record/NSEC3$HashAlgorithm;
    .param p2, "hashAlgorithmByte"    # B
    .param p3, "flags"    # B
    .param p4, "iterations"    # I
    .param p5, "salt"    # [B
    .param p6, "nextHashed"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/record/NSEC3$HashAlgorithm;",
            "BBI[B[B",
            "Ljava/util/List<",
            "Lorg/minidns/record/Record$TYPE;",
            ">;)V"
        }
    .end annotation

    .line 125
    .local p7, "types":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record$TYPE;>;"
    invoke-direct {p0}, Lorg/minidns/record/Data;-><init>()V

    .line 126
    nop

    .line 127
    iput-byte p2, p0, Lorg/minidns/record/NSEC3;->hashAlgorithmByte:B

    .line 128
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lorg/minidns/record/NSEC3$HashAlgorithm;->forByte(B)Lorg/minidns/record/NSEC3$HashAlgorithm;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/minidns/record/NSEC3;->hashAlgorithm:Lorg/minidns/record/NSEC3$HashAlgorithm;

    .line 130
    iput-byte p3, p0, Lorg/minidns/record/NSEC3;->flags:B

    .line 131
    iput p4, p0, Lorg/minidns/record/NSEC3;->iterations:I

    .line 132
    iput-object p5, p0, Lorg/minidns/record/NSEC3;->salt:[B

    .line 133
    iput-object p6, p0, Lorg/minidns/record/NSEC3;->nextHashed:[B

    .line 134
    iput-object p7, p0, Lorg/minidns/record/NSEC3;->types:Ljava/util/List;

    .line 135
    invoke-static {p7}, Lorg/minidns/record/NSEC;->createTypeBitMap(Ljava/util/List;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/record/NSEC3;->typeBitmap:[B

    .line 136
    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .line 29
    sget-object v0, Lorg/minidns/record/NSEC3;->HASH_ALGORITHM_LUT:Ljava/util/Map;

    return-object v0
.end method

.method public static parse(Ljava/io/DataInputStream;I)Lorg/minidns/record/NSEC3;
    .locals 18
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    .line 111
    .local v8, "hashAlgorithm":B
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    .line 112
    .local v9, "flags":B
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v10

    .line 113
    .local v10, "iterations":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v11

    .line 114
    .local v11, "saltLength":I
    new-array v12, v11, [B

    .line 115
    .local v12, "salt":[B
    invoke-virtual {v0, v12}, Ljava/io/DataInputStream;->read([B)I

    move-result v1

    array-length v2, v12

    if-ne v1, v2, :cond_2

    .line 116
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v13

    .line 117
    .local v13, "hashLength":I
    new-array v14, v13, [B

    .line 118
    .local v14, "nextHashed":[B
    invoke-virtual {v0, v14}, Ljava/io/DataInputStream;->read([B)I

    move-result v1

    array-length v2, v14

    if-ne v1, v2, :cond_1

    .line 119
    add-int/lit8 v1, v11, 0x6

    add-int/2addr v1, v13

    sub-int v1, p1, v1

    new-array v15, v1, [B

    .line 120
    .local v15, "typeBitmap":[B
    invoke-virtual {v0, v15}, Ljava/io/DataInputStream;->read([B)I

    move-result v1

    array-length v2, v15

    if-ne v1, v2, :cond_0

    .line 121
    invoke-static {v15}, Lorg/minidns/record/NSEC;->readTypeBitMap([B)Ljava/util/List;

    move-result-object v16

    .line 122
    .local v16, "types":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record$TYPE;>;"
    new-instance v17, Lorg/minidns/record/NSEC3;

    move-object/from16 v1, v17

    move v2, v8

    move v3, v9

    move v4, v10

    move-object v5, v12

    move-object v6, v14

    move-object/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Lorg/minidns/record/NSEC3;-><init>(BBI[B[BLjava/util/List;)V

    return-object v17

    .line 120
    .end local v16    # "types":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record$TYPE;>;"
    :cond_0
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 118
    .end local v15    # "typeBitmap":[B
    :cond_1
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 115
    .end local v13    # "hashLength":I
    .end local v14    # "nextHashed":[B
    :cond_2
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
.end method


# virtual methods
.method public copySaltInto([BI)V
    .locals 3
    .param p1, "dest"    # [B
    .param p2, "destPos"    # I

    .line 209
    iget-object v0, p0, Lorg/minidns/record/NSEC3;->salt:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    return-void
.end method

.method public getNextHashed()[B
    .locals 1

    .line 186
    iget-object v0, p0, Lorg/minidns/record/NSEC3;->nextHashed:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getNextHashedBase32()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lorg/minidns/record/NSEC3;->nextHashedBase32Cache:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lorg/minidns/record/NSEC3;->nextHashed:[B

    invoke-static {v0}, Lorg/minidns/util/Base32;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/record/NSEC3;->nextHashedBase32Cache:Ljava/lang/String;

    .line 195
    :cond_0
    iget-object v0, p0, Lorg/minidns/record/NSEC3;->nextHashedBase32Cache:Ljava/lang/String;

    return-object v0
.end method

.method public getNextHashedDnsLabel()Lorg/minidns/dnslabel/DnsLabel;
    .locals 2

    .line 201
    iget-object v0, p0, Lorg/minidns/record/NSEC3;->nextHashedDnsLabelCache:Lorg/minidns/dnslabel/DnsLabel;

    if-nez v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lorg/minidns/record/NSEC3;->getNextHashedBase32()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "nextHashedBase32":Ljava/lang/String;
    invoke-static {v0}, Lorg/minidns/dnslabel/DnsLabel;->from(Ljava/lang/String;)Lorg/minidns/dnslabel/DnsLabel;

    move-result-object v1

    iput-object v1, p0, Lorg/minidns/record/NSEC3;->nextHashedDnsLabelCache:Lorg/minidns/dnslabel/DnsLabel;

    .line 205
    .end local v0    # "nextHashedBase32":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lorg/minidns/record/NSEC3;->nextHashedDnsLabelCache:Lorg/minidns/dnslabel/DnsLabel;

    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/minidns/record/NSEC3;->salt:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getSaltLength()I
    .locals 1

    .line 182
    iget-object v0, p0, Lorg/minidns/record/NSEC3;->salt:[B

    array-length v0, v0

    return v0
.end method

.method public getType()Lorg/minidns/record/Record$TYPE;
    .locals 1

    .line 148
    sget-object v0, Lorg/minidns/record/Record$TYPE;->NSEC3:Lorg/minidns/record/Record$TYPE;

    return-object v0
.end method

.method public serialize(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    iget-byte v0, p0, Lorg/minidns/record/NSEC3;->hashAlgorithmByte:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 154
    iget-byte v0, p0, Lorg/minidns/record/NSEC3;->flags:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 155
    iget v0, p0, Lorg/minidns/record/NSEC3;->iterations:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 156
    iget-object v0, p0, Lorg/minidns/record/NSEC3;->salt:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 157
    iget-object v0, p0, Lorg/minidns/record/NSEC3;->salt:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 158
    iget-object v0, p0, Lorg/minidns/record/NSEC3;->nextHashed:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 159
    iget-object v0, p0, Lorg/minidns/record/NSEC3;->nextHashed:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 160
    iget-object v0, p0, Lorg/minidns/record/NSEC3;->typeBitmap:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 161
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/minidns/record/NSEC3;->hashAlgorithm:Lorg/minidns/record/NSEC3$HashAlgorithm;

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lorg/minidns/record/NSEC3;->flags:B

    .line 167
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/minidns/record/NSEC3;->iterations:I

    .line 168
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/minidns/record/NSEC3;->salt:[B

    array-length v3, v2

    if-nez v3, :cond_0

    const-string v2, "-"

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v2, 0x10

    .line 169
    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/minidns/record/NSEC3;->nextHashed:[B

    .line 170
    invoke-static {v2}, Lorg/minidns/util/Base32;->encodeToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 171
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lorg/minidns/record/NSEC3;->types:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/minidns/record/Record$TYPE;

    .line 172
    .local v3, "type":Lorg/minidns/record/Record$TYPE;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    .end local v3    # "type":Lorg/minidns/record/Record$TYPE;
    goto :goto_1

    .line 174
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
