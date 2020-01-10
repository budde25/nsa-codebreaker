.class public Lorg/jivesoftware/smackx/iot/data/element/IoTDataRequest;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "IoTDataRequest.java"


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "req"

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:iot:sensordata"


# instance fields
.field private final momentary:Z

.field private final seqNr:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 2
    .param p1, "seqNr"    # I
    .param p2, "momentary"    # Z

    .line 34
    const-string v0, "req"

    const-string v1, "urn:xmpp:iot:sensordata"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iput p1, p0, Lorg/jivesoftware/smackx/iot/data/element/IoTDataRequest;->seqNr:I

    .line 36
    iput-boolean p2, p0, Lorg/jivesoftware/smackx/iot/data/element/IoTDataRequest;->momentary:Z

    .line 37
    return-void
.end method


# virtual methods
.method protected getIQChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .locals 2
    .param p1, "xml"    # Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    .line 45
    iget v0, p0, Lorg/jivesoftware/smackx/iot/data/element/IoTDataRequest;->seqNr:I

    const-string v1, "seqnr"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->attribute(Ljava/lang/String;I)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 46
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/iot/data/element/IoTDataRequest;->momentary:Z

    const-string v1, "momentary"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optBooleanAttribute(Ljava/lang/String;Z)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 47
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->setEmptyElement()V

    .line 48
    return-object p1
.end method

.method public getSequenceNr()I
    .locals 1

    .line 40
    iget v0, p0, Lorg/jivesoftware/smackx/iot/data/element/IoTDataRequest;->seqNr:I

    return v0
.end method

.method public isMomentary()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/iot/data/element/IoTDataRequest;->momentary:Z

    return v0
.end method
