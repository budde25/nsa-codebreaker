.class Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader$1;
.super Ljava/lang/Object;
.source "XMPPTCPConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;)V
    .locals 0
    .param p1, "this$1"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;

    .line 1107
    iput-object p1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader$1;->this$1:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1110
    const-string v0, " exit"

    invoke-static {}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$900()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader$1;->this$1:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;

    invoke-static {v3}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->access$800(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1112
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader$1;->this$1:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;

    invoke-static {v1}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->access$1000(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1114
    invoke-static {}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$900()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader$1;->this$1:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;

    invoke-static {v3}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->access$800(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1115
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader$1;->this$1:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;

    iget-object v0, v0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$1100(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1116
    nop

    .line 1117
    return-void

    .line 1114
    :catchall_0
    move-exception v1

    invoke-static {}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$900()Ljava/util/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader$1;->this$1:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;

    invoke-static {v4}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->access$800(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 1115
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader$1;->this$1:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;

    iget-object v0, v0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$1100(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    throw v1
.end method
