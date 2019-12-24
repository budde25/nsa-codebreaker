.class public Lorg/jivesoftware/smackx/chat_markers/provider/DisplayedProvider;
.super Lorg/jivesoftware/smack/provider/ExtensionElementProvider;
.source "DisplayedProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/ExtensionElementProvider<",
        "Lorg/jivesoftware/smackx/chat_markers/element/ChatMarkersElements$DisplayedExtension;",
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
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/chat_markers/provider/DisplayedProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/chat_markers/element/ChatMarkersElements$DisplayedExtension;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/chat_markers/element/ChatMarkersElements$DisplayedExtension;
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    const-string v0, ""

    const-string v1, "id"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "id":Ljava/lang/String;
    new-instance v1, Lorg/jivesoftware/smackx/chat_markers/element/ChatMarkersElements$DisplayedExtension;

    invoke-direct {v1, v0}, Lorg/jivesoftware/smackx/chat_markers/element/ChatMarkersElements$DisplayedExtension;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
