.class public final Lorg/jivesoftware/smackx/jingle/element/UnknownJingleContentDescription;
.super Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;
.source "UnknownJingleContentDescription.java"


# instance fields
.field private final standardExtensionElement:Lorg/jivesoftware/smack/packet/StandardExtensionElement;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/packet/StandardExtensionElement;)V
    .locals 1
    .param p1, "standardExtensionElement"    # Lorg/jivesoftware/smack/packet/StandardExtensionElement;

    .line 27
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/StandardExtensionElement;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;-><init>(Ljava/util/List;)V

    .line 28
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/element/UnknownJingleContentDescription;->standardExtensionElement:Lorg/jivesoftware/smack/packet/StandardExtensionElement;

    .line 29
    return-void
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/UnknownJingleContentDescription;->standardExtensionElement:Lorg/jivesoftware/smack/packet/StandardExtensionElement;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/StandardExtensionElement;->getElementName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/UnknownJingleContentDescription;->standardExtensionElement:Lorg/jivesoftware/smack/packet/StandardExtensionElement;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/StandardExtensionElement;->getNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStandardExtensionElement()Lorg/jivesoftware/smack/packet/StandardExtensionElement;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/UnknownJingleContentDescription;->standardExtensionElement:Lorg/jivesoftware/smack/packet/StandardExtensionElement;

    return-object v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/jingle/element/UnknownJingleContentDescription;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 2
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/UnknownJingleContentDescription;->standardExtensionElement:Lorg/jivesoftware/smack/packet/StandardExtensionElement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/StandardExtensionElement;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    return-object v0
.end method
