.class public abstract Lorg/jivesoftware/smack/SmackFuture;
.super Ljava/lang/Object;
.source "SmackFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;
.implements Lorg/jivesoftware/smack/util/CallbackRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/SmackFuture$SimpleInternalProcessStanzaSmackFuture;,
        Lorg/jivesoftware/smack/SmackFuture$InternalProcessStanzaSmackFuture;,
        Lorg/jivesoftware/smack/SmackFuture$SocketFuture;,
        Lorg/jivesoftware/smack/SmackFuture$InternalSmackFuture;
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
        "Lorg/jivesoftware/smack/util/CallbackRecipient<",
        "TV;TE;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private cancelled:Z

.field protected exception:Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private exceptionCallback:Lorg/jivesoftware/smack/util/ExceptionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jivesoftware/smack/util/ExceptionCallback<",
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

.field private successCallback:Lorg/jivesoftware/smack/util/SuccessCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jivesoftware/smack/util/SuccessCallback<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    nop

    .line 39
    const-class v0, Lorg/jivesoftware/smack/SmackFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/SmackFuture;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    .local p0, "this":Lorg/jivesoftware/smack/SmackFuture;, "Lorg/jivesoftware/smack/SmackFuture<TV;TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smack/SmackFuture;)Lorg/jivesoftware/smack/util/SuccessCallback;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/SmackFuture;

    .line 37
    iget-object v0, p0, Lorg/jivesoftware/smack/SmackFuture;->successCallback:Lorg/jivesoftware/smack/util/SuccessCallback;

    return-object v0
.end method

.method static synthetic access$100(Lorg/jivesoftware/smack/SmackFuture;)Lorg/jivesoftware/smack/util/ExceptionCallback;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/SmackFuture;

    .line 37
    iget-object v0, p0, Lorg/jivesoftware/smack/SmackFuture;->exceptionCallback:Lorg/jivesoftware/smack/util/ExceptionCallback;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/logging/Logger;
    .locals 1

    .line 37
    sget-object v0, Lorg/jivesoftware/smack/SmackFuture;->LOGGER:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static from(Ljava/lang/Object;)Lorg/jivesoftware/smack/SmackFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Exception;",
            ">(TV;)",
            "Lorg/jivesoftware/smack/SmackFuture<",
            "TV;TE;>;"
        }
    .end annotation

    .line 306
    .local p0, "result":Ljava/lang/Object;, "TV;"
    new-instance v0, Lorg/jivesoftware/smack/SmackFuture$InternalSmackFuture;

    invoke-direct {v0}, Lorg/jivesoftware/smack/SmackFuture$InternalSmackFuture;-><init>()V

    .line 307
    .local v0, "future":Lorg/jivesoftware/smack/SmackFuture$InternalSmackFuture;, "Lorg/jivesoftware/smack/SmackFuture$InternalSmackFuture<TV;TE;>;"
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/SmackFuture$InternalSmackFuture;->setResult(Ljava/lang/Object;)V

    .line 308
    return-object v0
.end method

.method private getOrThrowExecutionException()Ljava/lang/Object;
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

    .line 91
    .local p0, "this":Lorg/jivesoftware/smack/SmackFuture;, "Lorg/jivesoftware/smack/SmackFuture<TV;TE;>;"
    nop

    .line 92
    iget-object v0, p0, Lorg/jivesoftware/smack/SmackFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 93
    return-object v0

    .line 95
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/SmackFuture;->exception:Ljava/lang/Exception;

    if-nez v0, :cond_1

    .line 99
    nop

    .line 100
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    .line 96
    :cond_1
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final declared-synchronized cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .local p0, "this":Lorg/jivesoftware/smack/SmackFuture;, "Lorg/jivesoftware/smack/SmackFuture<TV;TE;>;"
    monitor-enter p0

    .line 53
    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smack/SmackFuture;->isDone()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 57
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/jivesoftware/smack/SmackFuture;->cancelled:Z

    .line 59
    if-eqz p1, :cond_1

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    .end local p0    # "this":Lorg/jivesoftware/smack/SmackFuture;, "Lorg/jivesoftware/smack/SmackFuture<TV;TE;>;"
    :cond_1
    monitor-exit p0

    return v0

    .line 52
    .end local p1    # "mayInterruptIfRunning":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final futureWait()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 175
    .local p0, "this":Lorg/jivesoftware/smack/SmackFuture;, "Lorg/jivesoftware/smack/SmackFuture<TV;TE;>;"
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/SmackFuture;->futureWait(J)V

    .line 176
    return-void
.end method

.method protected futureWait(J)V
    .locals 0
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 180
    .local p0, "this":Lorg/jivesoftware/smack/SmackFuture;, "Lorg/jivesoftware/smack/SmackFuture<TV;TE;>;"
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 181
    return-void
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

    .local p0, "this":Lorg/jivesoftware/smack/SmackFuture;, "Lorg/jivesoftware/smack/SmackFuture<TV;TE;>;"
    monitor-enter p0

    .line 105
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/SmackFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/SmackFuture;->exception:Ljava/lang/Exception;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/jivesoftware/smack/SmackFuture;->cancelled:Z

    if-nez v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lorg/jivesoftware/smack/SmackFuture;->futureWait()V

    goto :goto_0

    .line 109
    .end local p0    # "this":Lorg/jivesoftware/smack/SmackFuture;, "Lorg/jivesoftware/smack/SmackFuture<TV;TE;>;"
    :cond_0
    invoke-direct {p0}, Lorg/jivesoftware/smack/SmackFuture;->getOrThrowExecutionException()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 104
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

    .local p0, "this":Lorg/jivesoftware/smack/SmackFuture;, "Lorg/jivesoftware/smack/SmackFuture<TV;TE;>;"
    monitor-enter p0

    .line 132
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 133
    .local v0, "deadline":J
    :goto_0
    iget-object v2, p0, Lorg/jivesoftware/smack/SmackFuture;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/jivesoftware/smack/SmackFuture;->exception:Ljava/lang/Exception;

    if-eqz v2, :cond_1

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 135
    .local v2, "waitTimeRemaining":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 136
    invoke-virtual {p0, v2, v3}, Lorg/jivesoftware/smack/SmackFuture;->futureWait(J)V

    .line 138
    .end local v2    # "waitTimeRemaining":J
    .end local p0    # "this":Lorg/jivesoftware/smack/SmackFuture;, "Lorg/jivesoftware/smack/SmackFuture<TV;TE;>;"
    :cond_0
    goto :goto_0

    .line 140
    :cond_1
    iget-boolean v2, p0, Lorg/jivesoftware/smack/SmackFuture;->cancelled:Z

    if-nez v2, :cond_3

    .line 144
    iget-object v2, p0, Lorg/jivesoftware/smack/SmackFuture;->result:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/jivesoftware/smack/SmackFuture;->exception:Ljava/lang/Exception;

    if-eqz v2, :cond_2

    .line 148
    invoke-direct {p0}, Lorg/jivesoftware/smack/SmackFuture;->getOrThrowExecutionException()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 145
    :cond_2
    :try_start_1
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v2}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v2

    .line 141
    :cond_3
    new-instance v2, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    .end local v0    # "deadline":J
    .end local p1    # "timeout":J
    .end local p3    # "unit":Ljava/util/concurrent/TimeUnit;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getOrThrow()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;^TE;^",
            "Ljava/lang/InterruptedException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .local p0, "this":Lorg/jivesoftware/smack/SmackFuture;, "Lorg/jivesoftware/smack/SmackFuture<TV;TE;>;"
    monitor-enter p0

    .line 113
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/SmackFuture;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/SmackFuture;->exception:Ljava/lang/Exception;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/jivesoftware/smack/SmackFuture;->cancelled:Z

    if-nez v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lorg/jivesoftware/smack/SmackFuture;->futureWait()V

    goto :goto_0

    .line 117
    .end local p0    # "this":Lorg/jivesoftware/smack/SmackFuture;, "Lorg/jivesoftware/smack/SmackFuture<TV;TE;>;"
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/SmackFuture;->exception:Ljava/lang/Exception;

    if-nez v0, :cond_2

    .line 121
    iget-boolean v0, p0, Lorg/jivesoftware/smack/SmackFuture;->cancelled:Z

    if-nez v0, :cond_1

    .line 125
    nop

    .line 126
    iget-object v0, p0, Lorg/jivesoftware/smack/SmackFuture;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 122
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    .line 118
    :cond_2
    iget-object v0, p0, Lorg/jivesoftware/smack/SmackFuture;->exception:Ljava/lang/Exception;

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isCancelled()Z
    .locals 1

    .local p0, "this":Lorg/jivesoftware/smack/SmackFuture;, "Lorg/jivesoftware/smack/SmackFuture<TV;TE;>;"
    monitor-enter p0

    .line 68
    :try_start_0
    iget-boolean v0, p0, Lorg/jivesoftware/smack/SmackFuture;->cancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Lorg/jivesoftware/smack/SmackFuture;, "Lorg/jivesoftware/smack/SmackFuture<TV;TE;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isDone()Z
    .locals 1

    .local p0, "this":Lorg/jivesoftware/smack/SmackFuture;, "Lorg/jivesoftware/smack/SmackFuture<TV;TE;>;"
    monitor-enter p0

    .line 73
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/SmackFuture;->result:Ljava/lang/Object;
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

    .end local p0    # "this":Lorg/jivesoftware/smack/SmackFuture;, "Lorg/jivesoftware/smack/SmackFuture<TV;TE;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized maybeInvokeCallbacks()V
    .locals 1

    .local p0, "this":Lorg/jivesoftware/smack/SmackFuture;, "Lorg/jivesoftware/smack/SmackFuture<TV;TE;>;"
    monitor-enter p0

    .line 152
    :try_start_0
    iget-boolean v0, p0, Lorg/jivesoftware/smack/SmackFuture;->cancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 153
    monitor-exit p0

    return-void

    .line 156
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/jivesoftware/smack/SmackFuture;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jivesoftware/smack/SmackFuture;->successCallback:Lorg/jivesoftware/smack/util/SuccessCallback;

    if-eqz v0, :cond_1

    .line 157
    new-instance v0, Lorg/jivesoftware/smack/SmackFuture$1;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/SmackFuture$1;-><init>(Lorg/jivesoftware/smack/SmackFuture;)V

    invoke-static {v0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->asyncGo(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 164
    .end local p0    # "this":Lorg/jivesoftware/smack/SmackFuture;, "Lorg/jivesoftware/smack/SmackFuture<TV;TE;>;"
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smack/SmackFuture;->exception:Ljava/lang/Exception;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/jivesoftware/smack/SmackFuture;->exceptionCallback:Lorg/jivesoftware/smack/util/ExceptionCallback;

    if-eqz v0, :cond_2

    .line 165
    new-instance v0, Lorg/jivesoftware/smack/SmackFuture$2;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/SmackFuture$2;-><init>(Lorg/jivesoftware/smack/SmackFuture;)V

    invoke-static {v0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->asyncGo(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onError(Lorg/jivesoftware/smack/util/ExceptionCallback;)Lorg/jivesoftware/smack/util/CallbackRecipient;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/util/ExceptionCallback<",
            "TE;>;)",
            "Lorg/jivesoftware/smack/util/CallbackRecipient<",
            "TV;TE;>;"
        }
    .end annotation

    .line 85
    .local p0, "this":Lorg/jivesoftware/smack/SmackFuture;, "Lorg/jivesoftware/smack/SmackFuture<TV;TE;>;"
    .local p1, "exceptionCallback":Lorg/jivesoftware/smack/util/ExceptionCallback;, "Lorg/jivesoftware/smack/util/ExceptionCallback<TE;>;"
    iput-object p1, p0, Lorg/jivesoftware/smack/SmackFuture;->exceptionCallback:Lorg/jivesoftware/smack/util/ExceptionCallback;

    .line 86
    invoke-virtual {p0}, Lorg/jivesoftware/smack/SmackFuture;->maybeInvokeCallbacks()V

    .line 87
    return-object p0
.end method

.method public onSuccess(Lorg/jivesoftware/smack/util/SuccessCallback;)Lorg/jivesoftware/smack/util/CallbackRecipient;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/util/SuccessCallback<",
            "TV;>;)",
            "Lorg/jivesoftware/smack/util/CallbackRecipient<",
            "TV;TE;>;"
        }
    .end annotation

    .line 78
    .local p0, "this":Lorg/jivesoftware/smack/SmackFuture;, "Lorg/jivesoftware/smack/SmackFuture<TV;TE;>;"
    .local p1, "successCallback":Lorg/jivesoftware/smack/util/SuccessCallback;, "Lorg/jivesoftware/smack/util/SuccessCallback<TV;>;"
    iput-object p1, p0, Lorg/jivesoftware/smack/SmackFuture;->successCallback:Lorg/jivesoftware/smack/util/SuccessCallback;

    .line 79
    invoke-virtual {p0}, Lorg/jivesoftware/smack/SmackFuture;->maybeInvokeCallbacks()V

    .line 80
    return-object p0
.end method
