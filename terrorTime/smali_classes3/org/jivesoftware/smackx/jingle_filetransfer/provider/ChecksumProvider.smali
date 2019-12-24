.class public Lorg/jivesoftware/smackx/jingle_filetransfer/provider/ChecksumProvider;
.super Lorg/jivesoftware/smack/provider/ExtensionElementProvider;
.source "ChecksumProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/ExtensionElementProvider<",
        "Lorg/jivesoftware/smackx/jingle_filetransfer/element/Checksum;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/jingle_filetransfer/provider/ChecksumProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/jingle_filetransfer/element/Checksum;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/jingle_filetransfer/element/Checksum;
    .locals 16
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 39
    .local v1, "creator":Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;
    const/4 v2, 0x0

    const-string v3, "creator"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 40
    .local v3, "creatorString":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 41
    invoke-static {v3}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;

    move-result-object v1

    .line 43
    :cond_0
    const-string v4, "name"

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 46
    .local v4, "name":Ljava/lang/String;
    invoke-static {}, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild;->getBuilder()Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;

    move-result-object v5

    .line 47
    .local v5, "cb":Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;
    const/4 v6, 0x0

    .line 48
    .local v6, "hashElement":Lorg/jivesoftware/smackx/hashes/element/HashElement;
    const/4 v7, 0x0

    .line 50
    .local v7, "range":Lorg/jivesoftware/smackx/jingle_filetransfer/element/Range;
    const/4 v8, 0x1

    .line 51
    .local v8, "go":Z
    :goto_0
    if-eqz v8, :cond_11

    .line 52
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v9

    .line 53
    .local v9, "tag":I
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    .line 55
    .local v10, "n":Ljava/lang/String;
    const/4 v11, 0x2

    const-string v12, "range"

    const v13, 0x674393d

    const/4 v14, 0x1

    if-ne v9, v11, :cond_8

    .line 56
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    const v15, 0x30c10e

    if-eq v11, v15, :cond_3

    if-eq v11, v13, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move v11, v14

    goto :goto_2

    :cond_3
    const-string v11, "hash"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x0

    goto :goto_2

    :goto_1
    const/4 v11, -0x1

    :goto_2
    if-eqz v11, :cond_7

    if-eq v11, v14, :cond_4

    goto :goto_5

    .line 62
    :cond_4
    const-string v11, "offset"

    invoke-interface {v0, v2, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 63
    .local v11, "offset":Ljava/lang/String;
    const-string v12, "length"

    invoke-interface {v0, v2, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 64
    .local v12, "length":Ljava/lang/String;
    if-nez v11, :cond_5

    const/4 v14, 0x0

    goto :goto_3

    :cond_5
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    :goto_3
    move v13, v14

    .line 65
    .local v13, "o":I
    if-nez v12, :cond_6

    const/4 v15, -0x1

    goto :goto_4

    :cond_6
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    :goto_4
    move v14, v15

    .line 66
    .local v14, "l":I
    new-instance v15, Lorg/jivesoftware/smackx/jingle_filetransfer/element/Range;

    invoke-direct {v15, v13, v14}, Lorg/jivesoftware/smackx/jingle_filetransfer/element/Range;-><init>(II)V

    move-object v7, v15

    goto :goto_5

    .line 58
    .end local v11    # "offset":Ljava/lang/String;
    .end local v12    # "length":Ljava/lang/String;
    .end local v13    # "o":I
    .end local v14    # "l":I
    :cond_7
    new-instance v11, Lorg/jivesoftware/smackx/hashes/provider/HashElementProvider;

    invoke-direct {v11}, Lorg/jivesoftware/smackx/hashes/provider/HashElementProvider;-><init>()V

    invoke-virtual {v11, v0}, Lorg/jivesoftware/smackx/hashes/provider/HashElementProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Element;

    move-result-object v11

    move-object v6, v11

    check-cast v6, Lorg/jivesoftware/smackx/hashes/element/HashElement;

    .line 59
    nop

    .line 66
    :goto_5
    goto :goto_8

    .line 68
    :cond_8
    const/4 v11, 0x3

    if-ne v9, v11, :cond_10

    .line 69
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    const v15, 0x2ff57c

    if-eq v11, v15, :cond_b

    if-eq v11, v13, :cond_a

    :cond_9
    goto :goto_6

    :cond_a
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v11, 0x0

    goto :goto_7

    :cond_b
    const-string v11, "file"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    move v11, v14

    goto :goto_7

    :goto_6
    const/4 v11, -0x1

    :goto_7
    if-eqz v11, :cond_f

    if-eq v11, v14, :cond_c

    goto :goto_8

    .line 78
    :cond_c
    if-eqz v6, :cond_d

    .line 79
    invoke-virtual {v5, v6}, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;->setHash(Lorg/jivesoftware/smackx/hashes/element/HashElement;)Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;

    .line 81
    :cond_d
    if-eqz v7, :cond_e

    .line 82
    invoke-virtual {v5, v7}, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;->setRange(Lorg/jivesoftware/smackx/jingle_filetransfer/element/Range;)Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;

    .line 84
    :cond_e
    const/4 v8, 0x0

    goto :goto_8

    .line 71
    :cond_f
    if-eqz v6, :cond_10

    if-eqz v7, :cond_10

    .line 72
    new-instance v11, Lorg/jivesoftware/smackx/jingle_filetransfer/element/Range;

    invoke-virtual {v7}, Lorg/jivesoftware/smackx/jingle_filetransfer/element/Range;->getOffset()I

    move-result v12

    invoke-virtual {v7}, Lorg/jivesoftware/smackx/jingle_filetransfer/element/Range;->getLength()I

    move-result v13

    invoke-direct {v11, v12, v13, v6}, Lorg/jivesoftware/smackx/jingle_filetransfer/element/Range;-><init>(IILorg/jivesoftware/smackx/hashes/element/HashElement;)V

    move-object v7, v11

    .line 73
    const/4 v6, 0x0

    .line 87
    .end local v9    # "tag":I
    .end local v10    # "n":Ljava/lang/String;
    :cond_10
    :goto_8
    goto/16 :goto_0

    .line 88
    :cond_11
    new-instance v2, Lorg/jivesoftware/smackx/jingle_filetransfer/element/Checksum;

    invoke-virtual {v5}, Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild$Builder;->build()Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild;

    move-result-object v9

    invoke-direct {v2, v1, v4, v9}, Lorg/jivesoftware/smackx/jingle_filetransfer/element/Checksum;-><init>(Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle_filetransfer/element/JingleFileTransferChild;)V

    return-object v2
.end method
