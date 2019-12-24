.class public Lorg/jivesoftware/smackx/httpfileupload/provider/SlotProvider;
.super Lorg/jivesoftware/smack/provider/IQProvider;
.source "SlotProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/httpfileupload/provider/SlotProvider$PutElement_V0_4_Content;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/IQProvider<",
        "Lorg/jivesoftware/smackx/httpfileupload/element/Slot;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/jivesoftware/smack/provider/IQProvider;-><init>()V

    return-void
.end method

.method public static parsePutElement_V0_4(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/httpfileupload/provider/SlotProvider$PutElement_V0_4_Content;
    .locals 10
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 113
    .local v0, "initialDepth":I
    const/4 v1, 0x0

    const-string v2, "url"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, "putUrlString":Ljava/lang/String;
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 116
    .local v3, "putUrl":Ljava/net/URL;
    const/4 v4, 0x0

    .line 118
    .local v4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 119
    .local v5, "next":I
    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    goto :goto_3

    .line 136
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-ne v6, v0, :cond_6

    .line 137
    nop

    .line 143
    .end local v5    # "next":I
    new-instance v5, Lorg/jivesoftware/smackx/httpfileupload/provider/SlotProvider$PutElement_V0_4_Content;

    invoke-direct {v5, v3, v4, v1}, Lorg/jivesoftware/smackx/httpfileupload/provider/SlotProvider$PutElement_V0_4_Content;-><init>(Ljava/net/URL;Ljava/util/Map;Lorg/jivesoftware/smackx/httpfileupload/provider/SlotProvider$1;)V

    return-object v5

    .line 121
    .restart local v5    # "next":I
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 122
    .local v6, "name":Ljava/lang/String;
    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, -0x48cb1d73

    if-eq v8, v9, :cond_3

    :cond_2
    goto :goto_1

    :cond_3
    const-string v8, "header"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_4

    goto :goto_2

    .line 124
    :cond_4
    const-string v7, "name"

    invoke-static {p0, v7}, Lorg/jivesoftware/smack/util/ParserUtils;->getRequiredAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 125
    .local v7, "headerName":Ljava/lang/String;
    invoke-static {p0}, Lorg/jivesoftware/smack/util/ParserUtils;->getRequiredNextText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v8

    .line 126
    .local v8, "headerValue":Ljava/lang/String;
    if-nez v4, :cond_5

    .line 127
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    move-object v4, v9

    .line 129
    :cond_5
    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    nop

    .line 134
    .end local v7    # "headerName":Ljava/lang/String;
    .end local v8    # "headerValue":Ljava/lang/String;
    :goto_2
    nop

    .line 141
    .end local v5    # "next":I
    .end local v6    # "name":Ljava/lang/String;
    :cond_6
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

    .line 42
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/httpfileupload/provider/SlotProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/httpfileupload/element/Slot;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/httpfileupload/element/Slot;
    .locals 12
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lorg/jivesoftware/smack/SmackException;
        }
    .end annotation

    .line 46
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "namespace":Ljava/lang/String;
    invoke-static {v0}, Lorg/jivesoftware/smackx/httpfileupload/HttpFileUploadManager;->namespaceToVersion(Ljava/lang/String;)Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;

    move-result-object v1

    .line 49
    .local v1, "version":Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;
    nop

    .line 51
    const/4 v2, 0x0

    .line 52
    .local v2, "putUrl":Ljava/net/URL;
    const/4 v3, 0x0

    .line 53
    .local v3, "getUrl":Ljava/net/URL;
    const/4 v4, 0x0

    .line 56
    .local v4, "putElementV04Content":Lorg/jivesoftware/smackx/httpfileupload/provider/SlotProvider$PutElement_V0_4_Content;
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 58
    .local v5, "event":I
    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v5, v6, :cond_3

    const/4 v8, 0x3

    if-eq v5, v8, :cond_0

    goto/16 :goto_4

    .line 93
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-ne v8, p2, :cond_d

    .line 94
    nop

    .line 100
    .end local v5    # "event":I
    sget-object v5, Lorg/jivesoftware/smackx/httpfileupload/provider/SlotProvider$1;->$SwitchMap$org$jivesoftware$smackx$httpfileupload$UploadService$Version:[I

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;->ordinal()I

    move-result v8

    aget v5, v5, v8

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    .line 102
    new-instance v5, Lorg/jivesoftware/smackx/httpfileupload/element/Slot;

    invoke-static {v4}, Lorg/jivesoftware/smackx/httpfileupload/provider/SlotProvider$PutElement_V0_4_Content;->access$000(Lorg/jivesoftware/smackx/httpfileupload/provider/SlotProvider$PutElement_V0_4_Content;)Ljava/net/URL;

    move-result-object v6

    invoke-static {v4}, Lorg/jivesoftware/smackx/httpfileupload/provider/SlotProvider$PutElement_V0_4_Content;->access$100(Lorg/jivesoftware/smackx/httpfileupload/provider/SlotProvider$PutElement_V0_4_Content;)Ljava/util/Map;

    move-result-object v7

    invoke-direct {v5, v6, v3, v7}, Lorg/jivesoftware/smackx/httpfileupload/element/Slot;-><init>(Ljava/net/URL;Ljava/net/URL;Ljava/util/Map;)V

    return-object v5

    .line 106
    :cond_1
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 104
    :cond_2
    new-instance v5, Lorg/jivesoftware/smackx/httpfileupload/element/Slot_V0_2;

    invoke-direct {v5, v2, v3}, Lorg/jivesoftware/smackx/httpfileupload/element/Slot_V0_2;-><init>(Ljava/net/URL;Ljava/net/URL;)V

    return-object v5

    .line 60
    .restart local v5    # "event":I
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 61
    .local v8, "name":Ljava/lang/String;
    const/4 v9, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, 0x18f56

    if-eq v10, v11, :cond_6

    const v11, 0x1b30f

    if-eq v10, v11, :cond_5

    :cond_4
    goto :goto_1

    :cond_5
    const-string v10, "put"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v9, 0x0

    goto :goto_1

    :cond_6
    const-string v10, "get"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    move v9, v7

    :goto_1
    if-eqz v9, :cond_a

    if-eq v9, v7, :cond_7

    goto :goto_3

    .line 78
    :cond_7
    sget-object v9, Lorg/jivesoftware/smackx/httpfileupload/provider/SlotProvider$1;->$SwitchMap$org$jivesoftware$smackx$httpfileupload$UploadService$Version:[I

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;->ordinal()I

    move-result v10

    aget v9, v9, v10

    if-eq v9, v7, :cond_9

    if-ne v9, v6, :cond_8

    .line 83
    const/4 v6, 0x0

    const-string v7, "url"

    invoke-interface {p1, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 84
    .local v6, "getUrlString":Ljava/lang/String;
    goto :goto_2

    .line 86
    .end local v6    # "getUrlString":Ljava/lang/String;
    :cond_8
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 80
    :cond_9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    .line 81
    .restart local v6    # "getUrlString":Ljava/lang/String;
    nop

    .line 88
    :goto_2
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v3, v7

    goto :goto_3

    .line 63
    .end local v6    # "getUrlString":Ljava/lang/String;
    :cond_a
    sget-object v9, Lorg/jivesoftware/smackx/httpfileupload/provider/SlotProvider$1;->$SwitchMap$org$jivesoftware$smackx$httpfileupload$UploadService$Version:[I

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/httpfileupload/UploadService$Version;->ordinal()I

    move-result v10

    aget v9, v9, v10

    if-eq v9, v7, :cond_c

    if-ne v9, v6, :cond_b

    .line 69
    invoke-static {p1}, Lorg/jivesoftware/smackx/httpfileupload/provider/SlotProvider;->parsePutElement_V0_4(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/httpfileupload/provider/SlotProvider$PutElement_V0_4_Content;

    move-result-object v4

    .line 70
    goto :goto_3

    .line 72
    :cond_b
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 65
    :cond_c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    .line 66
    .local v6, "putUrlString":Ljava/lang/String;
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v2, v7

    .line 67
    nop

    .line 91
    .end local v6    # "putUrlString":Ljava/lang/String;
    :goto_3
    nop

    .line 98
    .end local v5    # "event":I
    .end local v8    # "name":Ljava/lang/String;
    :cond_d
    :goto_4
    goto/16 :goto_0
.end method
