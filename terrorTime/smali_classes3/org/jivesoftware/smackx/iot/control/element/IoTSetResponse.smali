.class public Lorg/jivesoftware/smackx/iot/control/element/IoTSetResponse;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "IoTSetResponse.java"


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "setResponse"

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:iot:control"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    const-string v0, "setResponse"

    const-string v1, "urn:xmpp:iot:control"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/iot/control/element/IoTSetRequest;)V
    .locals 0
    .param p1, "iotSetRequest"    # Lorg/jivesoftware/smackx/iot/control/element/IoTSetRequest;

    .line 31
    invoke-direct {p0}, Lorg/jivesoftware/smackx/iot/control/element/IoTSetResponse;-><init>()V

    .line 32
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/iot/control/element/IoTSetResponse;->initializeAsResultFor(Lorg/jivesoftware/smack/packet/IQ;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected getIQChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .locals 0
    .param p1, "xml"    # Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    .line 37
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->setEmptyElement()V

    .line 38
    return-object p1
.end method
