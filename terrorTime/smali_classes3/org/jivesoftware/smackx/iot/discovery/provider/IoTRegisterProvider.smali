.class public Lorg/jivesoftware/smackx/iot/discovery/provider/IoTRegisterProvider;
.super Lorg/jivesoftware/smack/provider/IQProvider;
.source "IoTRegisterProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/IQProvider<",
        "Lorg/jivesoftware/smackx/iot/discovery/element/IoTRegister;",
        ">;"
    }
.end annotation


# direct methods
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
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/iot/discovery/provider/IoTRegisterProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/iot/discovery/element/IoTRegister;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/iot/discovery/element/IoTRegister;
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    const/4 v0, 0x0

    const-string v1, "selfOwned"

    invoke-static {p1, v1, v0}, Lorg/jivesoftware/smack/util/ParserUtils;->getBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    .line 37
    .local v1, "selfOwned":Z
    invoke-static {p1}, Lorg/jivesoftware/smackx/iot/parser/NodeInfoParser;->parse(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    move-result-object v2

    .line 38
    .local v2, "nodeInfo":Lorg/jivesoftware/smackx/iot/element/NodeInfo;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v3, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/iot/discovery/element/Tag;>;"
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-eq v4, p2, :cond_7

    .line 40
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 41
    .local v4, "event":I
    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 42
    goto :goto_0

    .line 44
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 45
    .local v5, "element":Ljava/lang/String;
    const/4 v6, 0x0

    .line 46
    .local v6, "type":Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;
    const/4 v7, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, 0x1ab86

    const/4 v10, 0x1

    if-eq v8, v9, :cond_3

    const v9, 0x1be31

    if-eq v8, v9, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    const-string v8, "str"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v7, v0

    goto :goto_1

    :cond_3
    const-string v8, "num"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v7, v10

    :goto_1
    if-eqz v7, :cond_5

    if-eq v7, v10, :cond_4

    goto :goto_2

    .line 51
    :cond_4
    sget-object v6, Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;->num:Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;

    goto :goto_2

    .line 48
    :cond_5
    sget-object v6, Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;->str:Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;

    .line 49
    nop

    .line 54
    :goto_2
    if-nez v6, :cond_6

    .line 55
    goto :goto_0

    .line 57
    :cond_6
    const/4 v7, 0x0

    const-string v8, "name"

    invoke-interface {p1, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 58
    .local v8, "name":Ljava/lang/String;
    const-string v9, "value"

    invoke-interface {p1, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 59
    .local v7, "value":Ljava/lang/String;
    new-instance v9, Lorg/jivesoftware/smackx/iot/discovery/element/Tag;

    invoke-direct {v9, v8, v6, v7}, Lorg/jivesoftware/smackx/iot/discovery/element/Tag;-><init>(Ljava/lang/String;Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;Ljava/lang/String;)V

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .end local v4    # "event":I
    .end local v5    # "element":Ljava/lang/String;
    .end local v6    # "type":Lorg/jivesoftware/smackx/iot/discovery/element/Tag$Type;
    .end local v7    # "value":Ljava/lang/String;
    .end local v8    # "name":Ljava/lang/String;
    goto :goto_0

    .line 61
    :cond_7
    new-instance v0, Lorg/jivesoftware/smackx/iot/discovery/element/IoTRegister;

    invoke-direct {v0, v3, v2, v1}, Lorg/jivesoftware/smackx/iot/discovery/element/IoTRegister;-><init>(Ljava/util/Collection;Lorg/jivesoftware/smackx/iot/element/NodeInfo;Z)V

    return-object v0
.end method
