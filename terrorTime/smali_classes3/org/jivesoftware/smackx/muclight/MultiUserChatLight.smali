.class public Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;
.super Ljava/lang/Object;
.source "MultiUserChatLight.java"


# static fields
.field public static final AFFILIATIONS:Ljava/lang/String; = "#affiliations"

.field public static final BLOCKING:Ljava/lang/String; = "#blocking"

.field public static final CONFIGURATION:Ljava/lang/String; = "#configuration"

.field public static final CREATE:Ljava/lang/String; = "#create"

.field public static final DESTROY:Ljava/lang/String; = "#destroy"

.field public static final INFO:Ljava/lang/String; = "#info"

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:muclight:0"


# instance fields
.field private final connection:Lorg/jivesoftware/smack/XMPPConnection;

.field private final fromRoomFilter:Lorg/jivesoftware/smack/filter/StanzaFilter;

.field private final fromRoomGroupChatFilter:Lorg/jivesoftware/smack/filter/StanzaFilter;

.field private messageCollector:Lorg/jivesoftware/smack/StanzaCollector;

.field private final messageListener:Lorg/jivesoftware/smack/StanzaListener;

.field private final messageListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jivesoftware/smack/MessageListener;",
            ">;"
        }
    .end annotation
.end field

.field private final room:Lorg/jxmpp/jid/EntityJid;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;Lorg/jxmpp/jid/EntityJid;)V
    .locals 4
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;
    .param p2, "room"    # Lorg/jxmpp/jid/EntityJid;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->messageListeners:Ljava/util/Set;

    .line 92
    iput-object p1, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 93
    iput-object p2, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->room:Lorg/jxmpp/jid/EntityJid;

    .line 95
    invoke-static {p2}, Lorg/jivesoftware/smack/filter/FromMatchesFilter;->create(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smack/filter/FromMatchesFilter;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->fromRoomFilter:Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 96
    new-instance v0, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/jivesoftware/smack/filter/StanzaFilter;

    iget-object v2, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->fromRoomFilter:Lorg/jivesoftware/smack/filter/StanzaFilter;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lorg/jivesoftware/smack/filter/MessageTypeFilter;->GROUPCHAT:Lorg/jivesoftware/smack/filter/StanzaFilter;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->fromRoomGroupChatFilter:Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 98
    new-instance v0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight$1;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight$1;-><init>(Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->messageListener:Lorg/jivesoftware/smack/StanzaListener;

    .line 108
    iget-object v0, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->messageListener:Lorg/jivesoftware/smack/StanzaListener;

    iget-object v1, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->fromRoomGroupChatFilter:Lorg/jivesoftware/smack/filter/StanzaFilter;

    invoke-interface {p1, v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addSyncStanzaListener(Lorg/jivesoftware/smack/StanzaListener;Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 109
    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;

    .line 59
    iget-object v0, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->messageListeners:Ljava/util/Set;

    return-object v0
.end method

.method private removeConnectionCallbacks()V
    .locals 2

    .line 244
    iget-object v0, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v1, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->messageListener:Lorg/jivesoftware/smack/StanzaListener;

    invoke-interface {v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->removeSyncStanzaListener(Lorg/jivesoftware/smack/StanzaListener;)Z

    .line 245
    iget-object v0, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->messageCollector:Lorg/jivesoftware/smack/StanzaCollector;

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0}, Lorg/jivesoftware/smack/StanzaCollector;->cancel()V

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->messageCollector:Lorg/jivesoftware/smack/StanzaCollector;

    .line 249
    :cond_0
    return-void
.end method


# virtual methods
.method public addMessageListener(Lorg/jivesoftware/smack/MessageListener;)Z
    .locals 1
    .param p1, "listener"    # Lorg/jivesoftware/smack/MessageListener;

    .line 222
    iget-object v0, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->messageListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public changeAffiliations(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lorg/jxmpp/jid/Jid;",
            "Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;",
            ">;)V"
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

    .line 423
    .local p1, "affiliations":Ljava/util/HashMap;, "Ljava/util/HashMap<Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;>;"
    new-instance v0, Lorg/jivesoftware/smackx/muclight/element/MUCLightChangeAffiliationsIQ;

    iget-object v1, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->room:Lorg/jxmpp/jid/EntityJid;

    invoke-direct {v0, v1, p1}, Lorg/jivesoftware/smackx/muclight/element/MUCLightChangeAffiliationsIQ;-><init>(Lorg/jxmpp/jid/Jid;Ljava/util/HashMap;)V

    .line 424
    .local v0, "changeAffiliationsIQ":Lorg/jivesoftware/smackx/muclight/element/MUCLightChangeAffiliationsIQ;
    iget-object v1, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    .line 425
    return-void
.end method

.method public changeRoomName(Ljava/lang/String;)V
    .locals 3
    .param p1, "roomName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 471
    new-instance v0, Lorg/jivesoftware/smackx/muclight/element/MUCLightSetConfigsIQ;

    iget-object v1, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->room:Lorg/jxmpp/jid/EntityJid;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lorg/jivesoftware/smackx/muclight/element/MUCLightSetConfigsIQ;-><init>(Lorg/jxmpp/jid/Jid;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 472
    .local v0, "mucLightSetConfigIQ":Lorg/jivesoftware/smackx/muclight/element/MUCLightSetConfigsIQ;
    iget-object v1, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    .line 473
    return-void
.end method

.method public changeSubject(Ljava/lang/String;)V
    .locals 3
    .param p1, "subject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 456
    new-instance v0, Lorg/jivesoftware/smackx/muclight/element/MUCLightSetConfigsIQ;

    iget-object v1, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->room:Lorg/jxmpp/jid/EntityJid;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1, v2}, Lorg/jivesoftware/smackx/muclight/element/MUCLightSetConfigsIQ;-><init>(Lorg/jxmpp/jid/Jid;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 457
    .local v0, "mucLightSetConfigIQ":Lorg/jivesoftware/smackx/muclight/element/MUCLightSetConfigsIQ;
    iget-object v1, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    .line 458
    return-void
.end method

.method public create(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/List;)V
    .locals 3
    .param p1, "roomName"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lorg/jxmpp/jid/Jid;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 267
    .local p3, "customConfigs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "occupants":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/jid/Jid;>;"
    new-instance v0, Lorg/jivesoftware/smackx/muclight/element/MUCLightCreateIQ;

    iget-object v1, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->room:Lorg/jxmpp/jid/EntityJid;

    invoke-direct {v0, v1, p1, p4}, Lorg/jivesoftware/smackx/muclight/element/MUCLightCreateIQ;-><init>(Lorg/jxmpp/jid/EntityJid;Ljava/lang/String;Ljava/util/List;)V

    .line 269
    .local v0, "createMUCLightIQ":Lorg/jivesoftware/smackx/muclight/element/MUCLightCreateIQ;
    iget-object v1, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v2, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->fromRoomGroupChatFilter:Lorg/jivesoftware/smack/filter/StanzaFilter;

    invoke-interface {v1, v2}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollector(Lorg/jivesoftware/smack/filter/StanzaFilter;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    iput-object v1, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->messageCollector:Lorg/jivesoftware/smack/StanzaCollector;

    .line 272
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;
    :try_end_0
    .catch Lorg/jivesoftware/smack/SmackException$NotConnectedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/jivesoftware/smack/SmackException$NoResponseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/jivesoftware/smack/XMPPException$XMPPErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    nop

    .line 277
    return-void

    .line 273
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

    .line 274
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    invoke-direct {p0}, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->removeConnectionCallbacks()V

    .line 275
    throw v1
.end method

.method public create(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "roomName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jxmpp/jid/Jid;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 287
    .local p2, "occupants":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/jid/Jid;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->create(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/List;)V

    .line 288
    return-void
.end method

.method public createMessage()Lorg/jivesoftware/smack/packet/Message;
    .locals 3

    .line 162
    new-instance v0, Lorg/jivesoftware/smack/packet/Message;

    iget-object v1, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->room:Lorg/jxmpp/jid/EntityJid;

    sget-object v2, Lorg/jivesoftware/smack/packet/Message$Type;->groupchat:Lorg/jivesoftware/smack/packet/Message$Type;

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/packet/Message;-><init>(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smack/packet/Message$Type;)V

    return-object v0
.end method

.method public createPrivateChat(Lorg/jxmpp/jid/EntityJid;Lorg/jivesoftware/smack/chat/ChatMessageListener;)Lorg/jivesoftware/smack/chat/Chat;
    .locals 1
    .param p1, "occupant"    # Lorg/jxmpp/jid/EntityJid;
    .param p2, "listener"    # Lorg/jivesoftware/smack/chat/ChatMessageListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 153
    iget-object v0, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-static {v0}, Lorg/jivesoftware/smack/chat/ChatManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smack/chat/ChatManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/jivesoftware/smack/chat/ChatManager;->createChat(Lorg/jxmpp/jid/EntityJid;Lorg/jivesoftware/smack/chat/ChatMessageListener;)Lorg/jivesoftware/smack/chat/Chat;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 436
    new-instance v0, Lorg/jivesoftware/smackx/muclight/element/MUCLightDestroyIQ;

    iget-object v1, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->room:Lorg/jxmpp/jid/EntityJid;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/muclight/element/MUCLightDestroyIQ;-><init>(Lorg/jxmpp/jid/Jid;)V

    .line 437
    .local v0, "mucLightDestroyIQ":Lorg/jivesoftware/smackx/muclight/element/MUCLightDestroyIQ;
    iget-object v1, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/IQ;

    .line 438
    .local v1, "responseIq":Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v2

    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->result:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/packet/IQ$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 440
    .local v2, "roomDestroyed":Z
    if-eqz v2, :cond_0

    .line 441
    invoke-direct {p0}, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->removeConnectionCallbacks()V

    .line 443
    :cond_0
    return-void
.end method

.method public getAffiliations()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lorg/jxmpp/jid/Jid;",
            "Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;",
            ">;"
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

    .line 409
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->getAffiliations(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getAffiliations(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .param p1, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Lorg/jxmpp/jid/Jid;",
            "Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;",
            ">;"
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

    .line 390
    new-instance v0, Lorg/jivesoftware/smackx/muclight/element/MUCLightGetAffiliationsIQ;

    iget-object v1, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->room:Lorg/jxmpp/jid/EntityJid;

    invoke-direct {v0, v1, p1}, Lorg/jivesoftware/smackx/muclight/element/MUCLightGetAffiliationsIQ;-><init>(Lorg/jxmpp/jid/Jid;Ljava/lang/String;)V

    .line 392
    .local v0, "mucLightGetAffiliationsIQ":Lorg/jivesoftware/smackx/muclight/element/MUCLightGetAffiliationsIQ;
    iget-object v1, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/IQ;

    .line 393
    .local v1, "responseIq":Lorg/jivesoftware/smack/packet/IQ;
    move-object v2, v1

    check-cast v2, Lorg/jivesoftware/smackx/muclight/element/MUCLightAffiliationsIQ;

    .line 395
    .local v2, "mucLightAffiliationsIQ":Lorg/jivesoftware/smackx/muclight/element/MUCLightAffiliationsIQ;
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/muclight/element/MUCLightAffiliationsIQ;->getAffiliations()Ljava/util/HashMap;

    move-result-object v3

    return-object v3
.end method

.method public getConfiguration()Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 375
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->getConfiguration(Ljava/lang/String;)Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguration(Ljava/lang/String;)Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;
    .locals 4
    .param p1, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 358
    new-instance v0, Lorg/jivesoftware/smackx/muclight/element/MUCLightGetConfigsIQ;

    iget-object v1, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->room:Lorg/jxmpp/jid/EntityJid;

    invoke-direct {v0, v1, p1}, Lorg/jivesoftware/smackx/muclight/element/MUCLightGetConfigsIQ;-><init>(Lorg/jxmpp/jid/Jid;Ljava/lang/String;)V

    .line 359
    .local v0, "mucLightGetConfigsIQ":Lorg/jivesoftware/smackx/muclight/element/MUCLightGetConfigsIQ;
    iget-object v1, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/IQ;

    .line 360
    .local v1, "responseIq":Lorg/jivesoftware/smack/packet/IQ;
    move-object v2, v1

    check-cast v2, Lorg/jivesoftware/smackx/muclight/element/MUCLightConfigurationIQ;

    .line 361
    .local v2, "mucLightConfigurationIQ":Lorg/jivesoftware/smackx/muclight/element/MUCLightConfigurationIQ;
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/muclight/element/MUCLightConfigurationIQ;->getConfiguration()Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;

    move-result-object v3

    return-object v3
.end method

.method public getFullInfo()Lorg/jivesoftware/smackx/muclight/MUCLightRoomInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 343
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->getFullInfo(Ljava/lang/String;)Lorg/jivesoftware/smackx/muclight/MUCLightRoomInfo;

    move-result-object v0

    return-object v0
.end method

.method public getFullInfo(Ljava/lang/String;)Lorg/jivesoftware/smackx/muclight/MUCLightRoomInfo;
    .locals 8
    .param p1, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 323
    new-instance v0, Lorg/jivesoftware/smackx/muclight/element/MUCLightGetInfoIQ;

    iget-object v1, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->room:Lorg/jxmpp/jid/EntityJid;

    invoke-direct {v0, v1, p1}, Lorg/jivesoftware/smackx/muclight/element/MUCLightGetInfoIQ;-><init>(Lorg/jxmpp/jid/Jid;Ljava/lang/String;)V

    .line 325
    .local v0, "mucLightGetInfoIQ":Lorg/jivesoftware/smackx/muclight/element/MUCLightGetInfoIQ;
    iget-object v1, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/IQ;

    .line 326
    .local v1, "responseIq":Lorg/jivesoftware/smack/packet/IQ;
    move-object v2, v1

    check-cast v2, Lorg/jivesoftware/smackx/muclight/element/MUCLightInfoIQ;

    .line 328
    .local v2, "mucLightInfoResponseIQ":Lorg/jivesoftware/smackx/muclight/element/MUCLightInfoIQ;
    new-instance v3, Lorg/jivesoftware/smackx/muclight/MUCLightRoomInfo;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/muclight/element/MUCLightInfoIQ;->getVersion()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->room:Lorg/jxmpp/jid/EntityJid;

    .line 329
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/muclight/element/MUCLightInfoIQ;->getConfiguration()Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;

    move-result-object v6

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/muclight/element/MUCLightInfoIQ;->getOccupants()Ljava/util/HashMap;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/jivesoftware/smackx/muclight/MUCLightRoomInfo;-><init>(Ljava/lang/String;Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;Ljava/util/HashMap;)V

    .line 328
    return-object v3
.end method

.method public getRoom()Lorg/jxmpp/jid/EntityJid;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->room:Lorg/jxmpp/jid/EntityJid;

    return-object v0
.end method

.method public leave()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;,
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;
        }
    .end annotation

    .line 299
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 300
    .local v0, "affiliations":Ljava/util/HashMap;, "Ljava/util/HashMap<Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;>;"
    iget-object v1, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;->none:Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    new-instance v1, Lorg/jivesoftware/smackx/muclight/element/MUCLightChangeAffiliationsIQ;

    iget-object v2, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->room:Lorg/jxmpp/jid/EntityJid;

    invoke-direct {v1, v2, v0}, Lorg/jivesoftware/smackx/muclight/element/MUCLightChangeAffiliationsIQ;-><init>(Lorg/jxmpp/jid/Jid;Ljava/util/HashMap;)V

    .line 303
    .local v1, "changeAffiliationsIQ":Lorg/jivesoftware/smackx/muclight/element/MUCLightChangeAffiliationsIQ;
    iget-object v2, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v2, v1}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smack/packet/IQ;

    .line 304
    .local v2, "responseIq":Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/IQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v3

    sget-object v4, Lorg/jivesoftware/smack/packet/IQ$Type;->result:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/packet/IQ$Type;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 306
    .local v3, "roomLeft":Z
    if-eqz v3, :cond_0

    .line 307
    invoke-direct {p0}, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->removeConnectionCallbacks()V

    .line 309
    :cond_0
    return-void
.end method

.method public nextMessage()Lorg/jivesoftware/smack/packet/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->messageCollector:Lorg/jivesoftware/smack/StanzaCollector;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/StanzaCollector;->nextResult()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Message;

    return-object v0
.end method

.method public nextMessage(J)Lorg/jivesoftware/smack/packet/Message;
    .locals 1
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->messageCollector:Lorg/jivesoftware/smack/StanzaCollector;

    invoke-virtual {v0, p1, p2}, Lorg/jivesoftware/smack/StanzaCollector;->nextResult(J)Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Message;

    return-object v0
.end method

.method public pollMessage()Lorg/jivesoftware/smack/packet/Message;
    .locals 1

    .line 185
    iget-object v0, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->messageCollector:Lorg/jivesoftware/smack/StanzaCollector;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/StanzaCollector;->pollResult()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Message;

    return-object v0
.end method

.method public removeMessageListener(Lorg/jivesoftware/smack/MessageListener;)Z
    .locals 1
    .param p1, "listener"    # Lorg/jivesoftware/smack/MessageListener;

    .line 236
    iget-object v0, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->messageListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public sendMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->createMessage()Lorg/jivesoftware/smack/packet/Message;

    move-result-object v0

    .line 130
    .local v0, "message":Lorg/jivesoftware/smack/packet/Message;
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/packet/Message;->setBody(Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 132
    return-void
.end method

.method public sendMessage(Lorg/jivesoftware/smack/packet/Message;)V
    .locals 1
    .param p1, "message"    # Lorg/jivesoftware/smack/packet/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->room:Lorg/jxmpp/jid/EntityJid;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/Message;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 175
    sget-object v0, Lorg/jivesoftware/smack/packet/Message$Type;->groupchat:Lorg/jivesoftware/smack/packet/Message$Type;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/Message;->setType(Lorg/jivesoftware/smack/packet/Message$Type;)V

    .line 176
    iget-object v0, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/XMPPConnection;->sendStanza(Lorg/jivesoftware/smack/packet/Stanza;)V

    .line 177
    return-void
.end method

.method public setRoomConfigs(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .param p1, "roomName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
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

    .line 501
    .local p2, "customConfigs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/jivesoftware/smackx/muclight/element/MUCLightSetConfigsIQ;

    iget-object v1, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->room:Lorg/jxmpp/jid/EntityJid;

    invoke-direct {v0, v1, p1, p2}, Lorg/jivesoftware/smackx/muclight/element/MUCLightSetConfigsIQ;-><init>(Lorg/jxmpp/jid/Jid;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 502
    .local v0, "mucLightSetConfigIQ":Lorg/jivesoftware/smackx/muclight/element/MUCLightSetConfigsIQ;
    iget-object v1, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    .line 503
    return-void
.end method

.method public setRoomConfigs(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
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

    .line 486
    .local p1, "customConfigs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->setRoomConfigs(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 487
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MUC Light: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->room:Lorg/jxmpp/jid/EntityJid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jivesoftware/smackx/muclight/MultiUserChatLight;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
