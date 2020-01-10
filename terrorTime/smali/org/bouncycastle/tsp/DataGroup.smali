.class public Lorg/bouncycastle/tsp/DataGroup;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/tsp/DataGroup$ByteArrayComparator;
    }
.end annotation


# instance fields
.field private dataObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private groupHash:[B

.field private hashes:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tsp/DataGroup;->dataObjects:Ljava/util/List;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tsp/DataGroup;->dataObjects:Ljava/util/List;

    iget-object v0, p0, Lorg/bouncycastle/tsp/DataGroup;->dataObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static calcDigest(Lorg/bouncycastle/operator/DigestCalculator;[B)[B
    .locals 2

    :try_start_0
    invoke-interface {p0}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    invoke-interface {p0}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "digest calculator failure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getHashes(Lorg/bouncycastle/operator/DigestCalculator;[B)Ljava/util/TreeSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/operator/DigestCalculator;",
            "[B)",
            "Ljava/util/TreeSet<",
            "[B>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tsp/DataGroup;->hashes:Ljava/util/TreeSet;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lorg/bouncycastle/tsp/DataGroup$ByteArrayComparator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/bouncycastle/tsp/DataGroup$ByteArrayComparator;-><init>(Lorg/bouncycastle/tsp/DataGroup;Lorg/bouncycastle/tsp/DataGroup$1;)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/bouncycastle/tsp/DataGroup;->hashes:Ljava/util/TreeSet;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/tsp/DataGroup;->dataObjects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/tsp/DataGroup;->dataObjects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    iget-object v2, p0, Lorg/bouncycastle/tsp/DataGroup;->hashes:Ljava/util/TreeSet;

    invoke-static {p1, v1}, Lorg/bouncycastle/tsp/DataGroup;->calcDigest(Lorg/bouncycastle/operator/DigestCalculator;[B)[B

    move-result-object v1

    if-eqz p2, :cond_0

    invoke-static {v1, p2}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v1

    invoke-static {p1, v1}, Lorg/bouncycastle/tsp/DataGroup;->calcDigest(Lorg/bouncycastle/operator/DigestCalculator;[B)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/bouncycastle/tsp/DataGroup;->hashes:Ljava/util/TreeSet;

    return-object p1
.end method


# virtual methods
.method public getHash(Lorg/bouncycastle/operator/DigestCalculator;)[B
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/tsp/DataGroup;->groupHash:[B

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tsp/DataGroup;->getHashes(Lorg/bouncycastle/operator/DigestCalculator;)Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    check-cast v2, [B

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {p1, v1}, Lorg/bouncycastle/tsp/DataGroup;->calcDigest(Lorg/bouncycastle/operator/DigestCalculator;[B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/tsp/DataGroup;->groupHash:[B

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    check-cast p1, [B

    iput-object p1, p0, Lorg/bouncycastle/tsp/DataGroup;->groupHash:[B

    :cond_2
    :goto_1
    iget-object p1, p0, Lorg/bouncycastle/tsp/DataGroup;->groupHash:[B

    return-object p1
.end method

.method public getHashes(Lorg/bouncycastle/operator/DigestCalculator;)Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/operator/DigestCalculator;",
            ")",
            "Ljava/util/TreeSet<",
            "[B>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/tsp/DataGroup;->getHashes(Lorg/bouncycastle/operator/DigestCalculator;[B)Ljava/util/TreeSet;

    move-result-object p1

    return-object p1
.end method
