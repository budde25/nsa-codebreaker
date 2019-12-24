.class public abstract Lorg/minidns/record/Data;
.super Ljava/lang/Object;
.source "Data.java"


# instance fields
.field private bytes:[B

.field private transient hashCodeCache:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final setBytes()V
    .locals 4

    .line 43
    iget-object v0, p0, Lorg/minidns/record/Data;->bytes:[B

    if-eqz v0, :cond_0

    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 46
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 48
    .local v1, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/minidns/record/Data;->serialize(Ljava/io/DataOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    nop

    .line 53
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lorg/minidns/record/Data;->bytes:[B

    .line 54
    return-void

    .line 49
    :catch_0
    move-exception v2

    .line 51
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 95
    instance-of v0, p1, Lorg/minidns/record/Data;

    if-nez v0, :cond_0

    .line 96
    const/4 v0, 0x0

    return v0

    .line 98
    :cond_0
    if-ne p1, p0, :cond_1

    .line 99
    const/4 v0, 0x1

    return v0

    .line 101
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/minidns/record/Data;

    .line 102
    .local v0, "otherData":Lorg/minidns/record/Data;
    invoke-direct {v0}, Lorg/minidns/record/Data;->setBytes()V

    .line 103
    invoke-direct {p0}, Lorg/minidns/record/Data;->setBytes()V

    .line 105
    iget-object v1, p0, Lorg/minidns/record/Data;->bytes:[B

    iget-object v2, v0, Lorg/minidns/record/Data;->bytes:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public abstract getType()Lorg/minidns/record/Record$TYPE;
.end method

.method public final hashCode()I
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/minidns/record/Data;->hashCodeCache:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 87
    invoke-direct {p0}, Lorg/minidns/record/Data;->setBytes()V

    .line 88
    iget-object v0, p0, Lorg/minidns/record/Data;->bytes:[B

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/record/Data;->hashCodeCache:Ljava/lang/Integer;

    .line 90
    :cond_0
    iget-object v0, p0, Lorg/minidns/record/Data;->hashCodeCache:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final length()I
    .locals 1

    .line 57
    invoke-direct {p0}, Lorg/minidns/record/Data;->setBytes()V

    .line 58
    iget-object v0, p0, Lorg/minidns/record/Data;->bytes:[B

    array-length v0, v0

    return v0
.end method

.method protected abstract serialize(Ljava/io/DataOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final toByteArray()[B
    .locals 1

    .line 78
    invoke-direct {p0}, Lorg/minidns/record/Data;->setBytes()V

    .line 79
    iget-object v0, p0, Lorg/minidns/record/Data;->bytes:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public final toOutputStream(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Lorg/minidns/record/Data;->setBytes()V

    .line 74
    iget-object v0, p0, Lorg/minidns/record/Data;->bytes:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 75
    return-void
.end method

.method public final toOutputStream(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 63
    .local v0, "dataOutputStream":Ljava/io/DataOutputStream;
    invoke-virtual {p0, v0}, Lorg/minidns/record/Data;->toOutputStream(Ljava/io/DataOutputStream;)V

    .line 64
    return-void
.end method
