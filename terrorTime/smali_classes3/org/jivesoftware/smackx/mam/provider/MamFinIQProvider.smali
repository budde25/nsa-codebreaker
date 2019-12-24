.class public Lorg/jivesoftware/smackx/mam/provider/MamFinIQProvider;
.super Lorg/jivesoftware/smack/provider/IQProvider;
.source "MamFinIQProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/IQProvider<",
        "Lorg/jivesoftware/smackx/mam/element/MamFinIQ;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/jivesoftware/smack/provider/IQProvider;-><init>()V

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

    .line 36
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/mam/provider/MamFinIQProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/mam/element/MamFinIQ;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/mam/element/MamFinIQ;
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    const-string v0, ""

    const-string v1, "queryid"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "queryId":Ljava/lang/String;
    const-string v1, "complete"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lorg/jivesoftware/smack/util/ParserUtils;->getBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    .line 42
    .local v1, "complete":Z
    const-string v2, "stable"

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Lorg/jivesoftware/smack/util/ParserUtils;->getBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v2

    .line 43
    .local v2, "stable":Z
    const/4 v3, 0x0

    .line 46
    .local v3, "rsmSet":Lorg/jivesoftware/smackx/rsm/packet/RSMSet;
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 47
    .local v4, "eventType":I
    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    goto :goto_1

    .line 54
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-ne v5, p2, :cond_2

    .line 55
    nop

    .line 61
    .end local v4    # "eventType":I
    new-instance v4, Lorg/jivesoftware/smackx/mam/element/MamFinIQ;

    invoke-direct {v4, v0, v3, v1, v2}, Lorg/jivesoftware/smackx/mam/element/MamFinIQ;-><init>(Ljava/lang/String;Lorg/jivesoftware/smackx/rsm/packet/RSMSet;ZZ)V

    return-object v4

    .line 49
    .restart local v4    # "eventType":I
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "set"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 50
    sget-object v5, Lorg/jivesoftware/smackx/rsm/provider/RSMSetProvider;->INSTANCE:Lorg/jivesoftware/smackx/rsm/provider/RSMSetProvider;

    invoke-virtual {v5, p1}, Lorg/jivesoftware/smackx/rsm/provider/RSMSetProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Element;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Lorg/jivesoftware/smackx/rsm/packet/RSMSet;

    .line 59
    .end local v4    # "eventType":I
    :cond_2
    :goto_1
    goto :goto_0
.end method
