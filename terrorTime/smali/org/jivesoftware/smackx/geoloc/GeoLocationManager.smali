.class public final Lorg/jivesoftware/smackx/geoloc/GeoLocationManager;
.super Lorg/jivesoftware/smack/Manager;
.source "GeoLocationManager.java"


# static fields
.field private static final INSTANCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smackx/geoloc/GeoLocationManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/geoloc/GeoLocationManager;->INSTANCES:Ljava/util/Map;

    .line 44
    new-instance v0, Lorg/jivesoftware/smackx/geoloc/GeoLocationManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/geoloc/GeoLocationManager$1;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/XMPPConnectionRegistry;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 0
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 53
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Manager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 55
    return-void
.end method

.method public static declared-synchronized getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/geoloc/GeoLocationManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    const-class v0, Lorg/jivesoftware/smackx/geoloc/GeoLocationManager;

    monitor-enter v0

    .line 65
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/geoloc/GeoLocationManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/geoloc/GeoLocationManager;

    .line 66
    .local v1, "geoLocationManager":Lorg/jivesoftware/smackx/geoloc/GeoLocationManager;
    if-nez v1, :cond_0

    .line 67
    new-instance v2, Lorg/jivesoftware/smackx/geoloc/GeoLocationManager;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/geoloc/GeoLocationManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    move-object v1, v2

    .line 68
    sget-object v2, Lorg/jivesoftware/smackx/geoloc/GeoLocationManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_0
    monitor-exit v0

    return-object v1

    .line 64
    .end local v1    # "geoLocationManager":Lorg/jivesoftware/smackx/geoloc/GeoLocationManager;
    .end local p0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getNode()Lorg/jivesoftware/smackx/pubsub/LeafNode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smackx/pubsub/PubSubException$NotALeafNodeException;
        }
    .end annotation

    .line 127
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/geoloc/GeoLocationManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->getInstance(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/pubsub/PubSubManager;

    move-result-object v0

    const-string v1, "http://jabber.org/protocol/geoloc"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/pubsub/PubSubManager;->getOrCreateLeafNode(Ljava/lang/String;)Lorg/jivesoftware/smackx/pubsub/LeafNode;

    move-result-object v0

    return-object v0
.end method

.method public static isGeoLocationMessage(Lorg/jivesoftware/smack/packet/Message;)Z
    .locals 1
    .param p0, "message"    # Lorg/jivesoftware/smack/packet/Message;

    .line 92
    invoke-static {p0}, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;->from(Lorg/jivesoftware/smack/packet/Message;)Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public sendGeoLocationToJid(Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;Lorg/jxmpp/jid/Jid;)V
    .locals 2
    .param p1, "geoLocation"    # Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;
    .param p2, "jid"    # Lorg/jxmpp/jid/Jid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;
        }
    .end annotation

    .line 76
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/geoloc/GeoLocationManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 78
    .local v0, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    new-instance v1, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v1, p2}, Lorg/jivesoftware/smack/packet/Message;-><init>(Lorg/jxmpp/jid/Jid;)V

    .line 79
    .local v1, "geoLocationMessage":Lorg/jivesoftware/smack/packet/Message;
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 81
    invoke-interface {v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 83
    return-void
.end method

.method public sendGeolocation(Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;)V
    .locals 2
    .param p1, "geoLocation"    # Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smackx/pubsub/PubSubException$NotALeafNodeException;
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Lorg/jivesoftware/smackx/geoloc/GeoLocationManager;->getNode()Lorg/jivesoftware/smackx/pubsub/LeafNode;

    move-result-object v0

    new-instance v1, Lorg/jivesoftware/smackx/pubsub/PayloadItem;

    invoke-direct {v1, p1}, Lorg/jivesoftware/smackx/pubsub/PayloadItem;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/pubsub/LeafNode;->publish(Lorg/jivesoftware/smackx/pubsub/Item;)V

    .line 108
    return-void
.end method

.method public stopPublishingGeolocation()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smackx/pubsub/PubSubException$NotALeafNodeException;
        }
    .end annotation

    .line 121
    new-instance v0, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;-><init>()V

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation$Builder;->build()Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;

    move-result-object v0

    .line 122
    .local v0, "emptyGeolocation":Lorg/jivesoftware/smackx/geoloc/packet/GeoLocation;
    invoke-direct {p0}, Lorg/jivesoftware/smackx/geoloc/GeoLocationManager;->getNode()Lorg/jivesoftware/smackx/pubsub/LeafNode;

    move-result-object v1

    new-instance v2, Lorg/jivesoftware/smackx/pubsub/PayloadItem;

    invoke-direct {v2, v0}, Lorg/jivesoftware/smackx/pubsub/PayloadItem;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/pubsub/LeafNode;->publish(Lorg/jivesoftware/smackx/pubsub/Item;)V

    .line 123
    return-void
.end method
