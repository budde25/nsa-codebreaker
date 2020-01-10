.class public abstract Lorg/minidns/MiniDnsFuture;
.super Ljava/lang/Object;
.source "MiniDnsFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;
.implements Lorg/minidns/util/CallbackRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Exception;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "TV;>;",
        "Lorg/minidns/util/CallbackRecipient<",
        "TV;TE;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private cancelled:Z

.field protected exception:Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private exceptionCallback:Lorg/minidns/util/ExceptionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/minidns/util/ExceptionCallback<",
            "TE;>;"
        }
    .end annotation
.end field

.field protected result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private successCallback:Lorg/minidns/util/SuccessCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/minidns/util/SuccessCallback<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 29
    nop

    .line 148
    new-instance v7, Lorg/minidns/MiniDnsFuture$1;

    invoke-direct {v7}, Lorg/minidns/MiniDnsFuture$1;-><init>()V

    .line 157
    .local v7, "threadFactory":Ljava/util/concurrent/ThreadFactory;
    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0x80

    invoke-direct {v6, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 158
    .local v6, "blockingQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    new-instance v8, Lorg/minidns/MiniDnsFuture$2;

    invoke-direct {v8}, Lorg/minidns/MiniDnsFuture$2;-><init>()V

    .line 164
    .local v8, "rejectedExecutionHandler":Ljava/util/concurrent/RejectedExecutionHandler;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v9

    .line 165
    .local v9, "cores":I
    const/4 v0, 0x4

    if-gt v9, v0, :cond_0

    const/4 v0, 0x2

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v9

    .line 166
    .local v2, "maximumPoolSize":I
    :goto_0
    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, v10

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 169
    .local v0, "executorService":Ljava/util/concurrent/ExecutorService;
    sput-object v0, Lorg/minidns/MiniDnsFuture;->EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    .line 170
    .end local v0    # "executorService":Ljava/util/concurrent/ExecutorService;
    .end local v2    # "maximumPoolSize":I
    .end local v6    # "blockingQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    .end local v7    # "threadFactory":Ljava/util/concurrent/ThreadFactory;
    .end local v8    # "rejectedExecutionHandler":Ljava/util/concurrent/RejectedExecutionHandler;
    .end local v9    # "cores":I
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    .local p0, "this":Lorg/minidns/MiniDnsFuture;, "Lorg/minidns/MiniDnsFuture<TV;TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/minidns/MiniDnsFuture;)Lorg/minidns/util/SuccessCallback;
    .locals 1
    .param p0, "x0"    # Lorg/minidns/MiniDnsFuture;

    .line 29
    iget-object v0, p0, Lorg/minidns/MiniDnsFuture;->successCallback:Lorg/minidns/util/SuccessCallback;

    return-object v0
.end method

.method static synthetic access$100(Lorg/minidns/MiniDnsFuture;)Lorg/minidns/util/ExceptionCallback;
    .locals 1
    .param p0, "x0"    # Lorg/minidns/MiniDnsFuture;

    .line 29
    iget-object v0, p0, Lorg/minidns/MiniDnsFuture;->exceptionCallback:Lorg/minidns/util/ExceptionCallback;

    return-object v0
.end method

.method public static from(Ljava/lang/Object;)Lorg/minidns/MiniDnsFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Exception;",
            ">(TV;)",
            "Lorg/minidns/MiniDnsFuture<",
            "TV;TE;>;"
        }
    .end annotation

    .line 211
    .local p0, "result":Ljava/lang/Object;, "TV;"
    new-instance v0, Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture;

    invoke-direct {v0}, Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture;-><init>()V

    .line 212
    .local v0, "future":Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture;, "Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture<TV;TE;>;"
    invoke-virtual {v0, p0}, Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture;->setResult(Ljava/lang/Object;)V

    .line 213
    return-object v0
.end method

.method private final getOrThrowExecutionException()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 81
    .local p0, "this":Lorg/minidns/MiniDnsFuture;, "Lorg/minidns/MiniDnsFuture<TV;TE;>;"
    nop

    .line 82
    iget-object v0, p0, Lorg/minidns/MiniDnsFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 83
    return-object v0

    .line 85
    :cond_0
    iget-object v0, p0, Lorg/minidns/MiniDnsFuture;->exception:Ljava/lang/Exception;

    if-nez v0, :cond_1

    .line 89
    nop

    .line 90
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    .line 86
    :cond_1
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public declared-synchronized cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .local p0, "this":Lorg/minidns/MiniDnsFuture;, "Lorg/minidns/MiniDnsFuture<TV;TE;>;"
    monitor-enter p0

    .line 43
    :try_start_0
    invoke-virtual {p0}, Lorg/minidns/MiniDnsFuture;->isDone()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 47
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/minidns/MiniDnsFuture;->cancelled:Z

    .line 49
    if-eqz p1, :cond_1

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    .end local p0    # "this":Lorg/minidns/MiniDnsFuture;, "Lorg/minidns/MiniDnsFuture<TV;TE;>;"
    :cond_1
    monitor-exit p0

    return v0

    .line 42
    .end local p1    # "mayInterruptIfRunning":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .local p0, "this":Lorg/minidns/MiniDnsFuture;, "Lorg/minidns/MiniDnsFuture<TV;TE;>;"
    monitor-enter p0

    .line 95
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/minidns/MiniDnsFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/minidns/MiniDnsFuture;->exception:Ljava/lang/Exception;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/minidns/MiniDnsFuture;->cancelled:Z

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 99
    .end local p0    # "this":Lorg/minidns/MiniDnsFuture;, "Lorg/minidns/MiniDnsFuture<TV;TE;>;"
    :cond_0
    invoke-direct {p0}, Lorg/minidns/MiniDnsFuture;->getOrThrowExecutionException()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 6
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .local p0, "this":Lorg/minidns/MiniDnsFuture;, "Lorg/minidns/MiniDnsFuture<TV;TE;>;"
    monitor-enter p0

    .line 126
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 127
    .local v0, "deadline":J
    :goto_0
    iget-object v2, p0, Lorg/minidns/MiniDnsFuture;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/minidns/MiniDnsFuture;->exception:Ljava/lang/Exception;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lorg/minidns/MiniDnsFuture;->cancelled:Z

    if-nez v2, :cond_1

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 129
    .local v2, "waitTimeRemaining":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 130
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 132
    .end local v2    # "waitTimeRemaining":J
    .end local p0    # "this":Lorg/minidns/MiniDnsFuture;, "Lorg/minidns/MiniDnsFuture<TV;TE;>;"
    :cond_0
    goto :goto_0

    .line 134
    :cond_1
    iget-boolean v2, p0, Lorg/minidns/MiniDnsFuture;->cancelled:Z

    if-nez v2, :cond_3

    .line 138
    iget-object v2, p0, Lorg/minidns/MiniDnsFuture;->result:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/minidns/MiniDnsFuture;->exception:Ljava/lang/Exception;

    if-eqz v2, :cond_2

    .line 142
    invoke-direct {p0}, Lorg/minidns/MiniDnsFuture;->getOrThrowExecutionException()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 139
    :cond_2
    :try_start_1
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v2}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v2

    .line 135
    :cond_3
    new-instance v2, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    .end local v0    # "deadline":J
    .end local p1    # "timeout":J
    .end local p3    # "unit":Ljava/util/concurrent/TimeUnit;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getOrThrow()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .local p0, "this":Lorg/minidns/MiniDnsFuture;, "Lorg/minidns/MiniDnsFuture<TV;TE;>;"
    monitor-enter p0

    .line 103
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/minidns/MiniDnsFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/minidns/MiniDnsFuture;->exception:Ljava/lang/Exception;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/minidns/MiniDnsFuture;->cancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 105
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    goto :goto_0

    .line 106
    .end local p0    # "this":Lorg/minidns/MiniDnsFuture;, "Lorg/minidns/MiniDnsFuture<TV;TE;>;"
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 111
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    iget-object v0, p0, Lorg/minidns/MiniDnsFuture;->exception:Ljava/lang/Exception;

    if-nez v0, :cond_2

    .line 115
    iget-boolean v0, p0, Lorg/minidns/MiniDnsFuture;->cancelled:Z

    if-nez v0, :cond_1

    .line 119
    nop

    .line 120
    iget-object v0, p0, Lorg/minidns/MiniDnsFuture;->result:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 116
    :cond_1
    :try_start_3
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    .line 112
    :cond_2
    iget-object v0, p0, Lorg/minidns/MiniDnsFuture;->exception:Ljava/lang/Exception;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isCancelled()Z
    .locals 1

    .local p0, "this":Lorg/minidns/MiniDnsFuture;, "Lorg/minidns/MiniDnsFuture<TV;TE;>;"
    monitor-enter p0

    .line 58
    :try_start_0
    iget-boolean v0, p0, Lorg/minidns/MiniDnsFuture;->cancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Lorg/minidns/MiniDnsFuture;, "Lorg/minidns/MiniDnsFuture<TV;TE;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isDone()Z
    .locals 1

    .local p0, "this":Lorg/minidns/MiniDnsFuture;, "Lorg/minidns/MiniDnsFuture<TV;TE;>;"
    monitor-enter p0

    .line 63
    :try_start_0
    iget-object v0, p0, Lorg/minidns/MiniDnsFuture;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .end local p0    # "this":Lorg/minidns/MiniDnsFuture;, "Lorg/minidns/MiniDnsFuture<TV;TE;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized maybeInvokeCallbacks()V
    .locals 2

    .local p0, "this":Lorg/minidns/MiniDnsFuture;, "Lorg/minidns/MiniDnsFuture<TV;TE;>;"
    monitor-enter p0

    .line 173
    :try_start_0
    iget-boolean v0, p0, Lorg/minidns/MiniDnsFuture;->cancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 174
    monitor-exit p0

    return-void

    .line 177
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/minidns/MiniDnsFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/minidns/MiniDnsFuture;->successCallback:Lorg/minidns/util/SuccessCallback;

    if-eqz v0, :cond_1

    .line 178
    sget-object v0, Lorg/minidns/MiniDnsFuture;->EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lorg/minidns/MiniDnsFuture$3;

    invoke-direct {v1, p0}, Lorg/minidns/MiniDnsFuture$3;-><init>(Lorg/minidns/MiniDnsFuture;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 184
    .end local p0    # "this":Lorg/minidns/MiniDnsFuture;, "Lorg/minidns/MiniDnsFuture<TV;TE;>;"
    :cond_1
    iget-object v0, p0, Lorg/minidns/MiniDnsFuture;->exception:Ljava/lang/Exception;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/minidns/MiniDnsFuture;->exceptionCallback:Lorg/minidns/util/ExceptionCallback;

    if-eqz v0, :cond_2

    .line 185
    sget-object v0, Lorg/minidns/MiniDnsFuture;->EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lorg/minidns/MiniDnsFuture$4;

    invoke-direct {v1, p0}, Lorg/minidns/MiniDnsFuture$4;-><init>(Lorg/minidns/MiniDnsFuture;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onError(Lorg/minidns/util/ExceptionCallback;)Lorg/minidns/util/CallbackRecipient;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/util/ExceptionCallback<",
            "TE;>;)",
            "Lorg/minidns/util/CallbackRecipient<",
            "TV;TE;>;"
        }
    .end annotation

    .line 75
    .local p0, "this":Lorg/minidns/MiniDnsFuture;, "Lorg/minidns/MiniDnsFuture<TV;TE;>;"
    .local p1, "exceptionCallback":Lorg/minidns/util/ExceptionCallback;, "Lorg/minidns/util/ExceptionCallback<TE;>;"
    iput-object p1, p0, Lorg/minidns/MiniDnsFuture;->exceptionCallback:Lorg/minidns/util/ExceptionCallback;

    .line 76
    invoke-virtual {p0}, Lorg/minidns/MiniDnsFuture;->maybeInvokeCallbacks()V

    .line 77
    return-object p0
.end method

.method public onSuccess(Lorg/minidns/util/SuccessCallback;)Lorg/minidns/util/CallbackRecipient;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/util/SuccessCallback<",
            "TV;>;)",
            "Lorg/minidns/util/CallbackRecipient<",
            "TV;TE;>;"
        }
    .end annotation

    .line 68
    .local p0, "this":Lorg/minidns/MiniDnsFuture;, "Lorg/minidns/MiniDnsFuture<TV;TE;>;"
    .local p1, "successCallback":Lorg/minidns/util/SuccessCallback;, "Lorg/minidns/util/SuccessCallback<TV;>;"
    iput-object p1, p0, Lorg/minidns/MiniDnsFuture;->successCallback:Lorg/minidns/util/SuccessCallback;

    .line 69
    invoke-virtual {p0}, Lorg/minidns/MiniDnsFuture;->maybeInvokeCallbacks()V

    .line 70
    return-object p0
.end method
