.class public Lorg/jivesoftware/smackx/push_notifications/element/EnablePushNotificationsIQ;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "EnablePushNotificationsIQ.java"


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "enable"

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:push:0"


# instance fields
.field private final jid:Lorg/jxmpp/jid/Jid;

.field private final node:Ljava/lang/String;

.field private final publishOptions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jxmpp/jid/Jid;Ljava/lang/String;)V
    .locals 1
    .param p1, "jid"    # Lorg/jxmpp/jid/Jid;
    .param p2, "node"    # Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/push_notifications/element/EnablePushNotificationsIQ;-><init>(Lorg/jxmpp/jid/Jid;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/jxmpp/jid/Jid;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .param p1, "jid"    # Lorg/jxmpp/jid/Jid;
    .param p2, "node"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jxmpp/jid/Jid;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 56
    .local p3, "publishOptions":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "enable"

    const-string v1, "urn:xmpp:push:0"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lorg/jivesoftware/smackx/push_notifications/element/EnablePushNotificationsIQ;->jid:Lorg/jxmpp/jid/Jid;

    .line 58
    iput-object p2, p0, Lorg/jivesoftware/smackx/push_notifications/element/EnablePushNotificationsIQ;->node:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lorg/jivesoftware/smackx/push_notifications/element/EnablePushNotificationsIQ;->publishOptions:Ljava/util/HashMap;

    .line 60
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/push_notifications/element/EnablePushNotificationsIQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 61
    return-void
.end method


# virtual methods
.method protected getIQChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .locals 6
    .param p1, "xml"    # Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    .line 96
    iget-object v0, p0, Lorg/jivesoftware/smackx/push_notifications/element/EnablePushNotificationsIQ;->jid:Lorg/jxmpp/jid/Jid;

    const-string v1, "jid"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 97
    iget-object v0, p0, Lorg/jivesoftware/smackx/push_notifications/element/EnablePushNotificationsIQ;->node:Ljava/lang/String;

    const-string v1, "node"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 98
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 100
    iget-object v0, p0, Lorg/jivesoftware/smackx/push_notifications/element/EnablePushNotificationsIQ;->publishOptions:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 101
    new-instance v0, Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    sget-object v1, Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;->submit:Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;-><init>(Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;)V

    .line 103
    .local v0, "dataForm":Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    new-instance v1, Lorg/jivesoftware/smackx/xdata/FormField;

    const-string v2, "FORM_TYPE"

    invoke-direct {v1, v2}, Lorg/jivesoftware/smackx/xdata/FormField;-><init>(Ljava/lang/String;)V

    .line 104
    .local v1, "formTypeField":Lorg/jivesoftware/smackx/xdata/FormField;
    const-string v2, "http://jabber.org/protocol/pubsub#publish-options"

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/xdata/FormField;->addValue(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->addField(Lorg/jivesoftware/smackx/xdata/FormField;)V

    .line 107
    iget-object v2, p0, Lorg/jivesoftware/smackx/push_notifications/element/EnablePushNotificationsIQ;->publishOptions:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 108
    .local v2, "publishOptionsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 110
    .local v3, "pairVariableValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Lorg/jivesoftware/smackx/xdata/FormField;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/jivesoftware/smackx/xdata/FormField;-><init>(Ljava/lang/String;)V

    .line 111
    .local v4, "field":Lorg/jivesoftware/smackx/xdata/FormField;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smackx/xdata/FormField;->addValue(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {v0, v4}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->addField(Lorg/jivesoftware/smackx/xdata/FormField;)V

    .line 113
    .end local v3    # "pairVariableValue":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "field":Lorg/jivesoftware/smackx/xdata/FormField;
    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->element(Lorg/jivesoftware/smack/packet/Element;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 118
    .end local v0    # "dataForm":Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    .end local v1    # "formTypeField":Lorg/jivesoftware/smackx/xdata/FormField;
    .end local v2    # "publishOptionsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_1
    return-object p1
.end method

.method public getJid()Lorg/jxmpp/jid/Jid;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/jivesoftware/smackx/push_notifications/element/EnablePushNotificationsIQ;->jid:Lorg/jxmpp/jid/Jid;

    return-object v0
.end method

.method public getNode()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/jivesoftware/smackx/push_notifications/element/EnablePushNotificationsIQ;->node:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishOptions()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lorg/jivesoftware/smackx/push_notifications/element/EnablePushNotificationsIQ;->publishOptions:Ljava/util/HashMap;

    return-object v0
.end method
