.class public Lorg/jivesoftware/smackx/sharedgroups/packet/SharedGroupsInfo$Provider;
.super Lorg/jivesoftware/smack/provider/IQProvider;
.source "SharedGroupsInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/sharedgroups/packet/SharedGroupsInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Provider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/IQProvider<",
        "Lorg/jivesoftware/smackx/sharedgroups/packet/SharedGroupsInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 70
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

    .line 70
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/sharedgroups/packet/SharedGroupsInfo$Provider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/sharedgroups/packet/SharedGroupsInfo;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/sharedgroups/packet/SharedGroupsInfo;
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    new-instance v0, Lorg/jivesoftware/smackx/sharedgroups/packet/SharedGroupsInfo;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/sharedgroups/packet/SharedGroupsInfo;-><init>()V

    .line 77
    .local v0, "groupsInfo":Lorg/jivesoftware/smackx/sharedgroups/packet/SharedGroupsInfo;
    const/4 v1, 0x0

    .line 78
    .local v1, "done":Z
    :goto_0
    if-nez v1, :cond_2

    .line 79
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 80
    .local v2, "eventType":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "group"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/sharedgroups/packet/SharedGroupsInfo;->getGroups()Ljava/util/List;

    move-result-object v3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 83
    :cond_0
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 84
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sharedgroup"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    const/4 v1, 0x1

    .line 88
    .end local v2    # "eventType":I
    :cond_1
    :goto_1
    goto :goto_0

    .line 89
    :cond_2
    return-object v0
.end method
