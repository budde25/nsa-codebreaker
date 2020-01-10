.class public Lorg/jivesoftware/smackx/spoiler/provider/SpoilerProvider;
.super Lorg/jivesoftware/smack/provider/ExtensionElementProvider;
.source "SpoilerProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/ExtensionElementProvider<",
        "Lorg/jivesoftware/smackx/spoiler/element/SpoilerElement;",
        ">;"
    }
.end annotation


# static fields
.field public static INSTANCE:Lorg/jivesoftware/smackx/spoiler/provider/SpoilerProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lorg/jivesoftware/smackx/spoiler/provider/SpoilerProvider;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/spoiler/provider/SpoilerProvider;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/spoiler/provider/SpoilerProvider;->INSTANCE:Lorg/jivesoftware/smackx/spoiler/provider/SpoilerProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
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

    .line 28
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/spoiler/provider/SpoilerProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/spoiler/element/SpoilerElement;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/spoiler/element/SpoilerElement;
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    invoke-static {p1}, Lorg/jivesoftware/smack/util/ParserUtils;->getXmlLang(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "lang":Ljava/lang/String;
    const/4 v1, 0x0

    .line 38
    .local v1, "hint":Ljava/lang/String;
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 39
    .local v2, "tag":I
    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 41
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 42
    nop

    .line 46
    .end local v2    # "tag":I
    :goto_1
    goto :goto_0

    .line 44
    .restart local v2    # "tag":I
    :cond_1
    nop

    .line 47
    .end local v2    # "tag":I
    new-instance v2, Lorg/jivesoftware/smackx/spoiler/element/SpoilerElement;

    invoke-direct {v2, v0, v1}, Lorg/jivesoftware/smackx/spoiler/element/SpoilerElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
