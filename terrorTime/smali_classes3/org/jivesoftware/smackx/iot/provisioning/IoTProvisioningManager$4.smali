.class Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager$4;
.super Lorg/jivesoftware/smack/iqrequest/AbstractIqRequestHandler;
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
.method constructor <init>(Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;
    .param p2, "arg0"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/String;
    .param p4, "arg2"    # Lorg/jivesoftware/smack/packet/IQ$Type;
    .param p5, "arg3"    # Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;

    .line 199
    iput-object p1, p0, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager$4;->this$0:Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/jivesoftware/smack/iqrequest/AbstractIqRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V

    return-void
.end method


# virtual methods
.method public handleIQRequest(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 4
    .param p1, "iqRequest"    # Lorg/jivesoftware/smack/packet/IQ;

    .line 202
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager$4;->this$0:Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;->access$000(Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;Lorg/jivesoftware/smack/packet/Stanza;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    const/4 v0, 0x0

    return-object v0

    .line 206
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smackx/iot/provisioning/element/ClearCache;

    .line 209
    .local v0, "clearCache":Lorg/jivesoftware/smackx/iot/provisioning/element/ClearCache;
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v1

    .line 210
    .local v1, "from":Lorg/jxmpp/jid/Jid;
    iget-object v2, p0, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager$4;->this$0:Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;

    invoke-static {v2}, Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;->access$500(Lorg/jivesoftware/smackx/iot/provisioning/IoTProvisioningManager;)Lorg/jxmpp/util/cache/LruCache;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/jxmpp/util/cache/LruCache;->lookup(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jxmpp/util/cache/LruCache;

    .line 211
    .local v2, "cache":Lorg/jxmpp/util/cache/LruCache;, "Lorg/jxmpp/util/cache/LruCache<Lorg/jxmpp/jid/BareJid;Ljava/lang/Void;>;"
    if-eqz v2, :cond_1

    .line 212
    invoke-virtual {v2}, Lorg/jxmpp/util/cache/LruCache;->clear()V

    .line 215
    :cond_1
    new-instance v3, Lorg/jivesoftware/smackx/iot/provisioning/element/ClearCacheResponse;

    invoke-direct {v3, v0}, Lorg/jivesoftware/smackx/iot/provisioning/element/ClearCacheResponse;-><init>(Lorg/jivesoftware/smackx/iot/provisioning/element/ClearCache;)V

    return-object v3
.end method
