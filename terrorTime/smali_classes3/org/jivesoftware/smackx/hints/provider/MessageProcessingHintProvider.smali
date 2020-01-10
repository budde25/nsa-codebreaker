.class public abstract Lorg/jivesoftware/smackx/hints/provider/MessageProcessingHintProvider;
.super Lorg/jivesoftware/smack/provider/ExtensionElementProvider;
.source "MessageProcessingHintProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<H:",
        "Lorg/jivesoftware/smackx/hints/element/MessageProcessingHint;",
        ">",
        "Lorg/jivesoftware/smack/provider/ExtensionElementProvider<",
        "TH;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    .local p0, "this":Lorg/jivesoftware/smackx/hints/provider/MessageProcessingHintProvider;, "Lorg/jivesoftware/smackx/hints/provider/MessageProcessingHintProvider<TH;>;"
    invoke-direct {p0}, Lorg/jivesoftware/smack/provider/ExtensionElementProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getHint()Lorg/jivesoftware/smackx/hints/element/MessageProcessingHint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TH;"
        }
    .end annotation
.end method

.method public bridge synthetic parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smack/packet/Element;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 25
    .local p0, "this":Lorg/jivesoftware/smackx/hints/provider/MessageProcessingHintProvider;, "Lorg/jivesoftware/smackx/hints/provider/MessageProcessingHintProvider<TH;>;"
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/hints/provider/MessageProcessingHintProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/hints/element/MessageProcessingHint;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/hints/element/MessageProcessingHint;
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "I)TH;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    .local p0, "this":Lorg/jivesoftware/smackx/hints/provider/MessageProcessingHintProvider;, "Lorg/jivesoftware/smackx/hints/provider/MessageProcessingHintProvider<TH;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/hints/provider/MessageProcessingHintProvider;->getHint()Lorg/jivesoftware/smackx/hints/element/MessageProcessingHint;

    move-result-object v0

    return-object v0
.end method
