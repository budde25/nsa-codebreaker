.class Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager$2;
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

    .line 126
    iput-object p1, p0, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager$2;->this$0:Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;

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

    .line 129
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager$2;->this$0:Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;->access$000(Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;Lorg/jivesoftware/smack/packet/Stanza;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    return-void

    .line 133
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/packet/Message;

    .line 134
    .local v0, "message":Lorg/jivesoftware/smack/packet/Message;
    invoke-static {v0}, Lorg/jivesoftware/smackx/iot/provisioning/element/Unfriend;->from(Lorg/jivesoftware/smack/packet/Message;)Lorg/jivesoftware/smackx/iot/provisioning/element/Unfriend;

    move-result-object v1

    .line 135
    .local v1, "unfriend":Lorg/jivesoftware/smackx/iot/provisioning/element/Unfriend;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/iot/provisioning/element/Unfriend;->getJid()Lorg/jxmpp/jid/BareJid;

    move-result-object v2

    .line 136
    .local v2, "unfriendJid":Lorg/jxmpp/jid/BareJid;
    iget-object v3, p0, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager$2;->this$0:Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;

    invoke-static {v3}, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;->access$100(Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v3

    .line 137
    .local v3, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    invoke-static {v3}, Lorg/jivesoftware/smack/roster/Roster;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smack/roster/Roster;

    move-result-object v4

    .line 138
    .local v4, "roster":Lorg/jivesoftware/smack/roster/Roster;
    invoke-virtual {v4, v2}, Lorg/jivesoftware/smack/roster/Roster;->isSubscribedToMyPresence(Lorg/jxmpp/jid/Jid;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 139
    invoke-static {}, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;->access$200()Ljava/util/logging/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring <unfriend/> request \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "\' because "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " is already not subscribed to our presence."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 141
    return-void

    .line 143
    :cond_1
    new-instance v5, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v6, Lorg/jivesoftware/smack/packet/Presence$Type;->unsubscribed:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v5, v6}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 144
    .local v5, "unsubscribed":Lorg/jivesoftware/smack/packet/Presence;
    invoke-virtual {v5, v2}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 145
    invoke-interface {v3, v5}, Lorg/jivesoftware/smack/XMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 146
    return-void
.end method
