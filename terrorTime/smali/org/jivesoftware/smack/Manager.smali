.class public abstract Lorg/jivesoftware/smack/Manager;
.super Ljava/lang/Object;
.source "Manager.java"


# instance fields
.field final weakConnection:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 1
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "XMPPConnection must not be null"

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/Manager;->weakConnection:Ljava/lang/ref/WeakReference;

    .line 34
    return-void
.end method

.method protected static final schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 55
    sget-object v0, Lorg/jivesoftware/smack/AbstractXMPPConnection;->SCHEDULED_EXECUTOR_SERVICE:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p0, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final connection()Lorg/jivesoftware/smack/XMPPConnection;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/jivesoftware/smack/Manager;->weakConnection:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/XMPPConnection;

    return-object v0
.end method

.method protected final getAuthenticatedConnectionOrThrow()Lorg/jivesoftware/smack/XMPPConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lorg/jivesoftware/smack/Manager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 48
    .local v0, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    invoke-interface {v0}, Lorg/jivesoftware/smack/XMPPConnection;->isAuthenticated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    return-object v0

    .line 49
    :cond_0
    new-instance v1, Lorg/jivesoftware/smack/SmackException$NotLoggedInException;

    invoke-direct {v1}, Lorg/jivesoftware/smack/SmackException$NotLoggedInException;-><init>()V

    throw v1
.end method
