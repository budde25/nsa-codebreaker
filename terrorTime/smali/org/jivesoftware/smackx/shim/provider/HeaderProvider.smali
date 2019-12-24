.class public Lorg/jivesoftware/smackx/shim/provider/HeaderProvider;
.super Lorg/jivesoftware/smack/provider/ExtensionElementProvider;
.source "HeaderProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/ExtensionElementProvider<",
        "Lorg/jivesoftware/smackx/shim/packet/Header;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/jivesoftware/smack/provider/ExtensionElementProvider;-><init>()V

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

    .line 33
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/shim/provider/HeaderProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/shim/packet/Header;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/shim/packet/Header;
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    const/4 v0, 0x0

    const-string v1, "name"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 39
    .local v1, "value":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 41
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 42
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 45
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 46
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0

    .line 49
    :cond_1
    new-instance v2, Lorg/jivesoftware/smackx/shim/packet/Header;

    invoke-direct {v2, v0, v1}, Lorg/jivesoftware/smackx/shim/packet/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
