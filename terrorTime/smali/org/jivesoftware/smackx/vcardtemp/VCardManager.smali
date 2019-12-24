.class public final Lorg/jivesoftware/smackx/vcardtemp/VCardManager;
.super Lorg/jivesoftware/smack/Manager;
.source "VCardManager.java"


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "vCard"

.field private static final INSTANCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jivesoftware/smack/XMPPConnection;",
            "Lorg/jivesoftware/smackx/vcardtemp/VCardManager;",
            ">;"
        }
    .end annotation
.end field

.field public static final NAMESPACE:Ljava/lang/String; = "vcard-temp"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/vcardtemp/VCardManager;->INSTANCES:Ljava/util/Map;

    .line 45
    new-instance v0, Lorg/jivesoftware/smackx/vcardtemp/VCardManager$1;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/vcardtemp/VCardManager$1;-><init>()V

    invoke-static {v0}, Lorg/jivesoftware/smack/XMPPConnectionRegistry;->addConnectionCreationListener(Lorg/jivesoftware/smack/ConnectionCreationListener;)V

    .line 51
    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 2
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 87
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/Manager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 88
    invoke-static {p1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    const-string v1, "vcard-temp"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public static declared-synchronized getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/vcardtemp/VCardManager;
    .locals 3
    .param p0, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    const-class v0, Lorg/jivesoftware/smackx/vcardtemp/VCardManager;

    monitor-enter v0

    .line 61
    :try_start_0
    sget-object v1, Lorg/jivesoftware/smackx/vcardtemp/VCardManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/vcardtemp/VCardManager;

    .line 62
    .local v1, "vcardManager":Lorg/jivesoftware/smackx/vcardtemp/VCardManager;
    if-nez v1, :cond_0

    .line 63
    new-instance v2, Lorg/jivesoftware/smackx/vcardtemp/VCardManager;

    invoke-direct {v2, p0}, Lorg/jivesoftware/smackx/vcardtemp/VCardManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    move-object v1, v2

    .line 64
    sget-object v2, Lorg/jivesoftware/smackx/vcardtemp/VCardManager;->INSTANCES:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_0
    monitor-exit v0

    return-object v1

    .line 60
    .end local v1    # "vcardManager":Lorg/jivesoftware/smackx/vcardtemp/VCardManager;
    .end local p0    # "connection":Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isSupported(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smack/XMPPConnection;)Z
    .locals 1
    .param p0, "jid"    # Lorg/jxmpp/jid/Jid;
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 83
    invoke-static {p1}, Lorg/jivesoftware/smackx/vcardtemp/VCardManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/vcardtemp/VCardManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/jivesoftware/smackx/vcardtemp/VCardManager;->isSupported(Lorg/jxmpp/jid/Jid;)Z

    move-result v0

    return v0
.end method


# virtual methods
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

    .line 154
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/vcardtemp/VCardManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    const-string v1, "vcard-temp"

    invoke-virtual {v0, p1, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->supportsFeature(Lorg/jxmpp/jid/Jid;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public loadVCard()Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/vcardtemp/VCardManager;->loadVCard(Lorg/jxmpp/jid/EntityBareJid;)Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;

    move-result-object v0

    return-object v0
.end method

.method public loadVCard(Lorg/jxmpp/jid/EntityBareJid;)Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;
    .locals 2
    .param p1, "bareJid"    # Lorg/jxmpp/jid/EntityBareJid;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 137
    new-instance v0, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;-><init>()V

    .line 138
    .local v0, "vcardRequest":Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 139
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/vcardtemp/VCardManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;

    .line 140
    .local v1, "result":Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;
    return-object v1
.end method

.method public saveVCard(Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;)V
    .locals 1
    .param p1, "vcard"    # Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 104
    const/4 v0, 0x0

    check-cast v0, Lorg/jxmpp/jid/Jid;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 105
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 108
    invoke-static {}, Lorg/jivesoftware/smack/packet/id/StanzaIdUtil;->newStanzaId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smackx/vcardtemp/packet/VCard;->setStanzaId(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/vcardtemp/VCardManager;->connection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    .line 110
    return-void
.end method
