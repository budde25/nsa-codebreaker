.class public Lorg/jivesoftware/smackx/push_notifications/element/DisablePushNotificationsIQ;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "DisablePushNotificationsIQ.java"


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "disable"

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:push:0"


# instance fields
.field private final jid:Lorg/jxmpp/jid/Jid;

.field private final node:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/jxmpp/jid/Jid;)V
    .locals 1
    .param p1, "jid"    # Lorg/jxmpp/jid/Jid;

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/push_notifications/element/DisablePushNotificationsIQ;-><init>(Lorg/jxmpp/jid/Jid;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/jxmpp/jid/Jid;Ljava/lang/String;)V
    .locals 2
    .param p1, "jid"    # Lorg/jxmpp/jid/Jid;
    .param p2, "node"    # Ljava/lang/String;

    .line 47
    const-string v0, "disable"

    const-string v1, "urn:xmpp:push:0"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lorg/jivesoftware/smackx/push_notifications/element/DisablePushNotificationsIQ;->jid:Lorg/jxmpp/jid/Jid;

    .line 49
    iput-object p2, p0, Lorg/jivesoftware/smackx/push_notifications/element/DisablePushNotificationsIQ;->node:Ljava/lang/String;

    .line 50
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/push_notifications/element/DisablePushNotificationsIQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 51
    return-void
.end method


# virtual methods
.method protected getIQChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .locals 2
    .param p1, "xml"    # Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    .line 77
    iget-object v0, p0, Lorg/jivesoftware/smackx/push_notifications/element/DisablePushNotificationsIQ;->jid:Lorg/jxmpp/jid/Jid;

    const-string v1, "jid"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 78
    iget-object v0, p0, Lorg/jivesoftware/smackx/push_notifications/element/DisablePushNotificationsIQ;->node:Ljava/lang/String;

    const-string v1, "node"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 79
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 80
    return-object p1
.end method

.method public getJid()Lorg/jxmpp/jid/Jid;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/jivesoftware/smackx/push_notifications/element/DisablePushNotificationsIQ;->jid:Lorg/jxmpp/jid/Jid;

    return-object v0
.end method

.method public getNode()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/jivesoftware/smackx/push_notifications/element/DisablePushNotificationsIQ;->node:Ljava/lang/String;

    return-object v0
.end method
