.class public Lorg/jivesoftware/smackx/bob/element/BoBExtension;
.super Lorg/jivesoftware/smackx/xhtmlim/packet/XHTMLExtension;
.source "BoBExtension.java"


# instance fields
.field private final alt:Ljava/lang/String;

.field private final bobHash:Lorg/jivesoftware/smackx/bob/BoBHash;

.field private final paragraph:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/bob/BoBHash;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "bobHash"    # Lorg/jivesoftware/smackx/bob/BoBHash;
    .param p2, "alt"    # Ljava/lang/String;
    .param p3, "paragraph"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Lorg/jivesoftware/smackx/xhtmlim/packet/XHTMLExtension;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/jivesoftware/smackx/bob/element/BoBExtension;->bobHash:Lorg/jivesoftware/smackx/bob/BoBHash;

    .line 48
    iput-object p2, p0, Lorg/jivesoftware/smackx/bob/element/BoBExtension;->alt:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lorg/jivesoftware/smackx/bob/element/BoBExtension;->paragraph:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public static from(Lorg/jivesoftware/smack/packet/Message;)Lorg/jivesoftware/smackx/bob/element/BoBExtension;
    .locals 2
    .param p0, "message"    # Lorg/jivesoftware/smack/packet/Message;

    .line 94
    const-string v0, "html"

    const-string v1, "http://jabber.org/protocol/xhtml-im"

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/bob/element/BoBExtension;

    return-object v0
.end method


# virtual methods
.method public getAlt()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/jivesoftware/smackx/bob/element/BoBExtension;->alt:Ljava/lang/String;

    return-object v0
.end method

.method public getBoBHash()Lorg/jivesoftware/smackx/bob/BoBHash;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/jivesoftware/smackx/bob/element/BoBExtension;->bobHash:Lorg/jivesoftware/smackx/bob/BoBHash;

    return-object v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/bob/element/BoBExtension;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 5
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 72
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 73
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 75
    const-string v1, "body"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->halfOpenElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 76
    const-string v2, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->xmlnsAttribute(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 77
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 79
    const-string v2, "p"

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->openElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 80
    iget-object v3, p0, Lorg/jivesoftware/smackx/bob/element/BoBExtension;->paragraph:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optEscape(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 82
    const-string v3, "img"

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->halfOpenElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 83
    iget-object v3, p0, Lorg/jivesoftware/smackx/bob/element/BoBExtension;->alt:Ljava/lang/String;

    const-string v4, "alt"

    invoke-virtual {v0, v4, v3}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 84
    iget-object v3, p0, Lorg/jivesoftware/smackx/bob/element/BoBExtension;->bobHash:Lorg/jivesoftware/smackx/bob/BoBHash;

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/bob/BoBHash;->toSrc()Ljava/lang/String;

    move-result-object v3

    const-string v4, "src"

    invoke-virtual {v0, v4, v3}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 85
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 87
    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 88
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 89
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 90
    return-object v0
.end method
