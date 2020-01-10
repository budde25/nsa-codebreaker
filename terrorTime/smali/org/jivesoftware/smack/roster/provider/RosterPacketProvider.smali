.class public Lorg/jivesoftware/smack/roster/provider/RosterPacketProvider;
.super Lorg/jivesoftware/smack/provider/IQProvider;
.source "RosterPacketProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/IQProvider<",
        "Lorg/jivesoftware/smack/roster/packet/RosterPacket;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final INSTANCE:Lorg/jivesoftware/smack/roster/provider/RosterPacketProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    nop

    .line 34
    new-instance v0, Lorg/jivesoftware/smack/roster/provider/RosterPacketProvider;

    invoke-direct {v0}, Lorg/jivesoftware/smack/roster/provider/RosterPacketProvider;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/roster/provider/RosterPacketProvider;->INSTANCE:Lorg/jivesoftware/smack/roster/provider/RosterPacketProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/jivesoftware/smack/provider/IQProvider;-><init>()V

    return-void
.end method

.method public static parseItem(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    .locals 15
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    const-string v0, "item"

    invoke-static {p0, v0}, Lorg/jivesoftware/smack/util/ParserUtils;->assertAtStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 70
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 71
    .local v0, "initialDepth":I
    const-string v1, ""

    const-string v2, "jid"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "jidString":Ljava/lang/String;
    const-string v3, "name"

    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "itemName":Ljava/lang/String;
    invoke-static {v2}, Lorg/jxmpp/jid/impl/JidCreate;->bareFrom(Ljava/lang/String;)Lorg/jxmpp/jid/BareJid;

    move-result-object v4

    .line 76
    .local v4, "jid":Lorg/jxmpp/jid/BareJid;
    new-instance v5, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;

    invoke-direct {v5, v4, v3}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;-><init>(Lorg/jxmpp/jid/BareJid;Ljava/lang/String;)V

    .line 78
    .local v5, "item":Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    const-string v6, "ask"

    invoke-interface {p0, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 79
    .local v6, "ask":Ljava/lang/String;
    const-string v7, "subscribe"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v5, v7}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->setSubscriptionPending(Z)V

    .line 81
    const-string v7, "subscription"

    invoke-interface {p0, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "subscription":Ljava/lang/String;
    invoke-static {v1}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;->fromString(Ljava/lang/String;)Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

    move-result-object v7

    .line 83
    .local v7, "type":Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;
    invoke-virtual {v5, v7}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->setItemType(Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;)V

    .line 85
    const/4 v8, 0x0

    const-string v9, "approved"

    invoke-static {p0, v9, v8}, Lorg/jivesoftware/smack/util/ParserUtils;->getBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v9

    .line 86
    .local v9, "approved":Z
    invoke-virtual {v5, v9}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->setApproved(Z)V

    .line 89
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    .line 90
    .local v10, "eventType":I
    const/4 v11, 0x2

    if-eq v10, v11, :cond_1

    const/4 v11, 0x3

    if-eq v10, v11, :cond_0

    goto :goto_3

    .line 103
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    if-ne v11, v0, :cond_6

    .line 104
    nop

    .line 109
    .end local v10    # "eventType":I
    invoke-static {p0}, Lorg/jivesoftware/smack/util/ParserUtils;->assertAtEndTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 110
    nop

    .line 111
    return-object v5

    .line 92
    .restart local v10    # "eventType":I
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 93
    .local v11, "name":Ljava/lang/String;
    const/4 v12, -0x1

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v13

    const v14, 0x5e0f67f

    if-eq v13, v14, :cond_3

    :cond_2
    goto :goto_1

    :cond_3
    const-string v13, "group"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    move v12, v8

    :goto_1
    if-eqz v12, :cond_4

    goto :goto_2

    .line 95
    :cond_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    .line 96
    .local v12, "groupName":Ljava/lang/String;
    if-eqz v12, :cond_5

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_5

    .line 97
    invoke-virtual {v5, v12}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->addGroupName(Ljava/lang/String;)V

    .line 101
    .end local v12    # "groupName":Ljava/lang/String;
    :cond_5
    :goto_2
    nop

    .line 108
    .end local v10    # "eventType":I
    .end local v11    # "name":Ljava/lang/String;
    :cond_6
    :goto_3
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

    .line 32
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smack/roster/provider/RosterPacketProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smack/roster/packet/RosterPacket;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smack/roster/packet/RosterPacket;
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lorg/jivesoftware/smack/SmackException;
        }
    .end annotation

    .line 39
    new-instance v0, Lorg/jivesoftware/smack/roster/packet/RosterPacket;

    invoke-direct {v0}, Lorg/jivesoftware/smack/roster/packet/RosterPacket;-><init>()V

    .line 40
    .local v0, "roster":Lorg/jivesoftware/smack/roster/packet/RosterPacket;
    const-string v1, ""

    const-string v2, "ver"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "version":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/roster/packet/RosterPacket;->setVersion(Ljava/lang/String;)V

    .line 44
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 45
    .local v2, "eventType":I
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_6

    .line 56
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "endTag":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0x66f18c8

    if-eq v6, v7, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    const-string v6, "query"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    :goto_1
    move v4, v5

    :goto_2
    if-eqz v4, :cond_3

    goto :goto_6

    .line 59
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-ne v4, p2, :cond_8

    .line 60
    nop

    .line 65
    .end local v2    # "eventType":I
    .end local v3    # "endTag":Ljava/lang/String;
    return-object v0

    .line 47
    .restart local v2    # "eventType":I
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "startTag":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0x317b13

    if-eq v6, v7, :cond_6

    :cond_5
    goto :goto_3

    :cond_6
    const-string v6, "item"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_4

    :goto_3
    move v4, v5

    :goto_4
    if-eqz v4, :cond_7

    goto :goto_5

    .line 50
    :cond_7
    invoke-static {p1}, Lorg/jivesoftware/smack/roster/provider/RosterPacketProvider;->parseItem(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;

    move-result-object v4

    .line 51
    .local v4, "item":Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    invoke-virtual {v0, v4}, Lorg/jivesoftware/smack/roster/packet/RosterPacket;->addRosterItem(Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;)V

    .line 54
    .end local v4    # "item":Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    :goto_5
    nop

    .line 64
    .end local v2    # "eventType":I
    .end local v3    # "startTag":Ljava/lang/String;
    :cond_8
    :goto_6
    goto :goto_0
.end method
