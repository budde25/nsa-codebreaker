.class public Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture;
.super Lorg/minidns/MiniDnsFuture;
.source "MiniDnsFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/MiniDnsFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalMiniDnsFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Exception;",
        ">",
        "Lorg/minidns/MiniDnsFuture<",
        "TV;TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 194
    .local p0, "this":Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture;, "Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture<TV;TE;>;"
    invoke-direct {p0}, Lorg/minidns/MiniDnsFuture;-><init>()V

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

    .local p0, "this":Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture;, "Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture<TV;TE;>;"
    .local p1, "exception":Ljava/lang/Exception;, "TE;"
    monitor-enter p0

    .line 203
    :try_start_0
    iput-object p1, p0, Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture;->exception:Ljava/lang/Exception;

    .line 204
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 206
    invoke-virtual {p0}, Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture;->maybeInvokeCallbacks()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    monitor-exit p0

    return-void

    .line 202
    .end local p0    # "this":Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture;, "Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture<TV;TE;>;"
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

    .local p0, "this":Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture;, "Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture<TV;TE;>;"
    .local p1, "result":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 196
    :try_start_0
    iput-object p1, p0, Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture;->result:Ljava/lang/Object;

    .line 197
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 199
    invoke-virtual {p0}, Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture;->maybeInvokeCallbacks()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    monitor-exit p0

    return-void

    .line 195
    .end local p0    # "this":Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture;, "Lorg/minidns/MiniDnsFuture$InternalMiniDnsFuture<TV;TE;>;"
    .end local p1    # "result":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
