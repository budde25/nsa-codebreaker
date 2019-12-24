.class public Lorg/jivesoftware/smack/SmackFuture$InternalSmackFuture;
.super Lorg/jivesoftware/smack/SmackFuture;
.source "SmackFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/SmackFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalSmackFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Exception;",
        ">",
        "Lorg/jivesoftware/smack/SmackFuture<",
        "TV;TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 183
    .local p0, "this":Lorg/jivesoftware/smack/SmackFuture$InternalSmackFuture;, "Lorg/jivesoftware/smack/SmackFuture$InternalSmackFuture<TV;TE;>;"
    invoke-direct {p0}, Lorg/jivesoftware/smack/SmackFuture;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized setException(Ljava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .local p0, "this":Lorg/jivesoftware/smack/SmackFuture$InternalSmackFuture;, "Lorg/jivesoftware/smack/SmackFuture$InternalSmackFuture<TV;TE;>;"
    .local p1, "exception":Ljava/lang/Exception;, "TE;"
    monitor-enter p0

    .line 192
    :try_start_0
    iput-object p1, p0, Lorg/jivesoftware/smack/SmackFuture$InternalSmackFuture;->exception:Ljava/lang/Exception;

    .line 193
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 195
    invoke-virtual {p0}, Lorg/jivesoftware/smack/SmackFuture$InternalSmackFuture;->maybeInvokeCallbacks()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    monitor-exit p0

    return-void

    .line 191
    .end local p0    # "this":Lorg/jivesoftware/smack/SmackFuture$InternalSmackFuture;, "Lorg/jivesoftware/smack/SmackFuture$InternalSmackFuture<TV;TE;>;"
    .end local p1    # "exception":Ljava/lang/Exception;, "TE;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .local p0, "this":Lorg/jivesoftware/smack/SmackFuture$InternalSmackFuture;, "Lorg/jivesoftware/smack/SmackFuture$InternalSmackFuture<TV;TE;>;"
    .local p1, "result":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 185
    :try_start_0
    iput-object p1, p0, Lorg/jivesoftware/smack/SmackFuture$InternalSmackFuture;->result:Ljava/lang/Object;

    .line 186
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 188
    invoke-virtual {p0}, Lorg/jivesoftware/smack/SmackFuture$InternalSmackFuture;->maybeInvokeCallbacks()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    monitor-exit p0

    return-void

    .line 184
    .end local p0    # "this":Lorg/jivesoftware/smack/SmackFuture$InternalSmackFuture;, "Lorg/jivesoftware/smack/SmackFuture$InternalSmackFuture<TV;TE;>;"
    .end local p1    # "result":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
