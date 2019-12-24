.class public Lorg/jivesoftware/smackx/sid/element/StanzaIdElement;
.super Lorg/jivesoftware/smackx/sid/element/StableAndUniqueIdElement;
.source "StanzaIdElement.java"


# static fields
.field public static final ATTR_BY:Ljava/lang/String; = "by"

.field public static final ELEMENT:Ljava/lang/String; = "stanza-id"


# instance fields
.field private final by:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "by"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Lorg/jivesoftware/smackx/sid/element/StableAndUniqueIdElement;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/jivesoftware/smackx/sid/element/StanzaIdElement;->by:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "by"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/sid/element/StableAndUniqueIdElement;-><init>(Ljava/lang/String;)V

    .line 37
    iput-object p2, p0, Lorg/jivesoftware/smackx/sid/element/StanzaIdElement;->by:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public static getStanzaId(Lorg/jivesoftware/smack/packet/Message;)Lorg/jivesoftware/smackx/sid/element/StanzaIdElement;
    .locals 2
    .param p0, "message"    # Lorg/jivesoftware/smack/packet/Message;

    .line 57
    const-string v0, "stanza-id"

    const-string v1, "urn:xmpp:sid:0"

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/sid/element/StanzaIdElement;

    return-object v0
.end method

.method public static hasStanzaId(Lorg/jivesoftware/smack/packet/Message;)Z
    .locals 1
    .param p0, "message"    # Lorg/jivesoftware/smack/packet/Message;

    .line 47
    invoke-static {p0}, Lorg/jivesoftware/smackx/sid/element/StanzaIdElement;->getStanzaId(Lorg/jivesoftware/smack/packet/Message;)Lorg/jivesoftware/smackx/sid/element/StanzaIdElement;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getBy()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/jivesoftware/smackx/sid/element/StanzaIdElement;->by:Ljava/lang/String;

    return-object v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 71
    const-string v0, "stanza-id"

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 66
    const-string v0, "urn:xmpp:sid:0"

    return-object v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/sid/element/StanzaIdElement;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 3
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 76
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 77
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/sid/element/StanzaIdElement;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    .line 78
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/sid/element/StanzaIdElement;->getBy()Ljava/lang/String;

    move-result-object v1

    const-string v2, "by"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    .line 76
    return-object v0
.end method
