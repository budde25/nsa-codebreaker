.class public Lorg/jivesoftware/smackx/mam/provider/MamQueryIQProvider;
.super Lorg/jivesoftware/smack/provider/IQProvider;
.source "MamQueryIQProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/IQProvider<",
        "Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/mam/provider/MamQueryIQProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, "dataForm":Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    const-string v1, ""

    const-string v2, "queryid"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, "queryId":Ljava/lang/String;
    const-string v3, "node"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "node":Ljava/lang/String;
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 45
    .local v3, "eventType":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 47
    .local v4, "name":Ljava/lang/String;
    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    const/4 v5, 0x3

    if-eq v3, v5, :cond_0

    goto :goto_3

    .line 56
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-ne v5, p2, :cond_5

    .line 57
    nop

    .line 63
    .end local v3    # "eventType":I
    .end local v4    # "name":Ljava/lang/String;
    new-instance v3, Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;

    invoke-direct {v3, v2, v1, v0}, Lorg/jivesoftware/smackx/mam/element/MamQueryIQ;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/xdata/packet/DataForm;)V

    return-object v3

    .line 49
    .restart local v3    # "eventType":I
    .restart local v4    # "name":Ljava/lang/String;
    :cond_1
    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0x78

    if-eq v6, v7, :cond_3

    :cond_2
    goto :goto_1

    :cond_3
    const-string v6, "x"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_4

    goto :goto_2

    .line 51
    :cond_4
    sget-object v5, Lorg/jivesoftware/smackx/xdata/provider/DataFormProvider;->INSTANCE:Lorg/jivesoftware/smackx/xdata/provider/DataFormProvider;

    invoke-virtual {v5, p1}, Lorg/jivesoftware/smackx/xdata/provider/DataFormProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Element;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    .line 54
    :goto_2
    nop

    .line 61
    .end local v3    # "eventType":I
    .end local v4    # "name":Ljava/lang/String;
    :cond_5
    :goto_3
    goto :goto_0
.end method
