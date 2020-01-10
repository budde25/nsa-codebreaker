.class public Lorg/jivesoftware/smackx/bob/element/BoBIQ;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "BoBIQ.java"


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "data"

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:bob"


# instance fields
.field private final bobData:Lorg/jivesoftware/smackx/bob/BoBData;

.field private final bobHash:Lorg/jivesoftware/smackx/bob/BoBHash;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/bob/BoBHash;)V
    .locals 1
    .param p1, "bobHash"    # Lorg/jivesoftware/smackx/bob/BoBHash;

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/bob/element/BoBIQ;-><init>(Lorg/jivesoftware/smackx/bob/BoBHash;Lorg/jivesoftware/smackx/bob/BoBData;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/bob/BoBHash;Lorg/jivesoftware/smackx/bob/BoBData;)V
    .locals 2
    .param p1, "bobHash"    # Lorg/jivesoftware/smackx/bob/BoBHash;
    .param p2, "bobData"    # Lorg/jivesoftware/smackx/bob/BoBData;

    .line 54
    const-string v0, "data"

    const-string v1, "urn:xmpp:bob"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Lorg/jivesoftware/smackx/bob/element/BoBIQ;->bobHash:Lorg/jivesoftware/smackx/bob/BoBHash;

    .line 56
    iput-object p2, p0, Lorg/jivesoftware/smackx/bob/element/BoBIQ;->bobData:Lorg/jivesoftware/smackx/bob/BoBData;

    .line 57
    return-void
.end method


# virtual methods
.method public getBoBData()Lorg/jivesoftware/smackx/bob/BoBData;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/jivesoftware/smackx/bob/element/BoBIQ;->bobData:Lorg/jivesoftware/smackx/bob/BoBData;

    return-object v0
.end method

.method public getBoBHash()Lorg/jivesoftware/smackx/bob/BoBHash;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/jivesoftware/smackx/bob/element/BoBIQ;->bobHash:Lorg/jivesoftware/smackx/bob/BoBHash;

    return-object v0
.end method

.method protected getIQChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .locals 2
    .param p1, "xml"    # Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    .line 88
    iget-object v0, p0, Lorg/jivesoftware/smackx/bob/element/BoBIQ;->bobHash:Lorg/jivesoftware/smackx/bob/BoBHash;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bob/BoBHash;->getCid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cid"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 90
    iget-object v0, p0, Lorg/jivesoftware/smackx/bob/element/BoBIQ;->bobData:Lorg/jivesoftware/smackx/bob/BoBData;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bob/BoBData;->getMaxAge()I

    move-result v0

    const-string v1, "max_age"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optIntAttribute(Ljava/lang/String;I)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 92
    iget-object v0, p0, Lorg/jivesoftware/smackx/bob/element/BoBIQ;->bobData:Lorg/jivesoftware/smackx/bob/BoBData;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bob/BoBData;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 93
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 94
    iget-object v0, p0, Lorg/jivesoftware/smackx/bob/element/BoBIQ;->bobData:Lorg/jivesoftware/smackx/bob/BoBData;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/bob/BoBData;->getContentBase64Encoded()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->escape(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->setEmptyElement()V

    .line 99
    :goto_0
    return-object p1
.end method
