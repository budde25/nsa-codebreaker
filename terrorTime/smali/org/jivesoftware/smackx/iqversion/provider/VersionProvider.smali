.class public Lorg/jivesoftware/smackx/iqversion/provider/VersionProvider;
.super Lorg/jivesoftware/smack/provider/IQProvider;
.source "VersionProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/IQProvider<",
        "Lorg/jivesoftware/smackx/iqversion/packet/Version;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
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

    .line 30
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/iqversion/provider/VersionProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/iqversion/packet/Version;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/iqversion/packet/Version;
    .locals 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "version":Ljava/lang/String;
    const/4 v2, 0x0

    .line 37
    .local v2, "os":Ljava/lang/String;
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 38
    .local v3, "eventType":I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    goto/16 :goto_3

    .line 54
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-ne v4, p2, :cond_a

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "query"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 55
    nop

    .line 59
    .end local v3    # "eventType":I
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    .line 60
    new-instance v3, Lorg/jivesoftware/smackx/iqversion/packet/Version;

    invoke-direct {v3}, Lorg/jivesoftware/smackx/iqversion/packet/Version;-><init>()V

    return-object v3

    .line 62
    :cond_1
    new-instance v3, Lorg/jivesoftware/smackx/iqversion/packet/Version;

    invoke-direct {v3, v0, v1, v2}, Lorg/jivesoftware/smackx/iqversion/packet/Version;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 40
    .restart local v3    # "eventType":I
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 41
    .local v5, "tagName":Ljava/lang/String;
    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0xde4

    const/4 v9, 0x1

    if-eq v7, v8, :cond_6

    const v8, 0x337a8b

    if-eq v7, v8, :cond_5

    const v8, 0x14f51cd8

    if-eq v7, v8, :cond_4

    :cond_3
    goto :goto_1

    :cond_4
    const-string v7, "version"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v6, v9

    goto :goto_1

    :cond_5
    const-string v7, "name"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v6, 0x0

    goto :goto_1

    :cond_6
    const-string v7, "os"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v6, v4

    :goto_1
    if-eqz v6, :cond_9

    if-eq v6, v9, :cond_8

    if-eq v6, v4, :cond_7

    goto :goto_2

    .line 49
    :cond_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 46
    :cond_8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 47
    goto :goto_2

    .line 43
    :cond_9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 44
    nop

    .line 52
    :goto_2
    nop

    .line 58
    .end local v3    # "eventType":I
    .end local v5    # "tagName":Ljava/lang/String;
    :cond_a
    :goto_3
    goto :goto_0
.end method
