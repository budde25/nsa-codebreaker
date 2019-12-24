.class public Lorg/minidns/record/OPT;
.super Lorg/minidns/record/Data;
.source "OPT.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final variablePart:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/minidns/edns/EdnsOption;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/minidns/record/OPT;-><init>(Ljava/util/List;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/minidns/edns/EdnsOption;",
            ">;)V"
        }
    .end annotation

    .line 34
    .local p1, "variablePart":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/edns/EdnsOption;>;"
    invoke-direct {p0}, Lorg/minidns/record/Data;-><init>()V

    .line 35
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/record/OPT;->variablePart:Ljava/util/List;

    .line 36
    return-void
.end method

.method public static parse(Ljava/io/DataInputStream;I)Lorg/minidns/record/OPT;
    .locals 7
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .param p1, "payloadLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    if-nez p1, :cond_0

    .line 41
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .local v0, "variablePart":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/edns/EdnsOption;>;"
    goto :goto_1

    .line 43
    .end local v0    # "variablePart":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/edns/EdnsOption;>;"
    :cond_0
    move v0, p1

    .line 44
    .local v0, "payloadLeft":I
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    .local v1, "variablePart":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/edns/EdnsOption;>;"
    :goto_0
    if-lez v0, :cond_1

    .line 46
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    .line 47
    .local v2, "optionCode":I
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    .line 48
    .local v3, "optionLength":I
    new-array v4, v3, [B

    .line 49
    .local v4, "optionData":[B
    invoke-virtual {p0, v4}, Ljava/io/DataInputStream;->read([B)I

    .line 50
    invoke-static {v2, v4}, Lorg/minidns/edns/EdnsOption;->parse(I[B)Lorg/minidns/edns/EdnsOption;

    move-result-object v5

    .line 51
    .local v5, "ednsOption":Lorg/minidns/edns/EdnsOption;
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    add-int/lit8 v6, v3, 0x4

    sub-int/2addr v0, v6

    .line 54
    nop

    .line 55
    .end local v2    # "optionCode":I
    .end local v3    # "optionLength":I
    .end local v4    # "optionData":[B
    .end local v5    # "ednsOption":Lorg/minidns/edns/EdnsOption;
    goto :goto_0

    .line 45
    :cond_1
    move-object v0, v1

    .line 57
    .end local v1    # "variablePart":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/edns/EdnsOption;>;"
    .local v0, "variablePart":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/edns/EdnsOption;>;"
    :goto_1
    new-instance v1, Lorg/minidns/record/OPT;

    invoke-direct {v1, v0}, Lorg/minidns/record/OPT;-><init>(Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public getType()Lorg/minidns/record/Record$TYPE;
    .locals 1

    .line 62
    sget-object v0, Lorg/minidns/record/Record$TYPE;->OPT:Lorg/minidns/record/Record$TYPE;

    return-object v0
.end method

.method protected serialize(Ljava/io/DataOutputStream;)V
    .locals 2
    .param p1, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lorg/minidns/record/OPT;->variablePart:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/minidns/edns/EdnsOption;

    .line 68
    .local v1, "endsOption":Lorg/minidns/edns/EdnsOption;
    invoke-virtual {v1, p1}, Lorg/minidns/edns/EdnsOption;->writeToDos(Ljava/io/DataOutputStream;)V

    .line 69
    .end local v1    # "endsOption":Lorg/minidns/edns/EdnsOption;
    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method
