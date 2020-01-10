.class public Lorg/jivesoftware/smackx/sid/element/OriginIdElement;
.super Lorg/jivesoftware/smackx/sid/element/StableAndUniqueIdElement;
.source "OriginIdElement.java"


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "origin-id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/jivesoftware/smackx/sid/element/StableAndUniqueIdElement;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/sid/element/StableAndUniqueIdElement;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public static addOriginId(Lorg/jivesoftware/smack/packet/Message;)Lorg/jivesoftware/smackx/sid/element/OriginIdElement;
    .locals 1
    .param p0, "message"    # Lorg/jivesoftware/smack/packet/Message;

    .line 41
    new-instance v0, Lorg/jivesoftware/smackx/sid/element/OriginIdElement;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/sid/element/OriginIdElement;-><init>()V

    .line 42
    .local v0, "originId":Lorg/jivesoftware/smackx/sid/element/OriginIdElement;
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 45
    return-object v0
.end method

.method public static getOriginId(Lorg/jivesoftware/smack/packet/Message;)Lorg/jivesoftware/smackx/sid/element/OriginIdElement;
    .locals 2
    .param p0, "message"    # Lorg/jivesoftware/smack/packet/Message;

    .line 65
    const-string v0, "origin-id"

    const-string v1, "urn:xmpp:sid:0"

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/sid/element/OriginIdElement;

    return-object v0
.end method

.method public static hasOriginId(Lorg/jivesoftware/smack/packet/Message;)Z
    .locals 1
    .param p0, "message"    # Lorg/jivesoftware/smack/packet/Message;

    .line 55
    invoke-static {p0}, Lorg/jivesoftware/smackx/sid/element/OriginIdElement;->getOriginId(Lorg/jivesoftware/smack/packet/Message;)Lorg/jivesoftware/smackx/sid/element/OriginIdElement;

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
.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 75
    const-string v0, "origin-id"

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 70
    const-string v0, "urn:xmpp:sid:0"

    return-object v0
.end method

.method public toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 80
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 81
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/sid/element/OriginIdElement;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    .line 80
    return-object v0
.end method
