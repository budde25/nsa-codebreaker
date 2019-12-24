.class public abstract Lorg/minidns/record/DelegatingDnssecRR;
.super Lorg/minidns/record/Data;
.source "DelegatingDnssecRR.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/minidns/record/DelegatingDnssecRR$SharedData;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final algorithm:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

.field public final algorithmByte:B

.field protected final digest:[B

.field private transient digestBigIntCache:Ljava/math/BigInteger;

.field private transient digestHexCache:Ljava/lang/String;

.field public final digestType:Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

.field public final digestTypeByte:B

.field public final keyTag:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 27
    return-void
.end method

.method protected constructor <init>(IBB[B)V
    .locals 7
    .param p1, "keyTag"    # I
    .param p2, "algorithm"    # B
    .param p3, "digestType"    # B
    .param p4, "digest"    # [B

    .line 106
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/minidns/record/DelegatingDnssecRR;-><init>(ILorg/minidns/constants/DnssecConstants$SignatureAlgorithm;BLorg/minidns/constants/DnssecConstants$DigestAlgorithm;B[B)V

    .line 107
    return-void
.end method

.method protected constructor <init>(ILorg/minidns/constants/DnssecConstants$SignatureAlgorithm;BLorg/minidns/constants/DnssecConstants$DigestAlgorithm;B[B)V
    .locals 1
    .param p1, "keyTag"    # I
    .param p2, "algorithm"    # Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;
    .param p3, "algorithmByte"    # B
    .param p4, "digestType"    # Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;
    .param p5, "digestTypeByte"    # B
    .param p6, "digest"    # [B

    .line 90
    invoke-direct {p0}, Lorg/minidns/record/Data;-><init>()V

    .line 91
    iput p1, p0, Lorg/minidns/record/DelegatingDnssecRR;->keyTag:I

    .line 93
    nop

    .line 94
    iput-byte p3, p0, Lorg/minidns/record/DelegatingDnssecRR;->algorithmByte:B

    .line 95
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->forByte(B)Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/minidns/record/DelegatingDnssecRR;->algorithm:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 97
    nop

    .line 98
    iput-byte p5, p0, Lorg/minidns/record/DelegatingDnssecRR;->digestTypeByte:B

    .line 99
    if-eqz p4, :cond_1

    move-object v0, p4

    goto :goto_1

    :cond_1
    invoke-static {p5}, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;->forByte(B)Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lorg/minidns/record/DelegatingDnssecRR;->digestType:Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    .line 101
    nop

    .line 102
    iput-object p6, p0, Lorg/minidns/record/DelegatingDnssecRR;->digest:[B

    .line 103
    return-void
.end method

.method protected constructor <init>(ILorg/minidns/constants/DnssecConstants$SignatureAlgorithm;B[B)V
    .locals 7
    .param p1, "keyTag"    # I
    .param p2, "algorithm"    # Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;
    .param p3, "digestType"    # B
    .param p4, "digest"    # [B

    .line 114
    iget-byte v3, p2, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->number:B

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/minidns/record/DelegatingDnssecRR;-><init>(ILorg/minidns/constants/DnssecConstants$SignatureAlgorithm;BLorg/minidns/constants/DnssecConstants$DigestAlgorithm;B[B)V

    .line 115
    return-void
.end method

.method protected constructor <init>(ILorg/minidns/constants/DnssecConstants$SignatureAlgorithm;Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;[B)V
    .locals 7
    .param p1, "keyTag"    # I
    .param p2, "algorithm"    # Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;
    .param p3, "digestType"    # Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;
    .param p4, "digest"    # [B

    .line 110
    iget-byte v3, p2, Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;->number:B

    iget-byte v5, p3, Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;->value:B

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/minidns/record/DelegatingDnssecRR;-><init>(ILorg/minidns/constants/DnssecConstants$SignatureAlgorithm;BLorg/minidns/constants/DnssecConstants$DigestAlgorithm;B[B)V

    .line 111
    return-void
.end method

.method protected static parseSharedData(Ljava/io/DataInputStream;I)Lorg/minidns/record/DelegatingDnssecRR$SharedData;
    .locals 11
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v6

    .line 69
    .local v6, "keyTag":I
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    .line 70
    .local v7, "algorithm":B
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v8

    .line 71
    .local v8, "digestType":B
    add-int/lit8 v0, p1, -0x4

    new-array v9, v0, [B

    .line 72
    .local v9, "digest":[B
    invoke-virtual {p0, v9}, Ljava/io/DataInputStream;->read([B)I

    move-result v0

    array-length v1, v9

    if-ne v0, v1, :cond_0

    .line 73
    new-instance v10, Lorg/minidns/record/DelegatingDnssecRR$SharedData;

    const/4 v5, 0x0

    move-object v0, v10

    move v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    invoke-direct/range {v0 .. v5}, Lorg/minidns/record/DelegatingDnssecRR$SharedData;-><init>(IBB[BLorg/minidns/record/DelegatingDnssecRR$1;)V

    return-object v10

    .line 72
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method


# virtual methods
.method public digestEquals([B)Z
    .locals 1
    .param p1, "otherDigest"    # [B

    .line 154
    iget-object v0, p0, Lorg/minidns/record/DelegatingDnssecRR;->digest:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public getDigestBigInteger()Ljava/math/BigInteger;
    .locals 3

    .line 138
    iget-object v0, p0, Lorg/minidns/record/DelegatingDnssecRR;->digestBigIntCache:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/minidns/record/DelegatingDnssecRR;->digest:[B

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lorg/minidns/record/DelegatingDnssecRR;->digestBigIntCache:Ljava/math/BigInteger;

    .line 141
    :cond_0
    iget-object v0, p0, Lorg/minidns/record/DelegatingDnssecRR;->digestBigIntCache:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getDigestHex()Ljava/lang/String;
    .locals 2

    .line 147
    iget-object v0, p0, Lorg/minidns/record/DelegatingDnssecRR;->digestHexCache:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lorg/minidns/record/DelegatingDnssecRR;->getDigestBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/record/DelegatingDnssecRR;->digestHexCache:Ljava/lang/String;

    .line 150
    :cond_0
    iget-object v0, p0, Lorg/minidns/record/DelegatingDnssecRR;->digestHexCache:Ljava/lang/String;

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

    .line 119
    iget v0, p0, Lorg/minidns/record/DelegatingDnssecRR;->keyTag:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 120
    iget-byte v0, p0, Lorg/minidns/record/DelegatingDnssecRR;->algorithmByte:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 121
    iget-byte v0, p0, Lorg/minidns/record/DelegatingDnssecRR;->digestTypeByte:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 122
    iget-object v0, p0, Lorg/minidns/record/DelegatingDnssecRR;->digest:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 123
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/minidns/record/DelegatingDnssecRR;->keyTag:I

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/minidns/record/DelegatingDnssecRR;->algorithm:Lorg/minidns/constants/DnssecConstants$SignatureAlgorithm;

    .line 129
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/minidns/record/DelegatingDnssecRR;->digestType:Lorg/minidns/constants/DnssecConstants$DigestAlgorithm;

    .line 130
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/minidns/record/DelegatingDnssecRR;->digest:[B

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 131
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 132
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
