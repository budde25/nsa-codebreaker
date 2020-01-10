.class public Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;
.super Ljava/lang/Object;
.source "XMPPTCPConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PacketReader"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private volatile done:Z

.field parser:Lorg/xmlpull/v1/XmlPullParser;

.field final synthetic this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

.field private final threadName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1092
    const-class v0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    return-void
.end method

.method protected constructor <init>(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)V
    .locals 2
    .param p1, "this$0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    .line 1092
    iput-object p1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1094
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Smack Reader ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->getConnectionCounter()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->threadName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;

    .line 1092
    iget-boolean v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->done:Z

    return v0
.end method

.method static synthetic access$1000(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;)V
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;

    .line 1092
    invoke-direct {p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->parsePackets()V

    return-void
.end method

.method static synthetic access$800(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;

    .line 1092
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->threadName:Ljava/lang/String;

    return-object v0
.end method

.method private parsePackets()V
    .locals 10

    .line 1133
    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v1}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$1200(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Lorg/jivesoftware/smack/SynchronizationPoint;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/SynchronizationPoint;->checkIfSuccessOrWait()Ljava/lang/Exception;

    .line 1134
    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 1135
    .local v1, "eventType":I
    :goto_0
    iget-boolean v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->done:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_17

    .line 1136
    const/4 v2, 0x1

    if-eq v1, v2, :cond_16

    const-string v3, "stream"

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_0

    goto/16 :goto_a

    .line 1311
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1312
    .local v2, "endTagName":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1313
    iget-object v3, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http://etherx.jabber.org/streams"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1314
    invoke-static {}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$900()Ljava/util/logging/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " </stream> but different namespace "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 1315
    goto/16 :goto_a

    .line 1322
    :cond_1
    iget-object v3, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    iget-object v3, v3, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->packetWriter:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;

    invoke-static {v3}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->access$3700(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;)Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->isShutdown()Z

    move-result v3

    .line 1323
    .local v3, "queueWasShutdown":Z
    iget-object v4, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v4}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$3800(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Lorg/jivesoftware/smack/SynchronizationPoint;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jivesoftware/smack/SynchronizationPoint;->reportSuccess()V

    .line 1325
    if-eqz v3, :cond_2

    .line 1329
    return-void

    .line 1335
    :cond_2
    invoke-static {}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$900()Ljava/util/logging/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " received closing </stream> element. Server wants to terminate the connection, calling disconnect()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 1338
    invoke-static {}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$3900()Lorg/jivesoftware/smack/AsyncButOrdered;

    move-result-object v4

    iget-object v5, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    new-instance v6, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader$2;

    invoke-direct {v6, p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader$2;-><init>(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;)V

    invoke-virtual {v4, v5, v6}, Lorg/jivesoftware/smack/AsyncButOrdered;->performAsyncButOrdered(Ljava/lang/Object;Ljava/lang/Runnable;)Z

    .line 1344
    nop

    .end local v3    # "queueWasShutdown":Z
    goto/16 :goto_a

    .line 1138
    .end local v2    # "endTagName":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1139
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, -0x1

    sparse-switch v7, :sswitch_data_0

    :cond_4
    goto/16 :goto_1

    :sswitch_0
    const-string v3, "challenge"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x8

    goto/16 :goto_2

    :sswitch_1
    const-string v3, "resumed"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0xd

    goto/16 :goto_2

    :sswitch_2
    const-string v3, "message"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v8

    goto/16 :goto_2

    :sswitch_3
    const-string v3, "error"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x4

    goto/16 :goto_2

    :sswitch_4
    const-string v3, "iq"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v2

    goto/16 :goto_2

    :sswitch_5
    const-string v3, "r"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0xf

    goto/16 :goto_2

    :sswitch_6
    const-string v3, "a"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0xe

    goto/16 :goto_2

    :sswitch_7
    const-string v3, "features"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x5

    goto :goto_2

    :sswitch_8
    const-string v3, "proceed"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x6

    goto :goto_2

    :sswitch_9
    const-string v3, "compressed"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0xa

    goto :goto_2

    :sswitch_a
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    goto :goto_2

    :sswitch_b
    const-string v3, "failure"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x7

    goto :goto_2

    :sswitch_c
    const-string v3, "presence"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v5

    goto :goto_2

    :sswitch_d
    const-string v3, "failed"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0xc

    goto :goto_2

    :sswitch_e
    const-string v3, "enabled"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0xb

    goto :goto_2

    :sswitch_f
    const-string v3, "success"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x9

    goto :goto_2

    :goto_1
    move v3, v9

    :goto_2
    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    .line 1306
    invoke-static {}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$900()Ljava/util/logging/Logger;

    move-result-object v2

    goto/16 :goto_8

    .line 1298
    :pswitch_0
    iget-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v2}, Lorg/jivesoftware/smack/sm/provider/ParseStreamManagement;->ackRequest(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/sm/packet/StreamManagement$AckRequest;

    .line 1299
    iget-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v2}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$2800(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Lorg/jivesoftware/smack/SynchronizationPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smack/SynchronizationPoint;->wasSuccessful()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1300
    iget-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v2}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$3600(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)V

    goto/16 :goto_9

    .line 1302
    :cond_5
    invoke-static {}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$900()Ljava/util/logging/Logger;

    move-result-object v2

    const-string v3, "SM Ack Request received while SM is not enabled"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 1304
    goto/16 :goto_9

    .line 1294
    :pswitch_1
    iget-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v2}, Lorg/jivesoftware/smack/sm/provider/ParseStreamManagement;->ackAnswer(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/sm/packet/StreamManagement$AckAnswer;

    move-result-object v2

    .line 1295
    .local v2, "ackAnswer":Lorg/jivesoftware/smack/sm/packet/StreamManagement$AckAnswer;
    iget-object v3, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/sm/packet/StreamManagement$AckAnswer;->getHandledCount()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$3300(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;J)V

    .line 1296
    goto/16 :goto_9

    .line 1269
    .end local v2    # "ackAnswer":Lorg/jivesoftware/smack/sm/packet/StreamManagement$AckAnswer;
    :pswitch_2
    iget-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v2}, Lorg/jivesoftware/smack/sm/provider/ParseStreamManagement;->resumed(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/sm/packet/StreamManagement$Resumed;

    move-result-object v2

    .line 1270
    .local v2, "resumed":Lorg/jivesoftware/smack/sm/packet/StreamManagement$Resumed;
    iget-object v3, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v3}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$2700(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/jivesoftware/smack/sm/packet/StreamManagement$Resumed;->getPrevId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1274
    iget-object v3, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v3}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$2800(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Lorg/jivesoftware/smack/SynchronizationPoint;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smack/SynchronizationPoint;->reportSuccess()V

    .line 1276
    iget-object v3, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/sm/packet/StreamManagement$Resumed;->getHandledCount()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$3300(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;J)V

    .line 1278
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v4}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$3400(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1279
    .local v3, "stanzasToResend":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/Stanza;>;"
    iget-object v4, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v4}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$3400(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;)I

    .line 1280
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jivesoftware/smack/packet/Stanza;

    .line 1281
    .local v5, "stanza":Lorg/jivesoftware/smack/packet/Stanza;
    iget-object v7, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-virtual {v7, v5}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->sendStanzaInternal(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 1282
    .end local v5    # "stanza":Lorg/jivesoftware/smack/packet/Stanza;
    goto :goto_3

    .line 1286
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1287
    iget-object v4, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v4}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$3500(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)V

    .line 1290
    :cond_7
    iget-object v4, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v4}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$3100(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Lorg/jivesoftware/smack/SynchronizationPoint;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jivesoftware/smack/SynchronizationPoint;->reportSuccess()V

    .line 1291
    invoke-static {}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$900()Ljava/util/logging/Logger;

    move-result-object v4

    const-string v5, "Stream Management (XEP-198): Stream resumed"

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 1292
    goto/16 :goto_9

    .line 1271
    .end local v3    # "stanzasToResend":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/Stanza;>;"
    :cond_8
    new-instance v0, Lorg/jivesoftware/smack/sm/StreamManagementException$StreamIdDoesNotMatchException;

    iget-object v3, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v3}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$2700(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lorg/jivesoftware/smack/sm/packet/StreamManagement$Resumed;->getPrevId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lorg/jivesoftware/smack/sm/StreamManagementException$StreamIdDoesNotMatchException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1248
    .end local v2    # "resumed":Lorg/jivesoftware/smack/sm/packet/StreamManagement$Resumed;
    :pswitch_3
    iget-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v2}, Lorg/jivesoftware/smack/sm/provider/ParseStreamManagement;->failed(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/sm/packet/StreamManagement$Failed;

    move-result-object v2

    .line 1249
    .local v2, "failed":Lorg/jivesoftware/smack/sm/packet/StreamManagement$Failed;
    new-instance v3, Lorg/jivesoftware/smack/XMPPException$FailedNonzaException;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/sm/packet/StreamManagement$Failed;->getStanzaErrorCondition()Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lorg/jivesoftware/smack/XMPPException$FailedNonzaException;-><init>(Lorg/jivesoftware/smack/packet/Nonza;Lorg/jivesoftware/smack/packet/StanzaError$Condition;)V

    .line 1254
    .local v3, "xmppException":Lorg/jivesoftware/smack/XMPPException$FailedNonzaException;
    iget-object v4, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v4}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$3100(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Lorg/jivesoftware/smack/SynchronizationPoint;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jivesoftware/smack/SynchronizationPoint;->requestSent()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1255
    iget-object v4, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v4}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$3100(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Lorg/jivesoftware/smack/SynchronizationPoint;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/jivesoftware/smack/SynchronizationPoint;->reportFailure(Ljava/lang/Exception;)V

    goto/16 :goto_9

    .line 1258
    :cond_9
    iget-object v4, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v4}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$2800(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Lorg/jivesoftware/smack/SynchronizationPoint;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jivesoftware/smack/SynchronizationPoint;->requestSent()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1261
    iget-object v4, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v4}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$2800(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Lorg/jivesoftware/smack/SynchronizationPoint;

    move-result-object v4

    new-instance v5, Lorg/jivesoftware/smack/SmackException;

    invoke-direct {v5, v3}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smack/SynchronizationPoint;->reportFailure(Ljava/lang/Exception;)V

    .line 1265
    iget-object v4, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v4}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$3200(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Lorg/jivesoftware/smack/SynchronizationPoint;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jivesoftware/smack/SynchronizationPoint;->reportSuccess()V

    .line 1267
    goto/16 :goto_9

    .line 1259
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v4, "Failed element received but SM was not previously enabled"

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1229
    .end local v2    # "failed":Lorg/jivesoftware/smack/sm/packet/StreamManagement$Failed;
    .end local v3    # "xmppException":Lorg/jivesoftware/smack/XMPPException$FailedNonzaException;
    :pswitch_4
    iget-object v3, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v3}, Lorg/jivesoftware/smack/sm/provider/ParseStreamManagement;->enabled(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/sm/packet/StreamManagement$Enabled;

    move-result-object v3

    .line 1230
    .local v3, "enabled":Lorg/jivesoftware/smack/sm/packet/StreamManagement$Enabled;
    invoke-virtual {v3}, Lorg/jivesoftware/smack/sm/packet/StreamManagement$Enabled;->isResumeSet()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1231
    iget-object v4, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/sm/packet/StreamManagement$Enabled;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$2702(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;Ljava/lang/String;)Ljava/lang/String;

    .line 1232
    iget-object v4, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v4}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$2700(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/jivesoftware/smack/util/StringUtils;->isNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1237
    iget-object v4, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/sm/packet/StreamManagement$Enabled;->getMaxResumptionTime()I

    move-result v5

    invoke-static {v4, v5}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$2902(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;I)I

    goto :goto_4

    .line 1233
    :cond_b
    new-instance v0, Lorg/jivesoftware/smack/SmackException;

    const-string v2, "Stream Management \'enabled\' element with resume attribute but without session id received"

    invoke-direct {v0, v2}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;)V

    .line 1234
    .local v0, "xmppException":Lorg/jivesoftware/smack/SmackException;
    iget-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v2}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$2800(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Lorg/jivesoftware/smack/SynchronizationPoint;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/SynchronizationPoint;->reportFailure(Ljava/lang/Exception;)V

    .line 1235
    throw v0

    .line 1240
    .end local v0    # "xmppException":Lorg/jivesoftware/smack/SmackException;
    :cond_c
    iget-object v5, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v5, v4}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$2702(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;Ljava/lang/String;)Ljava/lang/String;

    .line 1242
    :goto_4
    iget-object v4, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    const-wide/16 v7, 0x0

    invoke-static {v4, v7, v8}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$1402(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;J)J

    .line 1243
    iget-object v4, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v4, v2}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$3002(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;Z)Z

    .line 1244
    iget-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v2}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$2800(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Lorg/jivesoftware/smack/SynchronizationPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smack/SynchronizationPoint;->reportSuccess()V

    .line 1245
    invoke-static {}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$900()Ljava/util/logging/Logger;

    move-result-object v2

    const-string v4, "Stream Management (XEP-198): successfully enabled"

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 1246
    goto/16 :goto_9

    .line 1222
    .end local v3    # "enabled":Lorg/jivesoftware/smack/sm/packet/StreamManagement$Enabled;
    :pswitch_5
    iget-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v2}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$2600(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)V

    .line 1224
    iget-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->openStream()V

    .line 1226
    iget-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v2}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$2200(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Lorg/jivesoftware/smack/SynchronizationPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smack/SynchronizationPoint;->reportSuccess()V

    .line 1227
    goto/16 :goto_9

    .line 1210
    :pswitch_6
    new-instance v2, Lorg/jivesoftware/smack/sasl/packet/SaslStreamElements$Success;

    iget-object v3, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/sasl/packet/SaslStreamElements$Success;-><init>(Ljava/lang/String;)V

    .line 1213
    .local v2, "success":Lorg/jivesoftware/smack/sasl/packet/SaslStreamElements$Success;
    iget-object v3, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->openStream()V

    .line 1216
    iget-object v3, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v3}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$2500(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/jivesoftware/smack/SASLAuthentication;->authenticated(Lorg/jivesoftware/smack/sasl/packet/SaslStreamElements$Success;)V

    .line 1217
    goto/16 :goto_9

    .line 1206
    .end local v2    # "success":Lorg/jivesoftware/smack/sasl/packet/SaslStreamElements$Success;
    :pswitch_7
    iget-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    .line 1207
    .local v2, "challengeData":Ljava/lang/String;
    iget-object v3, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v3}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$2400(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/jivesoftware/smack/SASLAuthentication;->challengeReceived(Ljava/lang/String;)V

    .line 1208
    goto/16 :goto_9

    .line 1182
    .end local v2    # "challengeData":Ljava/lang/String;
    :pswitch_8
    iget-object v3, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1183
    .local v3, "namespace":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v7, -0x5d967ac2

    if-eq v4, v7, :cond_10

    const v7, 0x36c99e04

    if-eq v4, v7, :cond_f

    const v7, 0x7e3cfdd6

    if-eq v4, v7, :cond_e

    :cond_d
    goto :goto_5

    :cond_e
    const-string v4, "http://jabber.org/protocol/compress"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    move v8, v2

    goto :goto_6

    :cond_f
    const-string v4, "urn:ietf:params:xml:ns:xmpp-tls"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_6

    :cond_10
    const-string v4, "urn:ietf:params:xml:ns:xmpp-sasl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    move v8, v5

    goto :goto_6

    :goto_5
    move v8, v9

    :goto_6
    if-eqz v8, :cond_13

    if-eq v8, v2, :cond_12

    if-eq v8, v5, :cond_11

    goto :goto_7

    .line 1199
    :cond_11
    iget-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseSASLFailure(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/sasl/packet/SaslStreamElements$SASLFailure;

    move-result-object v2

    .line 1200
    .local v2, "failure":Lorg/jivesoftware/smack/sasl/packet/SaslStreamElements$SASLFailure;
    iget-object v4, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v4}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$2300(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Lorg/jivesoftware/smack/SASLAuthentication;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/jivesoftware/smack/SASLAuthentication;->authenticationFailed(Lorg/jivesoftware/smack/sasl/packet/SaslStreamElements$SASLFailure;)V

    goto :goto_7

    .line 1193
    .end local v2    # "failure":Lorg/jivesoftware/smack/sasl/packet/SaslStreamElements$SASLFailure;
    :cond_12
    iget-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v2}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$2200(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Lorg/jivesoftware/smack/SynchronizationPoint;

    move-result-object v2

    new-instance v4, Lorg/jivesoftware/smack/SmackException;

    const-string v5, "Could not establish compression"

    invoke-direct {v4, v5}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/SynchronizationPoint;->reportFailure(Ljava/lang/Exception;)V

    .line 1195
    nop

    .line 1203
    :goto_7
    goto/16 :goto_9

    .line 1187
    :cond_13
    new-instance v0, Lorg/jivesoftware/smack/SmackException;

    const-string v2, "TLS negotiation has failed"

    invoke-direct {v0, v2}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1171
    .end local v3    # "namespace":Ljava/lang/String;
    :pswitch_9
    :try_start_2
    iget-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v2}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$2000(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)V

    .line 1173
    iget-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->openStream()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1179
    goto/16 :goto_9

    .line 1175
    :catch_0
    move-exception v0

    .line 1176
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v2, Lorg/jivesoftware/smack/SmackException;

    invoke-direct {v2, v0}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/Throwable;)V

    .line 1177
    .local v2, "smackException":Lorg/jivesoftware/smack/SmackException;
    iget-object v3, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v3}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$2100(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Lorg/jivesoftware/smack/SynchronizationPoint;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/jivesoftware/smack/SynchronizationPoint;->reportFailure(Ljava/lang/Exception;)V

    .line 1178
    throw v0

    .line 1166
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "smackException":Lorg/jivesoftware/smack/SmackException;
    :pswitch_a
    iget-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    iget-object v3, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v2, v3}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$1900(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1167
    goto/16 :goto_9

    .line 1158
    :pswitch_b
    iget-object v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseStreamError(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/StreamError;

    move-result-object v0

    .line 1159
    .local v0, "streamError":Lorg/jivesoftware/smack/packet/StreamError;
    iget-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v2}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$1700(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Lorg/jivesoftware/smack/SynchronizationPoint;

    move-result-object v2

    new-instance v3, Lorg/jivesoftware/smack/XMPPException$StreamErrorException;

    invoke-direct {v3, v0}, Lorg/jivesoftware/smack/XMPPException$StreamErrorException;-><init>(Lorg/jivesoftware/smack/packet/StreamError;)V

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/SynchronizationPoint;->reportFailure(Ljava/lang/Exception;)V

    .line 1163
    iget-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v2}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$1800(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Lorg/jivesoftware/smack/SynchronizationPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smack/SynchronizationPoint;->reportSuccess()V

    .line 1164
    new-instance v2, Lorg/jivesoftware/smack/XMPPException$StreamErrorException;

    invoke-direct {v2, v0}, Lorg/jivesoftware/smack/XMPPException$StreamErrorException;-><init>(Lorg/jivesoftware/smack/packet/StreamError;)V

    throw v2

    .line 1151
    .end local v0    # "streamError":Lorg/jivesoftware/smack/packet/StreamError;
    :pswitch_c
    const-string v2, "jabber:client"

    iget-object v3, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1152
    iget-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    iget-object v3, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v4, "id"

    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$1502(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;Ljava/lang/String;)Ljava/lang/String;

    .line 1153
    iget-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const-string v3, "from"

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1154
    .local v2, "reportedServerDomain":Ljava/lang/String;
    nop

    .line 1155
    .end local v2    # "reportedServerDomain":Ljava/lang/String;
    goto :goto_9

    .line 1144
    :pswitch_d
    :try_start_4
    iget-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    iget-object v3, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v2, v3}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$1300(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1146
    :try_start_5
    iget-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    iget-object v3, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v3}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$1400(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/jivesoftware/smack/sm/SMUtils;->incrementHeight(J)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$1402(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;J)J

    .line 1147
    nop

    .line 1148
    goto :goto_9

    .line 1146
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    iget-object v3, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v3}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$1400(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/jivesoftware/smack/sm/SMUtils;->incrementHeight(J)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$1402(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;J)J

    throw v0

    .line 1306
    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown top level stream element: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 1309
    :cond_14
    :goto_9
    nop

    .line 1352
    .end local v6    # "name":Ljava/lang/String;
    :cond_15
    :goto_a
    iget-object v2, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v1, v2

    goto/16 :goto_0

    .line 1349
    :cond_16
    new-instance v0, Lorg/jivesoftware/smack/SmackException;

    const-string v2, "Parser got END_DOCUMENT event. This could happen e.g. if the server closed the connection without sending a closing stream element"

    invoke-direct {v0, v2}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 1364
    .end local v1    # "eventType":I
    :cond_17
    goto :goto_b

    .line 1355
    :catch_1
    move-exception v0

    .line 1356
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v1}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$3800(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;)Lorg/jivesoftware/smack/SynchronizationPoint;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/SynchronizationPoint;->reportFailure(Ljava/lang/Exception;)V

    .line 1359
    iget-boolean v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->done:Z

    if-nez v1, :cond_18

    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    iget-object v1, v1, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->packetWriter:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;

    invoke-static {v1}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;->access$3700(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketWriter;)Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/util/ArrayBlockingQueueWithShutdown;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_18

    .line 1362
    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->this$0:Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;

    invoke-static {v1, v0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;->access$4000(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection;Ljava/lang/Exception;)V

    .line 1365
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_18
    :goto_b
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6f4abffd -> :sswitch_f
        -0x5ff074bf -> :sswitch_e
        -0x4c696bc3 -> :sswitch_d
        -0x4c186305 -> :sswitch_c
        -0x40c3ce76 -> :sswitch_b
        -0x352ab080 -> :sswitch_a
        -0x1605587f -> :sswitch_9
        -0x1272e352 -> :sswitch_8
        -0x11531bc3 -> :sswitch_7
        0x61 -> :sswitch_6
        0x72 -> :sswitch_5
        0xd28 -> :sswitch_4
        0x5c4d208 -> :sswitch_3
        0x38eb0007 -> :sswitch_2
        0x416b3dd7 -> :sswitch_1
        0x539a7c63 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method init()V
    .locals 2

    .line 1105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->done:Z

    .line 1107
    new-instance v0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader$1;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader$1;-><init>(Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;)V

    iget-object v1, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->threadName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/jivesoftware/smack/util/Async;->go(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;

    .line 1119
    return-void
.end method

.method shutdown()V
    .locals 1

    .line 1125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smack/tcp/XMPPTCPConnection$PacketReader;->done:Z

    .line 1126
    return-void
.end method
