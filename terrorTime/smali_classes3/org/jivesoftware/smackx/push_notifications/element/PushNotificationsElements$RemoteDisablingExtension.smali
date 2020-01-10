.class public Lorg/jivesoftware/smackx/push_notifications/element/PushNotificationsElements$RemoteDisablingExtension;
.super Ljava/lang/Object;
.source "PushNotificationsElements.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/ExtensionElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/push_notifications/element/PushNotificationsElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteDisablingExtension"
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "pubsub"

.field public static final NAMESPACE:Ljava/lang/String; = "http://jabber.org/protocol/pubsub"


# instance fields
.field private final node:Ljava/lang/String;

.field private final userJid:Lorg/jxmpp/jid/Jid;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jxmpp/jid/Jid;)V
    .locals 0
    .param p1, "node"    # Ljava/lang/String;
    .param p2, "userJid"    # Lorg/jxmpp/jid/Jid;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/jivesoftware/smackx/push_notifications/element/PushNotificationsElements$RemoteDisablingExtension;->node:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lorg/jivesoftware/smackx/push_notifications/element/PushNotificationsElements$RemoteDisablingExtension;->userJid:Lorg/jxmpp/jid/Jid;

    .line 50
    return-void
.end method

.method public static from(Lorg/jivesoftware/smack/packet/Message;)Lorg/jivesoftware/smackx/push_notifications/element/PushNotificationsElements$RemoteDisablingExtension;
    .locals 2
    .param p0, "message"    # Lorg/jivesoftware/smack/packet/Message;

    .line 97
    const-string v0, "pubsub"

    const-string v1, "http://jabber.org/protocol/pubsub"

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/push_notifications/element/PushNotificationsElements$RemoteDisablingExtension;

    return-object v0
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 54
    const-string v0, "pubsub"

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 59
    const-string v0, "http://jabber.org/protocol/pubsub"

    return-object v0
.end method

.method public getNode()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/jivesoftware/smackx/push_notifications/element/PushNotificationsElements$RemoteDisablingExtension;->node:Ljava/lang/String;

    return-object v0
.end method

.method public getUserJid()Lorg/jxmpp/jid/Jid;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/jivesoftware/smackx/push_notifications/element/PushNotificationsElements$RemoteDisablingExtension;->userJid:Lorg/jxmpp/jid/Jid;

    return-object v0
.end method

.method public toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 82
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 84
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    iget-object v1, p0, Lorg/jivesoftware/smackx/push_notifications/element/PushNotificationsElements$RemoteDisablingExtension;->node:Ljava/lang/String;

    const-string v2, "node"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 85
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 87
    const-string v1, "affiliation"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->halfOpenElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 88
    iget-object v2, p0, Lorg/jivesoftware/smackx/push_notifications/element/PushNotificationsElements$RemoteDisablingExtension;->userJid:Lorg/jxmpp/jid/Jid;

    const-string v3, "jid"

    invoke-virtual {v0, v3, v2}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 89
    const-string v2, "none"

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 90
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 92
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 93
    return-object v0
.end method
