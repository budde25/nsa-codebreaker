.class public Lorg/jivesoftware/smack/provider/BindIQProvider;
.super Lorg/jivesoftware/smack/provider/IQProvider;
.source "BindIQProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/IQProvider<",
        "Lorg/jivesoftware/smack/packet/Bind;",
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
.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smack/packet/Bind;
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lorg/jivesoftware/smack/SmackException;
        }
    .end annotation

    .line 36
    const/4 v0, 0x0

    .line 38
    .local v0, "bind":Lorg/jivesoftware/smack/packet/Bind;
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 39
    .local v1, "eventType":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_3

    .line 54
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-ne v2, p2, :cond_7

    .line 55
    nop

    .line 60
    .end local v1    # "eventType":I
    return-object v0

    .line 41
    .restart local v1    # "eventType":I
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, "name":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x14543bf2

    const/4 v6, 0x1

    if-eq v4, v5, :cond_4

    const v5, 0x19b05

    if-eq v4, v5, :cond_3

    :cond_2
    goto :goto_1

    :cond_3
    const-string v4, "jid"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v3, v6

    goto :goto_1

    :cond_4
    const-string v4, "resource"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_6

    if-eq v3, v6, :cond_5

    goto :goto_2

    .line 48
    :cond_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jxmpp/jid/impl/JidCreate;->entityFullFrom(Ljava/lang/String;)Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v3

    .line 49
    .local v3, "fullJid":Lorg/jxmpp/jid/EntityFullJid;
    invoke-static {v3}, Lorg/jivesoftware/smack/packet/Bind;->newResult(Lorg/jxmpp/jid/EntityFullJid;)Lorg/jivesoftware/smack/packet/Bind;

    move-result-object v0

    goto :goto_2

    .line 44
    .end local v3    # "fullJid":Lorg/jxmpp/jid/EntityFullJid;
    :cond_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, "resourceString":Ljava/lang/String;
    invoke-static {v3}, Lorg/jxmpp/jid/parts/Resourcepart;->from(Ljava/lang/String;)Lorg/jxmpp/jid/parts/Resourcepart;

    move-result-object v4

    invoke-static {v4}, Lorg/jivesoftware/smack/packet/Bind;->newSet(Lorg/jxmpp/jid/parts/Resourcepart;)Lorg/jivesoftware/smack/packet/Bind;

    move-result-object v0

    .line 46
    nop

    .line 52
    .end local v3    # "resourceString":Ljava/lang/String;
    :goto_2
    nop

    .line 59
    .end local v1    # "eventType":I
    .end local v2    # "name":Ljava/lang/String;
    :cond_7
    :goto_3
    goto :goto_0
.end method

.method public bridge synthetic parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smack/packet/Element;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smack/provider/BindIQProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smack/packet/Bind;

    move-result-object p1

    return-object p1
.end method
