.class public Lorg/jivesoftware/smackx/httpfileupload/element/SlotRequest;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "SlotRequest.java"


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "request"

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:http:upload:0"


# instance fields
.field protected final contentType:Ljava/lang/String;

.field protected final filename:Ljava/lang/String;

.field protected final size:J


# direct methods
.method public constructor <init>(Lorg/jxmpp/jid/DomainBareJid;Ljava/lang/String;J)V
    .locals 6
    .param p1, "uploadServiceAddress"    # Lorg/jxmpp/jid/DomainBareJid;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "size"    # J

    .line 40
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smackx/httpfileupload/element/SlotRequest;-><init>(Lorg/jxmpp/jid/DomainBareJid;Ljava/lang/String;JLjava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/jxmpp/jid/DomainBareJid;Ljava/lang/String;JLjava/lang/String;)V
    .locals 7
    .param p1, "uploadServiceAddress"    # Lorg/jxmpp/jid/DomainBareJid;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "size"    # J
    .param p5, "contentType"    # Ljava/lang/String;

    .line 53
    const-string v6, "urn:xmpp:http:upload:0"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/jivesoftware/smackx/httpfileupload/element/SlotRequest;-><init>(Lorg/jxmpp/jid/DomainBareJid;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method protected constructor <init>(Lorg/jxmpp/jid/DomainBareJid;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uploadServiceAddress"    # Lorg/jxmpp/jid/DomainBareJid;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "size"    # J
    .param p5, "contentType"    # Ljava/lang/String;
    .param p6, "namespace"    # Ljava/lang/String;

    .line 57
    const-string v0, "request"

    invoke-direct {p0, v0, p6}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    .line 63
    iput-object p2, p0, Lorg/jivesoftware/smackx/httpfileupload/element/SlotRequest;->filename:Ljava/lang/String;

    .line 64
    iput-wide p3, p0, Lorg/jivesoftware/smackx/httpfileupload/element/SlotRequest;->size:J

    .line 65
    iput-object p5, p0, Lorg/jivesoftware/smackx/httpfileupload/element/SlotRequest;->contentType:Ljava/lang/String;

    .line 67
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->get:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/httpfileupload/element/SlotRequest;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 68
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/httpfileupload/element/SlotRequest;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 69
    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File fileSize must be greater than zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/jivesoftware/smackx/httpfileupload/element/SlotRequest;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/jivesoftware/smackx/httpfileupload/element/SlotRequest;->filename:Ljava/lang/String;

    return-object v0
.end method

.method protected getIQChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .locals 2
    .param p1, "xml"    # Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    .line 85
    iget-object v0, p0, Lorg/jivesoftware/smackx/httpfileupload/element/SlotRequest;->filename:Ljava/lang/String;

    const-string v1, "filename"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 86
    iget-wide v0, p0, Lorg/jivesoftware/smackx/httpfileupload/element/SlotRequest;->size:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "size"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 87
    iget-object v0, p0, Lorg/jivesoftware/smackx/httpfileupload/element/SlotRequest;->contentType:Ljava/lang/String;

    const-string v1, "content-type"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 88
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->setEmptyElement()V

    .line 89
    return-object p1
.end method

.method public getSize()J
    .locals 2

    .line 76
    iget-wide v0, p0, Lorg/jivesoftware/smackx/httpfileupload/element/SlotRequest;->size:J

    return-wide v0
.end method
