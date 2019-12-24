.class public Lorg/jivesoftware/smackx/xdatalayout/provider/DataLayoutProvider;
.super Ljava/lang/Object;
.source "DataLayoutProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/xdatalayout/packet/DataLayout;
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    new-instance v0, Lorg/jivesoftware/smackx/xdatalayout/packet/DataLayout;

    const-string v1, ""

    const-string v2, "label"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/xdatalayout/packet/DataLayout;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, "dataLayout":Lorg/jivesoftware/smackx/xdatalayout/packet/DataLayout;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/xdatalayout/packet/DataLayout;->getPageLayout()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p0}, Lorg/jivesoftware/smackx/xdatalayout/provider/DataLayoutProvider;->parseLayout(Ljava/util/List;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 43
    return-object v0
.end method

.method private static parseFieldref(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/xdatalayout/packet/DataLayout$Fieldref;
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 86
    .local v0, "initialDepth":I
    new-instance v1, Lorg/jivesoftware/smackx/xdatalayout/packet/DataLayout$Fieldref;

    const-string v2, ""

    const-string v3, "var"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jivesoftware/smackx/xdatalayout/packet/DataLayout$Fieldref;-><init>(Ljava/lang/String;)V

    .line 88
    .local v1, "fieldref":Lorg/jivesoftware/smackx/xdatalayout/packet/DataLayout$Fieldref;
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 89
    .local v2, "eventType":I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 90
    nop

    .line 93
    .end local v2    # "eventType":I
    return-object v1

    .line 92
    :cond_0
    goto :goto_0
.end method

.method private static parseLayout(Ljava/util/List;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/xdatalayout/packet/DataLayout$DataFormLayoutElement;",
            ">;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    .local p0, "layout":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/xdatalayout/packet/DataLayout$DataFormLayoutElement;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 55
    .local v0, "initialDepth":I
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 56
    .local v1, "eventType":I
    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    goto/16 :goto_4

    .line 76
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-ne v2, v0, :cond_7

    .line 77
    nop

    .line 82
    .end local v1    # "eventType":I
    return-void

    .line 58
    .restart local v1    # "eventType":I
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x1

    sparse-switch v6, :sswitch_data_0

    :cond_2
    goto :goto_1

    :sswitch_0
    const-string v6, "section"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v7

    goto :goto_2

    :sswitch_1
    const-string v6, "text"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :sswitch_2
    const-string v6, "reportedref"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_2

    :sswitch_3
    const-string v6, "fieldref"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_2

    :goto_1
    move v4, v5

    :goto_2
    if-eqz v4, :cond_6

    if-eq v4, v7, :cond_5

    if-eq v4, v3, :cond_4

    if-eq v4, v2, :cond_3

    goto :goto_3

    .line 69
    :cond_3
    new-instance v2, Lorg/jivesoftware/smackx/xdatalayout/packet/DataLayout$Reportedref;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/xdatalayout/packet/DataLayout$Reportedref;-><init>()V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    goto :goto_3

    .line 66
    :cond_4
    invoke-static {p1}, Lorg/jivesoftware/smackx/xdatalayout/provider/DataLayoutProvider;->parseFieldref(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/xdatalayout/packet/DataLayout$Fieldref;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    goto :goto_3

    .line 63
    :cond_5
    invoke-static {p1}, Lorg/jivesoftware/smackx/xdatalayout/provider/DataLayoutProvider;->parseSection(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/xdatalayout/packet/DataLayout$Section;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    goto :goto_3

    .line 60
    :cond_6
    new-instance v2, Lorg/jivesoftware/smackx/xdatalayout/packet/DataLayout$Text;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jivesoftware/smackx/xdatalayout/packet/DataLayout$Text;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    nop

    .line 74
    :goto_3
    nop

    .line 81
    .end local v1    # "eventType":I
    :cond_7
    :goto_4
    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x375f42a7 -> :sswitch_3
        -0xe64c120 -> :sswitch_2
        0x36452d -> :sswitch_1
        0x756f7ee5 -> :sswitch_0
    .end sparse-switch
.end method

.method private static parseSection(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/xdatalayout/packet/DataLayout$Section;
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    new-instance v0, Lorg/jivesoftware/smackx/xdatalayout/packet/DataLayout$Section;

    const-string v1, ""

    const-string v2, "label"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/xdatalayout/packet/DataLayout$Section;-><init>(Ljava/lang/String;)V

    .line 48
    .local v0, "layout":Lorg/jivesoftware/smackx/xdatalayout/packet/DataLayout$Section;
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/xdatalayout/packet/DataLayout$Section;->getSectionLayout()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p0}, Lorg/jivesoftware/smackx/xdatalayout/provider/DataLayoutProvider;->parseLayout(Ljava/util/List;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 49
    return-object v0
.end method
