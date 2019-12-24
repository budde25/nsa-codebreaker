.class public Lorg/jivesoftware/smackx/hoxt/provider/HttpOverXmppRespProvider;
.super Lorg/jivesoftware/smackx/hoxt/provider/AbstractHttpOverXmppProvider;
.source "HttpOverXmppRespProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smackx/hoxt/provider/AbstractHttpOverXmppProvider<",
        "Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppResp;",
        ">;"
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_STATUS_CODE:Ljava/lang/String; = "statusCode"

.field private static final ATTRIBUTE_STATUS_MESSAGE:Ljava/lang/String; = "statusMessage"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
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

    .line 31
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/hoxt/provider/HttpOverXmppRespProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppResp;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppResp;
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    const-string v0, ""

    const-string v1, "version"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "version":Ljava/lang/String;
    const-string v2, "statusMessage"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, "statusMessage":Ljava/lang/String;
    const-string v3, "statusCode"

    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "statusCodeString":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 43
    .local v3, "statusCode":I
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/hoxt/provider/HttpOverXmppRespProvider;->parseHeaders(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/shim/packet/HeadersExtension;

    move-result-object v4

    .line 44
    .local v4, "headers":Lorg/jivesoftware/smackx/shim/packet/HeadersExtension;
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/hoxt/provider/HttpOverXmppRespProvider;->parseData(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Data;

    move-result-object v5

    .line 45
    .local v5, "data":Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Data;
    invoke-static {}, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppResp;->builder()Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppResp$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppResp$Builder;->setHeaders(Lorg/jivesoftware/smackx/shim/packet/HeadersExtension;)Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Builder;

    move-result-object v6

    check-cast v6, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppResp$Builder;

    invoke-virtual {v6, v5}, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppResp$Builder;->setData(Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Data;)Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Builder;

    move-result-object v6

    check-cast v6, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppResp$Builder;

    invoke-virtual {v6, v3}, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppResp$Builder;->setStatusCode(I)Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppResp$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppResp$Builder;->setStatusMessage(Ljava/lang/String;)Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppResp$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppResp$Builder;->setVersion(Ljava/lang/String;)Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Builder;

    move-result-object v6

    check-cast v6, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppResp$Builder;

    invoke-virtual {v6}, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppResp$Builder;->build()Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppResp;

    move-result-object v6

    return-object v6
.end method
