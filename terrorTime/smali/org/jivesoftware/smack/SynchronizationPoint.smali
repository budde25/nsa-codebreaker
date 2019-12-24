.class public Lorg/jivesoftware/smack/SynchronizationPoint;
.super Ljava/lang/Object;
.source "SynchronizationPoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/SynchronizationPoint$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Exception;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final condition:Ljava/util/concurrent/locks/Condition;

.field private final connection:Lorg/jivesoftware/smack/AbstractXMPPConnection;

.field private final connectionLock:Ljava/util/concurrent/locks/Lock;

.field private failureException:Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private smackWrappedExcpetion:Lorg/jivesoftware/smack/SmackException$SmackWrappedException;

.field private state:Lorg/jivesoftware/smack/SynchronizationPoint$State;

.field private final waitFor:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 30
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/AbstractXMPPConnection;Ljava/lang/String;)V
    .locals 1
    .param p1, "connection"    # Lorg/jivesoftware/smack/AbstractXMPPConnection;
    .param p2, "waitFor"    # Ljava/lang/String;

    .line 49
    .local p0, "this":Lorg/jivesoftware/smack/SynchronizationPoint;, "Lorg/jivesoftware/smack/SynchronizationPoint<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->connection:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    .line 51
    invoke-virtual {p1}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->getConnectionLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->connectionLock:Ljava/util/concurrent/locks/Lock;

    .line 52
    invoke-virtual {p1}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->getConnectionLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->condition:Ljava/util/concurrent/locks/Condition;

    .line 53
    iput-object p2, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->waitFor:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lorg/jivesoftware/smack/SynchronizationPoint;->init()V

    .line 55
    return-void
.end method

.method private checkForResponse()Ljava/lang/Exception;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;
        }
    .end annotation

    .line 313
    .local p0, "this":Lorg/jivesoftware/smack/SynchronizationPoint;, "Lorg/jivesoftware/smack/SynchronizationPoint<TE;>;"
    sget-object v0, Lorg/jivesoftware/smack/SynchronizationPoint$1;->$SwitchMap$org$jivesoftware$smack$SynchronizationPoint$State:[I

    iget-object v1, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->state:Lorg/jivesoftware/smack/SynchronizationPoint$State;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/SynchronizationPoint$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 323
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->state:Lorg/jivesoftware/smack/SynchronizationPoint$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 317
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->connection:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    iget-object v1, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->waitFor:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/jivesoftware/smack/SmackException$NoResponseException;->newWith(Lorg/jivesoftware/smack/XMPPConnection;Ljava/lang/String;)Lorg/jivesoftware/smack/SmackException$NoResponseException;

    move-result-object v0

    throw v0

    .line 319
    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 321
    :cond_2
    invoke-direct {p0}, Lorg/jivesoftware/smack/SynchronizationPoint;->getException()Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method private getException()Ljava/lang/Exception;
    .locals 1

    .line 291
    .local p0, "this":Lorg/jivesoftware/smack/SynchronizationPoint;, "Lorg/jivesoftware/smack/SynchronizationPoint<TE;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->failureException:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 292
    return-object v0

    .line 294
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->smackWrappedExcpetion:Lorg/jivesoftware/smack/SmackException$SmackWrappedException;

    return-object v0
.end method

.method private throwException()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^TE;^",
            "Lorg/jivesoftware/smack/SmackException$SmackWrappedException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Lorg/jivesoftware/smack/SmackException$SmackWrappedException;
        }
    .end annotation

    .line 298
    .local p0, "this":Lorg/jivesoftware/smack/SynchronizationPoint;, "Lorg/jivesoftware/smack/SynchronizationPoint<TE;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->failureException:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 299
    throw v0

    .line 301
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->smackWrappedExcpetion:Lorg/jivesoftware/smack/SmackException$SmackWrappedException;

    throw v0
.end method

.method private waitForConditionOrTimeout()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 280
    .local p0, "this":Lorg/jivesoftware/smack/SynchronizationPoint;, "Lorg/jivesoftware/smack/SynchronizationPoint<TE;>;"
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->connection:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->getReplyTimeout()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 281
    .local v0, "remainingWait":J
    :goto_0
    iget-object v2, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->state:Lorg/jivesoftware/smack/SynchronizationPoint$State;

    sget-object v3, Lorg/jivesoftware/smack/SynchronizationPoint$State;->RequestSent:Lorg/jivesoftware/smack/SynchronizationPoint$State;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->state:Lorg/jivesoftware/smack/SynchronizationPoint$State;

    sget-object v3, Lorg/jivesoftware/smack/SynchronizationPoint$State;->Initial:Lorg/jivesoftware/smack/SynchronizationPoint$State;

    if-ne v2, v3, :cond_1

    .line 282
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 283
    sget-object v2, Lorg/jivesoftware/smack/SynchronizationPoint$State;->NoResponse:Lorg/jivesoftware/smack/SynchronizationPoint$State;

    iput-object v2, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->state:Lorg/jivesoftware/smack/SynchronizationPoint$State;

    .line 284
    nop

    .line 288
    :cond_1
    return-void

    .line 286
    :cond_2
    iget-object v2, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method public checkIfSuccessOrWait()Ljava/lang/Exception;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 144
    .local p0, "this":Lorg/jivesoftware/smack/SynchronizationPoint;, "Lorg/jivesoftware/smack/SynchronizationPoint<TE;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 146
    :try_start_0
    sget-object v0, Lorg/jivesoftware/smack/SynchronizationPoint$1;->$SwitchMap$org$jivesoftware$smack$SynchronizationPoint$State:[I

    iget-object v1, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->state:Lorg/jivesoftware/smack/SynchronizationPoint$State;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/SynchronizationPoint$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 156
    invoke-direct {p0}, Lorg/jivesoftware/smack/SynchronizationPoint;->waitForConditionOrTimeout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    iget-object v0, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 159
    nop

    .line 160
    invoke-direct {p0}, Lorg/jivesoftware/smack/SynchronizationPoint;->checkForResponse()Ljava/lang/Exception;

    move-result-object v0

    return-object v0

    .line 149
    :cond_0
    const/4 v0, 0x0

    .line 158
    iget-object v1, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 149
    return-object v0

    .line 151
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lorg/jivesoftware/smack/SynchronizationPoint;->getException()Ljava/lang/Exception;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    iget-object v1, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 151
    return-object v0

    .line 158
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public checkIfSuccessOrWaitOrThrow()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V^",
            "Lorg/jivesoftware/smack/SmackException$NoResponseException;",
            "^TE;^",
            "Ljava/lang/InterruptedException;",
            "^",
            "Lorg/jivesoftware/smack/SmackException$SmackWrappedException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Ljava/lang/Exception;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$SmackWrappedException;
        }
    .end annotation

    .line 131
    .local p0, "this":Lorg/jivesoftware/smack/SynchronizationPoint;, "Lorg/jivesoftware/smack/SynchronizationPoint<TE;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smack/SynchronizationPoint;->checkIfSuccessOrWait()Ljava/lang/Exception;

    .line 132
    iget-object v0, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->state:Lorg/jivesoftware/smack/SynchronizationPoint$State;

    sget-object v1, Lorg/jivesoftware/smack/SynchronizationPoint$State;->Failure:Lorg/jivesoftware/smack/SynchronizationPoint$State;

    if-ne v0, v1, :cond_0

    .line 133
    invoke-direct {p0}, Lorg/jivesoftware/smack/SynchronizationPoint;->throwException()V

    .line 135
    :cond_0
    return-void
.end method

.method public getFailureException()Ljava/lang/Exception;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 263
    .local p0, "this":Lorg/jivesoftware/smack/SynchronizationPoint;, "Lorg/jivesoftware/smack/SynchronizationPoint<TE;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 265
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->failureException:Ljava/lang/Exception;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    iget-object v1, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 265
    return-object v0

    .line 268
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public init()V
    .locals 1

    .line 61
    .local p0, "this":Lorg/jivesoftware/smack/SynchronizationPoint;, "Lorg/jivesoftware/smack/SynchronizationPoint<TE;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 62
    sget-object v0, Lorg/jivesoftware/smack/SynchronizationPoint$State;->Initial:Lorg/jivesoftware/smack/SynchronizationPoint$State;

    iput-object v0, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->state:Lorg/jivesoftware/smack/SynchronizationPoint$State;

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->failureException:Ljava/lang/Exception;

    .line 64
    iput-object v0, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->smackWrappedExcpetion:Lorg/jivesoftware/smack/SmackException$SmackWrappedException;

    .line 65
    iget-object v0, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 66
    return-void
.end method

.method public isNotInInitialState()Z
    .locals 2

    .line 238
    .local p0, "this":Lorg/jivesoftware/smack/SynchronizationPoint;, "Lorg/jivesoftware/smack/SynchronizationPoint<TE;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 240
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->state:Lorg/jivesoftware/smack/SynchronizationPoint$State;

    sget-object v1, Lorg/jivesoftware/smack/SynchronizationPoint$State;->Initial:Lorg/jivesoftware/smack/SynchronizationPoint$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 243
    :goto_0
    iget-object v1, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 240
    return v0

    .line 243
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public reportFailure()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 183
    .local p0, "this":Lorg/jivesoftware/smack/SynchronizationPoint;, "Lorg/jivesoftware/smack/SynchronizationPoint<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/SynchronizationPoint;->reportFailure(Ljava/lang/Exception;)V

    .line 184
    return-void
.end method

.method public reportFailure(Ljava/lang/Exception;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 192
    .local p0, "this":Lorg/jivesoftware/smack/SynchronizationPoint;, "Lorg/jivesoftware/smack/SynchronizationPoint<TE;>;"
    .local p1, "failureException":Ljava/lang/Exception;, "TE;"
    nop

    .line 193
    iget-object v0, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 195
    :try_start_0
    sget-object v0, Lorg/jivesoftware/smack/SynchronizationPoint$State;->Failure:Lorg/jivesoftware/smack/SynchronizationPoint$State;

    iput-object v0, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->state:Lorg/jivesoftware/smack/SynchronizationPoint$State;

    .line 196
    iput-object p1, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->failureException:Ljava/lang/Exception;

    .line 197
    iget-object v0, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    iget-object v0, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 201
    nop

    .line 202
    return-void

    .line 200
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public reportGenericFailure(Lorg/jivesoftware/smack/SmackException$SmackWrappedException;)V
    .locals 2
    .param p1, "exception"    # Lorg/jivesoftware/smack/SmackException$SmackWrappedException;

    .line 210
    .local p0, "this":Lorg/jivesoftware/smack/SynchronizationPoint;, "Lorg/jivesoftware/smack/SynchronizationPoint<TE;>;"
    nop

    .line 211
    iget-object v0, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 213
    :try_start_0
    sget-object v0, Lorg/jivesoftware/smack/SynchronizationPoint$State;->Failure:Lorg/jivesoftware/smack/SynchronizationPoint$State;

    iput-object v0, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->state:Lorg/jivesoftware/smack/SynchronizationPoint$State;

    .line 214
    iput-object p1, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->smackWrappedExcpetion:Lorg/jivesoftware/smack/SmackException$SmackWrappedException;

    .line 215
    iget-object v0, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    iget-object v0, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 219
    nop

    .line 220
    return-void

    .line 218
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public reportSuccess()V
    .locals 2

    .line 167
    .local p0, "this":Lorg/jivesoftware/smack/SynchronizationPoint;, "Lorg/jivesoftware/smack/SynchronizationPoint<TE;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 169
    :try_start_0
    sget-object v0, Lorg/jivesoftware/smack/SynchronizationPoint$State;->Success:Lorg/jivesoftware/smack/SynchronizationPoint$State;

    iput-object v0, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->state:Lorg/jivesoftware/smack/SynchronizationPoint$State;

    .line 170
    iget-object v0, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    iget-object v0, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 174
    nop

    .line 175
    return-void

    .line 173
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public requestSent()Z
    .locals 2

    .line 253
    .local p0, "this":Lorg/jivesoftware/smack/SynchronizationPoint;, "Lorg/jivesoftware/smack/SynchronizationPoint<TE;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 255
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->state:Lorg/jivesoftware/smack/SynchronizationPoint$State;

    sget-object v1, Lorg/jivesoftware/smack/SynchronizationPoint$State;->RequestSent:Lorg/jivesoftware/smack/SynchronizationPoint$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 258
    :goto_0
    iget-object v1, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 255
    return v0

    .line 258
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public sendAndWaitForResponse(Lorg/jivesoftware/smack/packet/TopLevelStreamElement;)Ljava/lang/Exception;
    .locals 2
    .param p1, "request"    # Lorg/jivesoftware/smack/packet/TopLevelStreamElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 79
    .local p0, "this":Lorg/jivesoftware/smack/SynchronizationPoint;, "Lorg/jivesoftware/smack/SynchronizationPoint<TE;>;"
    nop

    .line 80
    iget-object v0, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 82
    if-eqz p1, :cond_2

    .line 83
    :try_start_0
    instance-of v0, p1, Lorg/jivesoftware/smack/packet/Stanza;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->connection:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    move-object v1, p1

    check-cast v1, Lorg/jivesoftware/smack/packet/Stanza;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    goto :goto_0

    .line 86
    :cond_0
    instance-of v0, p1, Lorg/jivesoftware/smack/packet/Nonza;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->connection:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    move-object v1, p1

    check-cast v1, Lorg/jivesoftware/smack/packet/Nonza;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->sendNonza(Lorg/jivesoftware/smack/packet/Nonza;)V

    .line 91
    :goto_0
    sget-object v0, Lorg/jivesoftware/smack/SynchronizationPoint$State;->RequestSent:Lorg/jivesoftware/smack/SynchronizationPoint$State;

    iput-object v0, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->state:Lorg/jivesoftware/smack/SynchronizationPoint$State;

    goto :goto_1

    .line 89
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported element type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "request":Lorg/jivesoftware/smack/packet/TopLevelStreamElement;
    throw v0

    .line 93
    .restart local p1    # "request":Lorg/jivesoftware/smack/packet/TopLevelStreamElement;
    :cond_2
    :goto_1
    invoke-direct {p0}, Lorg/jivesoftware/smack/SynchronizationPoint;->waitForConditionOrTimeout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    iget-object v0, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 97
    nop

    .line 98
    invoke-direct {p0}, Lorg/jivesoftware/smack/SynchronizationPoint;->checkForResponse()Ljava/lang/Exception;

    move-result-object v0

    return-object v0

    .line 96
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public sendAndWaitForResponseOrThrow(Lorg/jivesoftware/smack/packet/Nonza;)V
    .locals 2
    .param p1, "request"    # Lorg/jivesoftware/smack/packet/Nonza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/packet/Nonza;",
            ")V^TE;^",
            "Lorg/jivesoftware/smack/SmackException$NoResponseException;",
            "^",
            "Lorg/jivesoftware/smack/SmackException$NotConnectedException;",
            "^",
            "Ljava/lang/InterruptedException;",
            "^",
            "Lorg/jivesoftware/smack/SmackException$SmackWrappedException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$SmackWrappedException;
        }
    .end annotation

    .line 113
    .local p0, "this":Lorg/jivesoftware/smack/SynchronizationPoint;, "Lorg/jivesoftware/smack/SynchronizationPoint<TE;>;"
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/SynchronizationPoint;->sendAndWaitForResponse(Lorg/jivesoftware/smack/packet/TopLevelStreamElement;)Ljava/lang/Exception;

    .line 114
    sget-object v0, Lorg/jivesoftware/smack/SynchronizationPoint$1;->$SwitchMap$org$jivesoftware$smack$SynchronizationPoint$State:[I

    iget-object v1, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->state:Lorg/jivesoftware/smack/SynchronizationPoint$State;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/SynchronizationPoint$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    invoke-direct {p0}, Lorg/jivesoftware/smack/SynchronizationPoint;->throwException()V

    .line 117
    nop

    .line 121
    :goto_0
    return-void
.end method

.method public wasSuccessful()Z
    .locals 2

    .line 228
    .local p0, "this":Lorg/jivesoftware/smack/SynchronizationPoint;, "Lorg/jivesoftware/smack/SynchronizationPoint<TE;>;"
    iget-object v0, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 230
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->state:Lorg/jivesoftware/smack/SynchronizationPoint$State;

    sget-object v1, Lorg/jivesoftware/smack/SynchronizationPoint$State;->Success:Lorg/jivesoftware/smack/SynchronizationPoint$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 233
    :goto_0
    iget-object v1, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 230
    return v0

    .line 233
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jivesoftware/smack/SynchronizationPoint;->connectionLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
