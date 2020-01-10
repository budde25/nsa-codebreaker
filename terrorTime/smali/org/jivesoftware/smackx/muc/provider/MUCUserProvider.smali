.class public Lorg/jivesoftware/smackx/muc/provider/MUCUserProvider;
.super Lorg/jivesoftware/smack/provider/ExtensionElementProvider;
.source "MUCUserProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/ExtensionElementProvider<",
        "Lorg/jivesoftware/smackx/muc/packet/MUCUser;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/jivesoftware/smack/provider/ExtensionElementProvider;-><init>()V

    return-void
.end method

.method private static parseDecline(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/muc/packet/MUCUser$Decline;
    .locals 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "reason":Ljava/lang/String;
    const-string v1, "to"

    invoke-static {p0, v1}, Lorg/jivesoftware/smack/util/ParserUtils;->getBareJidAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v1

    .line 111
    .local v1, "to":Lorg/jxmpp/jid/EntityBareJid;
    const-string v2, "from"

    invoke-static {p0, v2}, Lorg/jivesoftware/smack/util/ParserUtils;->getBareJidAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v2

    .line 114
    .local v2, "from":Lorg/jxmpp/jid/EntityBareJid;
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 115
    .local v3, "eventType":I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 116
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "reason"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 117
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 120
    :cond_0
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 121
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "decline"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 122
    nop

    .line 126
    .end local v3    # "eventType":I
    new-instance v3, Lorg/jivesoftware/smackx/muc/packet/MUCUser$Decline;

    invoke-direct {v3, v0, v2, v1}, Lorg/jivesoftware/smackx/muc/packet/MUCUser$Decline;-><init>(Ljava/lang/String;Lorg/jxmpp/jid/EntityBareJid;Lorg/jxmpp/jid/EntityBareJid;)V

    return-object v3

    .line 125
    :cond_1
    :goto_1
    goto :goto_0
.end method

.method private static parseInvite(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/muc/packet/MUCUser$Invite;
    .locals 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "reason":Ljava/lang/String;
    const-string v1, "to"

    invoke-static {p0, v1}, Lorg/jivesoftware/smack/util/ParserUtils;->getBareJidAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v1

    .line 90
    .local v1, "to":Lorg/jxmpp/jid/EntityBareJid;
    const-string v2, "from"

    invoke-static {p0, v2}, Lorg/jivesoftware/smack/util/ParserUtils;->getEntityJidAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lorg/jxmpp/jid/EntityJid;

    move-result-object v2

    .line 93
    .local v2, "from":Lorg/jxmpp/jid/EntityJid;
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 94
    .local v3, "eventType":I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 95
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "reason"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 96
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 99
    :cond_0
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 100
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "invite"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 101
    nop

    .line 105
    .end local v3    # "eventType":I
    new-instance v3, Lorg/jivesoftware/smackx/muc/packet/MUCUser$Invite;

    invoke-direct {v3, v0, v2, v1}, Lorg/jivesoftware/smackx/muc/packet/MUCUser$Invite;-><init>(Ljava/lang/String;Lorg/jxmpp/jid/EntityJid;Lorg/jxmpp/jid/EntityBareJid;)V

    return-object v3

    .line 104
    :cond_1
    :goto_1
    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smack/packet/Element;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/muc/provider/MUCUserProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/muc/packet/MUCUser;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/muc/packet/MUCUser;
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    new-instance v0, Lorg/jivesoftware/smackx/muc/packet/MUCUser;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/muc/packet/MUCUser;-><init>()V

    .line 52
    .local v0, "mucUser":Lorg/jivesoftware/smackx/muc/packet/MUCUser;
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    goto/16 :goto_4

    .line 77
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-ne v1, p2, :cond_9

    .line 78
    nop

    .line 84
    return-object v0

    .line 54
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x1

    sparse-switch v5, :sswitch_data_0

    :cond_2
    goto :goto_1

    :sswitch_0
    const-string v5, "destroy"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v6

    goto :goto_2

    :sswitch_1
    const-string v5, "decline"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v7

    goto :goto_2

    :sswitch_2
    const-string v5, "password"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :sswitch_3
    const-string v5, "item"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v8

    goto :goto_2

    :sswitch_4
    const-string v5, "status"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :sswitch_5
    const-string v5, "invite"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :goto_1
    move v1, v4

    :goto_2
    if-eqz v1, :cond_8

    if-eq v1, v8, :cond_7

    if-eq v1, v3, :cond_6

    if-eq v1, v2, :cond_5

    if-eq v1, v7, :cond_4

    if-eq v1, v6, :cond_3

    goto :goto_3

    .line 72
    :cond_3
    invoke-static {p1}, Lorg/jivesoftware/smackx/muc/provider/MUCParserUtils;->parseDestroy(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/muc/packet/Destroy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/muc/packet/MUCUser;->setDestroy(Lorg/jivesoftware/smackx/muc/packet/Destroy;)V

    goto :goto_3

    .line 69
    :cond_4
    invoke-static {p1}, Lorg/jivesoftware/smackx/muc/provider/MUCUserProvider;->parseDecline(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/muc/packet/MUCUser$Decline;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/muc/packet/MUCUser;->setDecline(Lorg/jivesoftware/smackx/muc/packet/MUCUser$Decline;)V

    .line 70
    goto :goto_3

    .line 65
    :cond_5
    const-string v1, ""

    const-string v2, "code"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "statusString":Ljava/lang/String;
    invoke-static {v1}, Lorg/jivesoftware/smackx/muc/packet/MUCUser$Status;->create(Ljava/lang/String;)Lorg/jivesoftware/smackx/muc/packet/MUCUser$Status;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/muc/packet/MUCUser;->addStatusCode(Lorg/jivesoftware/smackx/muc/packet/MUCUser$Status;)V

    .line 67
    goto :goto_3

    .line 62
    .end local v1    # "statusString":Ljava/lang/String;
    :cond_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/muc/packet/MUCUser;->setPassword(Ljava/lang/String;)V

    .line 63
    goto :goto_3

    .line 59
    :cond_7
    invoke-static {p1}, Lorg/jivesoftware/smackx/muc/provider/MUCParserUtils;->parseItem(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/muc/packet/MUCItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/muc/packet/MUCUser;->setItem(Lorg/jivesoftware/smackx/muc/packet/MUCItem;)V

    .line 60
    goto :goto_3

    .line 56
    :cond_8
    invoke-static {p1}, Lorg/jivesoftware/smackx/muc/provider/MUCUserProvider;->parseInvite(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/muc/packet/MUCUser$Invite;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/muc/packet/MUCUser;->setInvite(Lorg/jivesoftware/smackx/muc/packet/MUCUser$Invite;)V

    .line 57
    nop

    .line 75
    :goto_3
    nop

    .line 80
    :cond_9
    :goto_4
    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x468dd0f7 -> :sswitch_5
        -0x3532300e -> :sswitch_4
        0x317b13 -> :sswitch_3
        0x4889ba9b -> :sswitch_2
        0x5bee62f6 -> :sswitch_1
        0x5cd39ffa -> :sswitch_0
    .end sparse-switch
.end method
