.class public Lorg/jivesoftware/smackx/httpfileupload/provider/FileTooLargeErrorProvider;
.super Lorg/jivesoftware/smack/provider/ExtensionElementProvider;
.source "FileTooLargeErrorProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/ExtensionElementProvider<",
        "Lorg/jivesoftware/smackx/httpfileupload/element/FileTooLargeError;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
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

    .line 32
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/httpfileupload/provider/FileTooLargeErrorProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/httpfileupload/element/FileTooLargeError;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/httpfileupload/element/FileTooLargeError;
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "namespace":Ljava/lang/String;
    const/4 v1, 0x0

    .line 40
    .local v1, "maxFileSize":Ljava/lang/Long;
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 42
    .local v2, "event":I
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eq v2, v3, :cond_6

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto/16 :goto_6

    .line 52
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ne v3, p2, :cond_a

    .line 53
    nop

    .line 59
    .end local v2    # "event":I
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x71a58eb3

    const/4 v6, 0x1

    if-eq v2, v3, :cond_3

    const v3, -0x4eb3fc29

    if-eq v2, v3, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    const-string v2, "urn:xmpp:http:upload"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v4, v6

    goto :goto_2

    :cond_3
    const-string v2, "urn:xmpp:http:upload:0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :goto_1
    move v4, v5

    :goto_2
    if-eqz v4, :cond_5

    if-ne v4, v6, :cond_4

    .line 63
    new-instance v2, Lorg/jivesoftware/smackx/httpfileupload/element/FileTooLargeError_V0_2;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lorg/jivesoftware/smackx/httpfileupload/element/FileTooLargeError_V0_2;-><init>(J)V

    return-object v2

    .line 65
    :cond_4
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 61
    :cond_5
    new-instance v2, Lorg/jivesoftware/smackx/httpfileupload/element/FileTooLargeError;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lorg/jivesoftware/smackx/httpfileupload/element/FileTooLargeError;-><init>(J)V

    return-object v2

    .line 44
    .restart local v2    # "event":I
    :cond_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x1cffcb77

    if-eq v6, v7, :cond_8

    :cond_7
    goto :goto_3

    :cond_8
    const-string v6, "max-file-size"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_4

    :goto_3
    move v4, v5

    :goto_4
    if-eqz v4, :cond_9

    goto :goto_5

    .line 47
    :cond_9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 50
    :goto_5
    nop

    .line 57
    .end local v2    # "event":I
    .end local v3    # "name":Ljava/lang/String;
    :cond_a
    :goto_6
    goto :goto_0
.end method
