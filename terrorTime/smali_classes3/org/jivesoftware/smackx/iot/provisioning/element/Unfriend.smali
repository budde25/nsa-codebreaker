.class public Lorg/jivesoftware/smackx/iot/provisioning/element/Unfriend;
.super Ljava/lang/Object;
.source "Unfriend.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/ExtensionElement;


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "UNFRIEND"

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:iot:provisioning"


# instance fields
.field private final jid:Lorg/jxmpp/jid/BareJid;


# direct methods
.method public constructor <init>(Lorg/jxmpp/jid/BareJid;)V
    .locals 0
    .param p1, "jid"    # Lorg/jxmpp/jid/BareJid;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/jivesoftware/smackx/iot/provisioning/element/Unfriend;->jid:Lorg/jxmpp/jid/BareJid;

    .line 33
    return-void
.end method

.method public static from(Lorg/jivesoftware/smack/packet/Message;)Lorg/jivesoftware/smackx/iot/provisioning/element/Unfriend;
    .locals 2
    .param p0, "message"    # Lorg/jivesoftware/smack/packet/Message;

    .line 58
    const-string v0, "UNFRIEND"

    const-string v1, "urn:xmpp:iot:provisioning"

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/iot/provisioning/element/Unfriend;

    return-object v0
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 41
    const-string v0, "UNFRIEND"

    return-object v0
.end method

.method public getJid()Lorg/jxmpp/jid/BareJid;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/provisioning/element/Unfriend;->jid:Lorg/jxmpp/jid/BareJid;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 46
    const-string v0, "urn:xmpp:iot:provisioning"

    return-object v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/iot/provisioning/element/Unfriend;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 3
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 51
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 52
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    iget-object v1, p0, Lorg/jivesoftware/smackx/iot/provisioning/element/Unfriend;->jid:Lorg/jxmpp/jid/BareJid;

    const-string v2, "jid"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 53
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 54
    return-object v0
.end method
