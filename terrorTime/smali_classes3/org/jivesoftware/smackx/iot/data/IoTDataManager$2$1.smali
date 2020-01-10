.class Lorg/jivesoftware/smackx/iot/data/IoTDataManager$2$1;
.super Ljava/lang/Object;
.source "IoTDataManager.java"

# interfaces
.implements Lorg/jivesoftware/smackx/iot/data/ThingMomentaryReadOutResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/iot/data/IoTDataManager$2;->handleIoTIqRequest(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/jivesoftware/smackx/iot/data/IoTDataManager$2;

.field final synthetic val$dataRequest:Lorg/jivesoftware/smackx/iot/data/element/IoTDataRequest;

.field final synthetic val$thing:Lorg/jivesoftware/smackx/iot/Thing;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/iot/data/IoTDataManager$2;Lorg/jivesoftware/smackx/iot/data/element/IoTDataRequest;Lorg/jivesoftware/smackx/iot/Thing;)V
    .locals 0
    .param p1, "this$1"    # Lorg/jivesoftware/smackx/iot/data/IoTDataManager$2;

    .line 124
    iput-object p1, p0, Lorg/jivesoftware/smackx/iot/data/IoTDataManager$2$1;->this$1:Lorg/jivesoftware/smackx/iot/data/IoTDataManager$2;

    iput-object p2, p0, Lorg/jivesoftware/smackx/iot/data/IoTDataManager$2$1;->val$dataRequest:Lorg/jivesoftware/smackx/iot/data/element/IoTDataRequest;

    iput-object p3, p0, Lorg/jivesoftware/smackx/iot/data/IoTDataManager$2$1;->val$thing:Lorg/jivesoftware/smackx/iot/Thing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public momentaryReadOut(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/jivesoftware/smackx/iot/data/element/IoTDataField;",
            ">;)V"
        }
    .end annotation

    .line 127
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<+Lorg/jivesoftware/smackx/iot/data/element/IoTDataField;>;"
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/data/IoTDataManager$2$1;->val$dataRequest:Lorg/jivesoftware/smackx/iot/data/element/IoTDataRequest;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/iot/data/element/IoTDataRequest;->getSequenceNr()I

    move-result v0

    iget-object v1, p0, Lorg/jivesoftware/smackx/iot/data/IoTDataManager$2$1;->val$thing:Lorg/jivesoftware/smackx/iot/Thing;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/iot/Thing;->getNodeInfo()Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, p1}, Lorg/jivesoftware/smackx/iot/data/element/IoTFieldsExtension;->buildFor(IZLorg/jivesoftware/smackx/iot/element/NodeInfo;Ljava/util/List;)Lorg/jivesoftware/smackx/iot/data/element/IoTFieldsExtension;

    move-result-object v0

    .line 128
    .local v0, "iotFieldsExtension":Lorg/jivesoftware/smackx/iot/data/element/IoTFieldsExtension;
    new-instance v1, Lorg/jivesoftware/smack/packet/Message;

    iget-object v2, p0, Lorg/jivesoftware/smackx/iot/data/IoTDataManager$2$1;->val$dataRequest:Lorg/jivesoftware/smackx/iot/data/element/IoTDataRequest;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/iot/data/element/IoTDataRequest;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jivesoftware/smack/packet/Message;-><init>(Lorg/jxmpp/jid/Jid;)V

    .line 129
    .local v1, "message":Lorg/jivesoftware/smack/packet/Message;
    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 131
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smackx/iot/data/IoTDataManager$2$1;->this$1:Lorg/jivesoftware/smackx/iot/data/IoTDataManager$2;

    iget-object v2, v2, Lorg/jivesoftware/smackx/iot/data/IoTDataManager$2;->this$0:Lorg/jivesoftware/smackx/iot/data/IoTDataManager;

    invoke-static {v2}, Lorg/jivesoftware/smackx/iot/data/IoTDataManager;->access$100(Lorg/jivesoftware/smackx/iot/data/IoTDataManager;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/jivesoftware/smack/XMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/SmackException$NotConnectedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    goto :goto_1

    .line 133
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    .line 134
    .local v2, "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {}, Lorg/jivesoftware/smackx/iot/data/IoTDataManager;->access$200()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not send read-out response "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
