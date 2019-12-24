.class public Lorg/jivesoftware/smackx/iot/discovery/element/IoTRemove;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "IoTRemove.java"


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "remove"

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:iot:discovery"


# instance fields
.field private final jid:Lorg/jxmpp/jid/BareJid;

.field private final nodeInfo:Lorg/jivesoftware/smackx/iot/element/NodeInfo;


# direct methods
.method public constructor <init>(Lorg/jxmpp/jid/BareJid;)V
    .locals 1
    .param p1, "jid"    # Lorg/jxmpp/jid/BareJid;

    .line 40
    sget-object v0, Lorg/jivesoftware/smackx/iot/element/NodeInfo;->EMPTY:Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/iot/discovery/element/IoTRemove;-><init>(Lorg/jxmpp/jid/BareJid;Lorg/jivesoftware/smackx/iot/element/NodeInfo;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/jxmpp/jid/BareJid;Lorg/jivesoftware/smackx/iot/element/NodeInfo;)V
    .locals 2
    .param p1, "jid"    # Lorg/jxmpp/jid/BareJid;
    .param p2, "nodeInfo"    # Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    .line 44
    const-string v0, "remove"

    const-string v1, "urn:xmpp:iot:discovery"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lorg/jivesoftware/smackx/iot/discovery/element/IoTRemove;->jid:Lorg/jxmpp/jid/BareJid;

    .line 46
    iput-object p2, p0, Lorg/jivesoftware/smackx/iot/discovery/element/IoTRemove;->nodeInfo:Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    .line 47
    return-void
.end method


# virtual methods
.method protected getIQChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .locals 2
    .param p1, "xml"    # Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    .line 63
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/element/IoTRemove;->jid:Lorg/jxmpp/jid/BareJid;

    const-string v1, "jid"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 64
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/element/IoTRemove;->nodeInfo:Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/iot/element/NodeInfo;->appendTo(Lorg/jivesoftware/smack/util/XmlStringBuilder;)V

    .line 65
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->setEmptyElement()V

    .line 66
    return-object p1
.end method

.method public getJid()Lorg/jxmpp/jid/Jid;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/element/IoTRemove;->jid:Lorg/jxmpp/jid/BareJid;

    return-object v0
.end method

.method public getNodeId()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/element/IoTRemove;->nodeInfo:Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/iot/element/NodeInfo;->getNodeId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/element/IoTRemove;->nodeInfo:Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/iot/element/NodeInfo;->getSourceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
