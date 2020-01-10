.class public Lorg/jivesoftware/smackx/rsm/provider/RSMSetProvider;
.super Lorg/jivesoftware/smack/provider/ExtensionElementProvider;
.source "RSMSetProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/ExtensionElementProvider<",
        "Lorg/jivesoftware/smackx/rsm/packet/RSMSet;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/jivesoftware/smackx/rsm/provider/RSMSetProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lorg/jivesoftware/smackx/rsm/provider/RSMSetProvider;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/rsm/provider/RSMSetProvider;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/rsm/provider/RSMSetProvider;->INSTANCE:Lorg/jivesoftware/smackx/rsm/provider/RSMSetProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
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

    .line 29
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/rsm/provider/RSMSetProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/rsm/packet/RSMSet;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/rsm/packet/RSMSet;
    .locals 18
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, "after":Ljava/lang/String;
    const/4 v1, 0x0

    .line 38
    .local v1, "before":Ljava/lang/String;
    const/4 v2, -0x1

    .line 39
    .local v2, "count":I
    const/4 v3, -0x1

    .line 40
    .local v3, "index":I
    const/4 v4, 0x0

    .line 41
    .local v4, "last":Ljava/lang/String;
    const/4 v5, -0x1

    .line 42
    .local v5, "max":I
    const/4 v6, 0x0

    .line 43
    .local v6, "firstString":Ljava/lang/String;
    const/4 v7, -0x1

    .line 46
    .local v7, "firstIndex":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .line 47
    .local v8, "event":I
    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eq v8, v10, :cond_2

    if-eq v8, v9, :cond_0

    goto :goto_1

    .line 77
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    move/from16 v15, p2

    if-ne v9, v15, :cond_1

    .line 78
    nop

    .line 82
    .end local v8    # "event":I
    new-instance v17, Lorg/jivesoftware/smackx/rsm/packet/RSMSet;

    move-object/from16 v8, v17

    move-object v9, v0

    move-object v10, v1

    move v11, v2

    move v12, v3

    move-object v13, v4

    move v14, v5

    move-object v15, v6

    move/from16 v16, v7

    invoke-direct/range {v8 .. v16}, Lorg/jivesoftware/smackx/rsm/packet/RSMSet;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;I)V

    return-object v17

    .line 81
    :cond_1
    :goto_1
    move-object/from16 v9, p1

    goto/16 :goto_5

    .line 49
    .restart local v8    # "event":I
    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 50
    .local v11, "name":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v12

    const-string v13, "index"

    const/4 v14, -0x1

    sparse-switch v12, :sswitch_data_0

    :cond_3
    goto :goto_2

    :sswitch_0
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x4

    goto :goto_3

    :sswitch_1
    const-string v10, "first"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_3

    :sswitch_2
    const-string v9, "count"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v9, v10

    goto :goto_3

    :sswitch_3
    const-string v9, "after"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x0

    goto :goto_3

    :sswitch_4
    const-string v9, "last"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x5

    goto :goto_3

    :sswitch_5
    const-string v9, "max"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x6

    goto :goto_3

    :sswitch_6
    const-string v9, "before"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_3

    :goto_2
    move v9, v14

    :goto_3
    packed-switch v9, :pswitch_data_0

    move-object/from16 v9, p1

    goto :goto_4

    .line 72
    :pswitch_0
    invoke-static/range {p1 .. p1}, Lorg/jivesoftware/smack/util/ParserUtils;->getIntegerFromNextText(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v5

    move-object/from16 v9, p1

    goto :goto_4

    .line 69
    :pswitch_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    .line 70
    move-object/from16 v9, p1

    goto :goto_4

    .line 66
    :pswitch_2
    invoke-static/range {p1 .. p1}, Lorg/jivesoftware/smack/util/ParserUtils;->getIntegerFromNextText(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v3

    .line 67
    move-object/from16 v9, p1

    goto :goto_4

    .line 61
    :pswitch_3
    move-object/from16 v9, p1

    invoke-static {v9, v13, v14}, Lorg/jivesoftware/smack/util/ParserUtils;->getIntegerAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v7

    .line 63
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    .line 64
    goto :goto_4

    .line 58
    :pswitch_4
    move-object/from16 v9, p1

    invoke-static/range {p1 .. p1}, Lorg/jivesoftware/smack/util/ParserUtils;->getIntegerFromNextText(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v2

    .line 59
    goto :goto_4

    .line 55
    :pswitch_5
    move-object/from16 v9, p1

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 56
    goto :goto_4

    .line 52
    :pswitch_6
    move-object/from16 v9, p1

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 53
    nop

    .line 75
    :goto_4
    nop

    .line 81
    .end local v8    # "event":I
    .end local v11    # "name":Ljava/lang/String;
    :goto_5
    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x5305c081 -> :sswitch_6
        0x1a564 -> :sswitch_5
        0x329296 -> :sswitch_4
        0x58705dc -> :sswitch_3
        0x5a7510f -> :sswitch_2
        0x5ced2b0 -> :sswitch_1
        0x5fb28d2 -> :sswitch_0
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
