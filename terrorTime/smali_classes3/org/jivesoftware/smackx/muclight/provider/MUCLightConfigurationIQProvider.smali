.class public Lorg/jivesoftware/smackx/muclight/provider/MUCLightConfigurationIQProvider;
.super Lorg/jivesoftware/smack/provider/IQProvider;
.source "MUCLightConfigurationIQProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/IQProvider<",
        "Lorg/jivesoftware/smackx/muclight/element/MUCLightConfigurationIQ;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
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

    .line 34
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/muclight/provider/MUCLightConfigurationIQProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/muclight/element/MUCLightConfigurationIQ;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/muclight/element/MUCLightConfigurationIQ;
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    const/4 v0, 0x0

    .line 39
    .local v0, "version":Ljava/lang/String;
    const/4 v1, 0x0

    .line 40
    .local v1, "roomName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 41
    .local v2, "subject":Ljava/lang/String;
    const/4 v3, 0x0

    .line 44
    .local v3, "customConfigs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 46
    .local v4, "eventType":I
    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 48
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "version"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 49
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 50
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "roomname"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 51
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 52
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "subject"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 53
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 55
    :cond_2
    if-nez v3, :cond_3

    .line 56
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v3, v5

    .line 58
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 61
    :cond_4
    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    .line 62
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-ne v5, p2, :cond_5

    .line 63
    nop

    .line 68
    .end local v4    # "eventType":I
    new-instance v4, Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;

    invoke-direct {v4, v1, v2, v3}, Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 70
    .local v4, "configuration":Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;
    new-instance v5, Lorg/jivesoftware/smackx/muclight/element/MUCLightConfigurationIQ;

    invoke-direct {v5, v0, v4}, Lorg/jivesoftware/smackx/muclight/element/MUCLightConfigurationIQ;-><init>(Ljava/lang/String;Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;)V

    return-object v5

    .line 66
    .end local v4    # "configuration":Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;
    :cond_5
    :goto_1
    goto :goto_0
.end method
