.class public abstract Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "AbstractHttpOverXmpp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Ibb;,
        Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$ChunkedBase64;,
        Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Xml;,
        Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Base64;,
        Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Text;,
        Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Data;,
        Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Builder;
    }
.end annotation


# static fields
.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:http"


# instance fields
.field private final data:Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Data;

.field private final headers:Lorg/jivesoftware/smackx/shim/packet/HeadersExtension;

.field private final version:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Builder;)V
    .locals 2
    .param p1, "element"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Builder<",
            "**>;)V"
        }
    .end annotation

    .line 42
    .local p2, "builder":Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Builder;, "Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Builder<**>;"
    const-string v0, "urn:xmpp:http"

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {p2}, Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Builder;->access$000(Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Builder;)Lorg/jivesoftware/smackx/shim/packet/HeadersExtension;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp;->headers:Lorg/jivesoftware/smackx/shim/packet/HeadersExtension;

    .line 44
    invoke-static {p2}, Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Builder;->access$100(Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Builder;)Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Data;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp;->data:Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Data;

    .line 45
    invoke-static {p2}, Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Builder;->access$200(Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Builder;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "version must not be null"

    invoke-static {v0, v1}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp;->version:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public getData()Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Data;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp;->data:Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Data;

    return-object v0
.end method

.method public getHeaders()Lorg/jivesoftware/smackx/shim/packet/HeadersExtension;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp;->headers:Lorg/jivesoftware/smackx/shim/packet/HeadersExtension;

    return-object v0
.end method

.method protected getIQChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .locals 2
    .param p1, "xml"    # Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    .line 50
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp;->getIQHoxtChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    move-result-object v0

    .line 51
    .local v0, "builder":Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    iget-object v1, p0, Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp;->headers:Lorg/jivesoftware/smackx/shim/packet/HeadersExtension;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optAppend(Lorg/jivesoftware/smack/packet/Element;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 52
    iget-object v1, p0, Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp;->data:Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Data;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optAppend(Lorg/jivesoftware/smack/packet/Element;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 53
    return-object v0
.end method

.method protected abstract getIQHoxtChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp;->version:Ljava/lang/String;

    return-object v0
.end method
