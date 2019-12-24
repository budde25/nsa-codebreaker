.class public Lorg/jivesoftware/smack/util/ParserUtils;
.super Ljava/lang/Object;
.source "ParserUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final JID:Ljava/lang/String; = "jid"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertAtEndTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 59
    nop

    .line 60
    return-void
.end method

.method public static assertAtStartTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 50
    nop

    .line 51
    return-void
.end method

.method public static assertAtStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 0
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 54
    invoke-static {p0}, Lorg/jivesoftware/smack/util/ParserUtils;->assertAtStartTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 55
    nop

    .line 56
    return-void
.end method

.method public static forwardToEndTagOfDepth(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "depth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 65
    .local v0, "event":I
    :goto_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-eq v1, p1, :cond_0

    goto :goto_1

    .line 68
    :cond_0
    return-void

    .line 66
    :cond_1
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0
.end method

.method public static getBareJidAttribute(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jxmpp/jid/EntityBareJid;
    .locals 1
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 83
    const-string v0, "jid"

    invoke-static {p0, v0}, Lorg/jivesoftware/smack/util/ParserUtils;->getBareJidAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v0

    return-object v0
.end method

.method public static getBareJidAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lorg/jxmpp/jid/EntityBareJid;
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 87
    const-string v0, ""

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "jidString":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 89
    const/4 v1, 0x0

    return-object v1

    .line 91
    :cond_0
    invoke-static {v0}, Lorg/jxmpp/jid/impl/JidCreate;->entityBareFrom(Ljava/lang/String;)Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v1

    return-object v1
.end method

.method public static getBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;

    .line 161
    const-string v0, ""

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "valueString":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 163
    const/4 v1, 0x0

    return-object v1

    .line 164
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-static {v0}, Lorg/jivesoftware/smack/util/ParserUtils;->parseXmlBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public static getBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 170
    invoke-static {p0, p1}, Lorg/jivesoftware/smack/util/ParserUtils;->getBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 171
    .local v0, "bool":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 172
    return p2

    .line 175
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public static getDateFromNextText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Date;
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .line 249
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "dateString":Ljava/lang/String;
    invoke-static {v0}, Lorg/jxmpp/util/XmppDateTime;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static getDoubleAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)D
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .line 239
    invoke-static {p0, p1}, Lorg/jivesoftware/smack/util/ParserUtils;->getDoubleAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 240
    .local v0, "d":Ljava/lang/Double;
    if-nez v0, :cond_0

    .line 241
    long-to-double v1, p2

    return-wide v1

    .line 244
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1
.end method

.method public static getDoubleAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Double;
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;

    .line 232
    const-string v0, ""

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "valueString":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 234
    const/4 v1, 0x0

    return-object v1

    .line 235
    :cond_0
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    return-object v1
.end method

.method public static getDoubleFromNextText(Lorg/xmlpull/v1/XmlPullParser;)D
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "doubleString":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1
.end method

.method public static getEntityJidAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lorg/jxmpp/jid/EntityJid;
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 107
    const-string v0, ""

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "jidString":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 109
    return-object v1

    .line 111
    :cond_0
    invoke-static {v0}, Lorg/jxmpp/jid/impl/JidCreate;->from(Ljava/lang/String;)Lorg/jxmpp/jid/Jid;

    move-result-object v2

    .line 113
    .local v2, "jid":Lorg/jxmpp/jid/Jid;
    invoke-interface {v2}, Lorg/jxmpp/jid/Jid;->hasLocalpart()Z

    move-result v3

    if-nez v3, :cond_1

    return-object v1

    .line 115
    :cond_1
    invoke-interface {v2}, Lorg/jxmpp/jid/Jid;->asEntityFullJidIfPossible()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v1

    .line 116
    .local v1, "fullJid":Lorg/jxmpp/jid/EntityFullJid;
    if-eqz v1, :cond_2

    .line 117
    return-object v1

    .line 120
    :cond_2
    invoke-interface {v2}, Lorg/jxmpp/jid/Jid;->asEntityBareJidIfPossible()Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v3

    .line 121
    .local v3, "bareJid":Lorg/jxmpp/jid/EntityBareJid;
    return-object v3
.end method

.method public static getFullJidAttribute(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jxmpp/jid/EntityFullJid;
    .locals 1
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 95
    const-string v0, "jid"

    invoke-static {p0, v0}, Lorg/jivesoftware/smack/util/ParserUtils;->getFullJidAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v0

    return-object v0
.end method

.method public static getFullJidAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lorg/jxmpp/jid/EntityFullJid;
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 99
    const-string v0, ""

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "jidString":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 101
    const/4 v1, 0x0

    return-object v1

    .line 103
    :cond_0
    invoke-static {v0}, Lorg/jxmpp/jid/impl/JidCreate;->entityFullFrom(Ljava/lang/String;)Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v1

    return-object v1
.end method

.method public static getIntegerAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 195
    invoke-static {p0, p1}, Lorg/jivesoftware/smack/util/ParserUtils;->getIntegerAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 196
    .local v0, "integer":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 197
    return p2

    .line 200
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static getIntegerAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;

    .line 188
    const-string v0, ""

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "valueString":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 190
    const/4 v1, 0x0

    return-object v1

    .line 191
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public static getIntegerAttributeOrThrow(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "throwMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/SmackException;
        }
    .end annotation

    .line 180
    invoke-static {p0, p1}, Lorg/jivesoftware/smack/util/ParserUtils;->getIntegerAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 181
    .local v0, "res":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 182
    :cond_0
    new-instance v1, Lorg/jivesoftware/smack/SmackException;

    invoke-direct {v1, p2}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getIntegerFromNextText(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "intString":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static getJidAttribute(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jxmpp/jid/Jid;
    .locals 1
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 71
    const-string v0, "jid"

    invoke-static {p0, v0}, Lorg/jivesoftware/smack/util/ParserUtils;->getJidAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lorg/jxmpp/jid/Jid;

    move-result-object v0

    return-object v0
.end method

.method public static getJidAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lorg/jxmpp/jid/Jid;
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 75
    const-string v0, ""

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "jidString":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 77
    const/4 v1, 0x0

    return-object v1

    .line 79
    :cond_0
    invoke-static {v0}, Lorg/jxmpp/jid/impl/JidCreate;->from(Ljava/lang/String;)Lorg/jxmpp/jid/Jid;

    move-result-object v1

    return-object v1
.end method

.method public static getLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .line 217
    invoke-static {p0, p1}, Lorg/jivesoftware/smack/util/ParserUtils;->getLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 218
    .local v0, "l":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 219
    return-wide p2

    .line 222
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1
.end method

.method public static getLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;

    .line 210
    const-string v0, ""

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "valueString":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 212
    const/4 v1, 0x0

    return-object v1

    .line 213
    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public static getQName(Lorg/xmlpull/v1/XmlPullParser;)Ljavax/xml/namespace/QName;
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 279
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "elementName":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, "prefix":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 282
    const-string v1, ""

    .line 284
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "namespace":Ljava/lang/String;
    new-instance v3, Ljavax/xml/namespace/QName;

    invoke-direct {v3, v2, v0, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public static getRequiredAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    const-string v0, ""

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->isNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 263
    return-object v0

    .line 261
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is null or empty ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getRequiredNextText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->isNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    return-object v0

    .line 269
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Next text is null or empty ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getResourcepartAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lorg/jxmpp/jid/parts/Resourcepart;
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 125
    const-string v0, ""

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "resourcepartString":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 127
    const/4 v1, 0x0

    return-object v1

    .line 129
    :cond_0
    invoke-static {v0}, Lorg/jxmpp/jid/parts/Resourcepart;->from(Ljava/lang/String;)Lorg/jxmpp/jid/parts/Resourcepart;

    move-result-object v1

    return-object v1
.end method

.method public static getUriFromNextText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/net/URI;
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 254
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "uriString":Ljava/lang/String;
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static getXmlLang(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 275
    const-string v0, "http://www.w3.org/XML/1998/namespace"

    const-string v1, "lang"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseXmlBoolean(Ljava/lang/String;)Z
    .locals 6
    .param p0, "booleanString"    # Ljava/lang/String;

    .line 141
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x30

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v1, :cond_4

    const/16 v1, 0x31

    if-eq v0, v1, :cond_3

    const v1, 0x36758e

    if-eq v0, v1, :cond_2

    const v1, 0x5cb1923

    if-eq v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :cond_2
    const-string v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :cond_3
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :cond_4
    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_7

    if-eq v0, v5, :cond_7

    if-eq v0, v4, :cond_6

    if-ne v0, v3, :cond_5

    goto :goto_2

    .line 149
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid boolean string"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_6
    :goto_2
    return v2

    .line 144
    :cond_7
    return v5
.end method
