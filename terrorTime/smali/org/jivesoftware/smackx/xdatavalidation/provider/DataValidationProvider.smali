.class public Lorg/jivesoftware/smackx/xdatavalidation/provider/DataValidationProvider;
.super Ljava/lang/Object;
.source "DataValidationProvider.java"


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lorg/jivesoftware/smackx/xdatavalidation/provider/DataValidationProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smackx/xdatavalidation/provider/DataValidationProvider;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement;
    .locals 13
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 45
    .local v0, "initialDepth":I
    const-string v1, ""

    const-string v2, "datatype"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "dataType":Ljava/lang/String;
    const/4 v3, 0x0

    .line 47
    .local v3, "dataValidation":Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement;
    const/4 v4, 0x0

    .line 50
    .local v4, "listRange":Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$ListRange;
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 51
    .local v5, "eventType":I
    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eq v5, v7, :cond_2

    if-eq v5, v6, :cond_0

    goto/16 :goto_4

    .line 84
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-ne v6, v0, :cond_b

    .line 85
    if-nez v3, :cond_1

    .line 88
    new-instance v1, Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$BasicValidateElement;

    invoke-direct {v1, v2}, Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$BasicValidateElement;-><init>(Ljava/lang/String;)V

    move-object v3, v1

    .line 90
    :cond_1
    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement;->setListRange(Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$ListRange;)V

    .line 91
    nop

    .line 96
    .end local v5    # "eventType":I
    return-object v3

    .line 53
    .restart local v5    # "eventType":I
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 54
    .local v8, "name":Ljava/lang/String;
    const/4 v9, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/4 v11, 0x4

    const/4 v12, 0x1

    sparse-switch v10, :sswitch_data_0

    :cond_3
    goto :goto_1

    :sswitch_0
    const-string v10, "regex"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v9, v6

    goto :goto_1

    :sswitch_1
    const-string v10, "range"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v9, v7

    goto :goto_1

    :sswitch_2
    const-string v10, "basic"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v9, v12

    goto :goto_1

    :sswitch_3
    const-string v10, "open"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v9, 0x0

    goto :goto_1

    :sswitch_4
    const-string v10, "list-range"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v9, v11

    :goto_1
    if-eqz v9, :cond_a

    if-eq v9, v12, :cond_9

    const-string v10, "max"

    const-string v12, "min"

    if-eq v9, v7, :cond_8

    if-eq v9, v6, :cond_7

    if-eq v9, v11, :cond_4

    goto :goto_3

    .line 71
    :cond_4
    invoke-static {p0, v12}, Lorg/jivesoftware/smack/util/ParserUtils;->getLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    .line 72
    .local v6, "min":Ljava/lang/Long;
    invoke-static {p0, v10}, Lorg/jivesoftware/smack/util/ParserUtils;->getLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    .line 73
    .local v7, "max":Ljava/lang/Long;
    if-nez v6, :cond_6

    if-eqz v7, :cond_5

    goto :goto_2

    .line 76
    :cond_5
    sget-object v9, Lorg/jivesoftware/smackx/xdatavalidation/provider/DataValidationProvider;->LOGGER:Ljava/util/logging/Logger;

    const-string v10, "Ignoring list-range element without min or max attribute"

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 78
    goto :goto_3

    .line 74
    :cond_6
    :goto_2
    new-instance v9, Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$ListRange;

    invoke-direct {v9, v6, v7}, Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$ListRange;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    move-object v4, v9

    goto :goto_3

    .line 68
    .end local v6    # "min":Ljava/lang/Long;
    .end local v7    # "max":Ljava/lang/Long;
    :cond_7
    new-instance v6, Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$RegexValidateElement;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v2, v7}, Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$RegexValidateElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v6

    .line 69
    goto :goto_3

    .line 62
    :cond_8
    new-instance v6, Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$RangeValidateElement;

    .line 63
    invoke-interface {p0, v1, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 64
    invoke-interface {p0, v1, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v2, v7, v9}, Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$RangeValidateElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v6

    .line 66
    goto :goto_3

    .line 59
    :cond_9
    new-instance v6, Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$BasicValidateElement;

    invoke-direct {v6, v2}, Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$BasicValidateElement;-><init>(Ljava/lang/String;)V

    move-object v3, v6

    .line 60
    goto :goto_3

    .line 56
    :cond_a
    new-instance v6, Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$OpenValidateElement;

    invoke-direct {v6, v2}, Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement$OpenValidateElement;-><init>(Ljava/lang/String;)V

    move-object v3, v6

    .line 57
    nop

    .line 82
    :goto_3
    nop

    .line 95
    .end local v5    # "eventType":I
    .end local v8    # "name":Ljava/lang/String;
    :cond_b
    :goto_4
    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2b3a70b2 -> :sswitch_4
        0x34264a -> :sswitch_3
        0x592d42e -> :sswitch_2
        0x674393d -> :sswitch_1
        0x675f047 -> :sswitch_0
    .end sparse-switch
.end method
