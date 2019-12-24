.class Lorg/jivesoftware/smack/AbstractXMPPConnection$14;
.super Ljava/lang/Object;
.source "AbstractXMPPConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/AbstractXMPPConnection;->asyncGoLimited(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/AbstractXMPPConnection;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/AbstractXMPPConnection;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smack/AbstractXMPPConnection;

    .line 1810
    iput-object p1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$14;->this$0:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    iput-object p2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$14;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1813
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$14;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1815
    iget-object v0, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$14;->this$0:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    invoke-static {v0}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->access$100(Lorg/jivesoftware/smack/AbstractXMPPConnection;)Ljava/util/Queue;

    move-result-object v0

    monitor-enter v0

    .line 1816
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$14;->this$0:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    invoke-static {v1}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->access$100(Lorg/jivesoftware/smack/AbstractXMPPConnection;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 1817
    .local v1, "defferredRunnable":Ljava/lang/Runnable;
    if-nez v1, :cond_0

    .line 1818
    iget-object v2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$14;->this$0:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    invoke-static {v2}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->access$210(Lorg/jivesoftware/smack/AbstractXMPPConnection;)I

    goto :goto_0

    .line 1820
    :cond_0
    iget-object v2, p0, Lorg/jivesoftware/smack/AbstractXMPPConnection$14;->this$0:Lorg/jivesoftware/smack/AbstractXMPPConnection;

    invoke-static {v2}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->access$310(Lorg/jivesoftware/smack/AbstractXMPPConnection;)I

    .line 1821
    invoke-static {v1}, Lorg/jivesoftware/smack/AbstractXMPPConnection;->asyncGo(Ljava/lang/Runnable;)V

    .line 1823
    .end local v1    # "defferredRunnable":Ljava/lang/Runnable;
    :goto_0
    monitor-exit v0

    .line 1824
    return-void

    .line 1823
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
