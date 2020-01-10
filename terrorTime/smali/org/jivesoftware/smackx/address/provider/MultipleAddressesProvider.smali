.class public Lorg/jivesoftware/smackx/address/provider/MultipleAddressesProvider;
.super Lorg/jivesoftware/smack/provider/ExtensionElementProvider;
.source "MultipleAddressesProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/ExtensionElementProvider<",
        "Lorg/jivesoftware/smackx/address/packet/MultipleAddresses;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
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

    .line 37
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/address/provider/MultipleAddressesProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/address/packet/MultipleAddresses;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/address/packet/MultipleAddresses;
    .locals 19
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    move-object/from16 v0, p1

    new-instance v1, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses;-><init>()V

    .line 45
    .local v1, "multipleAddresses":Lorg/jivesoftware/smackx/address/packet/MultipleAddresses;
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .line 46
    .local v9, "eventType":I
    const/4 v2, 0x2

    if-eq v9, v2, :cond_1

    const/4 v2, 0x3

    if-eq v9, v2, :cond_0

    move/from16 v10, p2

    goto :goto_3

    .line 64
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move/from16 v10, p2

    if-ne v2, v10, :cond_5

    .line 65
    nop

    .line 70
    .end local v9    # "eventType":I
    return-object v1

    .line 48
    .restart local v9    # "eventType":I
    :cond_1
    move/from16 v10, p2

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 49
    .local v11, "name":Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x4468640c

    if-eq v3, v4, :cond_3

    :cond_2
    goto :goto_1

    :cond_3
    const-string v3, "address"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    goto :goto_2

    .line 51
    :cond_4
    const-string v2, ""

    const-string v3, "type"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 52
    .local v12, "typeString":Ljava/lang/String;
    invoke-static {v12}, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;

    move-result-object v13

    .line 53
    .local v13, "type":Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;
    const-string v3, "jid"

    invoke-static {v0, v3}, Lorg/jivesoftware/smack/util/ParserUtils;->getJidAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lorg/jxmpp/jid/Jid;

    move-result-object v14

    .line 54
    .local v14, "jid":Lorg/jxmpp/jid/Jid;
    const-string v3, "node"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 55
    .local v15, "node":Ljava/lang/String;
    const-string v3, "desc"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 56
    .local v16, "desc":Ljava/lang/String;
    const-string v3, "delivered"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 57
    .local v17, "delivered":Z
    const-string v3, "uri"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 59
    .local v18, "uri":Ljava/lang/String;
    move-object v2, v1

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    move/from16 v7, v17

    move-object/from16 v8, v18

    invoke-virtual/range {v2 .. v8}, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses;->addAddress(Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;Lorg/jxmpp/jid/Jid;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 62
    .end local v12    # "typeString":Ljava/lang/String;
    .end local v13    # "type":Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;
    .end local v14    # "jid":Lorg/jxmpp/jid/Jid;
    .end local v15    # "node":Ljava/lang/String;
    .end local v16    # "desc":Ljava/lang/String;
    .end local v17    # "delivered":Z
    .end local v18    # "uri":Ljava/lang/String;
    :goto_2
    nop

    .line 69
    .end local v9    # "eventType":I
    .end local v11    # "name":Ljava/lang/String;
    :cond_5
    :goto_3
    goto :goto_0
.end method
