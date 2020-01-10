.class Lorg/jivesoftware/smackx/bytestreams/ibb/CloseListener;
.super Lorg/jivesoftware/smack/iqrequest/AbstractIqRequestHandler;
.source "CloseListener.java"


# instance fields
.field private final manager:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;


# direct methods
.method protected constructor <init>(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;)V
    .locals 4
    .param p1, "manager"    # Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;

    .line 45
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    sget-object v1, Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;->async:Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;

    const-string v2, "close"

    const-string v3, "http://jabber.org/protocol/ibb"

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/jivesoftware/smack/iqrequest/AbstractIqRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V

    .line 46
    iput-object p1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/CloseListener;->manager:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;

    .line 47
    return-void
.end method


# virtual methods
.method public handleIQRequest(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 5
    .param p1, "iqRequest"    # Lorg/jivesoftware/smack/packet/IQ;

    .line 51
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Close;

    .line 52
    .local v0, "closeRequest":Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Close;
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/CloseListener;->manager:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->getSessions()Ljava/util/Map;

    move-result-object v1

    .line 53
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Close;->getSessionID()Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;

    .line 54
    .local v1, "ibbSession":Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 56
    :try_start_0
    iget-object v3, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/CloseListener;->manager:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;

    invoke-virtual {v3, v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->replyItemNotFoundPacket(Lorg/jivesoftware/smack/packet/IQ;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/jivesoftware/smack/SmackException$NotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_1

    .line 58
    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    .line 59
    .local v3, "e":Ljava/lang/Exception;
    :goto_0
    return-object v2

    .line 64
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->closeByPeer(Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Close;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/jivesoftware/smack/SmackException$NotConnectedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 68
    nop

    .line 69
    iget-object v3, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/CloseListener;->manager:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->getSessions()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Close;->getSessionID()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :goto_1
    return-object v2

    .line 66
    :catch_2
    move-exception v3

    goto :goto_2

    :catch_3
    move-exception v3

    .line 67
    .restart local v3    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v2
.end method
