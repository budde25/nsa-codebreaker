.class public Landroidx/navigation/NavType$SerializableType;
.super Landroidx/navigation/NavType;
.source "NavType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/NavType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SerializableType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D::",
        "Ljava/io/Serializable;",
        ">",
        "Landroidx/navigation/NavType<",
        "TD;>;"
    }
.end annotation


# instance fields
.field private final mType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TD;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TD;>;)V"
        }
    .end annotation

    .line 795
    .local p0, "this":Landroidx/navigation/NavType$SerializableType;, "Landroidx/navigation/NavType$SerializableType<TD;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TD;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/navigation/NavType;-><init>(Z)V

    .line 796
    const-class v0, Ljava/io/Serializable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 800
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_0

    .line 804
    iput-object p1, p0, Landroidx/navigation/NavType$SerializableType;->mType:Ljava/lang/Class;

    .line 805
    return-void

    .line 801
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is an Enum. You should use EnumType instead."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 797
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not implement Serializable."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(ZLjava/lang/Class;)V
    .locals 3
    .param p1, "nullableAllowed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Class<",
            "TD;>;)V"
        }
    .end annotation

    .line 808
    .local p0, "this":Landroidx/navigation/NavType$SerializableType;, "Landroidx/navigation/NavType$SerializableType<TD;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TD;>;"
    invoke-direct {p0, p1}, Landroidx/navigation/NavType;-><init>(Z)V

    .line 809
    const-class v0, Ljava/io/Serializable;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 813
    iput-object p2, p0, Landroidx/navigation/NavType$SerializableType;->mType:Ljava/lang/Class;

    .line 814
    return-void

    .line 810
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not implement Serializable."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 844
    .local p0, "this":Landroidx/navigation/NavType$SerializableType;, "Landroidx/navigation/NavType$SerializableType<TD;>;"
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 845
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 847
    :cond_1
    move-object v0, p1

    check-cast v0, Landroidx/navigation/NavType$SerializableType;

    .line 849
    .local v0, "that":Landroidx/navigation/NavType$SerializableType;, "Landroidx/navigation/NavType$SerializableType<*>;"
    iget-object v1, p0, Landroidx/navigation/NavType$SerializableType;->mType:Ljava/lang/Class;

    iget-object v2, v0, Landroidx/navigation/NavType$SerializableType;->mType:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 845
    .end local v0    # "that":Landroidx/navigation/NavType$SerializableType;, "Landroidx/navigation/NavType$SerializableType<*>;"
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public get(Landroid/os/Bundle;Ljava/lang/String;)Ljava/io/Serializable;
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")TD;"
        }
    .end annotation

    .line 827
    .local p0, "this":Landroidx/navigation/NavType$SerializableType;, "Landroidx/navigation/NavType$SerializableType<TD;>;"
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    return-object v0
.end method

.method public bridge synthetic get(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 786
    .local p0, "this":Landroidx/navigation/NavType$SerializableType;, "Landroidx/navigation/NavType$SerializableType<TD;>;"
    invoke-virtual {p0, p1, p2}, Landroidx/navigation/NavType$SerializableType;->get(Landroid/os/Bundle;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 839
    .local p0, "this":Landroidx/navigation/NavType$SerializableType;, "Landroidx/navigation/NavType$SerializableType<TD;>;"
    iget-object v0, p0, Landroidx/navigation/NavType$SerializableType;->mType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 854
    .local p0, "this":Landroidx/navigation/NavType$SerializableType;, "Landroidx/navigation/NavType$SerializableType<TD;>;"
    iget-object v0, p0, Landroidx/navigation/NavType$SerializableType;->mType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public parseValue(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TD;"
        }
    .end annotation

    .line 833
    .local p0, "this":Landroidx/navigation/NavType$SerializableType;, "Landroidx/navigation/NavType$SerializableType<TD;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Serializables don\'t support default values."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic parseValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 786
    .local p0, "this":Landroidx/navigation/NavType$SerializableType;, "Landroidx/navigation/NavType$SerializableType<TD;>;"
    invoke-virtual {p0, p1}, Landroidx/navigation/NavType$SerializableType;->parseValue(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    return-object p1
.end method

.method public put(Landroid/os/Bundle;Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "TD;)V"
        }
    .end annotation

    .line 819
    .local p0, "this":Landroidx/navigation/NavType$SerializableType;, "Landroidx/navigation/NavType$SerializableType<TD;>;"
    .local p3, "value":Ljava/io/Serializable;, "TD;"
    iget-object v0, p0, Landroidx/navigation/NavType$SerializableType;->mType:Ljava/lang/Class;

    invoke-virtual {v0, p3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 821
    return-void
.end method

.method public bridge synthetic put(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 786
    .local p0, "this":Landroidx/navigation/NavType$SerializableType;, "Landroidx/navigation/NavType$SerializableType<TD;>;"
    check-cast p3, Ljava/io/Serializable;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigation/NavType$SerializableType;->put(Landroid/os/Bundle;Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method
