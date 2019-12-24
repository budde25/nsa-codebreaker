.class public final Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppResp;
.super Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp;
.source "HttpOverXmppResp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppResp$Builder;
    }
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "resp"


# instance fields
.field private final statusCode:I

.field private final statusMessage:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppResp$Builder;)V
    .locals 2
    .param p1, "builder"    # Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppResp$Builder;

    .line 32
    const-string v0, "resp"

    invoke-direct {p0, v0, p1}, Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp;-><init>(Ljava/lang/String;Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Builder;)V

    .line 33
    invoke-static {p1}, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppResp$Builder;->access$000(Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppResp$Builder;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "statusCode must not be null"

    invoke-static {v0, v1}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppResp;->statusCode:I

    .line 34
    invoke-static {p1}, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppResp$Builder;->access$100(Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppResp$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppResp;->statusMessage:Ljava/lang/String;

    .line 35
    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppResp$Builder;Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppResp$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppResp$Builder;
    .param p2, "x1"    # Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppResp$1;

    .line 27
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppResp;-><init>(Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppResp$Builder;)V

    return-void
.end method

.method public static builder()Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppResp$Builder;
    .locals 2

    .line 68
    new-instance v0, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppResp$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppResp$Builder;-><init>(Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppResp$1;)V

    return-object v0
.end method


# virtual methods
.method protected getIQHoxtChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .locals 2
    .param p1, "builder"    # Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    .line 42
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppResp;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "version"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 43
    iget v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppResp;->statusCode:I

    const-string v1, "statusCode"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->attribute(Ljava/lang/String;I)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 44
    iget-object v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppResp;->statusMessage:Ljava/lang/String;

    const-string v1, "statusMessage"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 45
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 46
    return-object p1
.end method

.method public getStatusCode()I
    .locals 1

    .line 55
    iget v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppResp;->statusCode:I

    return v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/jivesoftware/smackx/hoxt/packet/HttpOverXmppResp;->statusMessage:Ljava/lang/String;

    return-object v0
.end method
