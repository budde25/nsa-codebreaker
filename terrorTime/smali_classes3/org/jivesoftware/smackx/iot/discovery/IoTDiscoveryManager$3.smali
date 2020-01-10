.class Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager$3;
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

    .line 151
    iput-object p1, p0, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager$3;->this$0:Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/jivesoftware/smack/iqrequest/AbstractIqRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V

    return-void
.end method


# virtual methods
.method public handleIQRequest(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 8
    .param p1, "iqRequest"    # Lorg/jivesoftware/smack/packet/IQ;

    .line 154
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager$3;->this$0:Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->isRegistry(Lorg/jxmpp/jid/Jid;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 155
    invoke-static {}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received control stanza from non-registry entity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 156
    return-object v1

    .line 159
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smackx/iot/discovery/element/IoTDisowned;

    .line 160
    .local v0, "iotDisowned":Lorg/jivesoftware/smackx/iot/discovery/element/IoTDisowned;
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v2

    .line 162
    .local v2, "from":Lorg/jxmpp/jid/Jid;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/iot/discovery/element/IoTDisowned;->getNodeInfo()Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    move-result-object v3

    .line 163
    .local v3, "nodeInfo":Lorg/jivesoftware/smackx/iot/element/NodeInfo;
    iget-object v4, p0, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager$3;->this$0:Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;

    invoke-static {v4, v3}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->access$100(Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;Lorg/jivesoftware/smackx/iot/element/NodeInfo;)Lorg/jivesoftware/smackx/iot/discovery/ThingState;

    move-result-object v4

    .line 164
    .local v4, "state":Lorg/jivesoftware/smackx/iot/discovery/ThingState;
    invoke-virtual {v4}, Lorg/jivesoftware/smackx/iot/discovery/ThingState;->getRegistry()Lorg/jxmpp/jid/BareJid;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/jxmpp/jid/Jid;->equals(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "Received <disowned/> for "

    if-nez v5, :cond_1

    .line 165
    invoke-static {}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->access$000()Ljava/util/logging/Logger;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " from "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " but this is not the registry "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v4}, Lorg/jivesoftware/smackx/iot/discovery/ThingState;->getRegistry()Lorg/jxmpp/jid/BareJid;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " of the thing."

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 165
    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 167
    return-object v1

    .line 170
    :cond_1
    invoke-virtual {v4}, Lorg/jivesoftware/smackx/iot/discovery/ThingState;->isOwned()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 171
    invoke-virtual {v4}, Lorg/jivesoftware/smackx/iot/discovery/ThingState;->setUnowned()V

    goto :goto_0

    .line 173
    :cond_2
    invoke-static {}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->access$000()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " but thing was not owned."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 176
    :goto_0
    invoke-static {p1}, Lorg/jivesoftware/smack/packet/IQ;->createResultIQ(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v1

    return-object v1
.end method
