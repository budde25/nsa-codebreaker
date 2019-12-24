.class public Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;
.super Ljava/lang/Object;
.source "XMPPTCPConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PacketWriter"
.end annotation


# static fields
.field public static final QUEUE_SIZE:I = 0x1f4


# instance fields
.field private volatile instantShutdown:Z

.field private final queue:Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown<",
            "Lorg/jivesoftware/smack/packet/Element;",
            ">;"
        }
    .end annotation
.end field

.field private shouldBundleAndDefer:Z

.field protected shutdownDone:Lorg/jivesoftware/smack/SynchronizationPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jivesoftware/smack/SynchronizationPoint<",
            "Lorg/jivesoftware/smack/SmackException$NoResponseException;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile shutdownTimestamp:Ljava/lang/Long;

.field final synthetic this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

.field private final threadName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)V
    .locals 3
    .param p1, "this$0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    .line 1368
    iput-object p1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Smack Writer ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->getConnectionCounter()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->threadName:Ljava/lang/String;

    .line 1373
    new-instance v0, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;

    const/16 v1, 0x1f4

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;-><init>(IZ)V

    iput-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->queue:Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;

    .line 1379
    new-instance v0, Lorg/jivesoftware/smack/SynchronizationPoint;

    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    const-string v2, "shutdown completed"

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/SynchronizationPoint;-><init>(Lorg/jivesoftware/smack/AbstractXMPPConnection;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->shutdownDone:Lorg/jivesoftware/smack/SynchronizationPoint;

    .line 1385
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->shutdownTimestamp:Ljava/lang/Long;

    return-void
.end method

.method static synthetic access$200(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;

    .line 1368
    invoke-direct {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->done()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;)Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;

    .line 1368
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->queue:Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;

    return-object v0
.end method

.method static synthetic access$4100(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;

    .line 1368
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->threadName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4200(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;)V
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;

    .line 1368
    invoke-direct {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->writePackets()V

    return-void
.end method

.method private done()Z
    .locals 1

    .line 1430
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->shutdownTimestamp:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private drainWriterQueueToUnacknowledgedStanzas()V
    .locals 7

    .line 1635
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->queue:Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1636
    .local v0, "elements":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/Element;>;"
    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->queue:Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->drainTo(Ljava/util/Collection;)I

    .line 1637
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1638
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/packet/Element;

    .line 1640
    .local v2, "element":Lorg/jivesoftware/smack/packet/Element;
    iget-object v3, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v3}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$3400(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->remainingCapacity()I

    move-result v3

    if-nez v3, :cond_0

    .line 1641
    iget-object v3, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    .line 1642
    invoke-static {v3}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$3400(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lorg/jivesoftware/smack/sm/StreamManagementException$UnacknowledgedQueueFullException;->newWith(ILjava/util/List;Ljava/util/concurrent/BlockingQueue;)Lorg/jivesoftware/smack/sm/StreamManagementException$UnacknowledgedQueueFullException;

    move-result-object v3

    .line 1643
    .local v3, "exception":Lorg/jivesoftware/smack/sm/StreamManagementException$UnacknowledgedQueueFullException;
    invoke-static {}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$900()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v6, "Some stanzas may be lost as not all could be drained to the unacknowledged stanzas queue"

    invoke-virtual {v4, v5, v6, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1645
    return-void

    .line 1647
    .end local v3    # "exception":Lorg/jivesoftware/smack/sm/StreamManagementException$UnacknowledgedQueueFullException;
    :cond_0
    instance-of v3, v2, Lorg/jivesoftware/smack/packet/Stanza;

    if-eqz v3, :cond_1

    .line 1648
    iget-object v3, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v3}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$3400(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    move-object v4, v2

    check-cast v4, Lorg/jivesoftware/smack/packet/Stanza;

    invoke-interface {v3, v4}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 1637
    .end local v2    # "element":Lorg/jivesoftware/smack/packet/Element;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1651
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private maybeAddToUnacknowledgedStanzas(Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 4
    .param p1, "stanza"    # Lorg/jivesoftware/smack/packet/Stanza;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1658
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$3400(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1661
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$3400(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4079000000000000L    # 400.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 1662
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$5200(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Ljava/io/Writer;

    move-result-object v0

    sget-object v1, Lorg/jivesoftware/smack/sm/packet/StreamManagement$AckRequest;->INSTANCE:Lorg/jivesoftware/smack/sm/packet/StreamManagement$AckRequest;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/sm/packet/StreamManagement$AckRequest;->toXML(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1663
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$5300(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 1668
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$3400(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1672
    goto :goto_0

    .line 1670
    :catch_0
    move-exception v0

    .line 1671
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1674
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :goto_0
    return-void
.end method

.method private nextStreamElement()Lorg/jivesoftware/smack/packet/Element;
    .locals 5

    .line 1495
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->queue:Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1496
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->shouldBundleAndDefer:Z

    .line 1498
    :cond_0
    const/4 v0, 0x0

    .line 1500
    .local v0, "packet":Lorg/jivesoftware/smack/packet/Element;
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->queue:Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/Element;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1507
    goto :goto_0

    .line 1502
    :catch_0
    move-exception v1

    .line 1503
    .local v1, "e":Ljava/lang/InterruptedException;
    iget-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->queue:Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->isShutdown()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1505
    invoke-static {}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$900()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Writer thread was interrupted. Don\'t do that. Use disconnect() instead."

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1508
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    :goto_0
    return-object v0
.end method

.method private writePackets()V
    .locals 13

    .line 1512
    const/4 v0, 0x0

    .line 1514
    .local v0, "writerException":Ljava/lang/Exception;
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->openStream()V

    .line 1515
    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v1}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$1200(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Lorg/jivesoftware/smack/SynchronizationPoint;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/SynchronizationPoint;->reportSuccess()V

    .line 1517
    :goto_0
    invoke-direct {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->done()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1518
    invoke-direct {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->nextStreamElement()Lorg/jivesoftware/smack/packet/Element;

    move-result-object v1

    .line 1519
    .local v1, "element":Lorg/jivesoftware/smack/packet/Element;
    if-nez v1, :cond_0

    .line 1520
    goto :goto_0

    .line 1525
    :cond_0
    iget-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v2}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$4300(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Lorg/jivesoftware/smack/tcp/BundleAndDeferCallback;

    move-result-object v2

    .line 1529
    .local v2, "localBundleAndDeferCallback":Lorg/jivesoftware/smack/tcp/BundleAndDeferCallback;
    if-eqz v2, :cond_2

    iget-object v3, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->isAuthenticated()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->shouldBundleAndDefer:Z

    if-eqz v3, :cond_2

    .line 1532
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->shouldBundleAndDefer:Z

    .line 1533
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 1534
    .local v3, "bundlingAndDeferringStopped":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v4, Lorg/jivesoftware/smack/tcp/BundleAndDefer;

    invoke-direct {v4, v3}, Lorg/jivesoftware/smack/tcp/BundleAndDefer;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-interface {v2, v4}, Lorg/jivesoftware/smack/tcp/BundleAndDeferCallback;->getBundleAndDeferMillis(Lorg/jivesoftware/smack/tcp/BundleAndDefer;)I

    move-result v4

    .line 1536
    .local v4, "bundleAndDeferMillis":I
    if-lez v4, :cond_2

    .line 1537
    int-to-long v5, v4

    .line 1538
    .local v5, "remainingWait":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1539
    .local v7, "waitStart":J
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1540
    :goto_1
    :try_start_1
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    if-nez v9, :cond_1

    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-lez v9, :cond_1

    .line 1541
    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 1542
    int-to-long v9, v4

    .line 1543
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v7

    sub-long v5, v9, v11

    goto :goto_1

    .line 1545
    :cond_1
    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception v9

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "writerException":Ljava/lang/Exception;
    :try_start_2
    throw v9

    .line 1549
    .end local v3    # "bundlingAndDeferringStopped":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v4    # "bundleAndDeferMillis":I
    .end local v5    # "remainingWait":J
    .end local v7    # "waitStart":J
    .restart local v0    # "writerException":Ljava/lang/Exception;
    :cond_2
    :goto_2
    const/4 v3, 0x0

    .line 1550
    .local v3, "packet":Lorg/jivesoftware/smack/packet/Stanza;
    instance-of v4, v1, Lorg/jivesoftware/smack/packet/Stanza;

    if-eqz v4, :cond_3

    .line 1551
    move-object v4, v1

    check-cast v4, Lorg/jivesoftware/smack/packet/Stanza;

    move-object v3, v4

    goto :goto_3

    .line 1553
    :cond_3
    instance-of v4, v1, Lorg/jivesoftware/smack/sm/packet/StreamManagement$Enable;

    if-eqz v4, :cond_4

    .line 1557
    iget-object v4, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    new-instance v5, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v6, 0x1f4

    invoke-direct {v5, v6}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    invoke-static {v4, v5}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$3402(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;Ljava/util/concurrent/BlockingQueue;)Ljava/util/concurrent/BlockingQueue;

    .line 1559
    :cond_4
    :goto_3
    invoke-direct {p0, v3}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->maybeAddToUnacknowledgedStanzas(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 1561
    const-string v4, "jabber:client"

    invoke-interface {v1, v4}, Lorg/jivesoftware/smack/packet/Element;->toXML(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1562
    .local v4, "elementXml":Ljava/lang/CharSequence;
    instance-of v5, v4, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    if-eqz v5, :cond_5

    .line 1563
    move-object v5, v4

    check-cast v5, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    iget-object v6, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v6}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$4400(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Ljava/io/Writer;

    move-result-object v6

    const-string v7, "jabber:client"

    invoke-virtual {v5, v6, v7}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->write(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_4

    .line 1566
    :cond_5
    iget-object v5, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v5}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$4500(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Ljava/io/Writer;

    move-result-object v5

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1569
    :goto_4
    iget-object v5, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->queue:Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;

    invoke-virtual {v5}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1570
    iget-object v5, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v5}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$4600(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Ljava/io/Writer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/Writer;->flush()V

    .line 1572
    :cond_6
    if-eqz v3, :cond_7

    .line 1573
    iget-object v5, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v5, v3}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$4700(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 1575
    .end local v1    # "element":Lorg/jivesoftware/smack/packet/Element;
    .end local v2    # "localBundleAndDeferCallback":Lorg/jivesoftware/smack/tcp/BundleAndDeferCallback;
    .end local v3    # "packet":Lorg/jivesoftware/smack/packet/Stanza;
    .end local v4    # "elementXml":Ljava/lang/CharSequence;
    :cond_7
    goto/16 :goto_0

    .line 1576
    :cond_8
    iget-boolean v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->instantShutdown:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v1, :cond_b

    .line 1579
    :goto_5
    :try_start_3
    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->queue:Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 1580
    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->queue:Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/Element;

    .line 1581
    .local v1, "packet":Lorg/jivesoftware/smack/packet/Element;
    instance-of v2, v1, Lorg/jivesoftware/smack/packet/Stanza;

    if-eqz v2, :cond_9

    .line 1582
    move-object v2, v1

    check-cast v2, Lorg/jivesoftware/smack/packet/Stanza;

    .line 1583
    .local v2, "stanza":Lorg/jivesoftware/smack/packet/Stanza;
    invoke-direct {p0, v2}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->maybeAddToUnacknowledgedStanzas(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 1585
    .end local v2    # "stanza":Lorg/jivesoftware/smack/packet/Stanza;
    :cond_9
    iget-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v2}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$4800(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Ljava/io/Writer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lorg/jivesoftware/smack/packet/Element;->toXML(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1586
    .end local v1    # "packet":Lorg/jivesoftware/smack/packet/Element;
    goto :goto_5

    .line 1587
    :cond_a
    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v1}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$4900(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Ljava/io/Writer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1593
    goto :goto_6

    .line 1589
    :catch_0
    move-exception v1

    .line 1590
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-static {}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$900()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Exception flushing queue during shutdown, ignore and continue"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1597
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_6
    :try_start_5
    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v1}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$5000(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Ljava/io/Writer;

    move-result-object v1

    const-string v2, "</stream:stream>"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1598
    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v1}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$5100(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Ljava/io/Writer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1602
    goto :goto_7

    .line 1600
    :catch_1
    move-exception v1

    .line 1601
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_6
    invoke-static {}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$900()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Exception writing closing stream element"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1605
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_7
    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->queue:Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->clear()V

    goto :goto_8

    .line 1606
    :cond_b
    iget-boolean v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->instantShutdown:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->isSmEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1609
    invoke-direct {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->drainWriterQueueToUnacknowledgedStanzas()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_8

    .line 1625
    :catchall_1
    move-exception v1

    goto :goto_9

    .line 1616
    :catch_2
    move-exception v1

    .line 1619
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_7
    invoke-direct {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->done()Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->queue:Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->isShutdown()Z

    move-result v2

    if-nez v2, :cond_c

    .line 1620
    move-object v0, v1

    goto :goto_8

    .line 1622
    :cond_c
    invoke-static {}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$900()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Ignoring Exception in writePackets()"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1625
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_d
    :goto_8
    invoke-static {}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$900()Ljava/util/logging/Logger;

    move-result-object v1

    const-string v2, "Reporting shutdownDone success in writer thread"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 1626
    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->shutdownDone:Lorg/jivesoftware/smack/SynchronizationPoint;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/SynchronizationPoint;->reportSuccess()V

    .line 1627
    nop

    .line 1629
    if-eqz v0, :cond_e

    .line 1630
    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v1, v0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$4000(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;Ljava/lang/Exception;)V

    .line 1632
    :cond_e
    return-void

    .line 1625
    :goto_9
    invoke-static {}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$900()Ljava/util/logging/Logger;

    move-result-object v2

    const-string v3, "Reporting shutdownDone success in writer thread"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 1626
    iget-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->shutdownDone:Lorg/jivesoftware/smack/SynchronizationPoint;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/SynchronizationPoint;->reportSuccess()V

    throw v1
.end method


# virtual methods
.method init()V
    .locals 2

    .line 1404
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->shutdownDone:Lorg/jivesoftware/smack/SynchronizationPoint;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/SynchronizationPoint;->init()V

    .line 1405
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->shutdownTimestamp:Ljava/lang/Long;

    .line 1407
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$3400(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1411
    invoke-direct {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->drainWriterQueueToUnacknowledgedStanzas()V

    .line 1414
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->queue:Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->start()V

    .line 1415
    new-instance v0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter$1;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter$1;-><init>(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;)V

    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->threadName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/jivesoftware/smack/util/Async;->go(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;

    .line 1427
    return-void
.end method

.method protected sendStreamElement(Lorg/jivesoftware/smack/packet/Element;)V
    .locals 1
    .param p1, "element"    # Lorg/jivesoftware/smack/packet/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1453
    invoke-virtual {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->throwNotConnectedExceptionIfDoneAndResumptionNotPossible()V

    .line 1455
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->queue:Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1465
    nop

    .line 1466
    return-void

    .line 1457
    :catch_0
    move-exception v0

    .line 1462
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->throwNotConnectedExceptionIfDoneAndResumptionNotPossible()V

    .line 1464
    throw v0
.end method

.method shutdown(Z)V
    .locals 4
    .param p1, "instant"    # Z

    .line 1474
    iput-boolean p1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->instantShutdown:Z

    .line 1475
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->queue:Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->shutdown()V

    .line 1476
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->shutdownTimestamp:Ljava/lang/Long;

    .line 1477
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->shutdownDone:Lorg/jivesoftware/smack/SynchronizationPoint;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/SynchronizationPoint;->isNotInInitialState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1479
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->shutdownDone:Lorg/jivesoftware/smack/SynchronizationPoint;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/SynchronizationPoint;->checkIfSuccessOrWait()Ljava/lang/Exception;
    :try_end_0
    .catch Lorg/jivesoftware/smack/SmackException$NoResponseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1482
    goto :goto_1

    .line 1480
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1481
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$900()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "shutdownDone was not marked as successful by the writer thread"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1484
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-void
.end method

.method protected throwNotConnectedExceptionIfDoneAndResumptionNotPossible()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;
        }
    .end annotation

    .line 1434
    invoke-direct {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->done()Z

    move-result v0

    .line 1435
    .local v0, "done":Z
    if-eqz v0, :cond_1

    .line 1436
    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->isSmResumptionPossible()Z

    move-result v1

    .line 1438
    .local v1, "smResumptionPossible":Z
    if-eqz v1, :cond_0

    goto :goto_0

    .line 1439
    :cond_0
    new-instance v2, Lorg/jivesoftware/smack/SmackException$NotConnectedException;

    iget-object v3, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "done="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " smResumptionPossible="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/jivesoftware/smack/SmackException$NotConnectedException;-><init>(Lorg/jivesoftware/smack/XMPPConnection;Ljava/lang/String;)V

    throw v2

    .line 1443
    .end local v1    # "smResumptionPossible":Z
    :cond_1
    :goto_0
    return-void
.end method
