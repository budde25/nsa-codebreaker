.class public Lorg/jivesoftware/smackx/iot/data/element/IoTDataReadOutAccepted;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "IoTDataReadOutAccepted.java"


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "accepted"

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:iot:sensordata"


# instance fields
.field private final queued:Z

.field private final seqNr:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 2
    .param p1, "seqNr"    # I
    .param p2, "queued"    # Z

    .line 34
    const-string v0, "accepted"

    const-string v1, "urn:xmpp:iot:sensordata"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iput p1, p0, Lorg/jivesoftware/smackx/iot/data/element/IoTDataReadOutAccepted;->seqNr:I

    .line 36
    iput-boolean p2, p0, Lorg/jivesoftware/smackx/iot/data/element/IoTDataReadOutAccepted;->queued:Z

    .line 37
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->result:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/iot/data/element/IoTDataReadOutAccepted;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/iot/data/element/IoTDataRequest;)V
    .locals 2
    .param p1, "dataRequest"    # Lorg/jivesoftware/smackx/iot/data/element/IoTDataRequest;

    .line 41
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/iot/data/element/IoTDataRequest;->getSequenceNr()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/iot/data/element/IoTDataReadOutAccepted;-><init>(IZ)V

    .line 42
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/iot/data/element/IoTDataRequest;->getStanzaId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/iot/data/element/IoTDataReadOutAccepted;->setStanzaId(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/iot/data/element/IoTDataRequest;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/iot/data/element/IoTDataReadOutAccepted;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected getIQChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .locals 2
    .param p1, "xml"    # Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    .line 48
    iget v0, p0, Lorg/jivesoftware/smackx/iot/data/element/IoTDataReadOutAccepted;->seqNr:I

    const-string v1, "seqnr"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->attribute(Ljava/lang/String;I)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 49
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/iot/data/element/IoTDataReadOutAccepted;->queued:Z

    const-string v1, "queued"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optBooleanAttribute(Ljava/lang/String;Z)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 50
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->setEmptyElement()V

    .line 51
    return-object p1
.end method
