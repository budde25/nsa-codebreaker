.class Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager$5;
.super Ljava/lang/Object;
.source "IoTProvisioningManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/roster/SubscribeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;

    .line 220
    iput-object p1, p0, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager$5;->this$0:Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processSubscribe(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smack/packet/Presence;)Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;
    .locals 7
    .param p1, "from"    # Lorg/jxmpp/jid/Jid;
    .param p2, "subscribeRequest"    # Lorg/jivesoftware/smack/packet/Presence;

    .line 225
    const-string v0, "Could not determine if "

    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager$5;->this$0:Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;

    invoke-static {v1}, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;->access$600(Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-static {v1}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;

    move-result-object v1

    invoke-interface {p1}, Lorg/jxmpp/jid/Jid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/iot/discovery/IoTDiscoveryManager;->isRegistry(Lorg/jxmpp/jid/BareJid;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    sget-object v0, Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;->Approve:Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;
    :try_end_0
    .catch Lorg/jivesoftware/smack/SmackException$NoResponseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/jivesoftware/smack/XMPPException$XMPPErrorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/jivesoftware/smack/SmackException$NotConnectedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 231
    :cond_0
    goto :goto_1

    .line 229
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    .line 230
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {}, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;->access$200()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is a registry"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 233
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v1, 0x0

    .line 235
    .local v1, "provisioningServer":Lorg/jxmpp/jid/Jid;
    :try_start_1
    iget-object v2, p0, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager$5;->this$0:Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;->getConfiguredProvisioningServer()Lorg/jxmpp/jid/Jid;

    move-result-object v2
    :try_end_1
    .catch Lorg/jivesoftware/smack/SmackException$NoResponseException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/jivesoftware/smack/XMPPException$XMPPErrorException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/jivesoftware/smack/SmackException$NotConnectedException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v1, v2

    .line 240
    goto :goto_3

    .line 237
    :catch_4
    move-exception v2

    goto :goto_2

    :catch_5
    move-exception v2

    goto :goto_2

    :catch_6
    move-exception v2

    goto :goto_2

    :catch_7
    move-exception v2

    .line 238
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    invoke-static {}, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;->access$200()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not determine provisioning server. Ignoring friend request from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 241
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 242
    return-object v2

    .line 247
    :cond_1
    :try_start_2
    iget-object v3, p0, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager$5;->this$0:Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;

    invoke-interface {p1}, Lorg/jxmpp/jid/Jid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;->isFriend(Lorg/jxmpp/jid/Jid;Lorg/jxmpp/jid/BareJid;)Z

    move-result v0
    :try_end_2
    .catch Lorg/jivesoftware/smack/SmackException$NoResponseException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Lorg/jivesoftware/smack/XMPPException$XMPPErrorException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Lorg/jivesoftware/smack/SmackException$NotConnectedException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_8

    .line 252
    .local v0, "isFriend":Z
    nop

    .line 254
    if-eqz v0, :cond_2

    .line 255
    sget-object v2, Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;->Approve:Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;

    return-object v2

    .line 258
    :cond_2
    sget-object v2, Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;->Deny:Lorg/jivesoftware/smack/roster/SubscribeListener$SubscribeAnswer;

    return-object v2

    .line 249
    .end local v0    # "isFriend":Z
    :catch_8
    move-exception v3

    goto :goto_4

    :catch_9
    move-exception v3

    goto :goto_4

    :catch_a
    move-exception v3

    goto :goto_4

    :catch_b
    move-exception v3

    .line 250
    .local v3, "e":Ljava/lang/Exception;
    :goto_4
    invoke-static {}, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;->access$200()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is a friend."

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 251
    return-object v2
.end method
