.class public Lorg/jivesoftware/smackx/mam/provider/MamResultProvider;
.super Lorg/jivesoftware/smack/provider/ExtensionElementProvider;
.source "MamResultProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/ExtensionElementProvider<",
        "Lorg/jivesoftware/smackx/mam/element/MamElements$MamResultExtension;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
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

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/mam/provider/MamResultProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/mam/element/MamElements$MamResultExtension;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/mam/element/MamElements$MamResultExtension;
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
    .local v0, "forwarded":Lorg/jivesoftware/smackx/forward/packet/Forwarded;
    const-string v1, ""

    const-string v2, "queryid"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, "queryId":Ljava/lang/String;
    const-string v3, "id"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "id":Ljava/lang/String;
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 45
    .local v3, "eventType":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 46
    .local v4, "name":Ljava/lang/String;
    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    const/4 v5, 0x3

    if-eq v3, v5, :cond_0

    goto :goto_3

    .line 55
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-ne v5, p2, :cond_5

    .line 56
    nop

    .line 62
    .end local v3    # "eventType":I
    .end local v4    # "name":Ljava/lang/String;
    new-instance v3, Lorg/jivesoftware/smackx/mam/element/MamElements$MamResultExtension;

    invoke-direct {v3, v2, v1, v0}, Lorg/jivesoftware/smackx/mam/element/MamElements$MamResultExtension;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/forward/packet/Forwarded;)V

    return-object v3

    .line 48
    .restart local v3    # "eventType":I
    .restart local v4    # "name":Ljava/lang/String;
    :cond_1
    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0x7d0a0224

    if-eq v6, v7, :cond_3

    :cond_2
    goto :goto_1

    :cond_3
    const-string v6, "forwarded"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_4

    goto :goto_2

    .line 50
    :cond_4
    sget-object v5, Lorg/jivesoftware/smackx/forward/provider/ForwardedProvider;->INSTANCE:Lorg/jivesoftware/smackx/forward/provider/ForwardedProvider;

    invoke-virtual {v5, p1}, Lorg/jivesoftware/smackx/forward/provider/ForwardedProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Element;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lorg/jivesoftware/smackx/forward/packet/Forwarded;

    .line 53
    :goto_2
    nop

    .line 60
    .end local v3    # "eventType":I
    .end local v4    # "name":Ljava/lang/String;
    :cond_5
    :goto_3
    goto :goto_0
.end method
