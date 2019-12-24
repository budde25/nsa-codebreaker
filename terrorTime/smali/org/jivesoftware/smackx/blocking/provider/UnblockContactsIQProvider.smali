.class public Lorg/jivesoftware/smackx/blocking/provider/UnblockContactsIQProvider;
.super Lorg/jivesoftware/smack/provider/IQProvider;
.source "UnblockContactsIQProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/IQProvider<",
        "Lorg/jivesoftware/smackx/blocking/element/UnblockContactsIQ;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
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

    .line 37
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/blocking/provider/UnblockContactsIQProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/blocking/element/UnblockContactsIQ;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/blocking/element/UnblockContactsIQ;
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    .line 44
    .local v0, "jids":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/jid/Jid;>;"
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 46
    .local v1, "eventType":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 58
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-ne v2, p2, :cond_3

    .line 59
    nop

    .line 66
    .end local v1    # "eventType":I
    new-instance v1, Lorg/jivesoftware/smackx/blocking/element/UnblockContactsIQ;

    invoke-direct {v1, v0}, Lorg/jivesoftware/smackx/blocking/element/UnblockContactsIQ;-><init>(Ljava/util/List;)V

    return-object v1

    .line 49
    .restart local v1    # "eventType":I
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "item"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 50
    if-nez v0, :cond_2

    .line 51
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    .line 53
    :cond_2
    const-string v2, ""

    const-string v3, "jid"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jxmpp/jid/impl/JidCreate;->from(Ljava/lang/String;)Lorg/jxmpp/jid/Jid;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    .end local v1    # "eventType":I
    :cond_3
    :goto_1
    goto :goto_0
.end method
