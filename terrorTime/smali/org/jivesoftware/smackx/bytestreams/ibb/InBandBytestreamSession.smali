.class public Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;
.super Ljava/lang/Object;
.source "InBandBytestreamSession.java"

# interfaces
.implements Lorg/jivesoftware/smackx/bytestreams/BytestreamSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$MessageIBBOutputStream;,
        Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBOutputStream;,
        Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBOutputStream;,
        Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBDataPacketFilter;,
        Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$MessageIBBInputStream;,
        Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream;,
        Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;
    }
.end annotation


# instance fields
.field private final byteStreamRequest:Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;

.field private closeBothStreamsEnabled:Z

.field private final connection:Lorg/jivesoftware/smack/XMPPConnection;

.field private inputStream:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;

.field private isClosed:Z

.field private outputStream:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBOutputStream;

.field private remoteJID:Lorg/jxmpp/jid/Jid;


# direct methods
.method protected constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;Lorg/jxmpp/jid/Jid;)V
    .locals 3
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p2, "byteStreamRequest"    # Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;
    .param p3, "remoteJID"    # Lorg/jxmpp/jid/Jid;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->closeBothStreamsEnabled:Z

    .line 86
    iput-boolean v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->isClosed:Z

    .line 97
    iput-object p1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 98
    iput-object p2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->byteStreamRequest:Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;

    .line 99
    iput-object p3, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->remoteJID:Lorg/jxmpp/jid/Jid;

    .line 102
    sget-object v0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$1;->$SwitchMap$org$jivesoftware$smackx$bytestreams$ibb$InBandBytestreamManager$StanzaType:[I

    invoke-virtual {p2}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;->getStanza()Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager$StanzaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    new-instance v0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$MessageIBBInputStream;

    invoke-direct {v0, p0, v2}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$MessageIBBInputStream;-><init>(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$1;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->inputStream:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;

    .line 109
    new-instance v0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$MessageIBBOutputStream;

    invoke-direct {v0, p0, v2}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$MessageIBBOutputStream;-><init>(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$1;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->outputStream:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBOutputStream;

    goto :goto_0

    .line 104
    :cond_1
    new-instance v0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream;

    invoke-direct {v0, p0, v2}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBInputStream;-><init>(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$1;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->inputStream:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;

    .line 105
    new-instance v0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBOutputStream;

    invoke-direct {v0, p0, v2}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IQIBBOutputStream;-><init>(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$1;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->outputStream:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBOutputStream;

    .line 106
    nop

    .line 113
    :goto_0
    return-void
.end method

.method static synthetic access$1000(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;)Lorg/jxmpp/jid/Jid;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;

    .line 61
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->remoteJID:Lorg/jxmpp/jid/Jid;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;)Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;

    .line 61
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->byteStreamRequest:Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;

    return-object v0
.end method

.method static synthetic access$800(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;)Lorg/jivesoftware/smack/XMPPConnection;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;

    .line 61
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->closeByLocal(Z)V

    .line 164
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->closeByLocal(Z)V

    .line 165
    return-void
.end method

.method protected declared-synchronized closeByLocal(Z)V
    .locals 3
    .param p1, "in"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 198
    :try_start_0
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->isClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 199
    monitor-exit p0

    return-void

    .line 202
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->closeBothStreamsEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->inputStream:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;

    invoke-static {v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->access$500(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;)V

    .line 204
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->outputStream:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBOutputStream;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBOutputStream;->closeInternal(Z)V

    goto :goto_0

    .line 207
    .end local p0    # "this":Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;
    :cond_1
    if-eqz p1, :cond_2

    .line 208
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->inputStream:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;

    invoke-static {v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->access$500(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;)V

    goto :goto_0

    .line 212
    :cond_2
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->outputStream:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBOutputStream;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBOutputStream;->closeInternal(Z)V

    .line 216
    :goto_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->inputStream:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;

    invoke-static {v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->access$700(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->outputStream:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBOutputStream;

    iget-boolean v0, v0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBOutputStream;->isClosed:Z

    if-eqz v0, :cond_3

    .line 217
    iput-boolean v1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->isClosed:Z

    .line 220
    new-instance v0, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Close;

    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->byteStreamRequest:Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;->getSessionID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Close;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, "close":Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Close;
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->remoteJID:Lorg/jxmpp/jid/Jid;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Close;->setTo(Lorg/jxmpp/jid/Jid;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    :try_start_2
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    nop

    .line 233
    :try_start_3
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->inputStream:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;

    invoke-static {v1}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->access$600(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;)V

    .line 238
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-static {v1}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->getByteStreamManager(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamManager;->getSessions()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->byteStreamRequest:Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Open;->getSessionID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 225
    :catch_0
    move-exception v1

    .line 228
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    .line 229
    .local v2, "ioException":Ljava/io/IOException;
    invoke-virtual {v2, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 230
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 241
    .end local v0    # "close":Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Close;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "ioException":Ljava/io/IOException;
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 197
    .end local p1    # "in":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected closeByPeer(Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Close;)V
    .locals 2
    .param p1, "closeRequest"    # Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Close;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->inputStream:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;

    invoke-static {v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->access$500(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;)V

    .line 181
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->inputStream:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;

    invoke-static {v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->access$600(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;)V

    .line 182
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->outputStream:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBOutputStream;->closeInternal(Z)V

    .line 185
    invoke-static {p1}, Lorg/jivesoftware/smack/packet/IQ;->createResultIQ(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v0

    .line 186
    .local v0, "confirmClose":Lorg/jivesoftware/smack/packet/IQ;
    iget-object v1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 188
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->inputStream:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->outputStream:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBOutputStream;

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->inputStream:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;

    invoke-static {v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->access$400(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;)I

    move-result v0

    return v0
.end method

.method public isCloseBothStreamsEnabled()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->closeBothStreamsEnabled:Z

    return v0
.end method

.method public processIQPacket(Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Data;)V
    .locals 1
    .param p1, "data"    # Lorg/jivesoftware/smackx/bytestreams/ibb/packet/Data;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$NotLoggedInException;
        }
    .end annotation

    .line 855
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->inputStream:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;

    invoke-static {v0}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->access$1300(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;)Lorg/jivesoftware/smack/StanzaListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/StanzaListener;->processStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 856
    return-void
.end method

.method public setCloseBothStreamsEnabled(Z)V
    .locals 0
    .param p1, "closeBothStreamsEnabled"    # Z

    .line 158
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->closeBothStreamsEnabled:Z

    .line 159
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I

    .line 132
    if-ltz p1, :cond_0

    .line 135
    iget-object v0, p0, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession;->inputStream:Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;

    invoke-static {v0, p1}, Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;->access$402(Lorg/jivesoftware/smackx/bytestreams/ibb/InBandBytestreamSession$IBBInputStream;I)I

    .line 136
    return-void

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
