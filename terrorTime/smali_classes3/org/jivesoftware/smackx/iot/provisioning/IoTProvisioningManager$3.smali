.class Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager$3;
.super Ljava/lang/Object;
.source "IoTProvisioningManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/StanzaListener;


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

    .line 152
    iput-object p1, p0, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager$3;->this$0:Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processStanza(Lorg/jivesoftware/smack/packet/Stanza;)V
    .locals 8
    .param p1, "stanza"    # Lorg/jivesoftware/smack/packet/Stanza;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 155
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/packet/Message;

    .line 156
    .local v0, "friendMessage":Lorg/jivesoftware/smack/packet/Message;
    invoke-static {v0}, Lorg/jivesoftware/smackx/iot/provisioning/element/Friend;->from(Lorg/jivesoftware/smack/packet/Message;)Lorg/jivesoftware/smackx/iot/provisioning/element/Friend;

    move-result-object v1

    .line 157
    .local v1, "friend":Lorg/jivesoftware/smackx/iot/provisioning/element/Friend;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/iot/provisioning/element/Friend;->getFriend()Lorg/jxmpp/jid/BareJid;

    move-result-object v2

    .line 159
    .local v2, "friendJid":Lorg/jxmpp/jid/BareJid;
    iget-object v3, p0, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager$3;->this$0:Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;->access$000(Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;Lorg/jivesoftware/smack/packet/Stanza;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    iget-object v3, p0, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager$3;->this$0:Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;

    invoke-static {v3}, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;->access$300(Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v3

    .line 164
    .local v3, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    new-instance v4, Lorg/jivesoftware/smackx/iot/provisioning/element/Friend;

    invoke-interface {v3}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v5

    invoke-interface {v5}, Lorg/jxmpp/jid/EntityFullJid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jivesoftware/smackx/iot/provisioning/element/Friend;-><init>(Lorg/jxmpp/jid/BareJid;)V

    .line 165
    .local v4, "friendNotification":Lorg/jivesoftware/smackx/iot/provisioning/element/Friend;
    new-instance v5, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v5, v2, v4}, Lorg/jivesoftware/smack/packet/Message;-><init>(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 166
    .local v5, "notificationMessage":Lorg/jivesoftware/smack/packet/Message;
    invoke-interface {v3, v5}, Lorg/jivesoftware/smack/XMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 167
    .end local v3    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    .end local v4    # "friendNotification":Lorg/jivesoftware/smackx/iot/provisioning/element/Friend;
    .end local v5    # "notificationMessage":Lorg/jivesoftware/smack/packet/Message;
    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v3

    invoke-interface {v3}, Lorg/jxmpp/jid/Jid;->asBareJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v3

    .line 173
    .local v3, "bareFrom":Lorg/jxmpp/jid/BareJid;
    iget-object v4, p0, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager$3;->this$0:Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;

    invoke-static {v4}, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;->access$400(Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;)Lorg/jxmpp/util/cache/LruCache;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/jxmpp/util/cache/LruCache;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "Ignoring friendship recommendation "

    if-nez v4, :cond_1

    .line 174
    invoke-static {}, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;->access$200()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " because friendship to this JID was not previously denied."

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 177
    return-void

    .line 184
    :cond_1
    invoke-interface {v3, v2}, Lorg/jxmpp/jid/BareJid;->equals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 185
    invoke-static {}, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;->access$200()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " because it does not recommend itself, but "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2e

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 189
    return-void

    .line 193
    :cond_2
    iget-object v4, p0, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager$3;->this$0:Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;

    invoke-virtual {v4, v2}, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;->sendFriendshipRequest(Lorg/jxmpp/jid/BareJid;)V

    .line 195
    .end local v3    # "bareFrom":Lorg/jxmpp/jid/BareJid;
    :goto_0
    return-void
.end method
