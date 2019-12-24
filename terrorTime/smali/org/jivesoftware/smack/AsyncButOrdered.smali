.class public Lorg/jivesoftware/smack/AsyncButOrdered;
.super Ljava/lang/Object;
.source "AsyncButOrdered.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/AsyncButOrdered$Handler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final pendingRunnables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final threadActiveMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    .local p0, "this":Lorg/jivesoftware/smack/AsyncButOrdered;, "Lorg/jivesoftware/smack/AsyncButOrdered<TK;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/AsyncButOrdered;-><init>(Ljava/util/concurrent/Executor;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 64
    .local p0, "this":Lorg/jivesoftware/smack/AsyncButOrdered;, "Lorg/jivesoftware/smack/AsyncButOrdered<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/AsyncButOrdered;->pendingRunnables:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/AsyncButOrdered;->threadActiveMap:Ljava/util/Map;

    .line 65
    iput-object p1, p0, Lorg/jivesoftware/smack/AsyncButOrdered;->executor:Ljava/util/concurrent/Executor;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smack/AsyncButOrdered;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/AsyncButOrdered;

    .line 52
    iget-object v0, p0, Lorg/jivesoftware/smack/AsyncButOrdered;->threadActiveMap:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public asExecutorFor(Ljava/lang/Object;)Ljava/util/concurrent/Executor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/concurrent/Executor;"
        }
    .end annotation

    .line 111
    .local p0, "this":Lorg/jivesoftware/smack/AsyncButOrdered;, "Lorg/jivesoftware/smack/AsyncButOrdered<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    new-instance v0, Lorg/jivesoftware/smack/AsyncButOrdered$1;

    invoke-direct {v0, p0, p1}, Lorg/jivesoftware/smack/AsyncButOrdered$1;-><init>(Lorg/jivesoftware/smack/AsyncButOrdered;Ljava/lang/Object;)V

    return-object v0
.end method

.method public performAsyncButOrdered(Ljava/lang/Object;Ljava/lang/Runnable;)Z
    .locals 7
    .param p2, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Runnable;",
            ")Z"
        }
    .end annotation

    .line 77
    .local p0, "this":Lorg/jivesoftware/smack/AsyncButOrdered;, "Lorg/jivesoftware/smack/AsyncButOrdered<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/jivesoftware/smack/AsyncButOrdered;->pendingRunnables:Ljava/util/Map;

    monitor-enter v0

    .line 78
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/AsyncButOrdered;->pendingRunnables:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    .line 79
    .local v1, "keyQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Runnable;>;"
    if-nez v1, :cond_0

    .line 80
    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    move-object v1, v2

    .line 81
    iget-object v2, p0, Lorg/jivesoftware/smack/AsyncButOrdered;->pendingRunnables:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 85
    invoke-interface {v1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v2, p0, Lorg/jivesoftware/smack/AsyncButOrdered;->threadActiveMap:Ljava/util/Map;

    monitor-enter v2

    .line 89
    :try_start_1
    iget-object v0, p0, Lorg/jivesoftware/smack/AsyncButOrdered;->threadActiveMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 90
    .local v0, "threadActive":Ljava/lang/Boolean;
    if-nez v0, :cond_1

    .line 91
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, v3

    .line 92
    iget-object v3, p0, Lorg/jivesoftware/smack/AsyncButOrdered;->threadActiveMap:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    .line 96
    .local v3, "newHandler":Z
    if-eqz v3, :cond_3

    .line 97
    new-instance v5, Lorg/jivesoftware/smack/AsyncButOrdered$Handler;

    invoke-direct {v5, p0, v1, p1}, Lorg/jivesoftware/smack/AsyncButOrdered$Handler;-><init>(Lorg/jivesoftware/smack/AsyncButOrdered;Ljava/util/Queue;Ljava/lang/Object;)V

    .line 98
    .local v5, "handler":Lorg/jivesoftware/smack/AsyncButOrdered$Handler;, "Lorg/jivesoftware/smack/AsyncButOrdered<TK;>.Handler;"
    iget-object v6, p0, Lorg/jivesoftware/smack/AsyncButOrdered;->threadActiveMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v6, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v4, p0, Lorg/jivesoftware/smack/AsyncButOrdered;->executor:Ljava/util/concurrent/Executor;

    if-nez v4, :cond_2

    .line 100
    invoke-static {v5}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->asyncGo(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 102
    :cond_2
    iget-object v4, p0, Lorg/jivesoftware/smack/AsyncButOrdered;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 105
    .end local v0    # "threadActive":Ljava/lang/Boolean;
    .end local v5    # "handler":Lorg/jivesoftware/smack/AsyncButOrdered$Handler;, "Lorg/jivesoftware/smack/AsyncButOrdered<TK;>.Handler;"
    :cond_3
    :goto_0
    monitor-exit v2

    .line 107
    return v3

    .line 105
    .end local v3    # "newHandler":Z
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 83
    .end local v1    # "keyQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Runnable;>;"
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
