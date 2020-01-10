.class Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager$4;
.super Lorg/jivesoftware/smack/iqrequest/AbstractIqRequestHandler;
.source "IoTDiscoveryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;
    .param p2, "arg0"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/String;
    .param p4, "arg2"    # Lorg/jivesoftware/smack/packet/IQ$Type;
    .param p5, "arg3"    # Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;

    .line 181
    iput-object p1, p0, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager$4;->this$0:Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/jivesoftware/smack/iqrequest/AbstractIqRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V

    return-void
.end method


# virtual methods
.method public handleIQRequest(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 6
    .param p1, "iqRequest"    # Lorg/jivesoftware/smack/packet/IQ;

    .line 184
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager$4;->this$0:Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->isRegistry(Lorg/jxmpp/jid/Jid;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    invoke-static {}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received control stanza from non-registry entity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 186
    const/4 v0, 0x0

    return-object v0

    .line 189
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smackx/iot/discovery/element/IoTRemoved;

    .line 191
    .local v0, "iotRemoved":Lorg/jivesoftware/smackx/iot/discovery/element/IoTRemoved;
    iget-object v1, p0, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager$4;->this$0:Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/iot/discovery/element/IoTRemoved;->getNodeInfo()Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->access$100(Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;Lorg/jivesoftware/smackx/iot/element/NodeInfo;)Lorg/jivesoftware/smackx/iot/discovery/ThingState;

    move-result-object v1

    .line 192
    .local v1, "state":Lorg/jivesoftware/smackx/iot/discovery/ThingState;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/iot/discovery/ThingState;->setRemoved()V

    .line 197
    :try_start_0
    iget-object v2, p0, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager$4;->this$0:Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;

    invoke-static {v2}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->access$300(Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v2

    invoke-static {v2}, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/iot/discovery/element/IoTRemoved;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;->unfriend(Lorg/jxmpp/jid/Jid;)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/SmackException$NotConnectedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    goto :goto_1

    .line 199
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    .line 200
    .local v2, "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->access$000()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "Could not unfriend registry after <removed/>"

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 203
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {p1}, Lorg/jivesoftware/smack/packet/IQ;->createResultIQ(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v2

    return-object v2
.end method
