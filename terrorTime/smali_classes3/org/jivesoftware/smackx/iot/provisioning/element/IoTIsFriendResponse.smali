.class public Lorg/jivesoftware/smackx/iot/provisioning/element/IoTIsFriendResponse;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "IoTIsFriendResponse.java"


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "isFriendResponse"

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:iot:provisioning"


# instance fields
.field private final jid:Lorg/jxmpp/jid/BareJid;

.field private final result:Z


# direct methods
.method public constructor <init>(Lorg/jxmpp/jid/BareJid;Z)V
    .locals 2
    .param p1, "jid"    # Lorg/jxmpp/jid/BareJid;
    .param p2, "result"    # Z

    .line 33
    const-string v0, "isFriendResponse"

    const-string v1, "urn:xmpp:iot:provisioning"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lorg/jivesoftware/smackx/iot/provisioning/element/IoTIsFriendResponse;->jid:Lorg/jxmpp/jid/BareJid;

    .line 35
    iput-boolean p2, p0, Lorg/jivesoftware/smackx/iot/provisioning/element/IoTIsFriendResponse;->result:Z

    .line 36
    return-void
.end method


# virtual methods
.method protected getIQChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .locals 2
    .param p1, "xml"    # Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    .line 48
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/provisioning/element/IoTIsFriendResponse;->jid:Lorg/jxmpp/jid/BareJid;

    const-string v1, "jid"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 49
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/iot/provisioning/element/IoTIsFriendResponse;->result:Z

    const-string v1, "result"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->attribute(Ljava/lang/String;Z)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 50
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->setEmptyElement()V

    .line 51
    return-object p1
.end method

.method public getIsFriendResult()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/iot/provisioning/element/IoTIsFriendResponse;->result:Z

    return v0
.end method

.method public getJid()Lorg/jxmpp/jid/BareJid;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/provisioning/element/IoTIsFriendResponse;->jid:Lorg/jxmpp/jid/BareJid;

    return-object v0
.end method
