.class public Lorg/jivesoftware/smackx/bob/provider/BoBIQProvider;
.super Lorg/jivesoftware/smack/provider/IQProvider;
.source "BoBIQProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/IQProvider<",
        "Lorg/jivesoftware/smackx/bob/element/BoBIQ;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/bob/provider/BoBIQProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/bob/element/BoBIQ;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/bob/element/BoBIQ;
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    const-string v0, ""

    const-string v1, "cid"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "cid":Ljava/lang/String;
    invoke-static {v1}, Lorg/jivesoftware/smackx/bob/BoBHash;->fromCid(Ljava/lang/String;)Lorg/jivesoftware/smackx/bob/BoBHash;

    move-result-object v2

    .line 42
    .local v2, "bobHash":Lorg/jivesoftware/smackx/bob/BoBHash;
    const-string v3, "type"

    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "dataType":Ljava/lang/String;
    const-string v3, "max-age"

    const/4 v4, -0x1

    invoke-static {p1, v3, v4}, Lorg/jivesoftware/smack/util/ParserUtils;->getIntegerAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    .line 45
    .local v3, "maxAge":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    .line 48
    .local v4, "base64EncodedData":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 49
    new-instance v5, Lorg/jivesoftware/smackx/bob/BoBData;

    invoke-direct {v5, v0, v4, v3}, Lorg/jivesoftware/smackx/bob/BoBData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .local v5, "bobData":Lorg/jivesoftware/smackx/bob/BoBData;
    goto :goto_0

    .line 51
    .end local v5    # "bobData":Lorg/jivesoftware/smackx/bob/BoBData;
    :cond_0
    const/4 v5, 0x0

    .line 54
    .restart local v5    # "bobData":Lorg/jivesoftware/smackx/bob/BoBData;
    :goto_0
    new-instance v6, Lorg/jivesoftware/smackx/bob/element/BoBIQ;

    invoke-direct {v6, v2, v5}, Lorg/jivesoftware/smackx/bob/element/BoBIQ;-><init>(Lorg/jivesoftware/smackx/bob/BoBHash;Lorg/jivesoftware/smackx/bob/BoBData;)V

    return-object v6
.end method
