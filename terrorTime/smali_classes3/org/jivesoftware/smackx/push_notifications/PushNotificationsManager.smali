.class public final Lorg/jivesoftware/smackx/push_notifications/PushNotificationsManager;
.super Lorg/jivesoftware/smack/Manager;
.source "PushNotificationsManager.java"


# static fields
.field private static final INSTANCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smackx/push_notifications/PushNotificationsManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lorg/jivesoftware/smackx/push_notifications/PushNotificationsManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/push_notifications/PushNotificationsManager$1;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/XMPPConnectionRegistry;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 59
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/push_notifications/PushNotificationsManager;->INSTANCES:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 0
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 79
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Manager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 80
    return-void
.end method

.method private changePushNotificationsStatus(Lorg/jivesoftware/smack/packet/IQ;)Z
    .locals 4
    .param p1, "iq"    # Lorg/jivesoftware/smack/packet/IQ;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
        }
    .end annotation

    .line 167
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/push_notifications/PushNotificationsManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 168
    .local v0, "connection":Lorg/jivesoftware/smack/XMPPConnection;
    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/IQ;

    .line 169
    .local v1, "responseIQ":Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v2

    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->error:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static declared-synchronized getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/push_notifications/PushNotificationsManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    const-class v0, Lorg/jivesoftware/smackx/push_notifications/PushNotificationsManager;

    monitor-enter v0

    .line 68
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/push_notifications/PushNotificationsManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/push_notifications/PushNotificationsManager;

    .line 70
    .local v1, "pushNotificationsManager":Lorg/jivesoftware/smackx/push_notifications/PushNotificationsManager;
    if-nez v1, :cond_0

    .line 71
    new-instance v2, Lorg/jivesoftware/smackx/push_notifications/PushNotificationsManager;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/push_notifications/PushNotificationsManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    move-object v1, v2

    .line 72
    sget-object v2, Lorg/jivesoftware/smackx/push_notifications/PushNotificationsManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_0
    monitor-exit v0

    return-object v1

    .line 67
    .end local v1    # "pushNotificationsManager":Lorg/jivesoftware/smackx/push_notifications/PushNotificationsManager;
    .end local p0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public disable(Lorg/jxmpp/jid/Jid;Ljava/lang/String;)Z
    .locals 2
    .param p1, "pushJid"    # Lorg/jxmpp/jid/Jid;
    .param p2, "node"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 161
    new-instance v0, Lorg/jivesoftware/smackx/push_notifications/element/DisablePushNotificationsIQ;

    invoke-direct {v0, p1, p2}, Lorg/jivesoftware/smackx/push_notifications/element/DisablePushNotificationsIQ;-><init>(Lorg/jxmpp/jid/Jid;Ljava/lang/String;)V

    .line 162
    .local v0, "disablePushNotificationsIQ":Lorg/jivesoftware/smackx/push_notifications/element/DisablePushNotificationsIQ;
    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/push_notifications/PushNotificationsManager;->changePushNotificationsStatus(Lorg/jivesoftware/smack/packet/IQ;)Z

    move-result v1

    return v1
.end method

.method public disableAll(Lorg/jxmpp/jid/Jid;)Z
    .locals 1
    .param p1, "pushJid"    # Lorg/jxmpp/jid/Jid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jivesoftware/smackx/push_notifications/PushNotificationsManager;->disable(Lorg/jxmpp/jid/Jid;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public enable(Lorg/jxmpp/jid/Jid;Ljava/lang/String;)Z
    .locals 1
    .param p1, "pushJid"    # Lorg/jxmpp/jid/Jid;
    .param p2, "node"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/push_notifications/PushNotificationsManager;->enable(Lorg/jxmpp/jid/Jid;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v0

    return v0
.end method

.method public enable(Lorg/jxmpp/jid/Jid;Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 2
    .param p1, "pushJid"    # Lorg/jxmpp/jid/Jid;
    .param p2, "node"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jxmpp/jid/Jid;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 128
    .local p3, "publishOptions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/jivesoftware/smackx/push_notifications/element/EnablePushNotificationsIQ;

    invoke-direct {v0, p1, p2, p3}, Lorg/jivesoftware/smackx/push_notifications/element/EnablePushNotificationsIQ;-><init>(Lorg/jxmpp/jid/Jid;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 130
    .local v0, "enablePushNotificationsIQ":Lorg/jivesoftware/smackx/push_notifications/element/EnablePushNotificationsIQ;
    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/push_notifications/PushNotificationsManager;->changePushNotificationsStatus(Lorg/jivesoftware/smack/packet/IQ;)Z

    move-result v1

    return v1
.end method

.method public isSupported()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/push_notifications/PushNotificationsManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string v3, "urn:xmpp:push:0"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->accountSupportsFeatures([Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
