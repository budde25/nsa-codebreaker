.class public Lorg/jivesoftware/smackx/reference/element/ReferenceElement;
.super Ljava/lang/Object;
.source "ReferenceElement.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/ExtensionElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;
    }
.end annotation


# static fields
.field public static final ATTR_ANCHOR:Ljava/lang/String; = "anchor"

.field public static final ATTR_BEGIN:Ljava/lang/String; = "begin"

.field public static final ATTR_END:Ljava/lang/String; = "end"

.field public static final ATTR_TYPE:Ljava/lang/String; = "type"

.field public static final ATTR_URI:Ljava/lang/String; = "uri"

.field public static final ELEMENT:Ljava/lang/String; = "reference"


# instance fields
.field private final anchor:Ljava/lang/String;

.field private final begin:Ljava/lang/Integer;

.field private final child:Lorg/jivesoftware/smack/packet/ExtensionElement;

.field private final end:Ljava/lang/Integer;

.field private final type:Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;

.field private final uri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;Ljava/lang/String;Ljava/net/URI;)V
    .locals 7
    .param p1, "begin"    # Ljava/lang/Integer;
    .param p2, "end"    # Ljava/lang/Integer;
    .param p3, "type"    # Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;
    .param p4, "anchor"    # Ljava/lang/String;
    .param p5, "uri"    # Ljava/net/URI;

    .line 98
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/jivesoftware/smackx/reference/element/ReferenceElement;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;Ljava/lang/String;Ljava/net/URI;Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;Ljava/lang/String;Ljava/net/URI;Lorg/jivesoftware/smack/packet/ExtensionElement;)V
    .locals 2
    .param p1, "begin"    # Ljava/lang/Integer;
    .param p2, "end"    # Ljava/lang/Integer;
    .param p3, "type"    # Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;
    .param p4, "anchor"    # Ljava/lang/String;
    .param p5, "uri"    # Ljava/net/URI;
    .param p6, "child"    # Lorg/jivesoftware/smack/packet/ExtensionElement;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attribute \'begin\' MUST NOT be smaller than 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_2

    goto :goto_1

    .line 70
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attribute \'end\' MUST NOT be smaller than 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_3
    :goto_1
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_4

    goto :goto_2

    .line 73
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attribute \'begin\' MUST be smaller than attribute \'end\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_5
    :goto_2
    invoke-static {p3}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iput-object p1, p0, Lorg/jivesoftware/smackx/reference/element/ReferenceElement;->begin:Ljava/lang/Integer;

    .line 81
    iput-object p2, p0, Lorg/jivesoftware/smackx/reference/element/ReferenceElement;->end:Ljava/lang/Integer;

    .line 82
    iput-object p3, p0, Lorg/jivesoftware/smackx/reference/element/ReferenceElement;->type:Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;

    .line 83
    iput-object p4, p0, Lorg/jivesoftware/smackx/reference/element/ReferenceElement;->anchor:Ljava/lang/String;

    .line 84
    iput-object p5, p0, Lorg/jivesoftware/smackx/reference/element/ReferenceElement;->uri:Ljava/net/URI;

    .line 85
    iput-object p6, p0, Lorg/jivesoftware/smackx/reference/element/ReferenceElement;->child:Lorg/jivesoftware/smack/packet/ExtensionElement;

    .line 86
    return-void
.end method

.method public static addMention(Lorg/jivesoftware/smack/packet/Stanza;IILorg/jxmpp/jid/BareJid;)V
    .locals 7
    .param p0, "stanza"    # Lorg/jivesoftware/smack/packet/Stanza;
    .param p1, "begin"    # I
    .param p2, "end"    # I
    .param p3, "jid"    # Lorg/jxmpp/jid/BareJid;

    .line 132
    :try_start_0
    new-instance v5, Ljava/net/URI;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xmpp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .local v5, "uri":Ljava/net/URI;
    nop

    .line 136
    new-instance v6, Lorg/jivesoftware/smackx/reference/element/ReferenceElement;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;->mention:Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;

    const/4 v4, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smackx/reference/element/ReferenceElement;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;Ljava/lang/String;Ljava/net/URI;)V

    .line 137
    .local v0, "reference":Lorg/jivesoftware/smackx/reference/element/ReferenceElement;
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/packet/Stanza;->addExtension(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 138
    return-void

    .line 133
    .end local v0    # "reference":Lorg/jivesoftware/smackx/reference/element/ReferenceElement;
    .end local v5    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Cannot create URI from bareJid."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static containsReferences(Lorg/jivesoftware/smack/packet/Stanza;)Z
    .locals 1
    .param p0, "stanza"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 163
    invoke-static {p0}, Lorg/jivesoftware/smackx/reference/element/ReferenceElement;->getReferencesFromStanza(Lorg/jivesoftware/smack/packet/Stanza;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getReferencesFromStanza(Lorg/jivesoftware/smack/packet/Stanza;)Ljava/util/List;
    .locals 5
    .param p0, "stanza"    # Lorg/jivesoftware/smack/packet/Stanza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/packet/Stanza;",
            ")",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/reference/element/ReferenceElement;",
            ">;"
        }
    .end annotation

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v0, "references":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/reference/element/ReferenceElement;>;"
    const-string v1, "reference"

    const-string v2, "urn:xmpp:reference:0"

    invoke-virtual {p0, v1, v2}, Lorg/jivesoftware/smack/packet/Stanza;->getExtensions(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 150
    .local v1, "extensions":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/ExtensionElement;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jivesoftware/smack/packet/ExtensionElement;

    .line 151
    .local v3, "e":Lorg/jivesoftware/smack/packet/ExtensionElement;
    move-object v4, v3

    check-cast v4, Lorg/jivesoftware/smackx/reference/element/ReferenceElement;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    .end local v3    # "e":Lorg/jivesoftware/smack/packet/ExtensionElement;
    goto :goto_0

    .line 153
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getAnchor()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/jivesoftware/smackx/reference/element/ReferenceElement;->anchor:Ljava/lang/String;

    return-object v0
.end method

.method public getBegin()Ljava/lang/Integer;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/jivesoftware/smackx/reference/element/ReferenceElement;->begin:Ljava/lang/Integer;

    return-object v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 173
    const-string v0, "reference"

    return-object v0
.end method

.method public getEnd()Ljava/lang/Integer;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/jivesoftware/smackx/reference/element/ReferenceElement;->end:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 168
    const-string v0, "urn:xmpp:reference:0"

    return-object v0
.end method

.method public getType()Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/jivesoftware/smackx/reference/element/ReferenceElement;->type:Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;

    return-object v0
.end method

.method public getUri()Ljava/net/URI;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/jivesoftware/smackx/reference/element/ReferenceElement;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/reference/element/ReferenceElement;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 4
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 178
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 179
    iget-object v1, p0, Lorg/jivesoftware/smackx/reference/element/ReferenceElement;->begin:Ljava/lang/Integer;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v3, "begin"

    invoke-virtual {v0, v3, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optIntAttribute(Ljava/lang/String;I)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lorg/jivesoftware/smackx/reference/element/ReferenceElement;->end:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_1
    const-string v1, "end"

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optIntAttribute(Ljava/lang/String;I)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smackx/reference/element/ReferenceElement;->type:Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;

    .line 181
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/reference/element/ReferenceElement$Type;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jivesoftware/smackx/reference/element/ReferenceElement;->anchor:Ljava/lang/String;

    .line 182
    const-string v2, "anchor"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lorg/jivesoftware/smackx/reference/element/ReferenceElement;->uri:Ljava/net/URI;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    const-string v3, "uri"

    invoke-virtual {v0, v3, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    .line 185
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    iget-object v1, p0, Lorg/jivesoftware/smackx/reference/element/ReferenceElement;->child:Lorg/jivesoftware/smack/packet/ExtensionElement;

    if-nez v1, :cond_3

    .line 186
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v1

    return-object v1

    .line 188
    :cond_3
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/jivesoftware/smackx/reference/element/ReferenceElement;->child:Lorg/jivesoftware/smack/packet/ExtensionElement;

    .line 189
    invoke-interface {v3, v2}, Lorg/jivesoftware/smack/packet/ExtensionElement;->toXML(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v1

    .line 190
    invoke-virtual {v1, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v1

    .line 188
    return-object v1
.end method
