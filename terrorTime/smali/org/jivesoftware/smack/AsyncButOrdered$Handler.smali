.class Lorg/jivesoftware/smack/AsyncButOrdered$Handler;
.super Ljava/lang/Object;
.source "AsyncButOrdered.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/AsyncButOrdered;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final keyQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/jivesoftware/smack/AsyncButOrdered;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/AsyncButOrdered;Ljava/util/Queue;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;TK;)V"
        }
    .end annotation

    .line 123
    .local p0, "this":Lorg/jivesoftware/smack/AsyncButOrdered$Handler;, "Lorg/jivesoftware/smack/AsyncButOrdered<TK;>.Handler;"
    .local p2, "keyQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Runnable;>;"
    .local p3, "key":Ljava/lang/Object;, "TK;"
    iput-object p1, p0, Lorg/jivesoftware/smack/AsyncButOrdered$Handler;->this$0:Lorg/jivesoftware/smack/AsyncButOrdered;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p2, p0, Lorg/jivesoftware/smack/AsyncButOrdered$Handler;->keyQueue:Ljava/util/Queue;

    .line 125
    iput-object p3, p0, Lorg/jivesoftware/smack/AsyncButOrdered$Handler;->key:Ljava/lang/Object;

    .line 126
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 132
    .local p0, "this":Lorg/jivesoftware/smack/AsyncButOrdered$Handler;, "Lorg/jivesoftware/smack/AsyncButOrdered<TK;>.Handler;"
    :goto_0
    const/4 v0, 0x0

    .line 133
    .local v0, "runnable":Ljava/lang/Runnable;
    :goto_1
    iget-object v1, p0, Lorg/jivesoftware/smack/AsyncButOrdered$Handler;->keyQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    move-object v0, v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 135
    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    goto :goto_1

    .line 136
    :catchall_0
    move-exception v1

    .line 139
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v3, p0, Lorg/jivesoftware/smack/AsyncButOrdered$Handler;->this$0:Lorg/jivesoftware/smack/AsyncButOrdered;

    invoke-static {v3}, Lorg/jivesoftware/smack/AsyncButOrdered;->access$000(Lorg/jivesoftware/smack/AsyncButOrdered;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3

    .line 140
    :try_start_1
    iget-object v4, p0, Lorg/jivesoftware/smack/AsyncButOrdered$Handler;->this$0:Lorg/jivesoftware/smack/AsyncButOrdered;

    invoke-static {v4}, Lorg/jivesoftware/smack/AsyncButOrdered;->access$000(Lorg/jivesoftware/smack/AsyncButOrdered;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lorg/jivesoftware/smack/AsyncButOrdered$Handler;->key:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 142
    throw v1

    .line 141
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 146
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smack/AsyncButOrdered$Handler;->this$0:Lorg/jivesoftware/smack/AsyncButOrdered;

    invoke-static {v1}, Lorg/jivesoftware/smack/AsyncButOrdered;->access$000(Lorg/jivesoftware/smack/AsyncButOrdered;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 148
    :try_start_3
    iget-object v3, p0, Lorg/jivesoftware/smack/AsyncButOrdered$Handler;->keyQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 149
    iget-object v3, p0, Lorg/jivesoftware/smack/AsyncButOrdered$Handler;->this$0:Lorg/jivesoftware/smack/AsyncButOrdered;

    invoke-static {v3}, Lorg/jivesoftware/smack/AsyncButOrdered;->access$000(Lorg/jivesoftware/smack/AsyncButOrdered;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lorg/jivesoftware/smack/AsyncButOrdered$Handler;->key:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    monitor-exit v1

    .line 154
    .end local v0    # "runnable":Ljava/lang/Runnable;
    return-void

    .line 152
    .restart local v0    # "runnable":Ljava/lang/Runnable;
    :cond_1
    monitor-exit v1

    .line 153
    .end local v0    # "runnable":Ljava/lang/Runnable;
    goto :goto_0

    .line 152
    .restart local v0    # "runnable":Ljava/lang/Runnable;
    :catchall_2
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v2
.end method
