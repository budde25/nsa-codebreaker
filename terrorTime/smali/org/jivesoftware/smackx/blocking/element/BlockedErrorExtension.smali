.class public Lorg/jivesoftware/smackx/blocking/element/BlockedErrorExtension;
.super Ljava/lang/Object;
.source "BlockedErrorExtension.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/ExtensionElement;


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "blocked"

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:blocking:errors"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lorg/jivesoftware/smack/packet/Message;)Lorg/jivesoftware/smackx/blocking/element/BlockedErrorExtension;
    .locals 3
    .param p0, "message"    # Lorg/jivesoftware/smack/packet/Message;

    .line 56
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Message;->getError()Lorg/jivesoftware/smack/packet/StanzaError;

    move-result-object v0

    .line 57
    .local v0, "error":Lorg/jivesoftware/smack/packet/StanzaError;
    if-nez v0, :cond_0

    .line 58
    const/4 v1, 0x0

    return-object v1

    .line 60
    :cond_0
    const-string v1, "blocked"

    const-string v2, "urn:xmpp:blocking:errors"

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/packet/StanzaError;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/blocking/element/BlockedErrorExtension;

    return-object v1
.end method

.method public static isInside(Lorg/jivesoftware/smack/packet/Message;)Z
    .locals 1
    .param p0, "message"    # Lorg/jivesoftware/smack/packet/Message;

    .line 73
    invoke-static {p0}, Lorg/jivesoftware/smackx/blocking/element/BlockedErrorExtension;->from(Lorg/jivesoftware/smack/packet/Message;)Lorg/jivesoftware/smackx/blocking/element/BlockedErrorExtension;

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

    .line 40
    const-string v0, "blocked"

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 45
    const-string v0, "urn:xmpp:blocking:errors"

    return-object v0
.end method

.method public toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 50
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 51
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 52
    return-object v0
.end method
