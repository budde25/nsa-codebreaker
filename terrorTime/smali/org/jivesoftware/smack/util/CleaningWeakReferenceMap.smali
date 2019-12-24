.class public Lorg/jivesoftware/smack/util/CleaningWeakReferenceMap;
.super Ljava/util/HashMap;
.source "CleaningWeakReferenceMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap<",
        "TK;",
        "Ljava/lang/ref/WeakReference<",
        "TV;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final cleanInterval:I

.field private numberOfInsertsSinceLastClean:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    .local p0, "this":Lorg/jivesoftware/smack/util/CleaningWeakReferenceMap;, "Lorg/jivesoftware/smack/util/CleaningWeakReferenceMap<TK;TV;>;"
    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/util/CleaningWeakReferenceMap;-><init>(I)V

    .line 56
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "cleanInterval"    # I

    .line 64
    .local p0, "this":Lorg/jivesoftware/smack/util/CleaningWeakReferenceMap;, "Lorg/jivesoftware/smack/util/CleaningWeakReferenceMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lorg/jivesoftware/smack/util/CleaningWeakReferenceMap;->numberOfInsertsSinceLastClean:I

    .line 65
    iput p1, p0, Lorg/jivesoftware/smack/util/CleaningWeakReferenceMap;->cleanInterval:I

    .line 66
    return-void
.end method

.method private clean()V
    .locals 3

    .line 85
    .local p0, "this":Lorg/jivesoftware/smack/util/CleaningWeakReferenceMap;, "Lorg/jivesoftware/smack/util/CleaningWeakReferenceMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smack/util/CleaningWeakReferenceMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 86
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;Ljava/lang/ref/WeakReference<TV;>;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 88
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/lang/ref/WeakReference<TV;>;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 89
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 92
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/lang/ref/WeakReference<TV;>;>;"
    :cond_0
    goto :goto_0

    .line 93
    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    .local p0, "this":Lorg/jivesoftware/smack/util/CleaningWeakReferenceMap;, "Lorg/jivesoftware/smack/util/CleaningWeakReferenceMap<TK;TV;>;"
    check-cast p2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smack/util/CleaningWeakReferenceMap;->put(Ljava/lang/Object;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/ref/WeakReference<",
            "TV;>;)",
            "Ljava/lang/ref/WeakReference<",
            "TV;>;"
        }
    .end annotation

    .line 70
    .local p0, "this":Lorg/jivesoftware/smack/util/CleaningWeakReferenceMap;, "Lorg/jivesoftware/smack/util/CleaningWeakReferenceMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TV;>;"
    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 72
    .local v0, "ret":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TV;>;"
    iget v1, p0, Lorg/jivesoftware/smack/util/CleaningWeakReferenceMap;->numberOfInsertsSinceLastClean:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jivesoftware/smack/util/CleaningWeakReferenceMap;->numberOfInsertsSinceLastClean:I

    iget v2, p0, Lorg/jivesoftware/smack/util/CleaningWeakReferenceMap;->cleanInterval:I

    if-le v1, v2, :cond_0

    .line 73
    const/4 v1, 0x0

    iput v1, p0, Lorg/jivesoftware/smack/util/CleaningWeakReferenceMap;->numberOfInsertsSinceLastClean:I

    .line 74
    invoke-direct {p0}, Lorg/jivesoftware/smack/util/CleaningWeakReferenceMap;->clean()V

    .line 77
    :cond_0
    return-object v0
.end method
