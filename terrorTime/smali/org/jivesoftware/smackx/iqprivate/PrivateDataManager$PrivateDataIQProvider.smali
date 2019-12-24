.class public Lorg/jivesoftware/smackx/iqprivate/PrivateDataManager$PrivateDataIQProvider;
.super Lorg/jivesoftware/smack/provider/IQProvider;
.source "PrivateDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/iqprivate/PrivateDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrivateDataIQProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/IQProvider<",
        "Lorg/jivesoftware/smackx/iqprivate/packet/PrivateDataIQ;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 236
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

    .line 236
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/iqprivate/PrivateDataManager$PrivateDataIQProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/iqprivate/packet/PrivateDataIQ;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/iqprivate/packet/PrivateDataIQ;
    .locals 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lorg/jivesoftware/smack/SmackException;
        }
    .end annotation

    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, "privateData":Lorg/jivesoftware/smackx/iqprivate/packet/PrivateData;
    const/4 v1, 0x0

    .line 243
    .local v1, "done":Z
    :goto_0
    if-nez v1, :cond_8

    .line 244
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 245
    .local v2, "eventType":I
    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne v2, v4, :cond_6

    .line 246
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 247
    .local v5, "elementName":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v6

    .line 249
    .local v6, "namespace":Ljava/lang/String;
    invoke-static {v5, v6}, Lorg/jivesoftware/smackx/iqprivate/PrivateDataManager;->getPrivateDataProvider(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smackx/iqprivate/provider/PrivateDataProvider;

    move-result-object v7

    .line 251
    .local v7, "provider":Lorg/jivesoftware/smackx/iqprivate/provider/PrivateDataProvider;
    if-eqz v7, :cond_0

    .line 252
    invoke-interface {v7, p1}, Lorg/jivesoftware/smackx/iqprivate/provider/PrivateDataProvider;->parsePrivateData(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/iqprivate/packet/PrivateData;

    move-result-object v0

    goto :goto_4

    .line 256
    :cond_0
    new-instance v8, Lorg/jivesoftware/smackx/iqprivate/packet/DefaultPrivateData;

    invoke-direct {v8, v5, v6}, Lorg/jivesoftware/smackx/iqprivate/packet/DefaultPrivateData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .local v8, "data":Lorg/jivesoftware/smackx/iqprivate/packet/DefaultPrivateData;
    const/4 v9, 0x0

    .line 258
    .local v9, "finished":Z
    :goto_1
    if-nez v9, :cond_5

    .line 259
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    .line 260
    .local v10, "event":I
    if-ne v10, v4, :cond_3

    .line 261
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 263
    .local v11, "name":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 264
    const-string v12, ""

    invoke-virtual {v8, v11, v12}, Lorg/jivesoftware/smackx/iqprivate/packet/DefaultPrivateData;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 268
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    .line 269
    const/4 v12, 0x4

    if-ne v10, v12, :cond_2

    .line 270
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v12

    .line 271
    .local v12, "value":Ljava/lang/String;
    invoke-virtual {v8, v11, v12}, Lorg/jivesoftware/smackx/iqprivate/packet/DefaultPrivateData;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/String;
    :cond_2
    :goto_2
    goto :goto_3

    .line 275
    :cond_3
    if-ne v10, v3, :cond_4

    .line 276
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 277
    const/4 v9, 0x1

    .line 280
    .end local v10    # "event":I
    :cond_4
    :goto_3
    goto :goto_1

    .line 281
    :cond_5
    move-object v0, v8

    .line 283
    .end local v5    # "elementName":Ljava/lang/String;
    .end local v6    # "namespace":Ljava/lang/String;
    .end local v7    # "provider":Lorg/jivesoftware/smackx/iqprivate/provider/PrivateDataProvider;
    .end local v8    # "data":Lorg/jivesoftware/smackx/iqprivate/packet/DefaultPrivateData;
    .end local v9    # "finished":Z
    :goto_4
    goto :goto_5

    .line 284
    :cond_6
    if-ne v2, v3, :cond_7

    .line 285
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "query"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 286
    const/4 v1, 0x1

    .line 289
    .end local v2    # "eventType":I
    :cond_7
    :goto_5
    goto :goto_0

    .line 290
    :cond_8
    new-instance v2, Lorg/jivesoftware/smackx/iqprivate/packet/PrivateDataIQ;

    invoke-direct {v2, v0}, Lorg/jivesoftware/smackx/iqprivate/packet/PrivateDataIQ;-><init>(Lorg/jivesoftware/smackx/iqprivate/packet/PrivateData;)V

    return-object v2
.end method
