.class public final Lorg/jivesoftware/smackx/iqversion/VersionManager;
.super Lorg/jivesoftware/smack/Manager;
.source "VersionManager.java"


# static fields
.field private static final INSTANCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smackx/iqversion/VersionManager;",
            ">;"
        }
    .end annotation
.end field

.field private static autoAppendSmackVersion:Z

.field private static defaultVersion:Lorg/jivesoftware/smackx/iqversion/packet/Version;


# instance fields
.field private ourVersion:Lorg/jivesoftware/smackx/iqversion/packet/Version;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/iqversion/VersionManager;->INSTANCES:Ljava/util/Map;

    .line 72
    const/4 v0, 0x1

    sput-boolean v0, Lorg/jivesoftware/smackx/iqversion/VersionManager;->autoAppendSmackVersion:Z

    .line 75
    new-instance v0, Lorg/jivesoftware/smackx/iqversion/VersionManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/iqversion/VersionManager$1;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/XMPPConnectionRegistry;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 81
    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 8
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 84
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Manager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 62
    sget-object v0, Lorg/jivesoftware/smackx/iqversion/VersionManager;->defaultVersion:Lorg/jivesoftware/smackx/iqversion/packet/Version;

    iput-object v0, p0, Lorg/jivesoftware/smackx/iqversion/VersionManager;->ourVersion:Lorg/jivesoftware/smackx/iqversion/packet/Version;

    .line 86
    invoke-static {p1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    .line 87
    .local v0, "sdm":Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    const-string v1, "jabber:iq:version"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    .line 89
    new-instance v1, Lorg/jivesoftware/smackx/iqversion/VersionManager$2;

    sget-object v6, Lorg/jivesoftware/smack/packet/IQ$Type;->get:Lorg/jivesoftware/smack/packet/IQ$Type;

    sget-object v7, Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;->async:Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;

    const-string v4, "query"

    const-string v5, "jabber:iq:version"

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/jivesoftware/smackx/iqversion/VersionManager$2;-><init>(Lorg/jivesoftware/smackx/iqversion/VersionManager;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V

    invoke-interface {p1, v1}, Lorg/jivesoftware/smack/XMPPConnection;->registerIQRequestHandler(Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;)Lorg/jivesoftware/smack/iqrequest/IQRequestHandler;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smackx/iqversion/VersionManager;)Lorg/jivesoftware/smackx/iqversion/packet/Version;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/iqversion/VersionManager;

    .line 57
    iget-object v0, p0, Lorg/jivesoftware/smackx/iqversion/VersionManager;->ourVersion:Lorg/jivesoftware/smackx/iqversion/packet/Version;

    return-object v0
.end method

.method private static generateVersionFrom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/iqversion/packet/Version;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "os"    # Ljava/lang/String;

    .line 154
    sget-boolean v0, Lorg/jivesoftware/smackx/iqversion/VersionManager;->autoAppendSmackVersion:Z

    if-eqz v0, :cond_0

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (Smack "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 157
    :cond_0
    new-instance v0, Lorg/jivesoftware/smackx/iqversion/packet/Version;

    invoke-direct {v0, p0, p1, p2}, Lorg/jivesoftware/smackx/iqversion/packet/Version;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static declared-synchronized getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/iqversion/VersionManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    const-class v0, Lorg/jivesoftware/smackx/iqversion/VersionManager;

    monitor-enter v0

    .line 103
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/iqversion/VersionManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/iqversion/VersionManager;

    .line 105
    .local v1, "versionManager":Lorg/jivesoftware/smackx/iqversion/VersionManager;
    if-nez v1, :cond_0

    .line 106
    new-instance v2, Lorg/jivesoftware/smackx/iqversion/VersionManager;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/iqversion/VersionManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    move-object v1, v2

    .line 107
    sget-object v2, Lorg/jivesoftware/smackx/iqversion/VersionManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_0
    monitor-exit v0

    return-object v1

    .line 102
    .end local v1    # "versionManager":Lorg/jivesoftware/smackx/iqversion/VersionManager;
    .end local p0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setAutoAppendSmackVersion(Z)V
    .locals 0
    .param p0, "autoAppendSmackVersion"    # Z

    .line 114
    sput-boolean p0, Lorg/jivesoftware/smackx/iqversion/VersionManager;->autoAppendSmackVersion:Z

    .line 115
    return-void
.end method

.method public static setDefaultVersion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/jivesoftware/smackx/iqversion/VersionManager;->setDefaultVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static setDefaultVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "os"    # Ljava/lang/String;

    .line 69
    invoke-static {p0, p1, p2}, Lorg/jivesoftware/smackx/iqversion/VersionManager;->generateVersionFrom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/iqversion/packet/Version;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smackx/iqversion/VersionManager;->defaultVersion:Lorg/jivesoftware/smackx/iqversion/packet/Version;

    .line 70
    return-void
.end method


# virtual methods
.method public getVersion(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/iqversion/packet/Version;
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

    .line 147
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/iqversion/VersionManager;->isSupported(Lorg/jxmpp/jid/Jid;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    const/4 v0, 0x0

    return-object v0

    .line 150
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/iqversion/VersionManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    new-instance v1, Lorg/jivesoftware/smackx/iqversion/packet/Version;

    invoke-direct {v1, p1}, Lorg/jivesoftware/smackx/iqversion/packet/Version;-><init>(Lorg/jxmpp/jid/Jid;)V

    invoke-interface {v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/iqversion/packet/Version;

    return-object v0
.end method

.method public isSupported(Lorg/jxmpp/jid/Jid;)Z
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

    .line 131
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/iqversion/VersionManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    const-string v1, "jabber:iq:version"

    invoke-virtual {v0, p1, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->supportsFeature(Lorg/jxmpp/jid/Jid;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setVersion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/iqversion/VersionManager;->setVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public setVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "os"    # Ljava/lang/String;

    .line 122
    invoke-static {p1, p2, p3}, Lorg/jivesoftware/smackx/iqversion/VersionManager;->generateVersionFrom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/iqversion/packet/Version;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/iqversion/VersionManager;->ourVersion:Lorg/jivesoftware/smackx/iqversion/packet/Version;

    .line 123
    return-void
.end method

.method public unsetVersion()V
    .locals 1

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smackx/iqversion/VersionManager;->ourVersion:Lorg/jivesoftware/smackx/iqversion/packet/Version;

    .line 127
    return-void
.end method
