.class Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream$1;
.super Ljava/lang/Object;
.source "InBandBytestreamSession.java"

# interfaces
.implements Lorg/jivesoftware/smack/StanzaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream;->getDataPacketListener()Lorg/jivesoftware/smack/StanzaListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastSequence:J

.field final synthetic this$1:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream;)V
    .locals 2
    .param p1, "this$1"    # Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream;

    .line 465
    iput-object p1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream$1;->this$1:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 467
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream$1;->lastSequence:J

    return-void
.end method


# virtual methods
.method public processStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 6
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 472
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Data;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Data;->getDataPacketExtension()Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;

    move-result-object v0

    .line 477
    .local v0, "data":Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;->getSeq()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream$1;->lastSequence:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 478
    move-object v1, p1

    check-cast v1, Lorg/jivesoftware/smack/packet/IQ;

    sget-object v2, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->unexpected_request:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    invoke-static {v1, v2}, Lorg/jivesoftware/smack/packet/IQ;->createErrorResponse(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/StanzaError$Condition;)Lorg/jivesoftware/smack/packet/ErrorIQ;

    move-result-object v1

    .line 480
    .local v1, "unexpectedRequest":Lorg/jivesoftware/smack/packet/IQ;
    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream$1;->this$1:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream;

    iget-object v2, v2, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream;->this$0:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;

    invoke-static {v2}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->access$800(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/jivesoftware/smack/XMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 481
    return-void

    .line 486
    .end local v1    # "unexpectedRequest":Lorg/jivesoftware/smack/packet/IQ;
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;->getDecodedData()[B

    move-result-object v1

    if-nez v1, :cond_1

    .line 488
    move-object v1, p1

    check-cast v1, Lorg/jivesoftware/smack/packet/IQ;

    sget-object v2, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->bad_request:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    invoke-static {v1, v2}, Lorg/jivesoftware/smack/packet/IQ;->createErrorResponse(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/StanzaError$Condition;)Lorg/jivesoftware/smack/packet/ErrorIQ;

    move-result-object v1

    .line 490
    .local v1, "badRequest":Lorg/jivesoftware/smack/packet/IQ;
    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream$1;->this$1:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream;

    iget-object v2, v2, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream;->this$0:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;

    invoke-static {v2}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->access$800(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/jivesoftware/smack/XMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 491
    return-void

    .line 495
    .end local v1    # "badRequest":Lorg/jivesoftware/smack/packet/IQ;
    :cond_1
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream$1;->this$1:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream;

    iget-object v1, v1, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream;->dataQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 498
    move-object v1, p1

    check-cast v1, Lorg/jivesoftware/smack/packet/IQ;

    invoke-static {v1}, Lorg/jivesoftware/smack/packet/IQ;->createResultIQ(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v1

    .line 499
    .local v1, "confirmData":Lorg/jivesoftware/smack/packet/IQ;
    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream$1;->this$1:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream;

    iget-object v2, v2, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream;->this$0:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;

    invoke-static {v2}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->access$800(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/jivesoftware/smack/XMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 502
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/DataPacketExtension;->getSeq()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream$1;->lastSequence:J

    .line 503
    iget-wide v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream$1;->lastSequence:J

    const-wide/32 v4, 0xffff

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 504
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream$1;->lastSequence:J

    .line 507
    :cond_2
    return-void
.end method
