.class public Lorg/jivesoftware/smack/tcp/BundleAndDefer;
.super Ljava/lang/Object;
.source "BundleAndDefer.java"


# instance fields
.field private final isStopped:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0
    .param p1, "isStopped"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/jivesoftware/smack/tcp/BundleAndDefer;->isStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    return-void
.end method


# virtual methods
.method public stopCurrentBundleAndDefer()V
    .locals 3

    .line 39
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/BundleAndDefer;->isStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 40
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/BundleAndDefer;->isStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    monitor-exit v0

    return-void

    .line 43
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/BundleAndDefer;->isStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 44
    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/BundleAndDefer;->isStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 45
    monitor-exit v0

    .line 46
    return-void

    .line 45
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
