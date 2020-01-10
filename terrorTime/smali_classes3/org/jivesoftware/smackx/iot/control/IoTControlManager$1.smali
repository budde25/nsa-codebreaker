.class Lorg/jivesoftware/smackx/iot/control/IoTControlManager$1;
.super Lorg/jivesoftware/smackx/iot/IoTManager$IoTIqRequestHandler;
.source "IoTControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/iot/control/IoTControlManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/iot/control/IoTControlManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/iot/control/IoTControlManager;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smackx/iot/control/IoTControlManager;
    .param p2, "element"    # Ljava/lang/String;
    .param p3, "namespace"    # Ljava/lang/String;
    .param p4, "type"    # Lorg/jivesoftware/smack/packet/IQ$Type;
    .param p5, "mode"    # Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;

    .line 71
    iput-object p1, p0, Lorg/jivesoftware/smackx/iot/control/IoTControlManager$1;->this$0:Lorg/jivesoftware/smackx/iot/control/IoTControlManager;

    invoke-direct/range {p0 .. p5}, Lorg/jivesoftware/smackx/iot/IoTManager$IoTIqRequestHandler;-><init>(Lorg/jivesoftware/smackx/iot/IoTManager;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V

    return-void
.end method


# virtual methods
.method public handleIoTIqRequest(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 5
    .param p1, "iqRequest"    # Lorg/jivesoftware/smack/packet/IQ;

    .line 75
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smackx/iot/control/element/IoTSetRequest;

    .line 78
    .local v0, "iotSetRequest":Lorg/jivesoftware/smackx/iot/control/element/IoTSetRequest;
    iget-object v1, p0, Lorg/jivesoftware/smackx/iot/control/IoTControlManager$1;->this$0:Lorg/jivesoftware/smackx/iot/control/IoTControlManager;

    invoke-static {v1}, Lorg/jivesoftware/smackx/iot/control/IoTControlManager;->access$000(Lorg/jivesoftware/smackx/iot/control/IoTControlManager;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smackx/iot/element/NodeInfo;->EMPTY:Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/iot/Thing;

    .line 79
    .local v1, "thing":Lorg/jivesoftware/smackx/iot/Thing;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 81
    return-object v2

    .line 84
    :cond_0
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/iot/Thing;->getControlRequestHandler()Lorg/jivesoftware/smackx/iot/control/ThingControlRequest;

    move-result-object v3

    .line 85
    .local v3, "controlRequest":Lorg/jivesoftware/smackx/iot/control/ThingControlRequest;
    if-nez v3, :cond_1

    .line 87
    return-object v2

    .line 91
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/iot/control/element/IoTSetRequest;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/iot/control/element/IoTSetRequest;->getSetData()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/jivesoftware/smackx/iot/control/ThingControlRequest;->processRequest(Lorg/jxmpp/jid/Jid;Ljava/util/Collection;)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException$XMPPErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    nop

    .line 96
    new-instance v2, Lorg/jivesoftware/smackx/iot/control/element/IoTSetResponse;

    invoke-direct {v2, v0}, Lorg/jivesoftware/smackx/iot/control/element/IoTSetResponse;-><init>(Lorg/jivesoftware/smackx/iot/control/element/IoTSetRequest;)V

    return-object v2

    .line 92
    :catch_0
    move-exception v2

    .line 93
    .local v2, "e":Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;->getStanzaError()Lorg/jivesoftware/smack/packet/StanzaError;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/jivesoftware/smack/packet/IQ;->createErrorResponse(Lorg/jivesoftware/smack/packet/IQ;Lorg/jivesoftware/smack/packet/StanzaError;)Lorg/jivesoftware/smack/packet/ErrorIQ;

    move-result-object v4

    return-object v4
.end method
