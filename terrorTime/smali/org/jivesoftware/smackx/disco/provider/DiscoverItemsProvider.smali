.class public Lorg/jivesoftware/smackx/disco/provider/DiscoverItemsProvider;
.super Lorg/jivesoftware/smack/provider/IQProvider;
.source "DiscoverItemsProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/IQProvider<",
        "Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
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

    .line 36
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/disco/provider/DiscoverItemsProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;
    .locals 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    new-instance v0, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;-><init>()V

    .line 42
    .local v0, "discoverItems":Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;
    const/4 v1, 0x0

    .line 44
    .local v1, "done":Z
    const/4 v2, 0x0

    .line 45
    .local v2, "jid":Lorg/jxmpp/jid/Jid;
    const-string v3, ""

    .line 46
    .local v3, "name":Ljava/lang/String;
    const-string v4, ""

    .line 47
    .local v4, "action":Ljava/lang/String;
    const-string v5, ""

    .line 48
    .local v5, "node":Ljava/lang/String;
    const-string v6, "node"

    const-string v7, ""

    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;->setNode(Ljava/lang/String;)V

    .line 49
    :goto_0
    if-nez v1, :cond_3

    .line 50
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .line 52
    .local v8, "eventType":I
    const/4 v9, 0x2

    const-string v10, "item"

    if-ne v8, v9, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 54
    invoke-static {p1}, Lorg/jivesoftware/smack/util/ParserUtils;->getJidAttribute(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jxmpp/jid/Jid;

    move-result-object v2

    .line 55
    const-string v9, "name"

    invoke-interface {p1, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 56
    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 57
    const-string v9, "action"

    invoke-interface {p1, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 59
    :cond_0
    const/4 v9, 0x3

    if-ne v8, v9, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 61
    new-instance v9, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;

    invoke-direct {v9, v2}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;-><init>(Lorg/jxmpp/jid/Jid;)V

    .line 62
    .local v9, "item":Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;
    invoke-virtual {v9, v3}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;->setName(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v9, v5}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;->setNode(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v9, v4}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;->setAction(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0, v9}, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;->addItem(Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;)V

    goto :goto_1

    .line 67
    .end local v9    # "item":Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;
    :cond_1
    if-ne v8, v9, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "query"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 68
    const/4 v1, 0x1

    .line 70
    .end local v8    # "eventType":I
    :cond_2
    :goto_1
    goto :goto_0

    .line 72
    :cond_3
    return-object v0
.end method
