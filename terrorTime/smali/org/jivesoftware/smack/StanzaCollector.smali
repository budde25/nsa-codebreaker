.class public Lorg/jivesoftware/smack/StanzaCollector;
.super Ljava/lang/Object;
.source "StanzaCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/StanzaCollector$Configuration;
    }
.end annotation


# instance fields
.field private volatile cancelled:Z

.field private collectedCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/Stanza;",
            ">;"
        }
    .end annotation
.end field

.field private final collectorToReset:Lorg/jivesoftware/smack/StanzaCollector;

.field private final connection:Lorg/jivesoftware/smack/XMPPConnection;

.field private final packetFilter:Lorg/jivesoftware/smack/filter/StanzaFilter;

.field private final request:Lorg/jivesoftware/smack/packet/Stanza;

.field private final resultQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lorg/jivesoftware/smack/packet/Stanza;",
            ">;"
        }
    .end annotation
.end field

.field private volatile waitStart:J


# direct methods
.method protected constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jivesoftware/smack/StanzaCollector$Configuration;)V
    .locals 2
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p2, "configuration"    # Lorg/jivesoftware/smack/StanzaCollector$Configuration;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smack/StanzaCollector;->cancelled:Z

    .line 70
    iput-object p1, p0, Lorg/jivesoftware/smack/StanzaCollector;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 71
    invoke-static {p2}, Lorg/jivesoftware/smack/StanzaCollector$Configuration;->access$000(Lorg/jivesoftware/smack/StanzaCollector$Configuration;)Lorg/jivesoftware/smack/filter/StanzaFilter;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/StanzaCollector;->packetFilter:Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 72
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-static {p2}, Lorg/jivesoftware/smack/StanzaCollector$Configuration;->access$100(Lorg/jivesoftware/smack/StanzaCollector$Configuration;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lorg/jivesoftware/smack/StanzaCollector;->resultQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 73
    invoke-static {p2}, Lorg/jivesoftware/smack/StanzaCollector$Configuration;->access$200(Lorg/jivesoftware/smack/StanzaCollector$Configuration;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/StanzaCollector;->collectorToReset:Lorg/jivesoftware/smack/StanzaCollector;

    .line 74
    invoke-static {p2}, Lorg/jivesoftware/smack/StanzaCollector$Configuration;->access$300(Lorg/jivesoftware/smack/StanzaCollector$Configuration;)Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/StanzaCollector;->request:Lorg/jivesoftware/smack/packet/Stanza;

    .line 75
    return-void
.end method

.method public static newConfiguration()Lorg/jivesoftware/smack/StanzaCollector$Configuration;
    .locals 2

    .line 336
    new-instance v0, Lorg/jivesoftware/smack/StanzaCollector$Configuration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/StanzaCollector$Configuration;-><init>(Lorg/jivesoftware/smack/StanzaCollector$1;)V

    return-object v0
.end method

.method private throwIfCancelled()V
    .locals 2

    .line 325
    iget-boolean v0, p0, Lorg/jivesoftware/smack/StanzaCollector;->cancelled:Z

    if-nez v0, :cond_0

    .line 328
    return-void

    .line 326
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stanza collector already cancelled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 84
    iget-boolean v0, p0, Lorg/jivesoftware/smack/StanzaCollector;->cancelled:Z

    if-nez v0, :cond_0

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smack/StanzaCollector;->cancelled:Z

    .line 86
    iget-object v0, p0, Lorg/jivesoftware/smack/StanzaCollector;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v0, p0}, Lorg/jivesoftware/smack/XMPPConnection;->removeStanzaCollector(Lorg/jivesoftware/smack/StanzaCollector;)V

    .line 88
    :cond_0
    return-void
.end method

.method public getCollectedCount()I
    .locals 1

    .line 301
    iget-object v0, p0, Lorg/jivesoftware/smack/StanzaCollector;->resultQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v0

    return v0
.end method

.method public getCollectedStanzasAfterCancelled()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/Stanza;",
            ">;"
        }
    .end annotation

    .line 282
    iget-boolean v0, p0, Lorg/jivesoftware/smack/StanzaCollector;->cancelled:Z

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lorg/jivesoftware/smack/StanzaCollector;->collectedCache:Ljava/util/List;

    if-nez v0, :cond_0

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/jivesoftware/smack/StanzaCollector;->getCollectedCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/jivesoftware/smack/StanzaCollector;->collectedCache:Ljava/util/List;

    .line 288
    iget-object v0, p0, Lorg/jivesoftware/smack/StanzaCollector;->resultQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-object v1, p0, Lorg/jivesoftware/smack/StanzaCollector;->collectedCache:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->drainTo(Ljava/util/Collection;)I

    .line 291
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smack/StanzaCollector;->collectedCache:Ljava/util/List;

    return-object v0

    .line 283
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stanza collector was not yet cancelled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPacketFilter()Lorg/jivesoftware/smack/filter/StanzaFilter;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 99
    invoke-virtual {p0}, Lorg/jivesoftware/smack/StanzaCollector;->getStanzaFilter()Lorg/jivesoftware/smack/filter/StanzaFilter;

    move-result-object v0

    return-object v0
.end method

.method public getStanzaFilter()Lorg/jivesoftware/smack/filter/StanzaFilter;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/jivesoftware/smack/StanzaCollector;->packetFilter:Lorg/jivesoftware/smack/filter/StanzaFilter;

    return-object v0
.end method

.method public nextResult()Lorg/jivesoftware/smack/packet/Stanza;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Lorg/jivesoftware/smack/packet/Stanza;",
            ">()TP;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lorg/jivesoftware/smack/StanzaCollector;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getReplyTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v0

    return-object v0
.end method

.method public nextResult(J)Lorg/jivesoftware/smack/packet/Stanza;
    .locals 7
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Lorg/jivesoftware/smack/packet/Stanza;",
            ">(J)TP;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 190
    invoke-direct {p0}, Lorg/jivesoftware/smack/StanzaCollector;->throwIfCancelled()V

    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, "res":Lorg/jivesoftware/smack/packet/Stanza;, "TP;"
    move-wide v1, p1

    .line 193
    .local v1, "remainingWait":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/jivesoftware/smack/StanzaCollector;->waitStart:J

    .line 195
    :goto_0
    iget-object v3, p0, Lorg/jivesoftware/smack/StanzaCollector;->resultQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1, v2, v4}, Ljava/util/concurrent/ArrayBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/jivesoftware/smack/packet/Stanza;

    .line 196
    if-eqz v0, :cond_0

    .line 197
    return-object v0

    .line 199
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lorg/jivesoftware/smack/StanzaCollector;->waitStart:J

    sub-long/2addr v3, v5

    sub-long v1, p1, v3

    .line 200
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_1

    .line 201
    const/4 v3, 0x0

    return-object v3

    .line 200
    :cond_1
    goto :goto_0
.end method

.method public nextResultBlockForever()Lorg/jivesoftware/smack/packet/Stanza;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Lorg/jivesoftware/smack/packet/Stanza;",
            ">()TP;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Lorg/jivesoftware/smack/StanzaCollector;->throwIfCancelled()V

    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, "res":Lorg/jivesoftware/smack/packet/Stanza;, "TP;"
    :goto_0
    if-nez v0, :cond_0

    .line 159
    iget-object v1, p0, Lorg/jivesoftware/smack/StanzaCollector;->resultQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/jivesoftware/smack/packet/Stanza;

    goto :goto_0

    .line 161
    :cond_0
    return-object v0
.end method

.method public nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Lorg/jivesoftware/smack/packet/Stanza;",
            ">()TP;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lorg/jivesoftware/smack/StanzaCollector;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getReplyTimeout()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow(J)Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v0

    return-object v0
.end method

.method public nextResultOrThrow(J)Lorg/jivesoftware/smack/packet/Stanza;
    .locals 4
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Lorg/jivesoftware/smack/packet/Stanza;",
            ">(J)TP;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;
        }
    .end annotation

    .line 259
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smack/StanzaCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v0

    .line 260
    .local v0, "result":Lorg/jivesoftware/smack/packet/Stanza;, "TP;"
    invoke-virtual {p0}, Lorg/jivesoftware/smack/StanzaCollector;->cancel()V

    .line 261
    if-nez v0, :cond_1

    .line 262
    iget-object v1, p0, Lorg/jivesoftware/smack/StanzaCollector;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 263
    new-instance v1, Lorg/jivesoftware/smack/SmackException$NotConnectedException;

    iget-object v2, p0, Lorg/jivesoftware/smack/StanzaCollector;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v3, p0, Lorg/jivesoftware/smack/StanzaCollector;->packetFilter:Lorg/jivesoftware/smack/filter/StanzaFilter;

    invoke-direct {v1, v2, v3}, Lorg/jivesoftware/smack/SmackException$NotConnectedException;-><init>(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    throw v1

    .line 265
    :cond_0
    invoke-static {p1, p2, p0}, Lorg/jivesoftware/smack/SmackException$NoResponseException;->newWith(JLorg/jivesoftware/smack/StanzaCollector;)Lorg/jivesoftware/smack/SmackException$NoResponseException;

    move-result-object v1

    throw v1

    .line 268
    :cond_1
    invoke-static {v0}, Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;->ifHasErrorThenThrow(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 270
    return-object v0
.end method

.method public pollResult()Lorg/jivesoftware/smack/packet/Stanza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Lorg/jivesoftware/smack/packet/Stanza;",
            ">()TP;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lorg/jivesoftware/smack/StanzaCollector;->resultQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Stanza;

    return-object v0
.end method

.method public pollResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Lorg/jivesoftware/smack/packet/Stanza;",
            ">()TP;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
        }
    .end annotation

    .line 139
    invoke-virtual {p0}, Lorg/jivesoftware/smack/StanzaCollector;->pollResult()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v0

    .line 140
    .local v0, "result":Lorg/jivesoftware/smack/packet/Stanza;, "TP;"
    if-eqz v0, :cond_0

    .line 141
    invoke-static {v0}, Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;->ifHasErrorThenThrow(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 143
    :cond_0
    return-object v0
.end method

.method protected processStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 3
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 311
    iget-object v0, p0, Lorg/jivesoftware/smack/StanzaCollector;->packetFilter:Lorg/jivesoftware/smack/filter/StanzaFilter;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/filter/StanzaFilter;->accept(Lorg/jivesoftware/smack/packet/Stanza;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 313
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/jivesoftware/smack/StanzaCollector;->resultQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 315
    iget-object v0, p0, Lorg/jivesoftware/smack/StanzaCollector;->resultQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    goto :goto_0

    .line 318
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smack/StanzaCollector;->collectorToReset:Lorg/jivesoftware/smack/StanzaCollector;

    if-eqz v0, :cond_2

    .line 319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/jivesoftware/smack/StanzaCollector;->waitStart:J

    .line 322
    :cond_2
    return-void
.end method
