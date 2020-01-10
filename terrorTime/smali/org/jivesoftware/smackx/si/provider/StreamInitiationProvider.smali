.class public Lorg/jivesoftware/smackx/si/provider/StreamInitiationProvider;
.super Lorg/jivesoftware/smack/provider/IQProvider;
.source "StreamInitiationProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/IQProvider<",
        "Lorg/jivesoftware/smackx/si/packet/StreamInitiation;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lorg/jivesoftware/smackx/si/provider/StreamInitiationProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smackx/si/provider/StreamInitiationProvider;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
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

    .line 40
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/si/provider/StreamInitiationProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/si/packet/StreamInitiation;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/si/packet/StreamInitiation;
    .locals 23
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    move-object/from16 v1, p1

    const/4 v0, 0x0

    .line 49
    .local v0, "done":Z
    const-string v2, ""

    const-string v3, "id"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "id":Ljava/lang/String;
    const-string v4, "mime-type"

    invoke-interface {v1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "mimeType":Ljava/lang/String;
    new-instance v5, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;

    invoke-direct {v5}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;-><init>()V

    .line 55
    .local v5, "initiation":Lorg/jivesoftware/smackx/si/packet/StreamInitiation;
    const/4 v6, 0x0

    .line 56
    .local v6, "name":Ljava/lang/String;
    const/4 v7, 0x0

    .line 57
    .local v7, "size":Ljava/lang/String;
    const/4 v8, 0x0

    .line 58
    .local v8, "hash":Ljava/lang/String;
    const/4 v9, 0x0

    .line 59
    .local v9, "date":Ljava/lang/String;
    const/4 v10, 0x0

    .line 60
    .local v10, "desc":Ljava/lang/String;
    const/4 v11, 0x0

    .line 63
    .local v11, "isRanged":Z
    const/4 v12, 0x0

    .line 64
    .local v12, "form":Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    new-instance v13, Lorg/jivesoftware/smackx/xdata/provider/DataFormProvider;

    invoke-direct {v13}, Lorg/jivesoftware/smackx/xdata/provider/DataFormProvider;-><init>()V

    move v14, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move v6, v0

    .line 69
    .end local v0    # "done":Z
    .local v6, "done":Z
    .local v7, "name":Ljava/lang/String;
    .local v8, "size":Ljava/lang/String;
    .local v9, "hash":Ljava/lang/String;
    .local v10, "date":Ljava/lang/String;
    .local v11, "desc":Ljava/lang/String;
    .local v13, "dataFormProvider":Lorg/jivesoftware/smackx/xdata/provider/DataFormProvider;
    .local v14, "isRanged":Z
    :goto_0
    if-nez v6, :cond_b

    .line 70
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v15

    .line 71
    .local v15, "eventType":I
    move/from16 v16, v6

    .end local v6    # "done":Z
    .local v16, "done":Z
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 72
    .local v6, "elementName":Ljava/lang/String;
    move-object/from16 v17, v12

    .end local v12    # "form":Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    .local v17, "form":Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v12

    .line 73
    .local v12, "namespace":Ljava/lang/String;
    const/4 v0, 0x2

    move-object/from16 v18, v4

    .end local v4    # "mimeType":Ljava/lang/String;
    .local v18, "mimeType":Ljava/lang/String;
    const-string v4, "file"

    if-ne v15, v0, :cond_5

    .line 74
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const-string v0, "name"

    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 76
    const-string v0, "size"

    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 77
    const-string v0, "hash"

    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 78
    const-string v0, "date"

    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move/from16 v6, v16

    move-object/from16 v12, v17

    move-object/from16 v4, v18

    goto :goto_0

    .line 79
    :cond_0
    const-string v0, "desc"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    move/from16 v6, v16

    move-object/from16 v12, v17

    move-object/from16 v4, v18

    goto :goto_0

    .line 81
    :cond_1
    const-string v0, "range"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    const/4 v14, 0x1

    move/from16 v6, v16

    move-object/from16 v12, v17

    move-object/from16 v4, v18

    goto :goto_0

    .line 83
    :cond_2
    const-string v0, "x"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 84
    const-string v0, "jabber:x:data"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    invoke-virtual {v13, v1}, Lorg/jivesoftware/smackx/xdata/provider/DataFormProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Element;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    move-object v12, v0

    move/from16 v6, v16

    move-object/from16 v4, v18

    .end local v17    # "form":Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    .local v0, "form":Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    goto :goto_0

    .line 84
    .end local v0    # "form":Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    .restart local v17    # "form":Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    :cond_3
    move-object/from16 v19, v2

    move-object/from16 v21, v8

    goto/16 :goto_3

    .line 83
    :cond_4
    move-object/from16 v19, v2

    move-object/from16 v21, v8

    goto/16 :goto_3

    .line 87
    :cond_5
    const/4 v0, 0x3

    if-ne v15, v0, :cond_a

    .line 88
    const-string v0, "si"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 89
    const/4 v0, 0x1

    move v6, v0

    move-object/from16 v12, v17

    move-object/from16 v4, v18

    .end local v16    # "done":Z
    .local v0, "done":Z
    goto/16 :goto_0

    .line 90
    .end local v0    # "done":Z
    .restart local v16    # "done":Z
    :cond_6
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 91
    move-object v4, v2

    const-wide/16 v1, 0x0

    .line 92
    .local v1, "fileSize":J
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_7

    .line 94
    :try_start_0
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide/from16 v1, v19

    .line 98
    move-object/from16 v19, v4

    move-object/from16 v20, v6

    move-object/from16 v21, v8

    move-object/from16 v22, v12

    goto :goto_1

    .line 96
    :catch_0
    move-exception v0

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    .line 97
    .local v0, "e":Ljava/lang/NumberFormatException;
    move-object/from16 v19, v4

    sget-object v4, Lorg/jivesoftware/smackx/si/provider/StreamInitiationProvider;->LOGGER:Ljava/util/logging/Logger;

    move-object/from16 v20, v6

    .end local v6    # "elementName":Ljava/lang/String;
    .local v20, "elementName":Ljava/lang/String;
    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    move-object/from16 v21, v8

    .end local v8    # "size":Ljava/lang/String;
    .local v21, "size":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v12

    .end local v12    # "namespace":Ljava/lang/String;
    .local v22, "namespace":Ljava/lang/String;
    const-string v12, "Failed to parse file size from "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v8, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 92
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v20    # "elementName":Ljava/lang/String;
    .end local v21    # "size":Ljava/lang/String;
    .end local v22    # "namespace":Ljava/lang/String;
    .restart local v6    # "elementName":Ljava/lang/String;
    .restart local v8    # "size":Ljava/lang/String;
    .restart local v12    # "namespace":Ljava/lang/String;
    :cond_7
    move-object/from16 v19, v4

    move-object/from16 v20, v6

    move-object/from16 v21, v8

    move-object/from16 v22, v12

    .line 101
    .end local v6    # "elementName":Ljava/lang/String;
    .end local v8    # "size":Ljava/lang/String;
    .end local v12    # "namespace":Ljava/lang/String;
    .restart local v20    # "elementName":Ljava/lang/String;
    .restart local v21    # "size":Ljava/lang/String;
    .restart local v22    # "namespace":Ljava/lang/String;
    :goto_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    move-object v4, v0

    .line 102
    .local v4, "fileDate":Ljava/util/Date;
    if-eqz v10, :cond_8

    .line 104
    :try_start_1
    invoke-static {v10}, Lorg/jxmpp/util/XmppDateTime;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v0

    .line 107
    goto :goto_2

    .line 105
    :catch_1
    move-exception v0

    .line 110
    :cond_8
    :goto_2
    new-instance v0, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;

    invoke-direct {v0, v7, v1, v2}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;-><init>(Ljava/lang/String;J)V

    .line 111
    .local v0, "file":Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;
    invoke-virtual {v0, v9}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;->setHash(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0, v4}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;->setDate(Ljava/util/Date;)V

    .line 113
    invoke-virtual {v0, v11}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;->setDesc(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0, v14}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;->setRanged(Z)V

    .line 115
    invoke-virtual {v5, v0}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;->setFile(Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;)V

    .line 116
    .end local v0    # "file":Lorg/jivesoftware/smackx/si/packet/StreamInitiation$File;
    .end local v1    # "fileSize":J
    .end local v4    # "fileDate":Ljava/util/Date;
    goto :goto_3

    .line 90
    .end local v20    # "elementName":Ljava/lang/String;
    .end local v21    # "size":Ljava/lang/String;
    .end local v22    # "namespace":Ljava/lang/String;
    .restart local v6    # "elementName":Ljava/lang/String;
    .restart local v8    # "size":Ljava/lang/String;
    .restart local v12    # "namespace":Ljava/lang/String;
    :cond_9
    move-object/from16 v19, v2

    move-object/from16 v20, v6

    move-object/from16 v21, v8

    move-object/from16 v22, v12

    .end local v6    # "elementName":Ljava/lang/String;
    .end local v8    # "size":Ljava/lang/String;
    .end local v12    # "namespace":Ljava/lang/String;
    .restart local v20    # "elementName":Ljava/lang/String;
    .restart local v21    # "size":Ljava/lang/String;
    .restart local v22    # "namespace":Ljava/lang/String;
    goto :goto_3

    .line 87
    .end local v20    # "elementName":Ljava/lang/String;
    .end local v21    # "size":Ljava/lang/String;
    .end local v22    # "namespace":Ljava/lang/String;
    .restart local v6    # "elementName":Ljava/lang/String;
    .restart local v8    # "size":Ljava/lang/String;
    .restart local v12    # "namespace":Ljava/lang/String;
    :cond_a
    move-object/from16 v19, v2

    move-object/from16 v20, v6

    move-object/from16 v21, v8

    move-object/from16 v22, v12

    .line 69
    .end local v6    # "elementName":Ljava/lang/String;
    .end local v8    # "size":Ljava/lang/String;
    .end local v12    # "namespace":Ljava/lang/String;
    .end local v15    # "eventType":I
    .restart local v21    # "size":Ljava/lang/String;
    :goto_3
    move-object/from16 v1, p1

    move/from16 v6, v16

    move-object/from16 v12, v17

    move-object/from16 v4, v18

    move-object/from16 v2, v19

    move-object/from16 v8, v21

    goto/16 :goto_0

    .line 120
    .end local v16    # "done":Z
    .end local v17    # "form":Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    .end local v18    # "mimeType":Ljava/lang/String;
    .end local v21    # "size":Ljava/lang/String;
    .local v4, "mimeType":Ljava/lang/String;
    .local v6, "done":Z
    .restart local v8    # "size":Ljava/lang/String;
    .local v12, "form":Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    :cond_b
    move-object/from16 v18, v4

    .end local v4    # "mimeType":Ljava/lang/String;
    .restart local v18    # "mimeType":Ljava/lang/String;
    invoke-virtual {v5, v3}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;->setSessionID(Ljava/lang/String;)V

    .line 121
    move-object/from16 v1, v18

    .end local v18    # "mimeType":Ljava/lang/String;
    .local v1, "mimeType":Ljava/lang/String;
    invoke-virtual {v5, v1}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;->setMimeType(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v5, v12}, Lorg/jivesoftware/smackx/si/packet/StreamInitiation;->setFeatureNegotiationForm(Lorg/jivesoftware/smackx/xdata/packet/DataForm;)V

    .line 125
    return-object v5
.end method
