.class Lorg/bouncycastle/crypto/util/SSHBuilder;
.super Ljava/lang/Object;


# instance fields
.field private final bos:Ljava/io/ByteArrayOutputStream;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/util/SSHBuilder;->bos:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/util/SSHBuilder;->bos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public rawArray([B)V
    .locals 2

    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/util/SSHBuilder;->u32(J)V

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/util/SSHBuilder;->bos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public u32(J)V
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/util/SSHBuilder;->bos:Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x18

    ushr-long v1, p1, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/util/SSHBuilder;->bos:Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x10

    ushr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/util/SSHBuilder;->bos:Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x8

    ushr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/util/SSHBuilder;->bos:Ljava/io/ByteArrayOutputStream;

    and-long/2addr p1, v3

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/util/SSHBuilder;->bos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/util/SSHBuilder;->rawArray([B)V

    return-void
.end method
