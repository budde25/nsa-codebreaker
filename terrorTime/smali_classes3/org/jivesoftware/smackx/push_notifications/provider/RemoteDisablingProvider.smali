.class public Lorg/jivesoftware/smackx/push_notifications/provider/RemoteDisablingProvider;
.super Lorg/jivesoftware/smack/provider/ExtensionElementProvider;
.source "RemoteDisablingProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/ExtensionElementProvider<",
        "Lorg/jivesoftware/smackx/push_notifications/element/PushNotificationsElements$RemoteDisablingExtension;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/jivesoftware/smack/provider/ExtensionElementProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smack/packet/Element;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/push_notifications/provider/RemoteDisablingProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/push_notifications/element/PushNotificationsElements$RemoteDisablingExtension;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/push_notifications/element/PushNotificationsElements$RemoteDisablingExtension;
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    const/4 v0, 0x0

    .line 39
    .local v0, "userJid":Lorg/jxmpp/jid/Jid;
    const-string v1, ""

    const-string v2, "node"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, "node":Ljava/lang/String;
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 43
    .local v3, "eventType":I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 44
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "affiliation"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 45
    const-string v4, "jid"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/jxmpp/jid/impl/JidCreate;->from(Ljava/lang/String;)Lorg/jxmpp/jid/Jid;

    move-result-object v0

    .line 47
    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 48
    .local v4, "affiliation":Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string v5, "none"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 51
    .end local v4    # "affiliation":Ljava/lang/String;
    :cond_0
    goto :goto_2

    .line 49
    .restart local v4    # "affiliation":Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v1, 0x0

    return-object v1

    .line 52
    .end local v4    # "affiliation":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 53
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-ne v4, p2, :cond_3

    .line 54
    nop

    .line 59
    .end local v3    # "eventType":I
    new-instance v1, Lorg/jivesoftware/smackx/push_notifications/element/PushNotificationsElements$RemoteDisablingExtension;

    invoke-direct {v1, v2, v0}, Lorg/jivesoftware/smackx/push_notifications/element/PushNotificationsElements$RemoteDisablingExtension;-><init>(Ljava/lang/String;Lorg/jxmpp/jid/Jid;)V

    return-object v1

    .line 57
    :cond_3
    :goto_2
    goto :goto_0
.end method
