.class Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager$2;
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

    .line 121
    iput-object p1, p0, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager$2;->this$0:Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/jivesoftware/smack/iqrequest/AbstractIqRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V

    return-void
.end method


# virtual methods
.method public handleIQRequest(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 9
    .param p1, "iqRequest"    # Lorg/jivesoftware/smack/packet/IQ;

    .line 124
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager$2;->this$0:Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->isRegistry(Lorg/jxmpp/jid/Jid;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
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

    .line 126
    const/4 v0, 0x0

    return-object v0

    .line 129
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smackx/iot/discovery/element/IoTClaimed;

    .line 130
    .local v0, "iotClaimed":Lorg/jivesoftware/smackx/iot/discovery/element/IoTClaimed;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/iot/discovery/element/IoTClaimed;->getJid()Lorg/jxmpp/jid/Jid;

    move-result-object v1

    .line 131
    .local v1, "owner":Lorg/jxmpp/jid/Jid;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/iot/discovery/element/IoTClaimed;->getNodeInfo()Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    move-result-object v2

    .line 133
    .local v2, "nodeInfo":Lorg/jivesoftware/smackx/iot/element/NodeInfo;
    iget-object v3, p0, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager$2;->this$0:Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;

    invoke-static {v3, v2}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->access$100(Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;Lorg/jivesoftware/smackx/iot/element/NodeInfo;)Lorg/jivesoftware/smackx/iot/discovery/ThingState;

    move-result-object v3

    .line 134
    .local v3, "state":Lorg/jivesoftware/smackx/iot/discovery/ThingState;
    invoke-interface {v1}, Lorg/jxmpp/jid/Jid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/iot/discovery/ThingState;->setOwner(Lorg/jxmpp/jid/BareJid;)V

    .line 135
    invoke-static {}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->access$000()Ljava/util/logging/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Our thing got claimed by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ". "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 137
    iget-object v4, p0, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager$2;->this$0:Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;

    .line 138
    invoke-static {v4}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->access$200(Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v4

    .line 137
    invoke-static {v4}, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;

    move-result-object v4

    .line 140
    .local v4, "iotProvisioningManager":Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;
    :try_start_0
    invoke-interface {v1}, Lorg/jxmpp/jid/Jid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;->sendFriendshipRequest(Lorg/jxmpp/jid/BareJid;)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/SmackException$NotConnectedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    goto :goto_1

    .line 142
    :catch_0
    move-exception v5

    goto :goto_0

    :catch_1
    move-exception v5

    .line 143
    .local v5, "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->access$000()Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v8, "Could not friendship owner"

    invoke-virtual {v6, v7, v8, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {p1}, Lorg/jivesoftware/smack/packet/IQ;->createResultIQ(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v5

    return-object v5
.end method
