.class public Lorg/jivesoftware/smackx/iot/discovery/element/IoTUnregister;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "IoTUnregister.java"


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "unregister"

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:iot:discovery"


# instance fields
.field private final nodeInfo:Lorg/jivesoftware/smackx/iot/element/NodeInfo;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/iot/element/NodeInfo;)V
    .locals 2
    .param p1, "nodeInfo"    # Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    .line 31
    const-string v0, "unregister"

    const-string v1, "urn:xmpp:iot:discovery"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lorg/jivesoftware/smackx/iot/discovery/element/IoTUnregister;->nodeInfo:Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    .line 33
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/iot/discovery/element/IoTUnregister;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected getIQChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .locals 1
    .param p1, "xml"    # Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    .line 38
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/discovery/element/IoTUnregister;->nodeInfo:Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/iot/element/NodeInfo;->appendTo(Lorg/jivesoftware/smack/util/XmlStringBuilder;)V

    .line 39
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 40
    return-object p1
.end method
