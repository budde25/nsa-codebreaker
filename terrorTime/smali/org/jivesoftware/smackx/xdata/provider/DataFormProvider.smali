.class public Lorg/jivesoftware/smackx/xdata/provider/DataFormProvider;
.super Lorg/jivesoftware/smack/provider/ExtensionElementProvider;
.source "DataFormProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/ExtensionElementProvider<",
        "Lorg/jivesoftware/smackx/xdata/packet/DataForm;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/jivesoftware/smackx/xdata/provider/DataFormProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lorg/jivesoftware/smackx/xdata/provider/DataFormProvider;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/xdata/provider/DataFormProvider;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/xdata/provider/DataFormProvider;->INSTANCE:Lorg/jivesoftware/smackx/xdata/provider/DataFormProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/jivesoftware/smack/provider/ExtensionElementProvider;-><init>()V

    return-void
.end method

.method private static parseField(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/xdata/FormField;
    .locals 13
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 100
    .local v0, "initialDepth":I
    const-string v1, ""

    const-string v2, "var"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "var":Ljava/lang/String;
    const-string v3, "type"

    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jivesoftware/smackx/xdata/FormField$Type;->fromString(Ljava/lang/String;)Lorg/jivesoftware/smackx/xdata/FormField$Type;

    move-result-object v3

    .line 104
    .local v3, "type":Lorg/jivesoftware/smackx/xdata/FormField$Type;
    sget-object v4, Lorg/jivesoftware/smackx/xdata/FormField$Type;->fixed:Lorg/jivesoftware/smackx/xdata/FormField$Type;

    if-ne v3, v4, :cond_0

    .line 105
    new-instance v4, Lorg/jivesoftware/smackx/xdata/FormField;

    invoke-direct {v4}, Lorg/jivesoftware/smackx/xdata/FormField;-><init>()V

    .local v4, "formField":Lorg/jivesoftware/smackx/xdata/FormField;
    goto :goto_0

    .line 107
    .end local v4    # "formField":Lorg/jivesoftware/smackx/xdata/FormField;
    :cond_0
    new-instance v4, Lorg/jivesoftware/smackx/xdata/FormField;

    invoke-direct {v4, v2}, Lorg/jivesoftware/smackx/xdata/FormField;-><init>(Ljava/lang/String;)V

    .line 108
    .restart local v4    # "formField":Lorg/jivesoftware/smackx/xdata/FormField;
    invoke-virtual {v4, v3}, Lorg/jivesoftware/smackx/xdata/FormField;->setType(Lorg/jivesoftware/smackx/xdata/FormField$Type;)V

    .line 110
    :goto_0
    const-string v5, "label"

    invoke-interface {p0, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/jivesoftware/smackx/xdata/FormField;->setLabel(Ljava/lang/String;)V

    .line 113
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 114
    .local v1, "eventType":I
    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v1, v6, :cond_2

    if-eq v1, v5, :cond_1

    goto/16 :goto_4

    .line 140
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-ne v5, v0, :cond_a

    .line 141
    nop

    .line 146
    .end local v1    # "eventType":I
    return-object v4

    .line 116
    .restart local v1    # "eventType":I
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 117
    .local v7, "name":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v8

    .line 118
    .local v8, "namespace":Ljava/lang/String;
    const/4 v9, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/4 v11, 0x4

    const/4 v12, 0x1

    sparse-switch v10, :sswitch_data_0

    :cond_3
    goto :goto_2

    :sswitch_0
    const-string v10, "value"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v9, v12

    goto :goto_2

    :sswitch_1
    const-string v10, "desc"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v9, 0x0

    goto :goto_2

    :sswitch_2
    const-string v10, "required"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v9, v6

    goto :goto_2

    :sswitch_3
    const-string v10, "option"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v9, v5

    goto :goto_2

    :sswitch_4
    const-string v10, "validate"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v9, v11

    :goto_2
    if-eqz v9, :cond_8

    if-eq v9, v12, :cond_7

    if-eq v9, v6, :cond_6

    if-eq v9, v5, :cond_5

    if-eq v9, v11, :cond_4

    goto :goto_3

    .line 133
    :cond_4
    const-string v5, "http://jabber.org/protocol/xdata-validate"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 134
    invoke-static {p0}, Lorg/jivesoftware/smackx/xdatavalidation/provider/DataValidationProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smackx/xdata/FormField;->setValidateElement(Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement;)V

    goto :goto_3

    .line 129
    :cond_5
    invoke-static {p0}, Lorg/jivesoftware/smackx/xdata/provider/DataFormProvider;->parseOption(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/xdata/FormField$Option;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smackx/xdata/FormField;->addOption(Lorg/jivesoftware/smackx/xdata/FormField$Option;)V

    .line 130
    goto :goto_3

    .line 126
    :cond_6
    invoke-virtual {v4, v12}, Lorg/jivesoftware/smackx/xdata/FormField;->setRequired(Z)V

    .line 127
    goto :goto_3

    .line 123
    :cond_7
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smackx/xdata/FormField;->addValue(Ljava/lang/CharSequence;)V

    .line 124
    goto :goto_3

    .line 120
    :cond_8
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smackx/xdata/FormField;->setDescription(Ljava/lang/String;)V

    .line 121
    nop

    .line 138
    :cond_9
    :goto_3
    nop

    .line 145
    .end local v1    # "eventType":I
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "namespace":Ljava/lang/String;
    :cond_a
    :goto_4
    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x54b6e6ea -> :sswitch_4
        -0x3c35778b -> :sswitch_3
        -0x176ed461 -> :sswitch_2
        0x2efe91 -> :sswitch_1
        0x6ac9171 -> :sswitch_0
    .end sparse-switch
.end method

.method private static parseItem(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/xdata/packet/DataForm$Item;
    .locals 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 151
    .local v0, "initialDepth":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v1, "fields":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/xdata/FormField;>;"
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 154
    .local v2, "eventType":I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_3

    .line 164
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ne v3, v0, :cond_5

    .line 165
    nop

    .line 170
    .end local v2    # "eventType":I
    new-instance v2, Lorg/jivesoftware/smackx/xdata/packet/DataForm$Item;

    invoke-direct {v2, v1}, Lorg/jivesoftware/smackx/xdata/packet/DataForm$Item;-><init>(Ljava/util/List;)V

    return-object v2

    .line 156
    .restart local v2    # "eventType":I
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "name":Ljava/lang/String;
    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x5cea0fa

    if-eq v5, v6, :cond_3

    :cond_2
    goto :goto_1

    :cond_3
    const-string v5, "field"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_4

    goto :goto_2

    .line 159
    :cond_4
    invoke-static {p0}, Lorg/jivesoftware/smackx/xdata/provider/DataFormProvider;->parseField(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/xdata/FormField;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    :goto_2
    nop

    .line 169
    .end local v2    # "eventType":I
    .end local v3    # "name":Ljava/lang/String;
    :cond_5
    :goto_3
    goto :goto_0
.end method

.method private static parseOption(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/xdata/FormField$Option;
    .locals 8
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 199
    .local v0, "initialDepth":I
    const/4 v1, 0x0

    .line 200
    .local v1, "option":Lorg/jivesoftware/smackx/xdata/FormField$Option;
    const-string v2, ""

    const-string v3, "label"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "label":Ljava/lang/String;
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 203
    .local v3, "eventType":I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    goto :goto_3

    .line 213
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-ne v4, v0, :cond_5

    .line 214
    nop

    .line 219
    .end local v3    # "eventType":I
    return-object v1

    .line 205
    .restart local v3    # "eventType":I
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 206
    .local v4, "name":Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0x6ac9171

    if-eq v6, v7, :cond_3

    :cond_2
    goto :goto_1

    :cond_3
    const-string v6, "value"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_4

    goto :goto_2

    .line 208
    :cond_4
    new-instance v5, Lorg/jivesoftware/smackx/xdata/FormField$Option;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Lorg/jivesoftware/smackx/xdata/FormField$Option;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v5

    .line 211
    :goto_2
    nop

    .line 218
    .end local v3    # "eventType":I
    .end local v4    # "name":Ljava/lang/String;
    :cond_5
    :goto_3
    goto :goto_0
.end method

.method private static parseReported(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/xdata/packet/DataForm$ReportedData;
    .locals 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 175
    .local v0, "initialDepth":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v1, "fields":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/xdata/FormField;>;"
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 178
    .local v2, "eventType":I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_3

    .line 188
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ne v3, v0, :cond_5

    .line 189
    nop

    .line 194
    .end local v2    # "eventType":I
    new-instance v2, Lorg/jivesoftware/smackx/xdata/packet/DataForm$ReportedData;

    invoke-direct {v2, v1}, Lorg/jivesoftware/smackx/xdata/packet/DataForm$ReportedData;-><init>(Ljava/util/List;)V

    return-object v2

    .line 180
    .restart local v2    # "eventType":I
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, "name":Ljava/lang/String;
    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x5cea0fa

    if-eq v5, v6, :cond_3

    :cond_2
    goto :goto_1

    :cond_3
    const-string v5, "field"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_4

    goto :goto_2

    .line 183
    :cond_4
    invoke-static {p0}, Lorg/jivesoftware/smackx/xdata/provider/DataFormProvider;->parseField(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/xdata/FormField;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    :goto_2
    nop

    .line 193
    .end local v2    # "eventType":I
    .end local v3    # "name":Ljava/lang/String;
    :cond_5
    :goto_3
    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smack/packet/Element;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/xdata/provider/DataFormProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    const-string v0, ""

    const-string v1, "type"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;->fromString(Ljava/lang/String;)Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;

    move-result-object v0

    .line 51
    .local v0, "dataFormType":Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;
    new-instance v1, Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    invoke-direct {v1, v0}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;-><init>(Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;)V

    .line 53
    .local v1, "dataForm":Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 54
    .local v2, "eventType":I
    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_0

    goto/16 :goto_4

    .line 89
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ne v3, p2, :cond_4

    .line 90
    nop

    .line 95
    .end local v2    # "eventType":I
    return-object v1

    .line 56
    .restart local v2    # "eventType":I
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 57
    .local v5, "name":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v6

    .line 58
    .local v6, "namespace":Ljava/lang/String;
    const/4 v7, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_2
    goto :goto_1

    :sswitch_0
    const-string v3, "instructions"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :sswitch_1
    const-string v3, "title"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :sswitch_2
    const-string v3, "query"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x5

    goto :goto_2

    :sswitch_3
    const-string v3, "field"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_2

    :sswitch_4
    const-string v3, "page"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x6

    goto :goto_2

    :sswitch_5
    const-string v4, "item"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :sswitch_6
    const-string v3, "reported"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x4

    goto :goto_2

    :goto_1
    move v3, v7

    :goto_2
    packed-switch v3, :pswitch_data_0

    goto :goto_3

    .line 82
    :pswitch_0
    const-string v3, "http://jabber.org/protocol/xdata-layout"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 83
    invoke-static {p1}, Lorg/jivesoftware/smackx/xdatalayout/provider/DataLayoutProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/xdatalayout/packet/DataLayout;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->addExtensionElement(Lorg/jivesoftware/smack/packet/Element;)V

    goto :goto_3

    .line 76
    :pswitch_1
    const-string v3, "jabber:iq:roster"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 77
    sget-object v3, Lorg/jivesoftware/smack/roster/provider/RosterPacketProvider;->INSTANCE:Lorg/jivesoftware/smack/roster/provider/RosterPacketProvider;

    invoke-virtual {v3, p1}, Lorg/jivesoftware/smack/roster/provider/RosterPacketProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Element;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->addExtensionElement(Lorg/jivesoftware/smack/packet/Element;)V

    goto :goto_3

    .line 72
    :pswitch_2
    invoke-static {p1}, Lorg/jivesoftware/smackx/xdata/provider/DataFormProvider;->parseReported(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/xdata/packet/DataForm$ReportedData;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->setReportedData(Lorg/jivesoftware/smackx/xdata/packet/DataForm$ReportedData;)V

    .line 73
    goto :goto_3

    .line 69
    :pswitch_3
    invoke-static {p1}, Lorg/jivesoftware/smackx/xdata/provider/DataFormProvider;->parseItem(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/xdata/packet/DataForm$Item;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->addItem(Lorg/jivesoftware/smackx/xdata/packet/DataForm$Item;)V

    .line 70
    goto :goto_3

    .line 66
    :pswitch_4
    invoke-static {p1}, Lorg/jivesoftware/smackx/xdata/provider/DataFormProvider;->parseField(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/xdata/FormField;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->addField(Lorg/jivesoftware/smackx/xdata/FormField;)V

    .line 67
    goto :goto_3

    .line 63
    :pswitch_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->setTitle(Ljava/lang/String;)V

    .line 64
    goto :goto_3

    .line 60
    :pswitch_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->addInstruction(Ljava/lang/String;)V

    .line 61
    nop

    .line 87
    :cond_3
    :goto_3
    nop

    .line 94
    .end local v2    # "eventType":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "namespace":Ljava/lang/String;
    :cond_4
    :goto_4
    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x19741b2d -> :sswitch_6
        0x317b13 -> :sswitch_5
        0x34628f -> :sswitch_4
        0x5cea0fa -> :sswitch_3
        0x66f18c8 -> :sswitch_2
        0x6942258 -> :sswitch_1
        0x2d24a5a5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
