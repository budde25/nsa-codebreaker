.class public Lorg/jivesoftware/smackx/iot/control/provider/IoTSetRequestProvider;
.super Lorg/jivesoftware/smack/provider/IQProvider;
.source "IoTSetRequestProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/IQProvider<",
        "Lorg/jivesoftware/smackx/iot/control/element/IoTSetRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
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

    .line 33
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/iot/control/provider/IoTSetRequestProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/iot/control/element/IoTSetRequest;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/iot/control/element/IoTSetRequest;
    .locals 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/iot/control/element/SetData;>;"
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 40
    .local v1, "eventType":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_0

    goto/16 :goto_3

    .line 75
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ne v3, p2, :cond_7

    .line 76
    nop

    .line 81
    .end local v1    # "eventType":I
    .end local v2    # "name":Ljava/lang/String;
    new-instance v1, Lorg/jivesoftware/smackx/iot/control/element/IoTSetRequest;

    invoke-direct {v1, v0}, Lorg/jivesoftware/smackx/iot/control/element/IoTSetRequest;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 43
    .restart local v1    # "eventType":I
    .restart local v2    # "name":Ljava/lang/String;
    :cond_1
    const/4 v5, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x1

    sparse-switch v6, :sswitch_data_0

    :cond_2
    goto :goto_1

    :sswitch_0
    const-string v6, "long"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v5, v3

    goto :goto_1

    :sswitch_1
    const-string v6, "bool"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :sswitch_2
    const-string v6, "int"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v5, v4

    goto :goto_1

    :sswitch_3
    const-string v6, "double"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v5, v7

    :goto_1
    const-string v6, "value"

    const-string v8, "name"

    const/4 v9, 0x0

    if-eqz v5, :cond_6

    if-eq v5, v7, :cond_5

    if-eq v5, v4, :cond_4

    if-eq v5, v3, :cond_3

    goto :goto_2

    .line 66
    :cond_3
    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "valueName":Ljava/lang/String;
    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "valueString":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 69
    .local v5, "value":J
    new-instance v7, Lorg/jivesoftware/smackx/iot/control/element/SetLongData;

    invoke-direct {v7, v3, v5, v6}, Lorg/jivesoftware/smackx/iot/control/element/SetLongData;-><init>(Ljava/lang/String;J)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 59
    .end local v3    # "valueName":Ljava/lang/String;
    .end local v4    # "valueString":Ljava/lang/String;
    .end local v5    # "value":J
    :cond_4
    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 60
    .restart local v3    # "valueName":Ljava/lang/String;
    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 61
    .restart local v4    # "valueString":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 62
    .local v5, "value":I
    new-instance v6, Lorg/jivesoftware/smackx/iot/control/element/SetIntData;

    invoke-direct {v6, v3, v5}, Lorg/jivesoftware/smackx/iot/control/element/SetIntData;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    .end local v3    # "valueName":Ljava/lang/String;
    .end local v4    # "valueString":Ljava/lang/String;
    .end local v5    # "value":I
    goto :goto_2

    .line 52
    :cond_5
    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    .restart local v3    # "valueName":Ljava/lang/String;
    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 54
    .restart local v4    # "valueString":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 55
    .local v5, "value":D
    new-instance v7, Lorg/jivesoftware/smackx/iot/control/element/SetDoubleData;

    invoke-direct {v7, v3, v5, v6}, Lorg/jivesoftware/smackx/iot/control/element/SetDoubleData;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .end local v3    # "valueName":Ljava/lang/String;
    .end local v4    # "valueString":Ljava/lang/String;
    .end local v5    # "value":D
    goto :goto_2

    .line 45
    :cond_6
    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46
    .restart local v3    # "valueName":Ljava/lang/String;
    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 47
    .restart local v4    # "valueString":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 48
    .local v5, "value":Z
    new-instance v6, Lorg/jivesoftware/smackx/iot/control/element/SetBoolData;

    invoke-direct {v6, v3, v5}, Lorg/jivesoftware/smackx/iot/control/element/SetBoolData;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .end local v3    # "valueName":Ljava/lang/String;
    .end local v4    # "valueString":Ljava/lang/String;
    .end local v5    # "value":Z
    nop

    .line 73
    :goto_2
    nop

    .line 80
    .end local v1    # "eventType":I
    .end local v2    # "name":Ljava/lang/String;
    :cond_7
    :goto_3
    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f08842f -> :sswitch_3
        0x197ef -> :sswitch_2
        0x2e3aea -> :sswitch_1
        0x32c67c -> :sswitch_0
    .end sparse-switch
.end method
