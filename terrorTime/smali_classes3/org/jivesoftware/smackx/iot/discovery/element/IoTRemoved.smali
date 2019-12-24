.class public Lorg/jivesoftware/smackx/iot/discovery/element/IoTRemoved;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "IoTRemoved.java"


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "removed"

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:iot:discovery"


# instance fields
.field private final nodeInfo:Lorg/jivesoftware/smackx/iot/element/NodeInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    sget-object v0, Lorg/jivesoftware/smackx/iot/element/NodeInfo;->EMPTY:Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/iot/discovery/element/IoTRemoved;-><init>(Lorg/jivesoftware/smackx/iot/element/NodeInfo;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/iot/element/NodeInfo;)V
    .locals 2
    .param p1, "nodeInfo"    # Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    .line 35
    const-string v0, "removed"

    const-string v1, "urn:xmpp:iot:discovery"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lorg/jivesoftware/smackx/iot/discovery/element/IoTRemoved;->nodeInfo:Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    .line 37
    return-void
.end method


# virtual methods
.method protected getIQChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .locals 1
    .param p1, "xml"    # Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    .line 53
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/element/IoTRemoved;->nodeInfo:Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/iot/element/NodeInfo;->appendTo(Lorg/jivesoftware/smack/util/XmlStringBuilder;)V

    .line 54
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->setEmptyElement()V

    .line 55
    return-object p1
.end method

.method public getNodeId()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/element/IoTRemoved;->nodeInfo:Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/iot/element/NodeInfo;->getNodeId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeInfo()Lorg/jivesoftware/smackx/iot/element/NodeInfo;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/element/IoTRemoved;->nodeInfo:Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    return-object v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/element/IoTRemoved;->nodeInfo:Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/iot/element/NodeInfo;->getSourceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
