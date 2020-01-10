.class public Lorg/jivesoftware/smackx/disco/provider/DiscoverInfoProvider;
.super Lorg/jivesoftware/smack/provider/IQProvider;
.source "DiscoverInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/IQProvider<",
        "Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/jivesoftware/smack/provider/IQProvider;-><init>()V

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

    .line 32
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/disco/provider/DiscoverInfoProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    .locals 17
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    move-object/from16 v0, p1

    new-instance v1, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;-><init>()V

    .line 38
    .local v1, "discoverInfo":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;
    const/4 v2, 0x0

    .line 40
    .local v2, "done":Z
    const-string v3, ""

    .line 41
    .local v3, "category":Ljava/lang/String;
    const-string v4, ""

    .line 42
    .local v4, "identityName":Ljava/lang/String;
    const-string v5, ""

    .line 43
    .local v5, "type":Ljava/lang/String;
    const-string v6, ""

    .line 44
    .local v6, "variable":Ljava/lang/String;
    const-string v7, ""

    .line 45
    .local v7, "lang":Ljava/lang/String;
    const-string v8, ""

    const-string v9, "node"

    invoke-interface {v0, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->setNode(Ljava/lang/String;)V

    .line 46
    :goto_0
    if-nez v2, :cond_a

    .line 47
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .line 48
    .local v9, "eventType":I
    const/4 v10, 0x2

    const-string v11, "feature"

    const-string v12, "identity"

    if-ne v9, v10, :cond_6

    .line 49
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 50
    .local v10, "name":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v13

    .line 51
    .local v13, "namespace":Ljava/lang/String;
    const-string v14, "http://jabber.org/protocol/disco#info"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 52
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v15

    const v14, -0x3a5d850a

    move/from16 v16, v2

    .end local v2    # "done":Z
    .local v16, "done":Z
    const/4 v2, 0x1

    if-eq v15, v14, :cond_2

    const v11, -0x8178f42

    if-eq v15, v11, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v14, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    move v14, v2

    goto :goto_2

    :goto_1
    const/4 v14, -0x1

    :goto_2
    if-eqz v14, :cond_4

    if-eq v14, v2, :cond_3

    goto :goto_3

    .line 62
    :cond_3
    const-string v2, "var"

    invoke-interface {v0, v8, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 55
    :cond_4
    const-string v2, "category"

    invoke-interface {v0, v8, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 56
    const-string v2, "name"

    invoke-interface {v0, v8, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 57
    const-string v2, "type"

    invoke-interface {v0, v8, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 58
    const-string v2, "xml"

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v11, "lang"

    invoke-interface {v0, v2, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 59
    nop

    .line 63
    :goto_3
    goto :goto_4

    .line 68
    .end local v16    # "done":Z
    .restart local v2    # "done":Z
    :cond_5
    move/from16 v16, v2

    .end local v2    # "done":Z
    .restart local v16    # "done":Z
    invoke-static {v1, v0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->addExtensionElement(Lorg/jivesoftware/smack/packet/Stanza;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 70
    .end local v10    # "name":Ljava/lang/String;
    .end local v13    # "namespace":Ljava/lang/String;
    :goto_4
    move/from16 v2, v16

    goto :goto_5

    .end local v16    # "done":Z
    .restart local v2    # "done":Z
    :cond_6
    move/from16 v16, v2

    .end local v2    # "done":Z
    .restart local v16    # "done":Z
    const/4 v2, 0x3

    if-ne v9, v2, :cond_9

    .line 71
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 73
    new-instance v2, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;

    invoke-direct {v2, v3, v5, v4, v7}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .local v2, "identity":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;
    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->addIdentity(Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;)V

    .line 76
    .end local v2    # "identity":Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo$Identity;
    :cond_7
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 78
    invoke-virtual {v1, v6}, Lorg/jivesoftware/smackx/disco/packet/DiscoverInfo;->addFeature(Ljava/lang/String;)Z

    move-result v2

    .line 81
    :cond_8
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v10, "query"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 82
    const/4 v2, 0x1

    .end local v16    # "done":Z
    .local v2, "done":Z
    goto :goto_5

    .line 85
    .end local v2    # "done":Z
    .end local v9    # "eventType":I
    .restart local v16    # "done":Z
    :cond_9
    move/from16 v2, v16

    .end local v16    # "done":Z
    .restart local v2    # "done":Z
    :goto_5
    goto/16 :goto_0

    .line 87
    :cond_a
    return-object v1
.end method
