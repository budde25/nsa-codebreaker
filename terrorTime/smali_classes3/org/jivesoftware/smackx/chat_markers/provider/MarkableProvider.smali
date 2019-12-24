.class public Lorg/jivesoftware/smackx/chat_markers/provider/MarkableProvider;
.super Lorg/jivesoftware/smack/provider/ExtensionElementProvider;
.source "MarkableProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/ExtensionElementProvider<",
        "Lorg/jivesoftware/smackx/chat_markers/element/ChatMarkersElements$MarkableExtension;",
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
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/chat_markers/provider/MarkableProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/chat_markers/element/ChatMarkersElements$MarkableExtension;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/chat_markers/element/ChatMarkersElements$MarkableExtension;
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    new-instance v0, Lorg/jivesoftware/smackx/chat_markers/element/ChatMarkersElements$MarkableExtension;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/chat_markers/element/ChatMarkersElements$MarkableExtension;-><init>()V

    return-object v0
.end method
