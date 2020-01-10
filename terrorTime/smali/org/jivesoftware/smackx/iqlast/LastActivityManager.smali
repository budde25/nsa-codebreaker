.class public final Lorg/jivesoftware/smackx/iqlast/LastActivityManager;
.super Lorg/jivesoftware/smack/Manager;
.source "LastActivityManager.java"


# static fields
.field private static enabledPerDefault:Z

.field private static final instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smackx/iqlast/LastActivityManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private enabled:Z

.field private volatile lastMessageSent:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 92
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/iqlast/LastActivityManager;->instances:Ljava/util/Map;

    .line 96
    const/4 v0, 0x1

    sput-boolean v0, Lorg/jivesoftware/smackx/iqlast/LastActivityManager;->enabledPerDefault:Z

    .line 109
    new-instance v0, Lorg/jivesoftware/smackx/iqlast/LastActivityManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/iqlast/LastActivityManager$1;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/XMPPConnectionRegistry;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 115
    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 8
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 134
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Manager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/iqlast/LastActivityManager;->enabled:Z

    .line 137
    new-instance v0, Lorg/jivesoftware/smackx/iqlast/LastActivityManager$2;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/iqlast/LastActivityManager$2;-><init>(Lorg/jivesoftware/smackx/iqlast/LastActivityManager;)V

    sget-object v1, Lorg/jivesoftware/smack/filter/StanzaTypeFilter;->PRESENCE:Lorg/jivesoftware/smack/filter/StanzaTypeFilter;

    invoke-interface {p1, v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addStanzaSendingListener(Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 156
    new-instance v0, Lorg/jivesoftware/smackx/iqlast/LastActivityManager$3;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/iqlast/LastActivityManager$3;-><init>(Lorg/jivesoftware/smackx/iqlast/LastActivityManager;)V

    sget-object v1, Lorg/jivesoftware/smack/filter/StanzaTypeFilter;->MESSAGE:Lorg/jivesoftware/smack/filter/StanzaTypeFilter;

    invoke-interface {p1, v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addStanzaSendingListener(Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 167
    new-instance v0, Lorg/jivesoftware/smackx/iqlast/LastActivityManager$4;

    sget-object v6, Lorg/jivesoftware/smack/packet/IQ$Type;->get:Lorg/jivesoftware/smack/packet/IQ$Type;

    sget-object v7, Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;->async:Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;

    const-string v4, "query"

    const-string v5, "jabber:iq:last"

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/jivesoftware/smackx/iqlast/LastActivityManager$4;-><init>(Lorg/jivesoftware/smackx/iqlast/LastActivityManager;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V

    invoke-interface {p1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->registerIQRequestHandler(Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;)Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;

    .line 184
    sget-boolean v0, Lorg/jivesoftware/smackx/iqlast/LastActivityManager;->enabledPerDefault:Z

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/iqlast/LastActivityManager;->enable()V

    .line 187
    :cond_0
    invoke-direct {p0}, Lorg/jivesoftware/smackx/iqlast/LastActivityManager;->resetIdleTime()V

    .line 188
    sget-object v0, Lorg/jivesoftware/smackx/iqlast/LastActivityManager;->instances:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smackx/iqlast/LastActivityManager;)V
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smackx/iqlast/LastActivityManager;

    .line 91
    invoke-direct {p0}, Lorg/jivesoftware/smackx/iqlast/LastActivityManager;->resetIdleTime()V

    return-void
.end method

.method static synthetic access$100(Lorg/jivesoftware/smackx/iqlast/LastActivityManager;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/iqlast/LastActivityManager;

    .line 91
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/iqlast/LastActivityManager;->enabled:Z

    return v0
.end method

.method static synthetic access$200(Lorg/jivesoftware/smackx/iqlast/LastActivityManager;)J
    .locals 2
    .param p0, "x0"    # Lorg/jivesoftware/smackx/iqlast/LastActivityManager;

    .line 91
    invoke-direct {p0}, Lorg/jivesoftware/smackx/iqlast/LastActivityManager;->getIdleTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private getIdleTime()J
    .locals 8

    .line 215
    iget-wide v0, p0, Lorg/jivesoftware/smackx/iqlast/LastActivityManager;->lastMessageSent:J

    .line 216
    .local v0, "lms":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 217
    .local v2, "now":J
    sub-long v4, v2, v0

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    return-wide v4
.end method

.method public static declared-synchronized getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/iqlast/LastActivityManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    const-class v0, Lorg/jivesoftware/smackx/iqlast/LastActivityManager;

    monitor-enter v0

    .line 118
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/iqlast/LastActivityManager;->instances:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/iqlast/LastActivityManager;

    .line 119
    .local v1, "lastActivityManager":Lorg/jivesoftware/smackx/iqlast/LastActivityManager;
    if-nez v1, :cond_0

    .line 120
    new-instance v2, Lorg/jivesoftware/smackx/iqlast/LastActivityManager;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/iqlast/LastActivityManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 121
    :cond_0
    monitor-exit v0

    return-object v1

    .line 117
    .end local v1    # "lastActivityManager":Lorg/jivesoftware/smackx/iqlast/LastActivityManager;
    .end local p0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private resetIdleTime()V
    .locals 2

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jivesoftware/smackx/iqlast/LastActivityManager;->lastMessageSent:J

    .line 207
    return-void
.end method

.method public static setEnabledPerDefault(Z)V
    .locals 0
    .param p0, "enabledPerDefault"    # Z

    .line 104
    sput-boolean p0, Lorg/jivesoftware/smackx/iqlast/LastActivityManager;->enabledPerDefault:Z

    .line 105
    return-void
.end method


# virtual methods
.method public declared-synchronized disable()V
    .locals 2

    monitor-enter p0

    .line 197
    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/iqlast/LastActivityManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    const-string v1, "jabber:iq:last"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->removeFeature(Ljava/lang/String;)V

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/iqlast/LastActivityManager;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit p0

    return-void

    .line 196
    .end local p0    # "this":Lorg/jivesoftware/smackx/iqlast/LastActivityManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enable()V
    .locals 2

    monitor-enter p0

    .line 192
    :try_start_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/iqlast/LastActivityManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    const-string v1, "jabber:iq:last"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/iqlast/LastActivityManager;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    monitor-exit p0

    return-void

    .line 191
    .end local p0    # "this":Lorg/jivesoftware/smackx/iqlast/LastActivityManager;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLastActivity(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/iqlast/packet/LastActivity;
    .locals 2
    .param p1, "jid"    # Lorg/jxmpp/jid/Jid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 240
    new-instance v0, Lorg/jivesoftware/smackx/iqlast/packet/LastActivity;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smackx/iqlast/packet/LastActivity;-><init>(Lorg/jxmpp/jid/Jid;)V

    .line 241
    .local v0, "activity":Lorg/jivesoftware/smackx/iqlast/packet/LastActivity;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/iqlast/LastActivityManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/iqlast/packet/LastActivity;

    return-object v1
.end method

.method public isLastActivitySupported(Lorg/jxmpp/jid/Jid;)Z
    .locals 2
    .param p1, "jid"    # Lorg/jxmpp/jid/Jid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 255
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/iqlast/LastActivityManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    const-string v1, "jabber:iq:last"

    invoke-virtual {v0, p1, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->supportsFeature(Lorg/jxmpp/jid/Jid;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
