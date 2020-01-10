.class public final Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq;
.super Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp;
.source "HttpOverXmppReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;
    }
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "req"


# instance fields
.field private final ibb:Z

.field private final jingle:Z

.field private final maxChunkSize:I

.field private final method:Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

.field private final resource:Ljava/lang/String;

.field private final sipub:Z


# direct methods
.method private constructor <init>(Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;)V
    .locals 1
    .param p1, "builder"    # Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;

    .line 30
    const-string v0, "req"

    invoke-direct {p0, v0, p1}, Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp;-><init>(Ljava/lang/String;Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Builder;)V

    .line 31
    invoke-static {p1}, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;->access$000(Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;)Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq;->method:Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

    .line 32
    invoke-static {p1}, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;->access$100(Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq;->resource:Ljava/lang/String;

    .line 33
    invoke-static {p1}, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;->access$200(Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;)I

    move-result v0

    iput v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq;->maxChunkSize:I

    .line 34
    invoke-static {p1}, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;->access$300(Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq;->ibb:Z

    .line 35
    invoke-static {p1}, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;->access$400(Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq;->jingle:Z

    .line 36
    invoke-static {p1}, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;->access$500(Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq;->sipub:Z

    .line 37
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;
    .param p2, "x1"    # Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$1;

    .line 25
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq;-><init>(Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;)V

    return-void
.end method

.method public static builder()Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;
    .locals 2

    .line 118
    new-instance v0, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$Builder;-><init>(Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq$1;)V

    return-object v0
.end method


# virtual methods
.method protected getIQHoxtChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .locals 2
    .param p1, "builder"    # Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    .line 52
    iget-object v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq;->method:Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

    const-string v1, "method"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/Enum;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 53
    iget-object v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq;->resource:Ljava/lang/String;

    const-string v1, "resource"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 54
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "version"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 55
    iget v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq;->maxChunkSize:I

    const-string v1, "maxChunkSize"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optIntAttribute(Ljava/lang/String;I)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 56
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq;->sipub:Z

    const-string v1, "sipub"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optBooleanAttributeDefaultTrue(Ljava/lang/String;Z)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 57
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq;->ibb:Z

    const-string v1, "ibb"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optBooleanAttributeDefaultTrue(Ljava/lang/String;Z)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 58
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq;->jingle:Z

    const-string v1, "jingle"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optBooleanAttributeDefaultTrue(Ljava/lang/String;Z)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 59
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 60
    return-object p1
.end method

.method public getMaxChunkSize()I
    .locals 1

    .line 87
    iget v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq;->maxChunkSize:I

    return v0
.end method

.method public getMethod()Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq;->method:Lorg/jivesoftware/smackx/hoxt/packet/HttpMethod;

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq;->resource:Ljava/lang/String;

    return-object v0
.end method

.method public isIbb()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq;->ibb:Z

    return v0
.end method

.method public isJingle()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq;->jingle:Z

    return v0
.end method

.method public isSipub()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppReq;->sipub:Z

    return v0
.end method
