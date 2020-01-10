.class public Lorg/jivesoftware/smackx/hoxt/provider/HttpOverXmppReqProvider;
.super Lorg/jivesoftware/smackx/hoxt/provider/AbstractHttpOverXmppProvider;
.source "HttpOverXmppReqProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smackx/hoxt/provider/AbstractHttpOverXmppProvider<",
        "Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq;",
        ">;"
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_MAX_CHUNK_SIZE:Ljava/lang/String; = "maxChunkSize"

.field private static final ATTRIBUTE_METHOD:Ljava/lang/String; = "method"

.field private static final ATTRIBUTE_RESOURCE:Ljava/lang/String; = "resource"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/jivesoftware/smackx/hoxt/provider/AbstractHttpOverXmppProvider;-><init>()V

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

    .line 32
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/hoxt/provider/HttpOverXmppReqProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq;
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    invoke-static {}, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq;->builder()Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;

    move-result-object v0

    .line 41
    .local v0, "builder":Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;
    const-string v1, ""

    const-string v2, "resource"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;->setResource(Ljava/lang/String;)Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;

    .line 42
    const-string v2, "version"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;->setVersion(Ljava/lang/String;)Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Builder;

    .line 44
    const-string v2, "method"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "method":Ljava/lang/String;
    invoke-static {v2}, Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;->setMethod(Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;)Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;

    .line 47
    const-string v3, "sipub"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "sipubStr":Ljava/lang/String;
    const-string v4, "ibb"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, "ibbStr":Ljava/lang/String;
    const-string v5, "jingle"

    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 51
    .local v5, "jingleStr":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 52
    invoke-static {v3}, Lorg/jivesoftware/smack/util/ParserUtils;->parseXmlBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v0, v6}, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;->setSipub(Z)Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;

    .line 54
    :cond_0
    if-eqz v4, :cond_1

    .line 55
    invoke-static {v4}, Lorg/jivesoftware/smack/util/ParserUtils;->parseXmlBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v0, v6}, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;->setIbb(Z)Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;

    .line 57
    :cond_1
    if-eqz v5, :cond_2

    .line 58
    invoke-static {v5}, Lorg/jivesoftware/smack/util/ParserUtils;->parseXmlBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v0, v6}, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;->setJingle(Z)Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;

    .line 61
    :cond_2
    const-string v6, "maxChunkSize"

    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "maxChunkSize":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;->setMaxChunkSize(I)Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;

    .line 66
    :cond_3
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/hoxt/provider/HttpOverXmppReqProvider;->parseHeaders(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/shim/packet/HeadersExtension;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;->setHeaders(Lorg/jivesoftware/smackx/shim/packet/HeadersExtension;)Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Builder;

    .line 67
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/hoxt/provider/HttpOverXmppReqProvider;->parseData(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Data;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;->setData(Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Data;)Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Builder;

    .line 69
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;->build()Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq;

    move-result-object v6

    return-object v6
.end method
