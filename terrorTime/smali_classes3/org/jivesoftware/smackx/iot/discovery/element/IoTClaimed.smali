.class public Lorg/jivesoftware/smackx/iot/discovery/element/IoTClaimed;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "IoTClaimed.java"


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "claimed"

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:iot:discovery"


# instance fields
.field private final jid:Lorg/jxmpp/jid/Jid;

.field private final nodeInfo:Lorg/jivesoftware/smackx/iot/element/NodeInfo;


# direct methods
.method public constructor <init>(Lorg/jxmpp/jid/Jid;)V
    .locals 1
    .param p1, "jid"    # Lorg/jxmpp/jid/Jid;

    .line 35
    sget-object v0, Lorg/jivesoftware/smackx/iot/element/NodeInfo;->EMPTY:Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/iot/discovery/element/IoTClaimed;-><init>(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/iot/element/NodeInfo;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/iot/element/NodeInfo;)V
    .locals 2
    .param p1, "jid"    # Lorg/jxmpp/jid/Jid;
    .param p2, "nodeInfo"    # Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    .line 39
    const-string v0, "claimed"

    const-string v1, "urn:xmpp:iot:discovery"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lorg/jivesoftware/smackx/iot/discovery/element/IoTClaimed;->jid:Lorg/jxmpp/jid/Jid;

    .line 41
    iput-object p2, p0, Lorg/jivesoftware/smackx/iot/discovery/element/IoTClaimed;->nodeInfo:Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    .line 42
    return-void
.end method


# virtual methods
.method protected getIQChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .locals 2
    .param p1, "xml"    # Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    .line 62
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/element/IoTClaimed;->jid:Lorg/jxmpp/jid/Jid;

    const-string v1, "jid"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 63
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/element/IoTClaimed;->nodeInfo:Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/iot/element/NodeInfo;->appendTo(Lorg/jivesoftware/smack/util/XmlStringBuilder;)V

    .line 64
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->setEmptyElement()V

    .line 65
    return-object p1
.end method

.method public getJid()Lorg/jxmpp/jid/Jid;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/element/IoTClaimed;->jid:Lorg/jxmpp/jid/Jid;

    return-object v0
.end method

.method public getNodeId()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/element/IoTClaimed;->nodeInfo:Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/iot/element/NodeInfo;->getNodeId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeInfo()Lorg/jivesoftware/smackx/iot/element/NodeInfo;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/element/IoTClaimed;->nodeInfo:Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    return-object v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/element/IoTClaimed;->nodeInfo:Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/iot/element/NodeInfo;->getSourceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
