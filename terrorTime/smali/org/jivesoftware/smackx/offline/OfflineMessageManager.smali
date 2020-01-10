.class public Lorg/jivesoftware/smackx/offline/OfflineMessageManager;
.super Ljava/lang/Object;
.source "OfflineMessageManager.java"


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final PACKET_FILTER:Lorg/jivesoftware/smack/filter/StanzaFilter;

.field private static final namespace:Ljava/lang/String; = "http://jabber.org/protocol/offline"


# instance fields
.field private final connection:Lorg/jivesoftware/smack/XMPPConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 63
    const-class v0, Lorg/jivesoftware/smackx/offline/OfflineMessageManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smackx/offline/OfflineMessageManager;->LOGGER:Ljava/util/logging/Logger;

    .line 69
    new-instance v0, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/jivesoftware/smack/filter/StanzaFilter;

    new-instance v2, Lorg/jivesoftware/smack/filter/StanzaExtensionFilter;

    new-instance v3, Lorg/jivesoftware/smackx/offline/packet/OfflineMessageInfo;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/offline/packet/OfflineMessageInfo;-><init>()V

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/StanzaExtensionFilter;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lorg/jivesoftware/smack/filter/StanzaTypeFilter;->MESSAGE:Lorg/jivesoftware/smack/filter/StanzaTypeFilter;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    sput-object v0, Lorg/jivesoftware/smackx/offline/OfflineMessageManager;->PACKET_FILTER:Lorg/jivesoftware/smack/filter/StanzaFilter;

    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 0
    .param p1, "connection"    # Lorg/jivesoftware/smack/XMPPConnection;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/jivesoftware/smackx/offline/OfflineMessageManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 74
    return-void
.end method


# virtual methods
.method public deleteMessages()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 264
    new-instance v0, Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest;-><init>()V

    .line 265
    .local v0, "request":Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest;
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 266
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest;->setPurge(Z)V

    .line 267
    iget-object v1, p0, Lorg/jivesoftware/smackx/offline/OfflineMessageManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    .line 268
    return-void
.end method

.method public deleteMessages(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
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

    .line 244
    .local p1, "nodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest;-><init>()V

    .line 245
    .local v0, "request":Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest;
    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 246
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 247
    .local v2, "node":Ljava/lang/String;
    new-instance v3, Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest$Item;

    invoke-direct {v3, v2}, Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest$Item;-><init>(Ljava/lang/String;)V

    .line 248
    .local v3, "item":Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest$Item;
    const-string v4, "remove"

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest$Item;->setAction(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest;->addItem(Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest$Item;)V

    .line 250
    .end local v2    # "node":Ljava/lang/String;
    .end local v3    # "item":Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest$Item;
    goto :goto_0

    .line 251
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/offline/OfflineMessageManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    .line 252
    return-void
.end method

.method public getHeaders()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/offline/OfflineMessageHeader;",
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

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v0, "answer":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/offline/OfflineMessageHeader;>;"
    iget-object v1, p0, Lorg/jivesoftware/smackx/offline/OfflineMessageManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-static {v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "http://jabber.org/protocol/offline"

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->discoverItems(Lorg/jxmpp/jid/Jid;Ljava/lang/String;)Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;

    move-result-object v1

    .line 129
    .local v1, "items":Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;

    .line 130
    .local v3, "item":Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;
    new-instance v4, Lorg/jivesoftware/smackx/offline/OfflineMessageHeader;

    invoke-direct {v4, v3}, Lorg/jivesoftware/smackx/offline/OfflineMessageHeader;-><init>(Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    .end local v3    # "item":Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;
    goto :goto_0

    .line 132
    :cond_0
    return-object v0
.end method

.method public getMessageCount()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lorg/jivesoftware/smackx/offline/OfflineMessageManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-static {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "http://jabber.org/protocol/offline"

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->discoverInfo(Lorg/jxmpp/jid/Jid;Ljava/lang/String;)Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    move-result-object v0

    .line 104
    .local v0, "info":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    invoke-static {v0}, Lorg/jivesoftware/smackx/xdata/Form;->getFormFrom(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/xdata/Form;

    move-result-object v1

    .line 105
    .local v1, "extendedInfo":Lorg/jivesoftware/smackx/xdata/Form;
    if-eqz v1, :cond_0

    .line 106
    const-string v2, "number_of_messages"

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/xdata/Form;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/xdata/FormField;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/xdata/FormField;->getFirstValue()Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    return v3

    .line 109
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public getMessages()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/Message;",
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

    .line 204
    new-instance v0, Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest;-><init>()V

    .line 205
    .local v0, "request":Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest;->setFetch(Z)V

    .line 207
    iget-object v1, p0, Lorg/jivesoftware/smackx/offline/OfflineMessageManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v1

    .line 208
    .local v1, "resultCollector":Lorg/jivesoftware/smack/StanzaCollector;
    invoke-static {}, Lorg/jivesoftware/smack/StanzaCollector;->newConfiguration()Lorg/jivesoftware/smack/StanzaCollector$Configuration;

    move-result-object v2

    sget-object v3, Lorg/jivesoftware/smackx/offline/OfflineMessageManager;->PACKET_FILTER:Lorg/jivesoftware/smack/filter/StanzaFilter;

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/StanzaCollector$Configuration;->setStanzaFilter(Lorg/jivesoftware/smack/filter/StanzaFilter;)Lorg/jivesoftware/smack/StanzaCollector$Configuration;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/StanzaCollector$Configuration;->setCollectorToReset(Lorg/jivesoftware/smack/StanzaCollector;)Lorg/jivesoftware/smack/StanzaCollector$Configuration;

    move-result-object v2

    .line 209
    .local v2, "messageCollectorConfiguration":Lorg/jivesoftware/smack/StanzaCollector$Configuration;
    iget-object v3, p0, Lorg/jivesoftware/smackx/offline/OfflineMessageManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v3, v2}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollector(Lorg/jivesoftware/smack/StanzaCollector$Configuration;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v3

    .line 213
    .local v3, "messageCollector":Lorg/jivesoftware/smack/StanzaCollector;
    :try_start_0
    invoke-virtual {v1}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    .line 217
    invoke-virtual {v3}, Lorg/jivesoftware/smack/StanzaCollector;->cancel()V

    .line 218
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v3}, Lorg/jivesoftware/smack/StanzaCollector;->getCollectedCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 220
    .local v4, "messages":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/Message;>;"
    :goto_0
    invoke-virtual {v3}, Lorg/jivesoftware/smack/StanzaCollector;->pollResult()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v5

    check-cast v5, Lorg/jivesoftware/smack/packet/Message;

    move-object v6, v5

    .local v6, "message":Lorg/jivesoftware/smack/packet/Message;
    if-eqz v5, :cond_0

    .line 221
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 227
    .end local v6    # "message":Lorg/jivesoftware/smack/packet/Message;
    :cond_0
    invoke-virtual {v3}, Lorg/jivesoftware/smack/StanzaCollector;->cancel()V

    .line 228
    nop

    .line 229
    return-object v4

    .line 227
    .end local v4    # "messages":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/Message;>;"
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Lorg/jivesoftware/smack/StanzaCollector;->cancel()V

    throw v4
.end method

.method public getMessages(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/Message;",
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

    .line 151
    .local p1, "nodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 152
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/Message;>;"
    new-instance v1, Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest;-><init>()V

    .line 153
    .local v1, "request":Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 154
    .local v3, "node":Ljava/lang/String;
    new-instance v4, Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest$Item;

    invoke-direct {v4, v3}, Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest$Item;-><init>(Ljava/lang/String;)V

    .line 155
    .local v4, "item":Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest$Item;
    const-string v5, "view"

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest$Item;->setAction(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v1, v4}, Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest;->addItem(Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest$Item;)V

    .line 157
    .end local v3    # "node":Ljava/lang/String;
    .end local v4    # "item":Lorg/jivesoftware/smackx/offline/packet/OfflineMessageRequest$Item;
    goto :goto_0

    .line 159
    :cond_0
    new-instance v2, Lorg/jivesoftware/smack/filter/AndFilter;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/jivesoftware/smack/filter/StanzaFilter;

    const/4 v4, 0x0

    sget-object v5, Lorg/jivesoftware/smackx/offline/OfflineMessageManager;->PACKET_FILTER:Lorg/jivesoftware/smack/filter/StanzaFilter;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Lorg/jivesoftware/smackx/offline/OfflineMessageManager$1;

    invoke-direct {v5, p0, p1}, Lorg/jivesoftware/smackx/offline/OfflineMessageManager$1;-><init>(Lorg/jivesoftware/smackx/offline/OfflineMessageManager;Ljava/util/List;)V

    aput-object v5, v3, v4

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>([Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 167
    .local v2, "messageFilter":Lorg/jivesoftware/smack/filter/StanzaFilter;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 168
    .local v3, "pendingNodes":I
    iget-object v4, p0, Lorg/jivesoftware/smackx/offline/OfflineMessageManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v4, v2}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollector(Lorg/jivesoftware/smack/filter/StanzaFilter;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v4

    .line 170
    .local v4, "messageCollector":Lorg/jivesoftware/smack/StanzaCollector;
    :try_start_0
    iget-object v5, p0, Lorg/jivesoftware/smackx/offline/OfflineMessageManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-interface {v5, v1}, Lorg/jivesoftware/smack/XMPPConnection;->createStanzaCollectorAndSend(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/StanzaCollector;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jivesoftware/smack/StanzaCollector;->nextResultOrThrow()Lorg/jivesoftware/smack/packet/Stanza;

    .line 174
    :cond_1
    invoke-virtual {v4}, Lorg/jivesoftware/smack/StanzaCollector;->nextResult()Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v5

    check-cast v5, Lorg/jivesoftware/smack/packet/Message;

    .line 175
    .local v5, "message":Lorg/jivesoftware/smack/packet/Message;
    if-eqz v5, :cond_2

    .line 176
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 178
    :cond_2
    if-nez v5, :cond_3

    if-lez v3, :cond_3

    .line 179
    sget-object v6, Lorg/jivesoftware/smackx/offline/OfflineMessageManager;->LOGGER:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Did not receive all expected offline messages. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " are missing."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :cond_3
    :goto_1
    if-eqz v5, :cond_4

    if-gtz v3, :cond_1

    .line 186
    .end local v5    # "message":Lorg/jivesoftware/smack/packet/Message;
    :cond_4
    invoke-virtual {v4}, Lorg/jivesoftware/smack/StanzaCollector;->cancel()V

    .line 187
    nop

    .line 188
    return-object v0

    .line 186
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Lorg/jivesoftware/smack/StanzaCollector;->cancel()V

    throw v5
.end method

.method public supportsFlexibleRetrieval()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException$NoResponseException;,
            Lorg/jivesoftware/smack/XMPPException$XMPPErrorException;,
            Lorg/jivesoftware/smack/SmackException$NotConnectedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lorg/jivesoftware/smackx/offline/OfflineMessageManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-static {v0}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/XMPPConnection;)Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    move-result-object v0

    const-string v1, "http://jabber.org/protocol/offline"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->serverSupportsFeature(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
