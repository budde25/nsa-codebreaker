.class public final Lorg/jivesoftware/smackx/iot/data/IoTDataManager;
.super Lorg/jivesoftware/smackx/iot/IoTManager;
.source "IoTDataManager.java"


# static fields
.field private static final INSTANCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smackx/iot/data/IoTDataManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private final nextSeqNr:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final things:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smackx/iot/element/NodeInfo;",
            "Lorg/jivesoftware/smackx/iot/Thing;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-class v0, Lorg/jivesoftware/smackx/iot/data/IoTDataManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smackx/iot/data/IoTDataManager;->LOGGER:Ljava/util/logging/Logger;

    .line 61
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/iot/data/IoTDataManager;->INSTANCES:Ljava/util/Map;

    .line 65
    new-instance v0, Lorg/jivesoftware/smackx/iot/data/IoTDataManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/iot/data/IoTDataManager$1;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/XMPPConnectionRegistry;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 72
    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 7
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 94
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/iot/IoTManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 89
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/iot/data/IoTDataManager;->nextSeqNr:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 91
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/iot/data/IoTDataManager;->things:Ljava/util/Map;

    .line 95
    new-instance v0, Lorg/jivesoftware/smackx/iot/data/IoTDataManager$2;

    sget-object v5, Lorg/jivesoftware/smack/packet/IQ$Type;->get:Lorg/jivesoftware/smack/packet/IQ$Type;

    sget-object v6, Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;->async:Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;

    const-string v3, "req"

    const-string v4, "urn:xmpp:iot:sensordata"

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/jivesoftware/smackx/iot/data/IoTDataManager$2;-><init>(Lorg/jivesoftware/smackx/iot/data/IoTDataManager;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V

    invoke-interface {p1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->registerIQRequestHandler(Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;)Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;

    .line 142
    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smackx/iot/data/IoTDataManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/iot/data/IoTDataManager;

    .line 57
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/data/IoTDataManager;->things:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lorg/jivesoftware/smackx/iot/data/IoTDataManager;)Lorg/jivesoftware/smack/XMPPConnection;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/iot/data/IoTDataManager;

    .line 57
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/iot/data/IoTDataManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/logging/Logger;
    .locals 1

    .line 57
    sget-object v0, Lorg/jivesoftware/smackx/iot/data/IoTDataManager;->LOGGER:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static declared-synchronized getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/iot/data/IoTDataManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    const-class v0, Lorg/jivesoftware/smackx/iot/data/IoTDataManager;

    monitor-enter v0

    .line 81
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/iot/data/IoTDataManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/iot/data/IoTDataManager;

    .line 82
    .local v1, "manager":Lorg/jivesoftware/smackx/iot/data/IoTDataManager;
    if-nez v1, :cond_0

    .line 83
    new-instance v2, Lorg/jivesoftware/smackx/iot/data/IoTDataManager;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/iot/data/IoTDataManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    move-object v1, v2

    .line 84
    sget-object v2, Lorg/jivesoftware/smackx/iot/data/IoTDataManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_0
    monitor-exit v0

    return-object v1

    .line 80
    .end local v1    # "manager":Lorg/jivesoftware/smackx/iot/data/IoTDataManager;
    .end local p0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public installThing(Lorg/jivesoftware/smackx/iot/Thing;)V
    .locals 2
    .param p1, "thing"    # Lorg/jivesoftware/smackx/iot/Thing;

    .line 151
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/data/IoTDataManager;->things:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/iot/Thing;->getNodeInfo()Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-void
.end method

.method public requestMomentaryValuesReadOut(Lorg/jxmpp/jid/EntityFullJid;)Ljava/util/List;
    .locals 13
    .param p1, "jid"    # Lorg/jxmpp/jid/EntityFullJid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jxmpp/jid/EntityFullJid;",
            ")",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/iot/data/element/IoTFieldsExtension;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 174
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/iot/data/IoTDataManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 175
    .local v0, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    iget-object v1, p0, Lorg/jivesoftware/smackx/iot/data/IoTDataManager;->nextSeqNr:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 176
    .local v1, "seqNr":I
    new-instance v2, Lorg/jivesoftware/smackx/iot/data/element/IoTDataRequest;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lorg/jivesoftware/smackx/iot/data/element/IoTDataRequest;-><init>(IZ)V

    .line 177
    .local v2, "iotDataRequest":Lorg/jivesoftware/smackx/iot/data/element/IoTDataRequest;
    invoke-virtual {v2, p1}, Lorg/jivesoftware/smackx/iot/data/element/IoTDataRequest;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 179
    new-instance v4, Lorg/jivesoftware/smackx/iot/data/filter/IoTFieldsExtensionFilter;

    invoke-direct {v4, v1, v3}, Lorg/jivesoftware/smackx/iot/data/filter/IoTFieldsExtensionFilter;-><init>(IZ)V

    move-object v3, v4

    .line 180
    .local v3, "doneFilter":Lorg/jivesoftware/smack/filter/StanzaFilter;
    new-instance v4, Lorg/jivesoftware/smackx/iot/data/filter/IoTFieldsExtensionFilter;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lorg/jivesoftware/smackx/iot/data/filter/IoTFieldsExtensionFilter;-><init>(IZ)V

    .line 183
    .local v4, "dataFilter":Lorg/jivesoftware/smack/filter/StanzaFilter;
    invoke-interface {v0, v3}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollector(Lorg/jivesoftware/smack/filter/StanzaFilter;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v5

    .line 185
    .local v5, "doneCollector":Lorg/jivesoftware/smack/StanzaCollector;
    invoke-static {}, Lorg/jivesoftware/smack/StanzaCollector;->newConfiguration()Lorg/jivesoftware/smack/StanzaCollector$Configuration;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/jivesoftware/smack/StanzaCollector$Configuration;->setStanzaFilter(Lorg/jivesoftware/smack/filter/StanzaFilter;)Lorg/jivesoftware/smack/StanzaCollector$Configuration;

    move-result-object v6

    .line 186
    invoke-virtual {v6, v5}, Lorg/jivesoftware/smack/StanzaCollector$Configuration;->setCollectorToReset(Lorg/jivesoftware/smack/StanzaCollector;)Lorg/jivesoftware/smack/StanzaCollector$Configuration;

    move-result-object v6

    .line 187
    .local v6, "dataCollectorConfiguration":Lorg/jivesoftware/smack/StanzaCollector$Configuration;
    invoke-interface {v0, v6}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollector(Lorg/jivesoftware/smack/StanzaCollector$Configuration;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v7

    .line 190
    .local v7, "dataCollector":Lorg/jivesoftware/smack/StanzaCollector;
    :try_start_0
    invoke-interface {v0, v2}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v8

    invoke-virtual {v8}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    .line 192
    invoke-virtual {v5}, Lorg/jivesoftware/smack/StanzaCollector;->nextResult()Lorg/jivesoftware/smack/packet/Stanza;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    invoke-virtual {v7}, Lorg/jivesoftware/smack/StanzaCollector;->cancel()V

    .line 197
    invoke-virtual {v5}, Lorg/jivesoftware/smack/StanzaCollector;->cancel()V

    .line 198
    nop

    .line 200
    invoke-virtual {v7}, Lorg/jivesoftware/smack/StanzaCollector;->getCollectedCount()I

    move-result v8

    .line 201
    .local v8, "collectedCount":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 202
    .local v9, "res":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/iot/data/element/IoTFieldsExtension;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v8, :cond_0

    .line 203
    invoke-virtual {v7}, Lorg/jivesoftware/smack/StanzaCollector;->pollResult()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v11

    check-cast v11, Lorg/jivesoftware/smack/packet/Message;

    .line 204
    .local v11, "message":Lorg/jivesoftware/smack/packet/Message;
    invoke-static {v11}, Lorg/jivesoftware/smackx/iot/data/element/IoTFieldsExtension;->from(Lorg/jivesoftware/smack/packet/Message;)Lorg/jivesoftware/smackx/iot/data/element/IoTFieldsExtension;

    move-result-object v12

    .line 205
    .local v12, "iotFieldsExtension":Lorg/jivesoftware/smackx/iot/data/element/IoTFieldsExtension;
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    .end local v11    # "message":Lorg/jivesoftware/smack/packet/Message;
    .end local v12    # "iotFieldsExtension":Lorg/jivesoftware/smackx/iot/data/element/IoTFieldsExtension;
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 208
    .end local v10    # "i":I
    :cond_0
    return-object v9

    .line 196
    .end local v8    # "collectedCount":I
    .end local v9    # "res":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/iot/data/element/IoTFieldsExtension;>;"
    :catchall_0
    move-exception v8

    invoke-virtual {v7}, Lorg/jivesoftware/smack/StanzaCollector;->cancel()V

    .line 197
    invoke-virtual {v5}, Lorg/jivesoftware/smack/StanzaCollector;->cancel()V

    throw v8
.end method

.method public uninstallThing(Lorg/jivesoftware/smackx/iot/Thing;)Lorg/jivesoftware/smackx/iot/Thing;
    .locals 1
    .param p1, "thing"    # Lorg/jivesoftware/smackx/iot/Thing;

    .line 155
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/iot/Thing;->getNodeInfo()Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/iot/data/IoTDataManager;->uninstallThing(Lorg/jivesoftware/smackx/iot/element/NodeInfo;)Lorg/jivesoftware/smackx/iot/Thing;

    move-result-object v0

    return-object v0
.end method

.method public uninstallThing(Lorg/jivesoftware/smackx/iot/element/NodeInfo;)Lorg/jivesoftware/smackx/iot/Thing;
    .locals 1
    .param p1, "nodeInfo"    # Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    .line 159
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/data/IoTDataManager;->things:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/iot/Thing;

    return-object v0
.end method
