.class Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$2;
.super Ljava/lang/Object;
.source "XMPPTCPConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->notifyConnectionError(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 990
    const-class v0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    return-void
.end method

.method constructor <init>(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    .line 990
    iput-object p1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$2;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    iput-object p2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$2;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 994
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$2;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    iget-object v0, v0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->packetReader:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;

    invoke-static {v0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->access$100(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$2;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    iget-object v0, v0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->packetWriter:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;

    invoke-static {v0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->access$200(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 998
    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/SmackException$SmackWrappedException;

    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$2;->val$e:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/SmackException$SmackWrappedException;-><init>(Ljava/lang/Exception;)V

    .line 999
    .local v0, "smackWrappedException":Lorg/jivesoftware/smack/SmackException$SmackWrappedException;
    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$2;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v1}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$300(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Lorg/jivesoftware/smack/SynchronizationPoint;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/SynchronizationPoint;->reportGenericFailure(Lorg/jivesoftware/smack/SmackException$SmackWrappedException;)V

    .line 1000
    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$2;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v1}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$400(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Lorg/jivesoftware/smack/SynchronizationPoint;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/SynchronizationPoint;->reportGenericFailure(Lorg/jivesoftware/smack/SmackException$SmackWrappedException;)V

    .line 1001
    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$2;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v1}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$500(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Lorg/jivesoftware/smack/SynchronizationPoint;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/SynchronizationPoint;->reportGenericFailure(Lorg/jivesoftware/smack/SmackException$SmackWrappedException;)V

    .line 1002
    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$2;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v1}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$600(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Lorg/jivesoftware/smack/SynchronizationPoint;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/SynchronizationPoint;->reportGenericFailure(Lorg/jivesoftware/smack/SmackException$SmackWrappedException;)V

    .line 1004
    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$2;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    monitor-enter v1

    .line 1007
    nop

    .line 1013
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$2;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->instantShutdown()V

    .line 1014
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1016
    new-instance v1, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$2$1;

    invoke-direct {v1, p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$2$1;-><init>(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$2;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$2;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " callConnectionClosedOnErrorListener()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/jivesoftware/smack/util/Async;->go(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;

    .line 1023
    return-void

    .line 1014
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :catchall_0
    move-exception v2

    goto :goto_0

    .line 994
    .end local v0    # "smackWrappedException":Lorg/jivesoftware/smack/SmackException$SmackWrappedException;
    :cond_1
    :goto_1
    return-void
.end method
