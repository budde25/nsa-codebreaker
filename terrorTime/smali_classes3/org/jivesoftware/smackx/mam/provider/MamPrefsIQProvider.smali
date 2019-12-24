.class public Lorg/jivesoftware/smackx/mam/provider/MamPrefsIQProvider;
.super Lorg/jivesoftware/smack/provider/IQProvider;
.source "MamPrefsIQProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/IQProvider<",
        "Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/jivesoftware/smack/provider/IQProvider;-><init>()V

    return-void
.end method

.method private static iterateJids(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Lorg/jxmpp/jid/Jid;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v0, "jids":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/jid/Jid;>;"
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 90
    .local v1, "initialDepth":I
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 91
    .local v2, "eventType":I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "name":Ljava/lang/String;
    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    const/4 v4, 0x3

    if-eq v2, v4, :cond_0

    goto :goto_3

    .line 102
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-ne v4, v1, :cond_5

    .line 103
    nop

    .line 109
    .end local v2    # "eventType":I
    .end local v3    # "name":Ljava/lang/String;
    return-object v0

    .line 94
    .restart local v2    # "eventType":I
    .restart local v3    # "name":Ljava/lang/String;
    :cond_1
    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x19b05

    if-eq v5, v6, :cond_3

    :cond_2
    goto :goto_1

    :cond_3
    const-string v5, "jid"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_4

    goto :goto_2

    .line 96
    :cond_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 97
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/jxmpp/jid/impl/JidCreate;->from(Ljava/lang/String;)Lorg/jxmpp/jid/Jid;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :goto_2
    nop

    .line 107
    .end local v2    # "eventType":I
    .end local v3    # "name":Ljava/lang/String;
    :cond_5
    :goto_3
    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smack/packet/Element;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/mam/provider/MamPrefsIQProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    const-string v0, ""

    const-string v1, "type"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "iqType":Ljava/lang/String;
    const-string v2, "default"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "defaultBehaviorString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 48
    .local v2, "defaultBehavior":Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;
    if-eqz v0, :cond_0

    .line 49
    invoke-static {v0}, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;

    move-result-object v2

    .line 52
    :cond_0
    if-nez v1, :cond_1

    .line 53
    const-string v1, "result"

    .line 56
    :cond_1
    const/4 v3, 0x0

    .line 57
    .local v3, "alwaysJids":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/jid/Jid;>;"
    const/4 v4, 0x0

    .line 60
    .local v4, "neverJids":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/jid/Jid;>;"
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 61
    .local v5, "eventType":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 62
    .local v6, "name":Ljava/lang/String;
    const/4 v7, 0x2

    if-eq v5, v7, :cond_3

    const/4 v7, 0x3

    if-eq v5, v7, :cond_2

    goto :goto_3

    .line 74
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-ne v7, p2, :cond_9

    .line 75
    nop

    .line 81
    .end local v5    # "eventType":I
    .end local v6    # "name":Ljava/lang/String;
    new-instance v5, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;

    invoke-direct {v5, v3, v4, v2}, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;-><init>(Ljava/util/List;Ljava/util/List;Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;)V

    return-object v5

    .line 64
    .restart local v5    # "eventType":I
    .restart local v6    # "name":Ljava/lang/String;
    :cond_3
    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, -0x54506df1

    const/4 v10, 0x1

    if-eq v8, v9, :cond_6

    const v9, 0x63dca8c

    if-eq v8, v9, :cond_5

    :cond_4
    goto :goto_1

    :cond_5
    const-string v8, "never"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v7, v10

    goto :goto_1

    :cond_6
    const-string v8, "always"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_8

    if-eq v7, v10, :cond_7

    goto :goto_2

    .line 69
    :cond_7
    invoke-static {p1}, Lorg/jivesoftware/smackx/mam/provider/MamPrefsIQProvider;->iterateJids(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v4

    goto :goto_2

    .line 66
    :cond_8
    invoke-static {p1}, Lorg/jivesoftware/smackx/mam/provider/MamPrefsIQProvider;->iterateJids(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v3

    .line 67
    nop

    .line 72
    :goto_2
    nop

    .line 79
    .end local v5    # "eventType":I
    .end local v6    # "name":Ljava/lang/String;
    :cond_9
    :goto_3
    goto :goto_0
.end method
