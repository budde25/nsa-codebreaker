.class public Lorg/jivesoftware/smackx/message_markup/provider/MarkupElementProvider;
.super Lorg/jivesoftware/smack/provider/ExtensionElementProvider;
.source "MarkupElementProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/ExtensionElementProvider<",
        "Lorg/jivesoftware/smackx/message_markup/element/MarkupElement;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
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

    .line 38
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/message_markup/provider/MarkupElementProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/message_markup/element/MarkupElement;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/message_markup/element/MarkupElement;
    .locals 17
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    move-object/from16 v0, p1

    invoke-static {}, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement;->getBuilder()Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;

    move-result-object v1

    .line 45
    .local v1, "markup":Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;
    const/4 v2, -0x1

    .local v2, "spanStart":I
    const/4 v3, -0x1

    .line 46
    .local v3, "spanEnd":I
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 48
    .local v4, "spanStyles":Ljava/util/Set;, "Ljava/util/Set<Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;>;"
    const/4 v5, -0x1

    .local v5, "listStart":I
    const/4 v6, -0x1

    .line 49
    .local v6, "listEnd":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v7, "lis":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/message_markup/element/ListElement$ListEntryElement;>;"
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .line 53
    .local v8, "tag":I
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 55
    .local v9, "name":Ljava/lang/String;
    const-string v10, "span"

    const-string v11, "list"

    const/4 v13, 0x3

    const/4 v15, 0x2

    const/4 v12, 0x1

    if-eq v8, v15, :cond_c

    if-eq v8, v13, :cond_0

    goto/16 :goto_9

    .line 111
    :cond_0
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v13

    const v14, -0x407369d8

    if-eq v13, v14, :cond_4

    const v14, 0x32b09e

    if-eq v13, v14, :cond_3

    const v11, 0x35f74a

    if-eq v13, v11, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v10, v12

    goto :goto_2

    :cond_4
    const-string v10, "markup"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v10, v15

    goto :goto_2

    :goto_1
    const/4 v10, -0x1

    :goto_2
    if-eqz v10, :cond_b

    if-eq v10, v12, :cond_6

    if-eq v10, v15, :cond_5

    goto/16 :goto_9

    .line 132
    :cond_5
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;->build()Lorg/jivesoftware/smackx/message_markup/element/MarkupElement;

    move-result-object v10

    return-object v10

    .line 118
    :cond_6
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;->beginList()Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder$ListBuilder;

    move-result-object v10

    .line 119
    .local v10, "listBuilder":Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder$ListBuilder;
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_8

    const/4 v14, 0x0

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/jivesoftware/smackx/message_markup/element/ListElement$ListEntryElement;

    invoke-virtual {v11}, Lorg/jivesoftware/smackx/message_markup/element/ListElement$ListEntryElement;->getStart()I

    move-result v11

    if-ne v11, v5, :cond_7

    goto :goto_3

    .line 120
    :cond_7
    new-instance v11, Lorg/jivesoftware/smack/SmackException;

    const-string v12, "Error while parsing incoming MessageMarkup ListElement: \'start\' attribute of first \'li\' element must equal \'start\' attribute of list."

    invoke-direct {v11, v12}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 123
    :cond_8
    :goto_3
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    if-ge v11, v13, :cond_a

    .line 124
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/jivesoftware/smackx/message_markup/element/ListElement$ListEntryElement;

    invoke-virtual {v13}, Lorg/jivesoftware/smackx/message_markup/element/ListElement$ListEntryElement;->getStart()I

    move-result v13

    .line 125
    .local v13, "elemStart":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    sub-int/2addr v14, v12

    if-ge v11, v14, :cond_9

    add-int/lit8 v14, v11, 0x1

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/jivesoftware/smackx/message_markup/element/ListElement$ListEntryElement;

    invoke-virtual {v14}, Lorg/jivesoftware/smackx/message_markup/element/ListElement$ListEntryElement;->getStart()I

    move-result v14

    goto :goto_5

    :cond_9
    move v14, v6

    .line 126
    .local v14, "elemEnd":I
    :goto_5
    invoke-virtual {v10, v13, v14}, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder$ListBuilder;->addEntry(II)Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder$ListBuilder;

    .line 123
    .end local v13    # "elemStart":I
    .end local v14    # "elemEnd":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 128
    .end local v11    # "i":I
    :cond_a
    invoke-virtual {v10}, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder$ListBuilder;->endList()Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;

    .line 129
    goto/16 :goto_9

    .line 113
    .end local v10    # "listBuilder":Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder$ListBuilder;
    :cond_b
    invoke-virtual {v1, v2, v3, v4}, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;->addSpan(IILjava/util/Set;)Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;

    .line 114
    const/4 v2, -0x1

    const/4 v3, -0x1

    .line 115
    goto/16 :goto_9

    .line 57
    :cond_c
    const/4 v14, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    :cond_d
    goto :goto_6

    :sswitch_0
    const-string v10, "deleted"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    const/4 v12, 0x5

    goto :goto_7

    :sswitch_1
    const-string v10, "emphasis"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    const/4 v12, 0x4

    goto :goto_7

    :sswitch_2
    const-string v10, "bcode"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    goto :goto_7

    :sswitch_3
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    move v12, v15

    goto :goto_7

    :sswitch_4
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    const/4 v12, 0x6

    goto :goto_7

    :sswitch_5
    const-string v10, "code"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    move v12, v13

    goto :goto_7

    :sswitch_6
    const-string v10, "li"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    const/4 v12, 0x7

    goto :goto_7

    :sswitch_7
    const-string v10, "bquote"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    move v12, v14

    goto :goto_7

    :goto_6
    const/4 v12, -0x1

    :goto_7
    const-string v10, "end"

    const-string v11, "start"

    packed-switch v12, :pswitch_data_0

    goto :goto_8

    .line 103
    :pswitch_0
    const-string v10, "Message Markup ListElement \'li\' MUST contain a \'start\' attribute."

    invoke-static {v0, v11, v10}, Lorg/jivesoftware/smack/util/ParserUtils;->getIntegerAttributeOrThrow(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 105
    .local v10, "start":I
    new-instance v11, Lorg/jivesoftware/smackx/message_markup/element/ListElement$ListEntryElement;

    invoke-direct {v11, v10}, Lorg/jivesoftware/smackx/message_markup/element/ListElement$ListEntryElement;-><init>(I)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 95
    .end local v10    # "start":I
    :pswitch_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v12

    .line 96
    const-string v12, "Message Markup ListElement MUST contain a \'start\' attribute."

    invoke-static {v0, v11, v12}, Lorg/jivesoftware/smack/util/ParserUtils;->getIntegerAttributeOrThrow(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 98
    const-string v11, "Message Markup ListElement MUST contain a \'end\' attribute."

    invoke-static {v0, v10, v11}, Lorg/jivesoftware/smack/util/ParserUtils;->getIntegerAttributeOrThrow(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 100
    goto :goto_8

    .line 91
    :pswitch_2
    sget-object v10, Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;->deleted:Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;

    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    goto :goto_8

    .line 87
    :pswitch_3
    sget-object v10, Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;->emphasis:Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;

    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    goto :goto_8

    .line 83
    :pswitch_4
    sget-object v10, Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;->code:Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;

    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    goto :goto_8

    .line 75
    :pswitch_5
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    move-object v4, v12

    .line 76
    const-string v12, "Message Markup SpanElement MUST contain a \'start\' attribute."

    invoke-static {v0, v11, v12}, Lorg/jivesoftware/smack/util/ParserUtils;->getIntegerAttributeOrThrow(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 78
    const-string v11, "Message Markup SpanElement MUST contain a \'end\' attribute."

    invoke-static {v0, v10, v11}, Lorg/jivesoftware/smack/util/ParserUtils;->getIntegerAttributeOrThrow(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 80
    goto :goto_8

    .line 67
    :pswitch_6
    const-string v12, "Message Markup CodeBlockElement MUST contain a \'start\' attribute."

    invoke-static {v0, v11, v12}, Lorg/jivesoftware/smack/util/ParserUtils;->getIntegerAttributeOrThrow(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 69
    .local v11, "start":I
    const-string v12, "Message Markup CodeBlockElement MUST contain a \'end\' attribute."

    invoke-static {v0, v10, v12}, Lorg/jivesoftware/smack/util/ParserUtils;->getIntegerAttributeOrThrow(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 71
    .local v10, "end":I
    invoke-virtual {v1, v11, v10}, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;->setCodeBlock(II)Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;

    .line 72
    goto :goto_8

    .line 59
    .end local v10    # "end":I
    .end local v11    # "start":I
    :pswitch_7
    const-string v12, "Message Markup BlockQuoteElement MUST contain a \'start\' attribute."

    invoke-static {v0, v11, v12}, Lorg/jivesoftware/smack/util/ParserUtils;->getIntegerAttributeOrThrow(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 61
    .restart local v11    # "start":I
    const-string v12, "Message Markup BlockQuoteElement MUST contain a \'end\' attribute."

    invoke-static {v0, v10, v12}, Lorg/jivesoftware/smack/util/ParserUtils;->getIntegerAttributeOrThrow(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 63
    .restart local v10    # "end":I
    invoke-virtual {v1, v11, v10}, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;->setBlockQuote(II)Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;

    .line 64
    nop

    .line 108
    .end local v10    # "end":I
    .end local v11    # "start":I
    :goto_8
    nop

    .line 136
    .end local v8    # "tag":I
    .end local v9    # "name":Ljava/lang/String;
    :goto_9
    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x5255d4a6 -> :sswitch_7
        0xd7d -> :sswitch_6
        0x2eaded -> :sswitch_5
        0x32b09e -> :sswitch_4
        0x35f74a -> :sswitch_3
        0x593ad4f -> :sswitch_2
        0x46e4157c -> :sswitch_1
        0x5c6a3019 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
