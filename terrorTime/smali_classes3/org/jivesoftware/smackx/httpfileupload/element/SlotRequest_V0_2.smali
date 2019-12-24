.class public Lorg/jivesoftware/smackx/httpfileupload/element/SlotRequest_V0_2;
.super Lorg/jivesoftware/smackx/httpfileupload/element/SlotRequest;
.source "SlotRequest_V0_2.java"


# static fields
.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:http:upload"


# direct methods
.method public constructor <init>(Lorg/jxmpp/jid/DomainBareJid;Ljava/lang/String;J)V
    .locals 6
    .param p1, "uploadServiceAddress"    # Lorg/jxmpp/jid/DomainBareJid;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "size"    # J

    .line 28
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smackx/httpfileupload/element/SlotRequest_V0_2;-><init>(Lorg/jxmpp/jid/DomainBareJid;Ljava/lang/String;JLjava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/jxmpp/jid/DomainBareJid;Ljava/lang/String;JLjava/lang/String;)V
    .locals 7
    .param p1, "uploadServiceAddress"    # Lorg/jxmpp/jid/DomainBareJid;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "size"    # J
    .param p5, "contentType"    # Ljava/lang/String;

    .line 41
    const-string v6, "urn:xmpp:http:upload"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/jivesoftware/smackx/httpfileupload/element/SlotRequest;-><init>(Lorg/jxmpp/jid/DomainBareJid;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method


# virtual methods
.method protected getIQChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .locals 2
    .param p1, "xml"    # Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    .line 46
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 47
    iget-object v0, p0, Lorg/jivesoftware/smackx/httpfileupload/element/SlotRequest_V0_2;->filename:Ljava/lang/String;

    const-string v1, "filename"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->element(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 48
    iget-wide v0, p0, Lorg/jivesoftware/smackx/httpfileupload/element/SlotRequest_V0_2;->size:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "size"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->element(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 49
    iget-object v0, p0, Lorg/jivesoftware/smackx/httpfileupload/element/SlotRequest_V0_2;->contentType:Ljava/lang/String;

    const-string v1, "content-type"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 50
    return-object p1
.end method
