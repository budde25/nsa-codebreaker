.class Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager$2;
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

    .line 127
    iput-object p1, p0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager$2;->this$0:Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/jivesoftware/smack/iqrequest/AbstractIqRequestHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/IQ$Type;Lorg/jivesoftware/smack/iqrequest/IQRequestHandler$Mode;)V

    return-void
.end method


# virtual methods
.method public handleIQRequest(Lorg/jivesoftware/smack/packet/IQ;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 4
    .param p1, "iqRequest"    # Lorg/jivesoftware/smack/packet/IQ;

    .line 130
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;

    .line 131
    .local v0, "discoverItems":Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;
    new-instance v1, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;-><init>()V

    .line 132
    .local v1, "response":Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;
    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->result:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 133
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 134
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;->getStanzaId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;->setStanzaId(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;->getNode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;->setNode(Ljava/lang/String;)V

    .line 139
    iget-object v2, p0, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager$2;->this$0:Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;->getNode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;->access$000(Lorg/jivesoftware/smackx/disco/ServiceDiscoveryManager;Ljava/lang/String;)Lorg/jivesoftware/smackx/disco/NodeInformationProvider;

    move-result-object v2

    .line 140
    .local v2, "nodeInformationProvider":Lorg/jivesoftware/smackx/disco/NodeInformationProvider;
    if-eqz v2, :cond_0

    .line 142
    invoke-interface {v2}, Lorg/jivesoftware/smackx/disco/NodeInformationProvider;->getNodeItems()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;->addItems(Ljava/util/Collection;)V

    .line 144
    invoke-interface {v2}, Lorg/jivesoftware/smackx/disco/NodeInformationProvider;->getNodePacketExtensions()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;->addExtensions(Ljava/util/Collection;)V

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;->getNode()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 148
    sget-object v3, Lorg/jivesoftware/smack/packet/IQ$Type;->error:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 149
    sget-object v3, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->item_not_found:Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    invoke-static {v3}, Lorg/jivesoftware/smack/packet/StanzaError;->getBuilder(Lorg/jivesoftware/smack/packet/StanzaError$Condition;)Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;->setError(Lorg/jivesoftware/smack/packet/StanzaError$Builder;)V

    .line 151
    :cond_1
    :goto_0
    return-object v1
.end method
