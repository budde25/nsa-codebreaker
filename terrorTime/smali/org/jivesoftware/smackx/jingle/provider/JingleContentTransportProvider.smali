.class public abstract Lorg/jivesoftware/smackx/jingle/provider/JingleContentTransportProvider;
.super Lorg/jivesoftware/smack/provider/ExtensionElementProvider;
.source "JingleContentTransportProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;",
        ">",
        "Lorg/jivesoftware/smack/provider/ExtensionElementProvider<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    .local p0, "this":Lorg/jivesoftware/smackx/jingle/provider/JingleContentTransportProvider;, "Lorg/jivesoftware/smackx/jingle/provider/JingleContentTransportProvider<TT;>;"
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

    .line 25
    .local p0, "this":Lorg/jivesoftware/smackx/jingle/provider/JingleContentTransportProvider;, "Lorg/jivesoftware/smackx/jingle/provider/JingleContentTransportProvider<TT;>;"
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/jingle/provider/JingleContentTransportProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    move-result-object p1

    return-object p1
.end method

.method public abstract parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
