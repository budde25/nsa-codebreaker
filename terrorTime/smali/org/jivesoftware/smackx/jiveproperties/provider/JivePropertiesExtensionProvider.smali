.class public Lorg/jivesoftware/smackx/jiveproperties/provider/JivePropertiesExtensionProvider;
.super Lorg/jivesoftware/smack/provider/ExtensionElementProvider;
.source "JivePropertiesExtensionProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/ExtensionElementProvider<",
        "Lorg/jivesoftware/smackx/jiveproperties/packet/JivePropertiesExtension;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lorg/jivesoftware/smackx/jiveproperties/provider/JivePropertiesExtensionProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smackx/jiveproperties/provider/JivePropertiesExtensionProvider;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
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

    .line 36
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/jiveproperties/provider/JivePropertiesExtensionProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/jiveproperties/packet/JivePropertiesExtension;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/jiveproperties/packet/JivePropertiesExtension;
    .locals 15
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v1, v0

    .line 60
    .local v1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 61
    .local v0, "eventType":I
    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ne v0, v3, :cond_e

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "property"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 63
    const/4 v4, 0x0

    .line 64
    .local v4, "done":Z
    const/4 v6, 0x0

    .line 65
    .local v6, "name":Ljava/lang/String;
    const/4 v7, 0x0

    .line 66
    .local v7, "type":Ljava/lang/String;
    const/4 v8, 0x0

    .line 67
    .local v8, "valueText":Ljava/lang/String;
    const/4 v9, 0x0

    .line 68
    .local v9, "value":Ljava/lang/Object;
    :goto_1
    if-nez v4, :cond_d

    .line 69
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    .line 70
    .end local v0    # "eventType":I
    .local v10, "eventType":I
    if-ne v10, v3, :cond_2

    .line 71
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "elementName":Ljava/lang/String;
    const-string v11, "name"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 73
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v13, p1

    goto :goto_2

    .line 75
    :cond_0
    const-string v11, "value"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 76
    const-string v11, ""

    const-string v12, "type"

    move-object/from16 v13, p1

    invoke-interface {v13, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 77
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 75
    :cond_1
    move-object/from16 v13, p1

    .line 79
    .end local v0    # "elementName":Ljava/lang/String;
    :goto_2
    move v0, v10

    goto :goto_1

    .line 80
    :cond_2
    move-object/from16 v13, p1

    if-ne v10, v2, :cond_c

    .line 81
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 82
    const-string v0, "integer"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    move-object v9, v0

    .end local v9    # "value":Ljava/lang/Object;
    .local v0, "value":Ljava/lang/Object;
    goto/16 :goto_3

    .line 85
    .end local v0    # "value":Ljava/lang/Object;
    .restart local v9    # "value":Ljava/lang/Object;
    :cond_3
    const-string v0, "long"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 86
    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    move-object v9, v0

    .end local v9    # "value":Ljava/lang/Object;
    .restart local v0    # "value":Ljava/lang/Object;
    goto/16 :goto_3

    .line 88
    .end local v0    # "value":Ljava/lang/Object;
    .restart local v9    # "value":Ljava/lang/Object;
    :cond_4
    const-string v0, "float"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 89
    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    move-object v9, v0

    .end local v9    # "value":Ljava/lang/Object;
    .restart local v0    # "value":Ljava/lang/Object;
    goto :goto_3

    .line 91
    .end local v0    # "value":Ljava/lang/Object;
    .restart local v9    # "value":Ljava/lang/Object;
    :cond_5
    const-string v0, "double"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 92
    invoke-static {v8}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    move-object v9, v0

    .end local v9    # "value":Ljava/lang/Object;
    .restart local v0    # "value":Ljava/lang/Object;
    goto :goto_3

    .line 94
    .end local v0    # "value":Ljava/lang/Object;
    .restart local v9    # "value":Ljava/lang/Object;
    :cond_6
    const-string v0, "boolean"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 96
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    move-object v9, v0

    .end local v9    # "value":Ljava/lang/Object;
    .restart local v0    # "value":Ljava/lang/Object;
    goto :goto_3

    .line 99
    .end local v0    # "value":Ljava/lang/Object;
    .restart local v9    # "value":Ljava/lang/Object;
    :cond_7
    const-string v0, "string"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 100
    move-object v0, v8

    move-object v9, v0

    .end local v9    # "value":Ljava/lang/Object;
    .restart local v0    # "value":Ljava/lang/Object;
    goto :goto_3

    .line 102
    .end local v0    # "value":Ljava/lang/Object;
    .restart local v9    # "value":Ljava/lang/Object;
    :cond_8
    const-string v0, "java-object"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 103
    invoke-static {}, Lorg/jivesoftware/smackx/jiveproperties/JivePropertiesManager;->isJavaObjectEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 105
    :try_start_0
    invoke-static {v8}, Lorg/jivesoftware/smack/util/stringencoder/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 106
    .local v0, "bytes":[B
    new-instance v11, Ljava/io/ObjectInputStream;

    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-direct {v12, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v11, v12}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 108
    .local v11, "in":Ljava/io/ObjectInputStream;
    invoke-virtual {v11}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v12

    .line 112
    .end local v9    # "value":Ljava/lang/Object;
    .end local v11    # "in":Ljava/io/ObjectInputStream;
    .local v0, "value":Ljava/lang/Object;
    move-object v9, v0

    goto :goto_3

    .line 110
    .end local v0    # "value":Ljava/lang/Object;
    .restart local v9    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    sget-object v11, Lorg/jivesoftware/smackx/jiveproperties/provider/JivePropertiesExtensionProvider;->LOGGER:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v14, "Error parsing java object"

    invoke-virtual {v11, v12, v14, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 115
    :cond_9
    sget-object v0, Lorg/jivesoftware/smackx/jiveproperties/provider/JivePropertiesExtensionProvider;->LOGGER:Ljava/util/logging/Logger;

    const-string v11, "JavaObject is not enabled. Enable with JivePropertiesManager.setJavaObjectEnabled(true)"

    invoke-virtual {v0, v11}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 118
    :cond_a
    :goto_3
    if-eqz v6, :cond_b

    if-eqz v9, :cond_b

    .line 119
    invoke-interface {v1, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_b
    const/4 v4, 0x1

    move v0, v10

    goto/16 :goto_1

    .line 68
    :cond_c
    move v0, v10

    goto/16 :goto_1

    .end local v10    # "eventType":I
    .local v0, "eventType":I
    :cond_d
    move-object/from16 v13, p1

    .line 125
    .end local v4    # "done":Z
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    .end local v8    # "valueText":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/Object;
    goto :goto_4

    .line 61
    :cond_e
    move-object/from16 v13, p1

    .line 126
    if-ne v0, v2, :cond_f

    .line 127
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "properties"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 128
    nop

    .line 132
    .end local v0    # "eventType":I
    new-instance v0, Lorg/jivesoftware/smackx/jiveproperties/packet/JivePropertiesExtension;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/jiveproperties/packet/JivePropertiesExtension;-><init>(Ljava/util/Map;)V

    return-object v0

    .line 131
    :cond_f
    :goto_4
    goto/16 :goto_0
.end method
