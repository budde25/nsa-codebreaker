.class public Lorg/jivesoftware/smackx/privacy/provider/PrivacyProvider;
.super Lorg/jivesoftware/smack/provider/IQProvider;
.source "PrivacyProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/IQProvider<",
        "Lorg/jivesoftware/smackx/privacy/packet/Privacy;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/jivesoftware/smack/provider/IQProvider;-><init>()V

    return-void
.end method

.method private static parseItem(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;
    .locals 13
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lorg/jivesoftware/smack/SmackException;
        }
    .end annotation

    .line 111
    const-string v0, ""

    const-string v1, "action"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "actionValue":Ljava/lang/String;
    const-string v2, "order"

    invoke-static {p0, v2}, Lorg/jivesoftware/smack/util/ParserUtils;->getLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 116
    .local v9, "order":J
    const-string v2, "type"

    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "type":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x2efe0c

    const/4 v5, 0x1

    if-eq v3, v4, :cond_2

    const v4, 0x589a349

    if-eq v3, v4, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v3, "allow"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const-string v3, "deny"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_1

    :goto_0
    const/4 v3, -0x1

    :goto_1
    if-eqz v3, :cond_4

    if-ne v3, v5, :cond_3

    .line 128
    const/4 v3, 0x0

    .line 129
    .local v3, "allow":Z
    move v11, v3

    goto :goto_2

    .line 131
    .end local v3    # "allow":Z
    :cond_3
    new-instance v0, Lorg/jivesoftware/smack/SmackException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown action value \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_4
    const/4 v3, 0x1

    .line 126
    .restart local v3    # "allow":Z
    move v11, v3

    .line 135
    .end local v3    # "allow":Z
    .local v11, "allow":Z
    :goto_2
    if-eqz v2, :cond_5

    .line 137
    const-string v3, "value"

    invoke-interface {p0, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "value":Ljava/lang/String;
    new-instance v12, Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;

    invoke-static {v2}, Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem$Type;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem$Type;

    move-result-object v4

    move-object v3, v12

    move-object v5, v0

    move v6, v11

    move-wide v7, v9

    invoke-direct/range {v3 .. v8}, Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;-><init>(Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem$Type;Ljava/lang/String;ZJ)V

    move-object v0, v12

    .line 139
    .local v0, "item":Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;
    goto :goto_3

    .line 142
    .end local v0    # "item":Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;
    :cond_5
    new-instance v0, Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;

    invoke-direct {v0, v11, v9, v10}, Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;-><init>(ZJ)V

    .line 144
    .restart local v0    # "item":Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;
    :goto_3
    invoke-static {p0, v0}, Lorg/jivesoftware/smackx/privacy/provider/PrivacyProvider;->parseItemChildElements(Lorg/xmlpull/v1/XmlPullParser;Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;)V

    .line 145
    return-object v0
.end method

.method private static parseItemChildElements(Lorg/xmlpull/v1/XmlPullParser;Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;)V
    .locals 9
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "privacyItem"    # Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 154
    .local v0, "initialDepth":I
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 155
    .local v1, "eventType":I
    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    goto/16 :goto_3

    .line 174
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-ne v2, v0, :cond_b

    .line 175
    nop

    .line 179
    .end local v1    # "eventType":I
    return-void

    .line 157
    .restart local v1    # "eventType":I
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 158
    .local v4, "name":Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x49ea4cc9

    const/4 v8, 0x1

    if-eq v6, v7, :cond_6

    const/16 v7, 0xd28

    if-eq v6, v7, :cond_5

    const v7, 0xca0cb7c

    if-eq v6, v7, :cond_4

    const v7, 0x38eb0007

    if-eq v6, v7, :cond_3

    :cond_2
    goto :goto_1

    :cond_3
    const-string v6, "message"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v5, v8

    goto :goto_1

    :cond_4
    const-string v6, "presence-out"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v5, v2

    goto :goto_1

    :cond_5
    const-string v6, "iq"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :cond_6
    const-string v6, "presence-in"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v5, v3

    :goto_1
    if-eqz v5, :cond_a

    if-eq v5, v8, :cond_9

    if-eq v5, v3, :cond_8

    if-eq v5, v2, :cond_7

    goto :goto_2

    .line 169
    :cond_7
    invoke-virtual {p1, v8}, Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;->setFilterPresenceOut(Z)V

    goto :goto_2

    .line 166
    :cond_8
    invoke-virtual {p1, v8}, Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;->setFilterPresenceIn(Z)V

    .line 167
    goto :goto_2

    .line 163
    :cond_9
    invoke-virtual {p1, v8}, Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;->setFilterMessage(Z)V

    .line 164
    goto :goto_2

    .line 160
    :cond_a
    invoke-virtual {p1, v8}, Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;->setFilterIQ(Z)V

    .line 161
    nop

    .line 172
    :goto_2
    nop

    .line 178
    .end local v1    # "eventType":I
    .end local v4    # "name":Ljava/lang/String;
    :cond_b
    :goto_3
    goto :goto_0
.end method

.method private static parseList(Lorg/xmlpull/v1/XmlPullParser;Lorg/jivesoftware/smackx/privacy/packet/Privacy;)V
    .locals 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "privacy"    # Lorg/jivesoftware/smackx/privacy/packet/Privacy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lorg/jivesoftware/smack/SmackException;
        }
    .end annotation

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "done":Z
    const-string v1, ""

    const-string v2, "name"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "listName":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;>;"
    :goto_0
    if-nez v0, :cond_2

    .line 88
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 89
    .local v3, "eventType":I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 90
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "item"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 92
    invoke-static {p0}, Lorg/jivesoftware/smackx/privacy/provider/PrivacyProvider;->parseItem(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 96
    :cond_0
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 97
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "list"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 98
    const/4 v0, 0x1

    .line 101
    .end local v3    # "eventType":I
    :cond_1
    :goto_1
    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {p1, v1, v2}, Lorg/jivesoftware/smackx/privacy/packet/Privacy;->setPrivacyList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 105
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

    .line 40
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/privacy/provider/PrivacyProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/privacy/packet/Privacy;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/privacy/packet/Privacy;
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

    .line 45
    new-instance v0, Lorg/jivesoftware/smackx/privacy/packet/Privacy;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/privacy/packet/Privacy;-><init>()V

    .line 46
    .local v0, "privacy":Lorg/jivesoftware/smackx/privacy/packet/Privacy;
    const/4 v1, 0x0

    .line 47
    .local v1, "done":Z
    :goto_0
    if-nez v1, :cond_6

    .line 48
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 49
    .local v2, "eventType":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 51
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "active"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const-string v5, "name"

    const-string v6, ""

    if-eqz v3, :cond_1

    .line 52
    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "activeName":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 54
    invoke-virtual {v0, v4}, Lorg/jivesoftware/smackx/privacy/packet/Privacy;->setDeclineActiveList(Z)V

    goto :goto_1

    .line 56
    :cond_0
    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/privacy/packet/Privacy;->setActiveName(Ljava/lang/String;)V

    .line 58
    .end local v3    # "activeName":Ljava/lang/String;
    :goto_1
    goto :goto_3

    .line 59
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v7, "default"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 60
    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "defaultName":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 62
    invoke-virtual {v0, v4}, Lorg/jivesoftware/smackx/privacy/packet/Privacy;->setDeclineDefaultList(Z)V

    goto :goto_2

    .line 64
    :cond_2
    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/privacy/packet/Privacy;->setDefaultName(Ljava/lang/String;)V

    .line 66
    .end local v3    # "defaultName":Ljava/lang/String;
    :goto_2
    goto :goto_3

    .line 68
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "list"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 69
    invoke-static {p1, v0}, Lorg/jivesoftware/smackx/privacy/provider/PrivacyProvider;->parseList(Lorg/xmlpull/v1/XmlPullParser;Lorg/jivesoftware/smackx/privacy/packet/Privacy;)V

    goto :goto_3

    .line 72
    :cond_4
    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 73
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "query"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 74
    const/4 v1, 0x1

    .line 77
    .end local v2    # "eventType":I
    :cond_5
    :goto_3
    goto :goto_0

    .line 79
    :cond_6
    return-object v0
.end method
