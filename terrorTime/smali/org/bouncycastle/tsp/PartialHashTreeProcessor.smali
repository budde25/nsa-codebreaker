.class public Lorg/bouncycastle/tsp/PartialHashTreeProcessor;
.super Ljava/lang/Object;


# instance fields
.field private final values:[[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/tsp/PartialHashtree;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/tsp/PartialHashtree;->getValues()[[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tsp/PartialHashTreeProcessor;->values:[[B

    return-void
.end method


# virtual methods
.method public containsHash([B)Z
    .locals 4

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/tsp/PartialHashTreeProcessor;->values:[[B

    array-length v3, v2

    if-eq v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getHash(Lorg/bouncycastle/operator/DigestCalculator;)[B
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/tsp/PartialHashTreeProcessor;->values:[[B

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 p1, 0x0

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/tsp/PartialHashTreeProcessor;->values:[[B

    array-length v1, v1

    if-eq v2, v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/tsp/PartialHashTreeProcessor;->values:[[B

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculator failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verifyContainsHash([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/PartialHashTreeVerificationException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tsp/PartialHashTreeProcessor;->containsHash([B)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/tsp/PartialHashTreeVerificationException;

    const-string v0, "calculated hash is not present in partial hash tree"

    invoke-direct {p1, v0}, Lorg/bouncycastle/tsp/PartialHashTreeVerificationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
