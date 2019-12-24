.class public Lorg/jivesoftware/smackx/iot/data/provider/IoTFieldsExtensionProvider;
.super Lorg/jivesoftware/smack/provider/ExtensionElementProvider;
.source "IoTFieldsExtensionProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/ExtensionElementProvider<",
        "Lorg/jivesoftware/smackx/iot/data/element/IoTFieldsExtension;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lorg/jivesoftware/smackx/iot/data/provider/IoTFieldsExtensionProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smackx/iot/data/provider/IoTFieldsExtensionProvider;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
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

    .line 40
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/iot/data/provider/IoTFieldsExtensionProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/iot/data/element/IoTFieldsExtension;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/iot/data/element/IoTFieldsExtension;
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    const-string v0, "seqnr"

    const-string v1, "IoT data request <accepted/> without sequence number"

    invoke-static {p1, v0, v1}, Lorg/jivesoftware/smack/util/ParserUtils;->getIntegerAttributeOrThrow(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 47
    .local v0, "seqNr":I
    const/4 v1, 0x0

    const-string v2, "done"

    invoke-static {p1, v2, v1}, Lorg/jivesoftware/smack/util/ParserUtils;->getBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v2

    .line 48
    .local v2, "done":Z
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v3, "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/iot/data/element/NodeElement;>;"
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 51
    .local v4, "eventType":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, "name":Ljava/lang/String;
    const/4 v6, 0x2

    if-eq v4, v6, :cond_1

    const/4 v6, 0x3

    if-eq v4, v6, :cond_0

    goto :goto_3

    .line 62
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-ne v6, p2, :cond_5

    .line 63
    nop

    .line 68
    .end local v4    # "eventType":I
    .end local v5    # "name":Ljava/lang/String;
    new-instance v1, Lorg/jivesoftware/smackx/iot/data/element/IoTFieldsExtension;

    invoke-direct {v1, v0, v2, v3}, Lorg/jivesoftware/smackx/iot/data/element/IoTFieldsExtension;-><init>(IZLjava/util/List;)V

    return-object v1

    .line 54
    .restart local v4    # "eventType":I
    .restart local v5    # "name":Ljava/lang/String;
    :cond_1
    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, 0x33ae02

    if-eq v7, v8, :cond_3

    :cond_2
    goto :goto_1

    :cond_3
    const-string v7, "node"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v6, v1

    :goto_1
    if-eqz v6, :cond_4

    goto :goto_2

    .line 56
    :cond_4
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/iot/data/provider/IoTFieldsExtensionProvider;->parseNode(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/iot/data/element/NodeElement;

    move-result-object v6

    .line 57
    .local v6, "node":Lorg/jivesoftware/smackx/iot/data/element/NodeElement;
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .end local v6    # "node":Lorg/jivesoftware/smackx/iot/data/element/NodeElement;
    :goto_2
    nop

    .line 67
    .end local v4    # "eventType":I
    .end local v5    # "name":Ljava/lang/String;
    :cond_5
    :goto_3
    goto :goto_0
.end method

.method public parseNode(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/iot/data/element/NodeElement;
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .line 72
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 73
    .local v0, "initialDepth":I
    invoke-static {p1}, Lorg/jivesoftware/smackx/iot/parser/NodeInfoParser;->parse(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    move-result-object v1

    .line 74
    .local v1, "nodeInfo":Lorg/jivesoftware/smackx/iot/element/NodeInfo;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v2, "timestampElements":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/iot/data/element/TimestampElement;>;"
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 77
    .local v3, "eventType":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "name":Ljava/lang/String;
    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    const/4 v5, 0x3

    if-eq v3, v5, :cond_0

    goto :goto_3

    .line 88
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-ne v5, v0, :cond_5

    .line 89
    nop

    .line 94
    .end local v3    # "eventType":I
    .end local v4    # "name":Ljava/lang/String;
    new-instance v3, Lorg/jivesoftware/smackx/iot/data/element/NodeElement;

    invoke-direct {v3, v1, v2}, Lorg/jivesoftware/smackx/iot/data/element/NodeElement;-><init>(Lorg/jivesoftware/smackx/iot/element/NodeInfo;Ljava/util/List;)V

    return-object v3

    .line 80
    .restart local v3    # "eventType":I
    .restart local v4    # "name":Ljava/lang/String;
    :cond_1
    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0x3492916

    if-eq v6, v7, :cond_3

    :cond_2
    goto :goto_1

    :cond_3
    const-string v6, "timestamp"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_4

    goto :goto_2

    .line 82
    :cond_4
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/iot/data/provider/IoTFieldsExtensionProvider;->parseTimestampElement(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/iot/data/element/TimestampElement;

    move-result-object v5

    .line 83
    .local v5, "timestampElement":Lorg/jivesoftware/smackx/iot/data/element/TimestampElement;
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .end local v5    # "timestampElement":Lorg/jivesoftware/smackx/iot/data/element/TimestampElement;
    :goto_2
    nop

    .line 93
    .end local v3    # "eventType":I
    .end local v4    # "name":Ljava/lang/String;
    :cond_5
    :goto_3
    goto :goto_0
.end method

.method public parseTimestampElement(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/iot/data/element/TimestampElement;
    .locals 16
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    move-object/from16 v0, p1

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 99
    .local v1, "initialDepth":I
    const-string v2, "value"

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, "dateString":Ljava/lang/String;
    invoke-static {v4}, Lorg/jxmpp/util/XmppDateTime;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 101
    .local v5, "date":Ljava/util/Date;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v6, "fields":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/iot/data/element/IoTDataField;>;"
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 104
    .local v7, "eventType":I
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 105
    .local v8, "name":Ljava/lang/String;
    const/4 v9, 0x2

    if-eq v7, v9, :cond_1

    const/4 v9, 0x3

    if-eq v7, v9, :cond_0

    goto/16 :goto_3

    .line 130
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-ne v9, v1, :cond_7

    .line 131
    nop

    .line 136
    .end local v7    # "eventType":I
    .end local v8    # "name":Ljava/lang/String;
    new-instance v2, Lorg/jivesoftware/smackx/iot/data/element/TimestampElement;

    invoke-direct {v2, v5, v6}, Lorg/jivesoftware/smackx/iot/data/element/TimestampElement;-><init>(Ljava/util/Date;Ljava/util/List;)V

    return-object v2

    .line 107
    .restart local v7    # "eventType":I
    .restart local v8    # "name":Ljava/lang/String;
    :cond_1
    const/4 v9, 0x0

    .line 108
    .local v9, "field":Lorg/jivesoftware/smackx/iot/data/element/IoTDataField;
    const-string v10, "name"

    invoke-interface {v0, v3, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 109
    .local v10, "fieldName":Ljava/lang/String;
    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 110
    .local v11, "fieldValue":Ljava/lang/String;
    const/4 v12, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v13

    const v14, 0x197ef

    const/4 v15, 0x1

    if-eq v13, v14, :cond_4

    const v14, 0x3db6c28

    if-eq v13, v14, :cond_3

    :cond_2
    goto :goto_1

    :cond_3
    const-string v13, "boolean"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    move v12, v15

    goto :goto_1

    :cond_4
    const-string v13, "int"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v12, 0x0

    :goto_1
    if-eqz v12, :cond_6

    if-eq v12, v15, :cond_5

    .line 122
    sget-object v12, Lorg/jivesoftware/smackx/iot/data/provider/IoTFieldsExtensionProvider;->LOGGER:Ljava/util/logging/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IoT Data field type \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\' not implement yet. Ignoring."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_2

    .line 117
    :cond_5
    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 118
    .local v12, "value":Z
    new-instance v13, Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$BooleanField;

    invoke-direct {v13, v10, v12}, Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$BooleanField;-><init>(Ljava/lang/String;Z)V

    move-object v9, v13

    .line 120
    .end local v12    # "value":Z
    goto :goto_2

    .line 112
    :cond_6
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 113
    .local v12, "value":I
    new-instance v13, Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$IntField;

    invoke-direct {v13, v10, v12}, Lorg/jivesoftware/smackx/iot/data/element/IoTDataField$IntField;-><init>(Ljava/lang/String;I)V

    move-object v9, v13

    .line 115
    .end local v12    # "value":I
    nop

    .line 125
    :goto_2
    if-eqz v9, :cond_7

    .line 126
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    .end local v7    # "eventType":I
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "field":Lorg/jivesoftware/smackx/iot/data/element/IoTDataField;
    .end local v10    # "fieldName":Ljava/lang/String;
    .end local v11    # "fieldValue":Ljava/lang/String;
    :cond_7
    :goto_3
    goto/16 :goto_0
.end method
