.class public Lorg/bouncycastle/mime/encoding/Base64OutputStream;
.super Ljava/io/FilterOutputStream;


# instance fields
.field bufOff:I

.field buffer:[B


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 p1, 0x36

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->buffer:[B

    return-void
.end method

.method private doWrite(B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->buffer:[B

    iget v1, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->bufOff:I

    aput-byte p1, v0, v1

    iget p1, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->bufOff:I

    array-length v1, v0

    if-ne p1, v1, :cond_0

    array-length p1, v0

    iget-object v1, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->out:Ljava/io/OutputStream;

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v1}, Lorg/bouncycastle/util/encoders/Base64;->encode([BIILjava/io/OutputStream;)I

    iget-object p1, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->out:Ljava/io/OutputStream;

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    iget-object p1, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->out:Ljava/io/OutputStream;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    iput v2, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->bufOff:I

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->bufOff:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->buffer:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->out:Ljava/io/OutputStream;

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/util/encoders/Base64;->encode([BIILjava/io/OutputStream;)I

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public write(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->doWrite(B)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-eq v0, p3, :cond_0

    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/mime/encoding/Base64OutputStream;->doWrite(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
