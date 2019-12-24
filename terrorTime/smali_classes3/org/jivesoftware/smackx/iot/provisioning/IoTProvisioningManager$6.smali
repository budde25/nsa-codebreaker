.class Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager$6;
.super Lorg/jivesoftware/smack/roster/AbstractPresenceEventListener;
.source "IoTProvisioningManager.java"


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

    .line 263
    iput-object p1, p0, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager$6;->this$0:Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;

    invoke-direct {p0}, Lorg/jivesoftware/smack/roster/AbstractPresenceEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public presenceSubscribed(Lorg/jxmpp/jid/BareJid;Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 2
    .param p1, "address"    # Lorg/jxmpp/jid/BareJid;
    .param p2, "subscribedPresence"    # Lorg/jivesoftware/smack/packet/Presence;

    .line 266
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager$6;->this$0:Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;

    invoke-static {v0}, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;->access$700(Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;)Lorg/jxmpp/util/cache/LruCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jxmpp/util/cache/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager$6;->this$0:Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;

    invoke-static {v0}, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;->access$800(Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/iot/provisioning/BecameFriendListener;

    .line 268
    .local v1, "becameFriendListener":Lorg/jivesoftware/smackx/iot/provisioning/BecameFriendListener;
    invoke-interface {v1, p1, p2}, Lorg/jivesoftware/smackx/iot/provisioning/BecameFriendListener;->becameFriend(Lorg/jxmpp/jid/BareJid;Lorg/jivesoftware/smack/packet/Presence;)V

    .line 269
    .end local v1    # "becameFriendListener":Lorg/jivesoftware/smackx/iot/provisioning/BecameFriendListener;
    goto :goto_0

    .line 270
    :cond_0
    return-void
.end method

.method public presenceUnsubscribed(Lorg/jxmpp/jid/BareJid;Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 2
    .param p1, "address"    # Lorg/jxmpp/jid/BareJid;
    .param p2, "unsubscribedPresence"    # Lorg/jivesoftware/smack/packet/Presence;

    .line 273
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager$6;->this$0:Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;

    invoke-static {v0}, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;->access$700(Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;)Lorg/jxmpp/util/cache/LruCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jxmpp/util/cache/LruCache;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager$6;->this$0:Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;

    invoke-static {v0}, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;->access$400(Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;)Lorg/jxmpp/util/cache/LruCache;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/jxmpp/util/cache/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager$6;->this$0:Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;

    invoke-static {v0}, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;->access$900(Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/iot/provisioning/WasUnfriendedListener;

    .line 277
    .local v1, "wasUnfriendedListener":Lorg/jivesoftware/smackx/iot/provisioning/WasUnfriendedListener;
    invoke-interface {v1, p1, p2}, Lorg/jivesoftware/smackx/iot/provisioning/WasUnfriendedListener;->wasUnfriendedListener(Lorg/jxmpp/jid/BareJid;Lorg/jivesoftware/smack/packet/Presence;)V

    .line 278
    .end local v1    # "wasUnfriendedListener":Lorg/jivesoftware/smackx/iot/provisioning/WasUnfriendedListener;
    goto :goto_0

    .line 279
    :cond_1
    return-void
.end method
