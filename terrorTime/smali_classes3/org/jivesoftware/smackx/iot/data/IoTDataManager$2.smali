.class Lorg/jivesoftware/smackx/iot/data/IoTDataManager$2;
.super Lorg/jivesoftware/smackx/iot/IoTManager$IoTIqRequestHandler;
.source "IoTDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/iot/data/IoTDataManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/iot/data/IoTDataManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/iot/data/IoTDataManager;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smackx/iot/data/IoTDataManager;
    .param p2, "element"    # Ljava/lang/String;
    .param p3, "namespace"    # Ljava/lang/String;
    .param p4, "type"    # Lorg/jivesoftware/smack/packet/IQ$Type;
    .param p5, "mode"    # Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;

    .line 96
    iput-object p1, p0, Lorg/jivesoftware/smackx/iot/data/IoTDataManager$2;->this$0:Lorg/jivesoftware/smackx/iot/data/IoTDataManager;

    invoke-direct/range {p0 .. p5}, Lorg/jivesoftware/smackx/iot/IoTManager$IoTIqRequestHandler;-><init>(Lorg/jivesoftware/smackx/iot/IoTManager;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V

    return-void
.end method


# virtual methods
.method public handleIoTIqRequest(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 4
    .param p1, "iqRequest"    # Lorg/jivesoftware/smack/packet/IQ;

    .line 99
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smackx/iot/data/element/IoTDataRequest;

    .line 101
    .local v0, "dataRequest":Lorg/jivesoftware/smackx/iot/data/element/IoTDataRequest;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/iot/data/element/IoTDataRequest;->isMomentary()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 103
    return-object v2

    .line 107
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/iot/data/IoTDataManager$2;->this$0:Lorg/jivesoftware/smackx/iot/data/IoTDataManager;

    invoke-static {v1}, Lorg/jivesoftware/smackx/iot/data/IoTDataManager;->access$000(Lorg/jivesoftware/smackx/iot/data/IoTDataManager;)Ljava/util/Map;

    move-result-object v1

    sget-object v3, Lorg/jivesoftware/smackx/iot/element/NodeInfo;->EMPTY:Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/iot/Thing;

    .line 108
    .local v1, "thing":Lorg/jivesoftware/smackx/iot/Thing;
    if-nez v1, :cond_1

    .line 110
    return-object v2

    .line 113
    :cond_1
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/iot/Thing;->getMomentaryReadOutRequestHandler()Lorg/jivesoftware/smackx/iot/data/ThingMomentaryReadOutRequest;

    move-result-object v3

    .line 114
    .local v3, "readOutRequest":Lorg/jivesoftware/smackx/iot/data/ThingMomentaryReadOutRequest;
    if-nez v3, :cond_2

    .line 116
    return-object v2

    .line 124
    :cond_2
    new-instance v2, Lorg/jivesoftware/smackx/iot/data/IoTDataManager$2$1;

    invoke-direct {v2, p0, v0, v1}, Lorg/jivesoftware/smackx/iot/data/IoTDataManager$2$1;-><init>(Lorg/jivesoftware/smackx/iot/data/IoTDataManager$2;Lorg/jivesoftware/smackx/iot/data/element/IoTDataRequest;Lorg/jivesoftware/smackx/iot/Thing;)V

    invoke-interface {v3, v2}, Lorg/jivesoftware/smackx/iot/data/ThingMomentaryReadOutRequest;->momentaryReadOutRequest(Lorg/jivesoftware/smackx/iot/data/ThingMomentaryReadOutResult;)V

    .line 139
    new-instance v2, Lorg/jivesoftware/smackx/iot/data/element/IoTDataReadOutAccepted;

    invoke-direct {v2, v0}, Lorg/jivesoftware/smackx/iot/data/element/IoTDataReadOutAccepted;-><init>(Lorg/jivesoftware/smackx/iot/data/element/IoTDataRequest;)V

    return-object v2
.end method
