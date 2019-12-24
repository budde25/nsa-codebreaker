.class public Lorg/jivesoftware/smackx/httpfileupload/element/Slot_V0_2;
.super Lorg/jivesoftware/smackx/httpfileupload/element/Slot;
.source "Slot_V0_2.java"


# static fields
.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:http:upload"


# direct methods
.method public constructor <init>(Ljava/net/URL;Ljava/net/URL;)V
    .locals 2
    .param p1, "putUrl"    # Ljava/net/URL;
    .param p2, "getUrl"    # Ljava/net/URL;

    .line 28
    const/4 v0, 0x0

    const-string v1, "urn:xmpp:http:upload"

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/jivesoftware/smackx/httpfileupload/element/Slot;-><init>(Ljava/net/URL;Ljava/net/URL;Ljava/util/Map;Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected getIQChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .locals 2
    .param p1, "xml"    # Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    .line 33
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 35
    iget-object v0, p0, Lorg/jivesoftware/smackx/httpfileupload/element/Slot_V0_2;->putUrl:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "put"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->element(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 36
    iget-object v0, p0, Lorg/jivesoftware/smackx/httpfileupload/element/Slot_V0_2;->getUrl:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "get"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->element(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 38
    return-object p1
.end method
