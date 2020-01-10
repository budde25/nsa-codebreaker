.class public Lorg/jivesoftware/smackx/jingle/provider/JingleProvider;
.super Lorg/jivesoftware/smack/provider/IQProvider;
.source "JingleProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/IQProvider<",
        "Lorg/jivesoftware/smackx/jingle/element/Jingle;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lorg/jivesoftware/smackx/jingle/provider/JingleProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smackx/jingle/provider/JingleProvider;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/jivesoftware/smack/provider/IQProvider;-><init>()V

    return-void
.end method

.method public static parseJingleContent(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/jingle/element/JingleContent;
    .locals 13
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 103
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/element/JingleContent;->getBuilder()Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    move-result-object v0

    .line 105
    .local v0, "builder":Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;
    const-string v1, ""

    const-string v2, "creator"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "creatorString":Ljava/lang/String;
    invoke-static {v2}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;

    move-result-object v3

    .line 107
    .local v3, "creator":Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;
    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->setCreator(Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    .line 109
    const-string v4, "disposition"

    invoke-interface {p0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, "disposition":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->setDisposition(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    .line 112
    const-string v5, "name"

    invoke-interface {p0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 113
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->setName(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    .line 115
    const-string v6, "senders"

    invoke-interface {p0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "sendersString":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 117
    invoke-static {v1}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;

    move-result-object v6

    .line 118
    .local v6, "senders":Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;
    invoke-virtual {v0, v6}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->setSenders(Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    .line 122
    .end local v6    # "senders":Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .line 123
    .local v6, "eventType":I
    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    goto/16 :goto_5

    .line 160
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-ne v7, p1, :cond_a

    .line 161
    nop

    .line 166
    .end local v6    # "eventType":I
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->build()Lorg/jivesoftware/smackx/jingle/element/JingleContent;

    move-result-object v6

    return-object v6

    .line 125
    .restart local v6    # "eventType":I
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 126
    .local v7, "tagName":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v8

    .line 127
    .local v8, "namespace":Ljava/lang/String;
    const/4 v9, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, -0x66ca7c04

    const/4 v12, 0x1

    if-eq v10, v11, :cond_5

    const v11, 0x3ec2f729

    if-eq v10, v11, :cond_4

    :cond_3
    goto :goto_1

    :cond_4
    const-string v10, "transport"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v9, v12

    goto :goto_1

    :cond_5
    const-string v10, "description"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_8

    if-eq v9, v12, :cond_6

    .line 155
    sget-object v9, Lorg/jivesoftware/smackx/jingle/provider/JingleProvider;->LOGGER:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown Jingle content element: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_4

    .line 143
    :cond_6
    invoke-static {v8}, Lorg/jivesoftware/smackx/jingle/provider/JingleContentProviderManager;->getJingleContentTransportProvider(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/provider/JingleContentTransportProvider;

    move-result-object v9

    .line 144
    .local v9, "provider":Lorg/jivesoftware/smackx/jingle/provider/JingleContentTransportProvider;, "Lorg/jivesoftware/smackx/jingle/provider/JingleContentTransportProvider<*>;"
    if-nez v9, :cond_7

    .line 145
    sget-object v10, Lorg/jivesoftware/smack/parsing/StandardExtensionElementProvider;->INSTANCE:Lorg/jivesoftware/smack/parsing/StandardExtensionElementProvider;

    invoke-virtual {v10, p0}, Lorg/jivesoftware/smack/parsing/StandardExtensionElementProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Element;

    move-result-object v10

    check-cast v10, Lorg/jivesoftware/smack/packet/StandardExtensionElement;

    .line 146
    .local v10, "standardExtensionElement":Lorg/jivesoftware/smack/packet/StandardExtensionElement;
    new-instance v11, Lorg/jivesoftware/smackx/jingle/element/UnknownJingleContentTransport;

    invoke-direct {v11, v10}, Lorg/jivesoftware/smackx/jingle/element/UnknownJingleContentTransport;-><init>(Lorg/jivesoftware/smack/packet/StandardExtensionElement;)V

    move-object v10, v11

    .line 147
    .local v10, "transport":Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;
    goto :goto_2

    .line 149
    .end local v10    # "transport":Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;
    :cond_7
    invoke-virtual {v9, p0}, Lorg/jivesoftware/smackx/jingle/provider/JingleContentTransportProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Element;

    move-result-object v10

    check-cast v10, Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    .line 151
    .restart local v10    # "transport":Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;
    :goto_2
    invoke-virtual {v0, v10}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->setTransport(Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    .line 152
    goto :goto_4

    .line 130
    .end local v9    # "provider":Lorg/jivesoftware/smackx/jingle/provider/JingleContentTransportProvider;, "Lorg/jivesoftware/smackx/jingle/provider/JingleContentTransportProvider<*>;"
    .end local v10    # "transport":Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;
    :cond_8
    invoke-static {v8}, Lorg/jivesoftware/smackx/jingle/provider/JingleContentProviderManager;->getJingleContentDescriptionProvider(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/provider/JingleContentDescriptionProvider;

    move-result-object v9

    .line 131
    .local v9, "provider":Lorg/jivesoftware/smackx/jingle/provider/JingleContentDescriptionProvider;, "Lorg/jivesoftware/smackx/jingle/provider/JingleContentDescriptionProvider<*>;"
    if-nez v9, :cond_9

    .line 132
    sget-object v10, Lorg/jivesoftware/smack/parsing/StandardExtensionElementProvider;->INSTANCE:Lorg/jivesoftware/smack/parsing/StandardExtensionElementProvider;

    invoke-virtual {v10, p0}, Lorg/jivesoftware/smack/parsing/StandardExtensionElementProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Element;

    move-result-object v10

    check-cast v10, Lorg/jivesoftware/smack/packet/StandardExtensionElement;

    .line 133
    .local v10, "standardExtensionElement":Lorg/jivesoftware/smack/packet/StandardExtensionElement;
    new-instance v11, Lorg/jivesoftware/smackx/jingle/element/UnknownJingleContentDescription;

    invoke-direct {v11, v10}, Lorg/jivesoftware/smackx/jingle/element/UnknownJingleContentDescription;-><init>(Lorg/jivesoftware/smack/packet/StandardExtensionElement;)V

    move-object v10, v11

    .line 134
    .local v10, "description":Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;
    goto :goto_3

    .line 136
    .end local v10    # "description":Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;
    :cond_9
    invoke-virtual {v9, p0}, Lorg/jivesoftware/smackx/jingle/provider/JingleContentDescriptionProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Element;

    move-result-object v10

    check-cast v10, Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;

    .line 138
    .restart local v10    # "description":Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;
    :goto_3
    invoke-virtual {v0, v10}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;->setDescription(Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    .line 139
    nop

    .line 158
    .end local v9    # "provider":Lorg/jivesoftware/smackx/jingle/provider/JingleContentDescriptionProvider;, "Lorg/jivesoftware/smackx/jingle/provider/JingleContentDescriptionProvider<*>;"
    .end local v10    # "description":Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;
    :goto_4
    nop

    .line 164
    .end local v6    # "eventType":I
    .end local v7    # "tagName":Ljava/lang/String;
    .end local v8    # "namespace":Ljava/lang/String;
    :cond_a
    :goto_5
    goto/16 :goto_0
.end method


# virtual methods
.method public bridge synthetic parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smack/packet/Element;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/jingle/provider/JingleProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/jingle/element/Jingle;
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    invoke-static {}, Lorg/jivesoftware/smackx/jingle/element/Jingle;->getBuilder()Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    move-result-object v0

    .line 47
    .local v0, "builder":Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;
    const-string v1, ""

    const-string v2, "action"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "actionString":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 49
    invoke-static {v2}, Lorg/jivesoftware/smackx/jingle/element/JingleAction;->fromString(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/JingleAction;

    move-result-object v3

    .line 50
    .local v3, "action":Lorg/jivesoftware/smackx/jingle/element/JingleAction;
    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->setAction(Lorg/jivesoftware/smackx/jingle/element/JingleAction;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    .line 53
    .end local v3    # "action":Lorg/jivesoftware/smackx/jingle/element/JingleAction;
    :cond_0
    const-string v3, "initiator"

    invoke-static {p1, v3}, Lorg/jivesoftware/smack/util/ParserUtils;->getFullJidAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v3

    .line 54
    .local v3, "initiator":Lorg/jxmpp/jid/FullJid;
    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->setInitiator(Lorg/jxmpp/jid/FullJid;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    .line 56
    const-string v4, "responder"

    invoke-static {p1, v4}, Lorg/jivesoftware/smack/util/ParserUtils;->getFullJidAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v4

    .line 57
    .local v4, "responder":Lorg/jxmpp/jid/FullJid;
    invoke-virtual {v0, v4}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->setResponder(Lorg/jxmpp/jid/FullJid;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    .line 59
    const-string v5, "sid"

    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "sessionId":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->setSessionId(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    .line 64
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 65
    .local v5, "eventType":I
    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    goto/16 :goto_4

    .line 92
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-ne v6, p2, :cond_9

    .line 93
    nop

    .line 98
    .end local v5    # "eventType":I
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->build()Lorg/jivesoftware/smackx/jingle/element/Jingle;

    move-result-object v5

    return-object v5

    .line 67
    .restart local v5    # "eventType":I
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 68
    .local v6, "tagName":Ljava/lang/String;
    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, -0x37ba6dbc

    const/4 v10, 0x1

    if-eq v8, v9, :cond_5

    const v9, 0x38b73479

    if-eq v8, v9, :cond_4

    :cond_3
    goto :goto_1

    :cond_4
    const-string v8, "content"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v7, 0x0

    goto :goto_1

    :cond_5
    const-string v8, "reason"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v7, v10

    :goto_1
    if-eqz v7, :cond_8

    if-eq v7, v10, :cond_6

    .line 87
    sget-object v7, Lorg/jivesoftware/smackx/jingle/provider/JingleProvider;->LOGGER:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown Jingle element: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_3

    .line 74
    :cond_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 75
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 77
    .local v7, "reasonString":Ljava/lang/String;
    const-string v8, "alternative-session"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 78
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 79
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 80
    .local v8, "sid":Ljava/lang/String;
    new-instance v9, Lorg/jivesoftware/smackx/jingle/element/JingleReason$AlternativeSession;

    invoke-direct {v9, v8}, Lorg/jivesoftware/smackx/jingle/element/JingleReason$AlternativeSession;-><init>(Ljava/lang/String;)V

    move-object v8, v9

    .line 81
    .local v8, "reason":Lorg/jivesoftware/smackx/jingle/element/JingleReason;
    goto :goto_2

    .line 82
    .end local v8    # "reason":Lorg/jivesoftware/smackx/jingle/element/JingleReason;
    :cond_7
    new-instance v8, Lorg/jivesoftware/smackx/jingle/element/JingleReason;

    invoke-static {v7}, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->fromString(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/jivesoftware/smackx/jingle/element/JingleReason;-><init>(Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;)V

    .line 84
    .restart local v8    # "reason":Lorg/jivesoftware/smackx/jingle/element/JingleReason;
    :goto_2
    invoke-virtual {v0, v8}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->setReason(Lorg/jivesoftware/smackx/jingle/element/JingleReason;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    .line 85
    goto :goto_3

    .line 70
    .end local v7    # "reasonString":Ljava/lang/String;
    .end local v8    # "reason":Lorg/jivesoftware/smackx/jingle/element/JingleReason;
    :cond_8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    invoke-static {p1, v7}, Lorg/jivesoftware/smackx/jingle/provider/JingleProvider;->parseJingleContent(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/jingle/element/JingleContent;

    move-result-object v7

    .line 71
    .local v7, "content":Lorg/jivesoftware/smackx/jingle/element/JingleContent;
    invoke-virtual {v0, v7}, Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;->addJingleContent(Lorg/jivesoftware/smackx/jingle/element/JingleContent;)Lorg/jivesoftware/smackx/jingle/element/Jingle$Builder;

    .line 72
    nop

    .line 90
    .end local v7    # "content":Lorg/jivesoftware/smackx/jingle/element/JingleContent;
    :goto_3
    nop

    .line 96
    .end local v5    # "eventType":I
    .end local v6    # "tagName":Ljava/lang/String;
    :cond_9
    :goto_4
    goto/16 :goto_0
.end method
