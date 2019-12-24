.class Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager$3;
.super Lorg/jivesoftware/smack/iqrequest/AbstractIqRequestHandler;
.source "ServiceDiscoveryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;
    .param p2, "arg0"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/String;
    .param p4, "arg2"    # Lorg/jivesoftware/smack/packet/IQ$Type;
    .param p5, "arg3"    # Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;

    .line 157
    iput-object p1, p0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager$3;->this$0:Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/jivesoftware/smack/iqrequest/AbstractIqRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V

    return-void
.end method


# virtual methods
.method public handleIQRequest(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 4
    .param p1, "iqRequest"    # Lorg/jivesoftware/smack/packet/IQ;

    .line 160
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    .line 162
    .local v0, "discoverInfo":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    new-instance v1, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;-><init>()V

    .line 163
    .local v1, "response":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->result:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 164
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 165
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->getStanzaId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->setStanzaId(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->getNode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->setNode(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->getNode()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 172
    iget-object v2, p0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager$3;->this$0:Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->addDiscoverInfoTo(Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;)V

    goto :goto_0

    .line 176
    :cond_0
    iget-object v2, p0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager$3;->this$0:Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->getNode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->access$000(Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;Ljava/lang/String;)Lorg/jivesoftware/smackx/disco/NodeInformationProvider;

    move-result-object v2

    .line 177
    .local v2, "nodeInformationProvider":Lorg/jivesoftware/smackx/disco/NodeInformationProvider;
    if-eqz v2, :cond_1

    .line 179
    invoke-interface {v2}, Lorg/jivesoftware/smackx/disco/NodeInformationProvider;->getNodeFeatures()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->addFeatures(Ljava/util/Collection;)V

    .line 181
    invoke-interface {v2}, Lorg/jivesoftware/smackx/disco/NodeInformationProvider;->getNodeIdentities()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->addIdentities(Ljava/util/Collection;)V

    .line 183
    invoke-interface {v2}, Lorg/jivesoftware/smackx/disco/NodeInformationProvider;->getNodePacketExtensions()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->addExtensions(Ljava/util/Collection;)V

    goto :goto_0

    .line 186
    :cond_1
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->error:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 187
    sget-object v3, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->item_not_found:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    invoke-static {v3}, Lorg/jivesoftware/smack/packet/StanzaError;->getBuilder(Lorg/jivesoftware/smack/packet/StanzaError$Condition;)Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->setError(Lorg/jivesoftware/smack/packet/StanzaError$Builder;)V

    .line 190
    .end local v2    # "nodeInformationProvider":Lorg/jivesoftware/smackx/disco/NodeInformationProvider;
    :goto_0
    return-object v1
.end method
