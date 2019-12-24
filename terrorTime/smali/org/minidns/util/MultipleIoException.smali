.class public Lorg/minidns/util/MultipleIoException;
.super Ljava/io/IOException;
.source "MultipleIoException.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = -0x525372c80359d41bL


# instance fields
.field private final ioExceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/IOException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 19
    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/io/IOException;",
            ">;)V"
        }
    .end annotation

    .line 29
    .local p1, "ioExceptions":Ljava/util/List;, "Ljava/util/List<+Ljava/io/IOException;>;"
    invoke-static {p1}, Lorg/minidns/util/MultipleIoException;->getMessage(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 30
    nop

    .line 31
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/util/MultipleIoException;->ioExceptions:Ljava/util/List;

    .line 32
    return-void
.end method

.method private static getMessage(Ljava/util/Collection;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Exception;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 39
    .local p0, "exceptions":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Exception;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 41
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/Exception;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static throwIfRequired(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/io/IOException;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    .local p0, "ioExceptions":Ljava/util/List;, "Ljava/util/List<+Ljava/io/IOException;>;"
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 55
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 57
    :cond_1
    new-instance v0, Lorg/minidns/util/MultipleIoException;

    invoke-direct {v0, p0}, Lorg/minidns/util/MultipleIoException;-><init>(Ljava/util/List;)V

    throw v0

    .line 52
    :cond_2
    :goto_0
    return-void
.end method

.method public static toIOException(Ljava/util/List;)Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/io/IOException;",
            ">;)",
            "Ljava/io/IOException;"
        }
    .end annotation

    .line 61
    .local p0, "ioExceptions":Ljava/util/List;, "Ljava/util/List<+Ljava/io/IOException;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 62
    .local v0, "size":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 63
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    return-object v1

    .line 64
    :cond_0
    if-le v0, v1, :cond_1

    .line 65
    new-instance v1, Lorg/minidns/util/MultipleIoException;

    invoke-direct {v1, p0}, Lorg/minidns/util/MultipleIoException;-><init>(Ljava/util/List;)V

    return-object v1

    .line 67
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public getExceptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/IOException;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lorg/minidns/util/MultipleIoException;->ioExceptions:Ljava/util/List;

    return-object v0
.end method
