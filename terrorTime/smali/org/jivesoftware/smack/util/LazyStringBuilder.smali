.class public Lorg/jivesoftware/smack/util/LazyStringBuilder;
.super Ljava/lang/Object;
.source "LazyStringBuilder.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/lang/CharSequence;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private cache:Ljava/lang/String;

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    nop

    .line 27
    const-class v0, Lorg/jivesoftware/smack/util/LazyStringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/util/LazyStringBuilder;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/jivesoftware/smack/util/LazyStringBuilder;->list:Ljava/util/List;

    .line 39
    return-void
.end method

.method private invalidateCache()V
    .locals 1

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/util/LazyStringBuilder;->cache:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/util/LazyStringBuilder;->append(C)Lorg/jivesoftware/smack/util/LazyStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/util/LazyStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/LazyStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-virtual {p0, p1, p2, p3}, Lorg/jivesoftware/smack/util/LazyStringBuilder;->append(Ljava/lang/CharSequence;II)Lorg/jivesoftware/smack/util/LazyStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(C)Lorg/jivesoftware/smack/util/LazyStringBuilder;
    .locals 2
    .param p1, "c"    # C

    .line 65
    iget-object v0, p0, Lorg/jivesoftware/smack/util/LazyStringBuilder;->list:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-direct {p0}, Lorg/jivesoftware/smack/util/LazyStringBuilder;->invalidateCache()V

    .line 67
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/LazyStringBuilder;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .line 49
    nop

    .line 50
    iget-object v0, p0, Lorg/jivesoftware/smack/util/LazyStringBuilder;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-direct {p0}, Lorg/jivesoftware/smack/util/LazyStringBuilder;->invalidateCache()V

    .line 52
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Lorg/jivesoftware/smack/util/LazyStringBuilder;
    .locals 2
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 57
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 58
    .local v0, "subsequence":Ljava/lang/CharSequence;
    iget-object v1, p0, Lorg/jivesoftware/smack/util/LazyStringBuilder;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-direct {p0}, Lorg/jivesoftware/smack/util/LazyStringBuilder;->invalidateCache()V

    .line 60
    return-object p0
.end method

.method public append(Lorg/jivesoftware/smack/util/LazyStringBuilder;)Lorg/jivesoftware/smack/util/LazyStringBuilder;
    .locals 2
    .param p1, "lsb"    # Lorg/jivesoftware/smack/util/LazyStringBuilder;

    .line 42
    iget-object v0, p0, Lorg/jivesoftware/smack/util/LazyStringBuilder;->list:Ljava/util/List;

    iget-object v1, p1, Lorg/jivesoftware/smack/util/LazyStringBuilder;->list:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 43
    invoke-direct {p0}, Lorg/jivesoftware/smack/util/LazyStringBuilder;->invalidateCache()V

    .line 44
    return-object p0
.end method

.method public charAt(I)C
    .locals 3
    .param p1, "index"    # I

    .line 91
    iget-object v0, p0, Lorg/jivesoftware/smack/util/LazyStringBuilder;->cache:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    .line 94
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/util/LazyStringBuilder;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 95
    .local v1, "csq":Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 96
    invoke-interface {v1, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0

    .line 98
    :cond_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr p1, v2

    .line 100
    .end local v1    # "csq":Ljava/lang/CharSequence;
    goto :goto_0

    .line 101
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getAsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lorg/jivesoftware/smack/util/LazyStringBuilder;->cache:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 137
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 139
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/util/LazyStringBuilder;->list:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 7

    .line 72
    iget-object v0, p0, Lorg/jivesoftware/smack/util/LazyStringBuilder;->cache:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0

    .line 75
    :cond_0
    const/4 v0, 0x0

    .line 77
    .local v0, "length":I
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/util/LazyStringBuilder;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 78
    .local v2, "csq":Ljava/lang/CharSequence;
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v3

    .line 79
    .end local v2    # "csq":Ljava/lang/CharSequence;
    goto :goto_0

    .line 85
    :cond_1
    nop

    .line 86
    return v0

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/LazyStringBuilder;->safeToStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 83
    .local v2, "sb":Ljava/lang/StringBuilder;
    sget-object v3, Lorg/jivesoftware/smack/util/LazyStringBuilder;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The following LazyStringBuilder threw a NullPointerException:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    throw v1
.end method

.method public safeToStringBuilder()Ljava/lang/StringBuilder;
    .locals 3

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/jivesoftware/smack/util/LazyStringBuilder;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 124
    .local v2, "csq":Ljava/lang/CharSequence;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 125
    .end local v2    # "csq":Ljava/lang/CharSequence;
    goto :goto_0

    .line 126
    :cond_0
    return-object v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 106
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/LazyStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 111
    iget-object v0, p0, Lorg/jivesoftware/smack/util/LazyStringBuilder;->cache:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/LazyStringBuilder;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 113
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/jivesoftware/smack/util/LazyStringBuilder;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 114
    .local v2, "csq":Ljava/lang/CharSequence;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 115
    .end local v2    # "csq":Ljava/lang/CharSequence;
    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smack/util/LazyStringBuilder;->cache:Ljava/lang/String;

    .line 118
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smack/util/LazyStringBuilder;->cache:Ljava/lang/String;

    return-object v0
.end method
