.class public Lorg/jivesoftware/smackx/hashes/provider/HashElementProvider;
.super Lorg/jivesoftware/smack/provider/ExtensionElementProvider;
.source "HashElementProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/ExtensionElementProvider<",
        "Lorg/jivesoftware/smackx/hashes/element/HashElement;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
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

    .line 29
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/hashes/provider/HashElementProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/hashes/element/HashElement;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/hashes/element/HashElement;
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    const-string v1, "algo"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "algo":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "hashB64":Ljava/lang/String;
    new-instance v2, Lorg/jivesoftware/smackx/hashes/element/HashElement;

    invoke-static {v0}, Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;->valueOfName(Ljava/lang/String;)Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/jivesoftware/smackx/hashes/element/HashElement;-><init>(Lorg/jivesoftware/smackx/hashes/HashManager$ALGORITHM;Ljava/lang/String;)V

    return-object v2
.end method
