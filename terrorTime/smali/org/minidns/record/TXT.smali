.class public Lorg/minidns/record/TXT;
.super Lorg/minidns/record/Data;
.source "TXT.java"


# instance fields
.field private final blob:[B

.field private transient characterStringsCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient textCache:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "blob"    # [B

    .line 40
    invoke-direct {p0}, Lorg/minidns/record/Data;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/minidns/record/TXT;->blob:[B

    .line 42
    return-void
.end method

.method public static parse(Ljava/io/DataInputStream;I)Lorg/minidns/record/TXT;
    .locals 2
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    new-array v0, p1, [B

    .line 36
    .local v0, "blob":[B
    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 37
    new-instance v1, Lorg/minidns/record/TXT;

    invoke-direct {v1, v0}, Lorg/minidns/record/TXT;-><init>([B)V

    return-object v1
.end method


# virtual methods
.method public getBlob()[B
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/minidns/record/TXT;->blob:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getCharacterStrings()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lorg/minidns/record/TXT;->characterStringsCache:Ljava/util/List;

    if-nez v0, :cond_1

    .line 69
    invoke-virtual {p0}, Lorg/minidns/record/TXT;->getExtents()Ljava/util/List;

    move-result-object v0

    .line 70
    .local v0, "extents":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 71
    .local v1, "characterStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 73
    .local v3, "extent":[B
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    nop

    .line 77
    .end local v3    # "extent":[B
    goto :goto_0

    .line 74
    .restart local v3    # "extent":[B
    :catch_0
    move-exception v2

    .line 75
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 79
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v3    # "extent":[B
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/minidns/record/TXT;->characterStringsCache:Ljava/util/List;

    .line 81
    .end local v0    # "extents":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v1    # "characterStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    iget-object v0, p0, Lorg/minidns/record/TXT;->characterStringsCache:Ljava/util/List;

    return-object v0
.end method

.method public getExtents()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v0, "extents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v1, 0x0

    .line 87
    .local v1, "segLength":I
    const/4 v2, 0x0

    .local v2, "used":I
    :goto_0
    iget-object v3, p0, Lorg/minidns/record/TXT;->blob:[B

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 88
    aget-byte v4, v3, v2

    and-int/lit16 v1, v4, 0xff

    .line 89
    add-int/lit8 v2, v2, 0x1

    add-int v4, v2, v1

    .line 90
    .local v4, "end":I
    invoke-static {v3, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 91
    .local v3, "extent":[B
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .end local v3    # "extent":[B
    .end local v4    # "end":I
    add-int/2addr v2, v1

    goto :goto_0

    .line 93
    .end local v2    # "used":I
    :cond_0
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    .line 51
    iget-object v0, p0, Lorg/minidns/record/TXT;->textCache:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/minidns/record/TXT;->getCharacterStrings()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 54
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/minidns/record/TXT;->textCache:Ljava/lang/String;

    .line 62
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    iget-object v0, p0, Lorg/minidns/record/TXT;->textCache:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lorg/minidns/record/Record$TYPE;
    .locals 1

    .line 103
    sget-object v0, Lorg/minidns/record/Record$TYPE;->TXT:Lorg/minidns/record/Record$TYPE;

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

    .line 98
    iget-object v0, p0, Lorg/minidns/record/TXT;->blob:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 99
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/minidns/record/TXT;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
