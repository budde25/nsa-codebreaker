.class public Lorg/minidns/record/NSEC3PARAM;
.super Lorg/minidns/record/Data;
.source "NSEC3PARAM.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final flags:B

.field public final hashAlgorithm:Lorg/minidns/record/NSEC3$HashAlgorithm;

.field public final hashAlgorithmByte:B

.field public final iterations:I

.field private final salt:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 24
    return-void
.end method

.method constructor <init>(BBI[B)V
    .locals 6
    .param p1, "hashAlgorithm"    # B
    .param p2, "flags"    # B
    .param p3, "iterations"    # I
    .param p4, "salt"    # [B

    .line 71
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/minidns/record/NSEC3PARAM;-><init>(Lorg/minidns/record/NSEC3$HashAlgorithm;BBI[B)V

    .line 72
    return-void
.end method

.method private constructor <init>(Lorg/minidns/record/NSEC3$HashAlgorithm;BBI[B)V
    .locals 1
    .param p1, "hashAlgorithm"    # Lorg/minidns/record/NSEC3$HashAlgorithm;
    .param p2, "hashAlgorithmByte"    # B
    .param p3, "flags"    # B
    .param p4, "iterations"    # I
    .param p5, "salt"    # [B

    .line 60
    invoke-direct {p0}, Lorg/minidns/record/Data;-><init>()V

    .line 61
    nop

    .line 62
    iput-byte p2, p0, Lorg/minidns/record/NSEC3PARAM;->hashAlgorithmByte:B

    .line 63
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lorg/minidns/record/NSEC3$HashAlgorithm;->forByte(B)Lorg/minidns/record/NSEC3$HashAlgorithm;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/minidns/record/NSEC3PARAM;->hashAlgorithm:Lorg/minidns/record/NSEC3$HashAlgorithm;

    .line 65
    iput-byte p3, p0, Lorg/minidns/record/NSEC3PARAM;->flags:B

    .line 66
    iput p4, p0, Lorg/minidns/record/NSEC3PARAM;->iterations:I

    .line 67
    iput-object p5, p0, Lorg/minidns/record/NSEC3PARAM;->salt:[B

    .line 68
    return-void
.end method

.method public static parse(Ljava/io/DataInputStream;)Lorg/minidns/record/NSEC3PARAM;
    .locals 7
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 52
    .local v0, "hashAlgorithm":B
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 53
    .local v1, "flags":B
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    .line 54
    .local v2, "iterations":I
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    .line 55
    .local v3, "saltLength":I
    new-array v4, v3, [B

    .line 56
    .local v4, "salt":[B
    invoke-virtual {p0, v4}, Ljava/io/DataInputStream;->read([B)I

    move-result v5

    array-length v6, v4

    if-eq v5, v6, :cond_1

    array-length v5, v4

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5

    .line 57
    :cond_1
    :goto_0
    new-instance v5, Lorg/minidns/record/NSEC3PARAM;

    invoke-direct {v5, v0, v1, v2, v4}, Lorg/minidns/record/NSEC3PARAM;-><init>(BBI[B)V

    return-object v5
.end method


# virtual methods
.method public getSaltLength()I
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/minidns/record/NSEC3PARAM;->salt:[B

    array-length v0, v0

    return v0
.end method

.method public getType()Lorg/minidns/record/Record$TYPE;
    .locals 1

    .line 76
    sget-object v0, Lorg/minidns/record/Record$TYPE;->NSEC3PARAM:Lorg/minidns/record/Record$TYPE;

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

    .line 81
    iget-byte v0, p0, Lorg/minidns/record/NSEC3PARAM;->hashAlgorithmByte:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 82
    iget-byte v0, p0, Lorg/minidns/record/NSEC3PARAM;->flags:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 83
    iget v0, p0, Lorg/minidns/record/NSEC3PARAM;->iterations:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 84
    iget-object v0, p0, Lorg/minidns/record/NSEC3PARAM;->salt:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 85
    iget-object v0, p0, Lorg/minidns/record/NSEC3PARAM;->salt:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 86
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/minidns/record/NSEC3PARAM;->hashAlgorithm:Lorg/minidns/record/NSEC3$HashAlgorithm;

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lorg/minidns/record/NSEC3PARAM;->flags:B

    .line 92
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/minidns/record/NSEC3PARAM;->iterations:I

    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/minidns/record/NSEC3PARAM;->salt:[B

    array-length v2, v1

    if-nez v2, :cond_0

    const-string v1, "-"

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v1, 0x10

    .line 94
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 95
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
