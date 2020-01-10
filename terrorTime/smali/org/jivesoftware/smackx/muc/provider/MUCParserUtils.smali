.class public Lorg/jivesoftware/smackx/muc/provider/MUCParserUtils;
.super Ljava/lang/Object;
.source "MUCParserUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseDestroy(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/muc/packet/Destroy;
    .locals 8
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 77
    .local v0, "initialDepth":I
    invoke-static {p0}, Lorg/jivesoftware/smack/util/ParserUtils;->getBareJidAttribute(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v1

    .line 78
    .local v1, "jid":Lorg/jxmpp/jid/EntityBareJid;
    const/4 v2, 0x0

    .line 80
    .local v2, "reason":Ljava/lang/String;
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 81
    .local v3, "eventType":I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    goto :goto_3

    .line 91
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-ne v0, v4, :cond_5

    .line 92
    nop

    .line 97
    .end local v3    # "eventType":I
    new-instance v3, Lorg/jivesoftware/smackx/muc/packet/Destroy;

    invoke-direct {v3, v1, v2}, Lorg/jivesoftware/smackx/muc/packet/Destroy;-><init>(Lorg/jxmpp/jid/EntityBareJid;Ljava/lang/String;)V

    return-object v3

    .line 83
    .restart local v3    # "eventType":I
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, "name":Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x37ba6dbc

    if-eq v6, v7, :cond_3

    :cond_2
    goto :goto_1

    :cond_3
    const-string v6, "reason"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_4

    goto :goto_2

    .line 86
    :cond_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    .line 89
    :goto_2
    nop

    .line 96
    .end local v3    # "eventType":I
    .end local v4    # "name":Ljava/lang/String;
    :cond_5
    :goto_3
    goto :goto_0
.end method

.method public static parseItem(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/muc/packet/MUCItem;
    .locals 18
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    move-object/from16 v0, p0

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 37
    .local v1, "initialDepth":I
    const-string v2, ""

    const-string v3, "affiliation"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jivesoftware/smackx/muc/MUCAffiliation;->fromString(Ljava/lang/String;)Lorg/jivesoftware/smackx/muc/MUCAffiliation;

    move-result-object v3

    .line 38
    .local v3, "affiliation":Lorg/jivesoftware/smackx/muc/MUCAffiliation;
    const-string v4, "nick"

    invoke-static {v0, v4}, Lorg/jivesoftware/smack/util/ParserUtils;->getResourcepartAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lorg/jxmpp/jid/parts/Resourcepart;

    move-result-object v12

    .line 39
    .local v12, "nick":Lorg/jxmpp/jid/parts/Resourcepart;
    const-string v5, "role"

    invoke-interface {v0, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/jivesoftware/smackx/muc/MUCRole;->fromString(Ljava/lang/String;)Lorg/jivesoftware/smackx/muc/MUCRole;

    move-result-object v13

    .line 40
    .local v13, "role":Lorg/jivesoftware/smackx/muc/MUCRole;
    invoke-static/range {p0 .. p0}, Lorg/jivesoftware/smack/util/ParserUtils;->getJidAttribute(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jxmpp/jid/Jid;

    move-result-object v14

    .line 41
    .local v14, "jid":Lorg/jxmpp/jid/Jid;
    const/4 v5, 0x0

    .line 42
    .local v5, "actor":Lorg/jxmpp/jid/Jid;
    const/4 v6, 0x0

    .line 43
    .local v6, "actorNick":Lorg/jxmpp/jid/parts/Resourcepart;
    const/4 v7, 0x0

    move-object v15, v5

    move-object/from16 v17, v6

    move-object/from16 v16, v7

    .line 45
    .end local v5    # "actor":Lorg/jxmpp/jid/Jid;
    .end local v6    # "actorNick":Lorg/jxmpp/jid/parts/Resourcepart;
    .local v15, "actor":Lorg/jxmpp/jid/Jid;
    .local v16, "reason":Ljava/lang/String;
    .local v17, "actorNick":Lorg/jxmpp/jid/parts/Resourcepart;
    :goto_0
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 46
    .local v5, "eventType":I
    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    goto/16 :goto_3

    .line 66
    :cond_0
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-ne v6, v1, :cond_8

    .line 67
    nop

    .line 72
    .end local v5    # "eventType":I
    new-instance v2, Lorg/jivesoftware/smackx/muc/packet/MUCItem;

    move-object v4, v2

    move-object v5, v3

    move-object v6, v13

    move-object v7, v15

    move-object/from16 v8, v16

    move-object v9, v14

    move-object v10, v12

    move-object/from16 v11, v17

    invoke-direct/range {v4 .. v11}, Lorg/jivesoftware/smackx/muc/packet/MUCItem;-><init>(Lorg/jivesoftware/smackx/muc/MUCAffiliation;Lorg/jivesoftware/smackx/muc/MUCRole;Lorg/jxmpp/jid/Jid;Ljava/lang/String;Lorg/jxmpp/jid/Jid;Lorg/jxmpp/jid/parts/Resourcepart;Lorg/jxmpp/jid/parts/Resourcepart;)V

    return-object v2

    .line 48
    .restart local v5    # "eventType":I
    :cond_1
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 49
    .local v6, "name":Ljava/lang/String;
    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, -0x37ba6dbc

    const/4 v10, 0x1

    if-eq v8, v9, :cond_4

    const v9, 0x585a9f5

    if-eq v8, v9, :cond_3

    :cond_2
    goto :goto_1

    :cond_3
    const-string v8, "actor"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v7, 0x0

    goto :goto_1

    :cond_4
    const-string v8, "reason"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v7, v10

    :goto_1
    if-eqz v7, :cond_6

    if-eq v7, v10, :cond_5

    goto :goto_2

    .line 61
    :cond_5
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v16, v7

    .end local v16    # "reason":Ljava/lang/String;
    .local v7, "reason":Ljava/lang/String;
    goto :goto_2

    .line 51
    .end local v7    # "reason":Ljava/lang/String;
    .restart local v16    # "reason":Ljava/lang/String;
    :cond_6
    invoke-static/range {p0 .. p0}, Lorg/jivesoftware/smack/util/ParserUtils;->getJidAttribute(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jxmpp/jid/Jid;

    move-result-object v7

    .line 55
    .end local v15    # "actor":Lorg/jxmpp/jid/Jid;
    .local v7, "actor":Lorg/jxmpp/jid/Jid;
    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 56
    .local v8, "actorNickString":Ljava/lang/String;
    if-eqz v8, :cond_7

    .line 57
    invoke-static {v8}, Lorg/jxmpp/jid/parts/Resourcepart;->from(Ljava/lang/String;)Lorg/jxmpp/jid/parts/Resourcepart;

    move-result-object v9

    move-object v15, v7

    move-object/from16 v17, v9

    .end local v17    # "actorNick":Lorg/jxmpp/jid/parts/Resourcepart;
    .local v9, "actorNick":Lorg/jxmpp/jid/parts/Resourcepart;
    goto :goto_2

    .line 56
    .end local v9    # "actorNick":Lorg/jxmpp/jid/parts/Resourcepart;
    .restart local v17    # "actorNick":Lorg/jxmpp/jid/parts/Resourcepart;
    :cond_7
    move-object v15, v7

    .line 64
    .end local v7    # "actor":Lorg/jxmpp/jid/Jid;
    .end local v8    # "actorNickString":Ljava/lang/String;
    .restart local v15    # "actor":Lorg/jxmpp/jid/Jid;
    :goto_2
    nop

    .line 71
    .end local v5    # "eventType":I
    .end local v6    # "name":Ljava/lang/String;
    :cond_8
    :goto_3
    goto :goto_0
.end method
