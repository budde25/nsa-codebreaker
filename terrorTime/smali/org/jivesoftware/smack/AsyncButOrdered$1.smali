.class Lorg/jivesoftware/smack/AsyncButOrdered$1;
.super Ljava/lang/Object;
.source "AsyncButOrdered.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/AsyncButOrdered;->asExecutorFor(Ljava/lang/Object;)Ljava/util/concurrent/Executor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/AsyncButOrdered;

.field final synthetic val$key:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/AsyncButOrdered;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smack/AsyncButOrdered;

    .line 111
    .local p0, "this":Lorg/jivesoftware/smack/AsyncButOrdered$1;, "Lorg/jivesoftware/smack/AsyncButOrdered$1;"
    iput-object p1, p0, Lorg/jivesoftware/smack/AsyncButOrdered$1;->this$0:Lorg/jivesoftware/smack/AsyncButOrdered;

    iput-object p2, p0, Lorg/jivesoftware/smack/AsyncButOrdered$1;->val$key:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 114
    .local p0, "this":Lorg/jivesoftware/smack/AsyncButOrdered$1;, "Lorg/jivesoftware/smack/AsyncButOrdered$1;"
    iget-object v0, p0, Lorg/jivesoftware/smack/AsyncButOrdered$1;->this$0:Lorg/jivesoftware/smack/AsyncButOrdered;

    iget-object v1, p0, Lorg/jivesoftware/smack/AsyncButOrdered$1;->val$key:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lorg/jivesoftware/smack/AsyncButOrdered;->performAsyncButOrdered(Ljava/lang/Object;Ljava/lang/Runnable;)Z

    .line 115
    return-void
.end method
