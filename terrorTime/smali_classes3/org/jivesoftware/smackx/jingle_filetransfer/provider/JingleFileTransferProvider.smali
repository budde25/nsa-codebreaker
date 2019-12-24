.class public Lorg/jivesoftware/smackx/jingle_filetransfer/provider/JingleFileTransferProvider;
.super Lorg/jivesoftware/smackx/jingle/provider/JingleContentDescriptionProvider;
.source "JingleFileTransferProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smackx/jingle/provider/JingleContentDescriptionProvider<",
        "Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransfer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lorg/jivesoftware/smackx/jingle/provider/JingleContentDescriptionProvider;-><init>()V

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
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/jingle_filetransfer/provider/JingleFileTransferProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransfer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/jingle_filetransfer/provider/JingleFileTransferProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransfer;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransfer;
    .locals 16
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    move-object/from16 v0, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v1, "payloads":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/jivesoftware/smackx/jingle/element/JingleContentDescriptionChildElement;>;"
    const/4 v2, 0x0

    .line 45
    .local v2, "inRange":Z
    invoke-static {}, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild;->getBuilder()Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;

    move-result-object v3

    .line 46
    .local v3, "builder":Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;
    const/4 v4, 0x0

    .line 48
    .local v4, "inRangeHash":Lorg/jivesoftware/smackx/hashes/element/HashElement;
    const/4 v5, 0x0

    .line 49
    .local v5, "offset":I
    const/4 v6, -0x1

    .line 53
    .local v6, "length":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v7

    .line 54
    .local v7, "tag":I
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 56
    .local v8, "elem":Ljava/lang/String;
    const-string v9, "range"

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, -0x1

    const/4 v14, 0x2

    if-ne v7, v14, :cond_5

    .line 57
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v9, "media-type"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v10, v14

    goto :goto_2

    :sswitch_1
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v10, 0x5

    goto :goto_2

    :sswitch_2
    const-string v9, "size"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v10, 0x4

    goto :goto_2

    :sswitch_3
    const-string v9, "name"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_2

    :sswitch_4
    const-string v9, "hash"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v10, 0x6

    goto :goto_2

    :sswitch_5
    const-string v9, "desc"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v10, v12

    goto :goto_2

    :sswitch_6
    const-string v9, "date"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v10, v11

    goto :goto_2

    :goto_1
    move v10, v13

    :goto_2
    packed-switch v10, :pswitch_data_0

    goto/16 :goto_3

    .line 92
    :pswitch_0
    if-eqz v2, :cond_1

    .line 93
    new-instance v9, Lorg/jivesoftware/smackx/hashes/provider/HashElementProvider;

    invoke-direct {v9}, Lorg/jivesoftware/smackx/hashes/provider/HashElementProvider;-><init>()V

    invoke-virtual {v9, v0}, Lorg/jivesoftware/smackx/hashes/provider/HashElementProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Element;

    move-result-object v9

    move-object v4, v9

    check-cast v4, Lorg/jivesoftware/smackx/hashes/element/HashElement;

    goto/16 :goto_3

    .line 95
    :cond_1
    new-instance v9, Lorg/jivesoftware/smackx/hashes/provider/HashElementProvider;

    invoke-direct {v9}, Lorg/jivesoftware/smackx/hashes/provider/HashElementProvider;-><init>()V

    invoke-virtual {v9, v0}, Lorg/jivesoftware/smackx/hashes/provider/HashElementProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Element;

    move-result-object v9

    check-cast v9, Lorg/jivesoftware/smackx/hashes/element/HashElement;

    invoke-virtual {v3, v9}, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;->setHash(Lorg/jivesoftware/smackx/hashes/element/HashElement;)Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;

    goto :goto_3

    .line 79
    :pswitch_1
    const/4 v2, 0x1

    .line 80
    const/4 v9, 0x0

    const-string v10, "offset"

    invoke-interface {v0, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 81
    .local v10, "offsetString":Ljava/lang/String;
    const-string v12, "length"

    invoke-interface {v0, v9, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 82
    .local v9, "lengthString":Ljava/lang/String;
    if-eqz v10, :cond_2

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    :cond_2
    move v5, v11

    .line 83
    if-eqz v9, :cond_3

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    :cond_3
    move v6, v13

    .line 85
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 86
    const/4 v2, 0x0

    .line 87
    new-instance v11, Lorg/jivesoftware/smackx/jingle_filetransfer/element/Range;

    invoke-direct {v11, v5, v6}, Lorg/jivesoftware/smackx/jingle_filetransfer/element/Range;-><init>(II)V

    invoke-virtual {v3, v11}, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;->setRange(Lorg/jivesoftware/smackx/jingle_filetransfer/element/Range;)Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;

    goto :goto_3

    .line 75
    .end local v9    # "lengthString":Ljava/lang/String;
    .end local v10    # "offsetString":Ljava/lang/String;
    :pswitch_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v3, v9}, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;->setSize(I)Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;

    .line 76
    goto :goto_3

    .line 71
    :pswitch_3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;->setName(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;

    .line 72
    goto :goto_3

    .line 67
    :pswitch_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;->setMediaType(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;

    .line 68
    goto :goto_3

    .line 63
    :pswitch_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;->setDescription(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;

    .line 64
    goto :goto_3

    .line 59
    :pswitch_6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/jxmpp/util/XmppDateTime;->parseXEP0082Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v3, v9}, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;->setDate(Ljava/util/Date;)Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;

    .line 60
    nop

    .line 97
    :cond_4
    :goto_3
    goto :goto_5

    .line 100
    :cond_5
    if-ne v7, v10, :cond_d

    .line 101
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v15, -0x66ca7c04

    if-eq v10, v15, :cond_9

    const v15, 0x2ff57c

    if-eq v10, v15, :cond_8

    const v15, 0x674393d

    if-eq v10, v15, :cond_7

    :cond_6
    goto :goto_4

    :cond_7
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v13, v11

    goto :goto_4

    :cond_8
    const-string v9, "file"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v13, v12

    goto :goto_4

    :cond_9
    const-string v9, "description"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v13, v14

    :goto_4
    if-eqz v13, :cond_c

    if-eq v13, v12, :cond_b

    if-eq v13, v14, :cond_a

    goto :goto_5

    .line 115
    :cond_a
    new-instance v9, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransfer;

    invoke-direct {v9, v1}, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransfer;-><init>(Ljava/util/List;)V

    return-object v9

    .line 110
    :cond_b
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;->build()Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-static {}, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild;->getBuilder()Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;

    move-result-object v3

    .line 112
    goto :goto_5

    .line 104
    :cond_c
    const/4 v2, 0x0

    .line 105
    new-instance v9, Lorg/jivesoftware/smackx/jingle_filetransfer/element/Range;

    invoke-direct {v9, v5, v6, v4}, Lorg/jivesoftware/smackx/jingle_filetransfer/element/Range;-><init>(IILorg/jivesoftware/smackx/hashes/element/HashElement;)V

    invoke-virtual {v3, v9}, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;->setRange(Lorg/jivesoftware/smackx/jingle_filetransfer/element/Range;)Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;

    .line 106
    const/4 v4, 0x0

    .line 118
    .end local v7    # "tag":I
    .end local v8    # "elem":Ljava/lang/String;
    :cond_d
    :goto_5
    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2eefae -> :sswitch_6
        0x2efe91 -> :sswitch_5
        0x30c10e -> :sswitch_4
        0x337a8b -> :sswitch_3
        0x35e001 -> :sswitch_2
        0x674393d -> :sswitch_1
        0x70df8f83 -> :sswitch_0
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
