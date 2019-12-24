.class Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown$Itr;
.super Ljava/lang/Object;
.source "ArrayBlockingQueueWithShutdown.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private lastRet:I

.field private nextIndex:I

.field private nextItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;)V
    .locals 2

    .line 445
    .local p0, "this":Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown$Itr;, "Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown<TE;>.Itr;"
    iput-object p1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown$Itr;->this$0:Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    const/4 v0, -0x1

    iput v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown$Itr;->lastRet:I

    .line 447
    invoke-static {p1}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->access$000(Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;)I

    move-result v1

    if-nez v1, :cond_0

    .line 448
    iput v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown$Itr;->nextIndex:I

    goto :goto_0

    .line 451
    :cond_0
    invoke-static {p1}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->access$100(Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;)I

    move-result v0

    iput v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown$Itr;->nextIndex:I

    .line 452
    invoke-static {p1}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->access$200(Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->access$100(Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;)I

    move-result p1

    aget-object p1, v0, p1

    iput-object p1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown$Itr;->nextItem:Ljava/lang/Object;

    .line 454
    :goto_0
    return-void
.end method

.method private checkNext()V
    .locals 3

    .line 462
    .local p0, "this":Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown$Itr;, "Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown<TE;>.Itr;"
    iget v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown$Itr;->nextIndex:I

    iget-object v1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown$Itr;->this$0:Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;

    invoke-static {v1}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->access$300(Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_0

    .line 463
    iput v2, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown$Itr;->nextIndex:I

    .line 464
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown$Itr;->nextItem:Ljava/lang/Object;

    goto :goto_0

    .line 467
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown$Itr;->this$0:Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->access$200(Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown$Itr;->nextIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown$Itr;->nextItem:Ljava/lang/Object;

    .line 468
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown$Itr;->nextItem:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 469
    iput v2, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown$Itr;->nextIndex:I

    .line 472
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 458
    .local p0, "this":Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown$Itr;, "Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown<TE;>.Itr;"
    iget v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown$Itr;->nextIndex:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 476
    .local p0, "this":Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown$Itr;, "Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown<TE;>.Itr;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown$Itr;->this$0:Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->access$400(Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 478
    :try_start_0
    iget v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown$Itr;->nextIndex:I

    if-ltz v0, :cond_0

    .line 481
    iget v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown$Itr;->nextIndex:I

    iput v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown$Itr;->lastRet:I

    .line 482
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown$Itr;->nextItem:Ljava/lang/Object;

    .line 483
    .local v0, "e":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown$Itr;->this$0:Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;

    iget v2, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown$Itr;->nextIndex:I

    invoke-static {v1, v2}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->access$500(Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;I)I

    move-result v1

    iput v1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown$Itr;->nextIndex:I

    .line 484
    invoke-direct {p0}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown$Itr;->checkNext()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    nop

    .line 488
    iget-object v1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown$Itr;->this$0:Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;

    invoke-static {v1}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->access$400(Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 485
    return-object v0

    .line 479
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 488
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown$Itr;->this$0:Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;

    invoke-static {v1}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->access$400(Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public remove()V
    .locals 3

    .line 494
    .local p0, "this":Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown$Itr;, "Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown<TE;>.Itr;"
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown$Itr;->this$0:Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->access$400(Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 496
    :try_start_0
    iget v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown$Itr;->lastRet:I

    .line 497
    .local v0, "i":I
    if-ltz v0, :cond_1

    .line 500
    const/4 v1, -0x1

    iput v1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown$Itr;->lastRet:I

    .line 501
    iget-object v1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown$Itr;->this$0:Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;

    invoke-static {v1}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->access$100(Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;)I

    move-result v1

    .line 502
    .local v1, "ti":I
    iget-object v2, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown$Itr;->this$0:Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;

    invoke-static {v2, v0}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->access$600(Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;I)V

    .line 503
    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown$Itr;->this$0:Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;

    invoke-static {v2}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->access$100(Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput v2, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown$Itr;->nextIndex:I

    .line 504
    invoke-direct {p0}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown$Itr;->checkNext()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    .end local v0    # "i":I
    .end local v1    # "ti":I
    iget-object v0, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown$Itr;->this$0:Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->access$400(Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 508
    nop

    .line 509
    return-void

    .line 498
    .restart local v0    # "i":I
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 507
    .end local v0    # "i":I
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown$Itr;->this$0:Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;

    invoke-static {v1}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->access$400(Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
