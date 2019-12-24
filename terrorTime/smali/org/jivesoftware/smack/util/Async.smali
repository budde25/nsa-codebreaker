.class public Lorg/jivesoftware/smack/util/Async;
.super Ljava/lang/Object;
.source "Async.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/util/Async$ThrowingRunnable;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static daemonThreadFrom(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 52
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 53
    .local v0, "thread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 54
    return-object v0
.end method

.method public static go(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 31
    invoke-static {p0}, Lorg/jivesoftware/smack/util/Async;->daemonThreadFrom(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 32
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 33
    return-object v0
.end method

.method public static go(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "threadName"    # Ljava/lang/String;

    .line 45
    invoke-static {p0}, Lorg/jivesoftware/smack/util/Async;->daemonThreadFrom(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 46
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 48
    return-object v0
.end method
