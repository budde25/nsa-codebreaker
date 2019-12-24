.class public Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;
.super Ljava/util/AbstractQueue;
.source "ArrayBlockingQueueWithShutdown.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown$Itr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "TE;>;",
        "Ljava/util/concurrent/BlockingQueue<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private count:I

.field private volatile isShutdown:Z

.field private final items:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final notEmpty:Ljava/util/concurrent/locks/Condition;

.field private final notFull:Ljava/util/concurrent/locks/Condition;

.field private putIndex:I

.field private takeIndex:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .line 128
    .local p0, "this":Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;, "Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;-><init>(IZ)V

    .line 129
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "capacity"    # I
    .param p2, "fair"    # Z

    .line 132
    .local p0, "this":Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;, "Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->isShutdown:Z

    .line 133
    if-lez p1, :cond_0

    .line 135
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->items:[Ljava/lang/Object;

    .line 136
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, p2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 137
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 138
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->notFull:Ljava/util/concurrent/locks/Condition;

    .line 139
    return-void

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method static synthetic access$000(Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;)I
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;

    .line 38
    iget v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->count:I

    return v0
.end method

.method static synthetic access$100(Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;)I
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;

    .line 38
    iget v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->takeIndex:I

    return v0
.end method

.method static synthetic access$200(Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;

    .line 38
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->items:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;)I
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;

    .line 38
    iget v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->putIndex:I

    return v0
.end method

.method static synthetic access$400(Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;

    .line 38
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$500(Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;I)I
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;
    .param p1, "x1"    # I

    .line 38
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->inc(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;I)V
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;
    .param p1, "x1"    # I

    .line 38
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->removeAt(I)V

    return-void
.end method

.method private static checkNotNull(Ljava/lang/Object;)V
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .line 100
    if-eqz p0, :cond_0

    .line 103
    return-void

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private checkNotShutdown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 106
    .local p0, "this":Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;, "Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown<TE;>;"
    iget-boolean v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->isShutdown:Z

    if-nez v0, :cond_0

    .line 109
    return-void

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method private extract()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 68
    .local p0, "this":Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;, "Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown<TE;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->items:[Ljava/lang/Object;

    iget v1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->takeIndex:I

    aget-object v2, v0, v1

    .line 69
    .local v2, "e":Ljava/lang/Object;, "TE;"
    const/4 v3, 0x0

    aput-object v3, v0, v1

    .line 70
    invoke-direct {p0, v1}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->inc(I)I

    move-result v0

    iput v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->takeIndex:I

    .line 71
    iget v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->count:I

    .line 72
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 73
    return-object v2
.end method

.method private hasElements()Z
    .locals 1

    .line 116
    .local p0, "this":Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;, "Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown<TE;>;"
    invoke-direct {p0}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->hasNoElements()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private hasNoElements()Z
    .locals 1

    .line 112
    .local p0, "this":Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;, "Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown<TE;>;"
    iget v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->count:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private inc(I)I
    .locals 1
    .param p1, "i"    # I

    .line 57
    .local p0, "this":Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;, "Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown<TE;>;"
    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->items:[Ljava/lang/Object;

    array-length v0, v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0
.end method

.method private insert(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 61
    .local p0, "this":Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;, "Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->items:[Ljava/lang/Object;

    iget v1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->putIndex:I

    aput-object p1, v0, v1

    .line 62
    invoke-direct {p0, v1}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->inc(I)I

    move-result v0

    iput v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->putIndex:I

    .line 63
    iget v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->count:I

    .line 64
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 65
    return-void
.end method

.method private isFull()Z
    .locals 2

    .line 120
    .local p0, "this":Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;, "Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown<TE;>;"
    iget v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->count:I

    iget-object v1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->items:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isNotFull()Z
    .locals 1

    .line 124
    .local p0, "this":Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;, "Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown<TE;>;"
    invoke-direct {p0}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->isFull()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private removeAt(I)V
    .locals 4
    .param p1, "i"    # I

    .line 77
    .local p0, "this":Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;, "Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown<TE;>;"
    iget v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->takeIndex:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 78
    iget-object v2, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->items:[Ljava/lang/Object;

    aput-object v1, v2, v0

    .line 79
    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->inc(I)I

    move-result v0

    iput v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->takeIndex:I

    goto :goto_1

    .line 83
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->inc(I)I

    move-result v0

    .line 84
    .local v0, "nexti":I
    iget v2, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->putIndex:I

    if-eq v0, v2, :cond_1

    .line 85
    iget-object v2, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->items:[Ljava/lang/Object;

    aget-object v3, v2, v0

    aput-object v3, v2, p1

    .line 86
    move p1, v0

    .line 93
    .end local v0    # "nexti":I
    goto :goto_0

    .line 89
    .restart local v0    # "nexti":I
    :cond_1
    iget-object v2, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->items:[Ljava/lang/Object;

    aput-object v1, v2, p1

    .line 90
    iput p1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->putIndex:I

    .line 91
    nop

    .line 95
    .end local v0    # "nexti":I
    :goto_1
    iget v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->count:I

    .line 96
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 97
    return-void
.end method


# virtual methods
.method public drainTo(Ljava/util/Collection;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;)I"
        }
    .end annotation

    .line 361
    .local p0, "this":Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;, "Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    invoke-static {p1}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->checkNotNull(Ljava/lang/Object;)V

    .line 362
    if-eq p1, p0, :cond_2

    .line 365
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 367
    :try_start_0
    iget v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->takeIndex:I

    .line 368
    .local v0, "i":I
    const/4 v1, 0x0

    move v2, v1

    .line 369
    .local v2, "n":I
    :goto_0
    iget v3, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->count:I

    if-ge v2, v3, :cond_0

    .line 370
    iget-object v3, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->items:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 371
    iget-object v3, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->items:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 372
    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->inc(I)I

    move-result v3

    move v0, v3

    .line 369
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 374
    :cond_0
    if-lez v2, :cond_1

    .line 375
    iput v1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->count:I

    .line 376
    iput v1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->putIndex:I

    .line 377
    iput v1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->takeIndex:I

    .line 378
    iget-object v1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    :cond_1
    nop

    .line 383
    iget-object v1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 380
    return v2

    .line 383
    .end local v0    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 363
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 5
    .param p2, "maxElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;I)I"
        }
    .end annotation

    .line 389
    .local p0, "this":Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;, "Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    invoke-static {p1}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->checkNotNull(Ljava/lang/Object;)V

    .line 390
    if-eq p1, p0, :cond_4

    .line 393
    if-gtz p2, :cond_0

    .line 394
    const/4 v0, 0x0

    return v0

    .line 396
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 398
    :try_start_0
    iget v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->takeIndex:I

    .line 399
    .local v0, "i":I
    const/4 v1, 0x0

    .line 400
    .local v1, "n":I
    iget v2, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->count:I

    if-ge p2, v2, :cond_1

    move v2, p2

    goto :goto_0

    :cond_1
    iget v2, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->count:I

    .line 401
    .local v2, "max":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 402
    iget-object v3, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->items:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 403
    iget-object v3, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->items:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 404
    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->inc(I)I

    move-result v3

    move v0, v3

    .line 401
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 406
    :cond_2
    if-lez v1, :cond_3

    .line 407
    iget v3, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->count:I

    sub-int/2addr v3, v1

    iput v3, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->count:I

    .line 408
    iput v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->takeIndex:I

    .line 409
    iget-object v3, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    :cond_3
    nop

    .line 414
    iget-object v3, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 411
    return v1

    .line 414
    .end local v0    # "i":I
    .end local v1    # "n":I
    .end local v2    # "max":I
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 391
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public isShutdown()Z
    .locals 2

    .line 177
    .local p0, "this":Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;, "Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown<TE;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 179
    :try_start_0
    iget-boolean v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->isShutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    iget-object v1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 179
    return v0

    .line 181
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 431
    .local p0, "this":Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;, "Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown<TE;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 433
    :try_start_0
    new-instance v0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown$Itr;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown$Itr;-><init>(Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    iget-object v1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 433
    return-object v0

    .line 436
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 213
    .local p0, "this":Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;, "Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->checkNotNull(Ljava/lang/Object;)V

    .line 214
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 216
    :try_start_0
    invoke-direct {p0}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->isFull()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->isShutdown:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->insert(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    const/4 v0, 0x1

    .line 225
    iget-object v1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 221
    return v0

    .line 217
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 225
    iget-object v1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 217
    return v0

    .line 225
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 4
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 268
    .local p0, "this":Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;, "Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->checkNotNull(Ljava/lang/Object;)V

    .line 269
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 270
    .local v0, "nanos":J
    iget-object v2, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 273
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->isNotFull()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 274
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->insert(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    const/4 v2, 0x1

    .line 291
    iget-object v3, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 275
    return v2

    .line 277
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 278
    const/4 v2, 0x0

    .line 291
    iget-object v3, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 278
    return v2

    .line 281
    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v2

    move-wide v0, v2

    .line 282
    invoke-direct {p0}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->checkNotShutdown()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    goto :goto_0

    .line 284
    :catch_0
    move-exception v2

    .line 285
    .local v2, "ie":Ljava/lang/InterruptedException;
    :try_start_2
    iget-object v3, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 286
    nop

    .end local v0    # "nanos":J
    .end local p1    # "e":Ljava/lang/Object;, "TE;"
    .end local p2    # "timeout":J
    .end local p4    # "unit":Ljava/util/concurrent/TimeUnit;
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 291
    .end local v2    # "ie":Ljava/lang/InterruptedException;
    .restart local v0    # "nanos":J
    .restart local p1    # "e":Ljava/lang/Object;, "TE;"
    .restart local p2    # "timeout":J
    .restart local p4    # "unit":Ljava/util/concurrent/TimeUnit;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 202
    .local p0, "this":Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;, "Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown<TE;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 204
    :try_start_0
    invoke-direct {p0}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->hasNoElements()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->items:[Ljava/lang/Object;

    iget v1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->takeIndex:I

    aget-object v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :goto_0
    iget-object v1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 204
    return-object v0

    .line 207
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 187
    .local p0, "this":Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;, "Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown<TE;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 189
    :try_start_0
    invoke-direct {p0}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->hasNoElements()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 190
    const/4 v0, 0x0

    .line 196
    iget-object v1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 190
    return-object v0

    .line 192
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->extract()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    .local v0, "e":Ljava/lang/Object;, "TE;"
    nop

    .line 196
    iget-object v1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 193
    return-object v0

    .line 196
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 4
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 321
    .local p0, "this":Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;, "Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown<TE;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 322
    .local v0, "nanos":J
    iget-object v2, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 324
    :try_start_0
    invoke-direct {p0}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->checkNotShutdown()V

    .line 326
    :goto_0
    invoke-direct {p0}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->hasElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 327
    invoke-direct {p0}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->extract()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    .local v2, "e":Ljava/lang/Object;, "TE;"
    nop

    .line 344
    iget-object v3, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 328
    return-object v2

    .line 330
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 331
    const/4 v2, 0x0

    .line 344
    iget-object v3, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 331
    return-object v2

    .line 334
    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v2

    move-wide v0, v2

    .line 335
    invoke-direct {p0}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->checkNotShutdown()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    goto :goto_0

    .line 337
    :catch_0
    move-exception v2

    .line 338
    .local v2, "ie":Ljava/lang/InterruptedException;
    :try_start_2
    iget-object v3, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 339
    nop

    .end local v0    # "nanos":J
    .end local p1    # "timeout":J
    .end local p3    # "unit":Ljava/util/concurrent/TimeUnit;
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 344
    .end local v2    # "ie":Ljava/lang/InterruptedException;
    .restart local v0    # "nanos":J
    .restart local p1    # "timeout":J
    .restart local p3    # "unit":Ljava/util/concurrent/TimeUnit;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public put(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 245
    .local p0, "this":Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;, "Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->checkNotNull(Ljava/lang/Object;)V

    .line 246
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 249
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->isFull()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 251
    :try_start_1
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    .line 252
    invoke-direct {p0}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->checkNotShutdown()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "ie":Ljava/lang/InterruptedException;
    :try_start_2
    iget-object v1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 256
    nop

    .end local p1    # "e":Ljava/lang/Object;, "TE;"
    throw v0

    .line 259
    .end local v0    # "ie":Ljava/lang/InterruptedException;
    .restart local p1    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->insert(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 262
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 263
    nop

    .line 264
    return-void

    .line 262
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public remainingCapacity()I
    .locals 2

    .line 350
    .local p0, "this":Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;, "Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown<TE;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 352
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->items:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    .line 355
    iget-object v1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 352
    return v0

    .line 355
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public shutdown()V
    .locals 2

    .line 146
    .local p0, "this":Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;, "Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown<TE;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 148
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->isShutdown:Z

    .line 149
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 150
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 154
    nop

    .line 155
    return-void

    .line 153
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public size()I
    .locals 2

    .line 420
    .local p0, "this":Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;, "Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown<TE;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 422
    :try_start_0
    iget v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    iget-object v1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 422
    return v0

    .line 425
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public start()V
    .locals 2

    .line 162
    .local p0, "this":Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;, "Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown<TE;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 164
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->isShutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 168
    nop

    .line 169
    return-void

    .line 167
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public take()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 298
    .local p0, "this":Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;, "Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown<TE;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 300
    :try_start_0
    invoke-direct {p0}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->checkNotShutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->hasNoElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    .line 304
    invoke-direct {p0}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->checkNotShutdown()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 310
    :cond_0
    nop

    .line 311
    :try_start_2
    invoke-direct {p0}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->extract()Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 312
    .local v0, "e":Ljava/lang/Object;, "TE;"
    nop

    .line 315
    iget-object v1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 312
    return-object v0

    .line 307
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :catch_0
    move-exception v0

    .line 308
    .local v0, "ie":Ljava/lang/InterruptedException;
    :try_start_3
    iget-object v1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 309
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 315
    .end local v0    # "ie":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
