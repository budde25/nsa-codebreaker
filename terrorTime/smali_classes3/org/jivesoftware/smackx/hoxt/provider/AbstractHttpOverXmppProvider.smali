.class public abstract Lorg/jivesoftware/smackx/hoxt/provider/AbstractHttpOverXmppProvider;
.super Lorg/jivesoftware/smack/provider/IQProvider;
.source "AbstractHttpOverXmppProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<H:",
        "Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp;",
        ">",
        "Lorg/jivesoftware/smack/provider/IQProvider<",
        "TH;>;"
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_SID:Ljava/lang/String; = "sid"

.field private static final ATTRIBUTE_STREAM_ID:Ljava/lang/String; = "streamId"

.field static final ATTRIBUTE_VERSION:Ljava/lang/String; = "version"

.field private static final ELEMENT_BASE_64:Ljava/lang/String; = "base64"

.field private static final ELEMENT_CHUNKED_BASE_64:Ljava/lang/String; = "chunkedBase64"

.field private static final ELEMENT_DATA:Ljava/lang/String; = "data"

.field static final ELEMENT_IBB:Ljava/lang/String; = "ibb"

.field static final ELEMENT_JINGLE:Ljava/lang/String; = "jingle"

.field static final ELEMENT_SIPUB:Ljava/lang/String; = "sipub"

.field private static final ELEMENT_TEXT:Ljava/lang/String; = "text"

.field private static final ELEMENT_XML:Ljava/lang/String; = "xml"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    .local p0, "this":Lorg/jivesoftware/smackx/hoxt/provider/AbstractHttpOverXmppProvider;, "Lorg/jivesoftware/smackx/hoxt/provider/AbstractHttpOverXmppProvider<TH;>;"
    invoke-direct {p0}, Lorg/jivesoftware/smack/provider/IQProvider;-><init>()V

    return-void
.end method

.method private static appendXmlAttributes(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/StringBuilder;)V
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .line 203
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 205
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 207
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 208
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    const-string v2, "=\""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXml(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 212
    const/16 v2, 0x22

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private static parseBase64(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Base64;
    .locals 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "text":Ljava/lang/String;
    const/4 v1, 0x0

    .line 222
    .local v1, "done":Z
    :goto_0
    if-nez v1, :cond_3

    .line 223
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 225
    .local v2, "eventType":I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 227
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "base64"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 228
    const/4 v1, 0x1

    goto :goto_1

    .line 230
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected end tag of: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 232
    :cond_1
    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 233
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 237
    .end local v2    # "eventType":I
    :goto_1
    goto :goto_0

    .line 235
    .restart local v2    # "eventType":I
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected eventType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 239
    .end local v2    # "eventType":I
    :cond_3
    new-instance v2, Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Base64;

    invoke-direct {v2, v0}, Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Base64;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method private static parseChunkedBase64(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$ChunkedBase64;
    .locals 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    const-string v0, ""

    const-string v1, "streamId"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "streamId":Ljava/lang/String;
    new-instance v1, Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$ChunkedBase64;

    invoke-direct {v1, v0}, Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$ChunkedBase64;-><init>(Ljava/lang/String;)V

    .line 246
    .local v1, "child":Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$ChunkedBase64;
    const/4 v2, 0x0

    .line 248
    .local v2, "done":Z
    :goto_0
    if-nez v2, :cond_2

    .line 249
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 251
    .local v3, "eventType":I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 252
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "chunkedBase64"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 253
    const/4 v2, 0x1

    .line 260
    .end local v3    # "eventType":I
    goto :goto_0

    .line 255
    .restart local v3    # "eventType":I
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unexpected end tag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 258
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unexpected event type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 261
    .end local v3    # "eventType":I
    :cond_2
    return-object v1
.end method

.method private static parseIbb(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Ibb;
    .locals 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    const-string v0, ""

    const-string v1, "sid"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "sid":Ljava/lang/String;
    new-instance v1, Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Ibb;

    invoke-direct {v1, v0}, Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Ibb;-><init>(Ljava/lang/String;)V

    .line 267
    .local v1, "child":Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Ibb;
    const/4 v2, 0x0

    .line 269
    .local v2, "done":Z
    :goto_0
    if-nez v2, :cond_2

    .line 270
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 272
    .local v3, "eventType":I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 273
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ibb"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 274
    const/4 v2, 0x1

    .line 281
    .end local v3    # "eventType":I
    goto :goto_0

    .line 276
    .restart local v3    # "eventType":I
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unexpected end tag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 279
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unexpected event type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 282
    .end local v3    # "eventType":I
    :cond_2
    return-object v1
.end method

.method private static parseText(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Text;
    .locals 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "text":Ljava/lang/String;
    const/4 v1, 0x0

    .line 133
    .local v1, "done":Z
    :goto_0
    if-nez v1, :cond_3

    .line 134
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 136
    .local v2, "eventType":I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 137
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "text"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    const/4 v1, 0x1

    goto :goto_1

    .line 140
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected end tag of: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 142
    :cond_1
    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 143
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 147
    .end local v2    # "eventType":I
    :goto_1
    goto :goto_0

    .line 145
    .restart local v2    # "eventType":I
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected eventType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 149
    .end local v2    # "eventType":I
    :cond_3
    new-instance v2, Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Text;

    invoke-direct {v2, v0}, Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Text;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method private static parseXml(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Xml;
    .locals 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 156
    .local v1, "done":Z
    const/4 v2, 0x1

    .line 158
    .local v2, "startClosed":Z
    :goto_0
    if-nez v1, :cond_7

    .line 159
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 161
    .local v3, "eventType":I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 162
    const/4 v1, 0x1

    goto :goto_1

    .line 165
    :cond_0
    const/4 v5, 0x2

    const/16 v6, 0x3e

    if-ne v3, v5, :cond_2

    .line 167
    if-nez v2, :cond_1

    .line 168
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    :cond_1
    const/16 v4, 0x3c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-static {p0, v0}, Lorg/jivesoftware/smackx/hoxt/provider/AbstractHttpOverXmppProvider;->appendXmlAttributes(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/StringBuilder;)V

    .line 174
    const/4 v2, 0x0

    goto :goto_1

    .line 175
    :cond_2
    if-ne v3, v4, :cond_4

    .line 177
    if-eqz v2, :cond_3

    .line 178
    const-string v4, "</"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 182
    :cond_3
    const-string v4, "/>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const/4 v2, 0x1

    goto :goto_1

    .line 185
    :cond_4
    const/4 v4, 0x4

    if-ne v3, v4, :cond_6

    .line 187
    if-nez v2, :cond_5

    .line 188
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    const/4 v2, 0x1

    .line 191
    :cond_5
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXmlText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 196
    .end local v3    # "eventType":I
    :goto_1
    goto :goto_0

    .line 193
    .restart local v3    # "eventType":I
    :cond_6
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unexpected eventType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 198
    .end local v3    # "eventType":I
    :cond_7
    new-instance v3, Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Xml;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Xml;-><init>(Ljava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method protected parseData(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Data;
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    .local p0, "this":Lorg/jivesoftware/smackx/hoxt/provider/AbstractHttpOverXmppProvider;, "Lorg/jivesoftware/smackx/hoxt/provider/AbstractHttpOverXmppProvider<TH;>;"
    const/4 v0, 0x0

    .line 82
    .local v0, "child":Lorg/jivesoftware/smack/packet/NamedElement;
    const/4 v1, 0x0

    .line 83
    .local v1, "done":Z
    const/4 v2, 0x0

    .line 85
    .local v2, "data":Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Data;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 86
    :goto_0
    if-nez v1, :cond_3

    .line 87
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 89
    .local v3, "eventType":I
    const/4 v5, 0x3

    if-ne v3, v4, :cond_1

    .line 90
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v5, "chunkedBase64"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_2

    :sswitch_1
    const-string v5, "sipub"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x5

    goto :goto_2

    :sswitch_2
    const-string v5, "text"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    goto :goto_2

    :sswitch_3
    const-string v8, "xml"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    :sswitch_4
    const-string v5, "ibb"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_2

    :sswitch_5
    const-string v5, "jingle"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x6

    goto :goto_2

    :sswitch_6
    const-string v5, "base64"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_2

    :goto_1
    move v5, v7

    :goto_2
    packed-switch v5, :pswitch_data_0

    .line 116
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unsupported child tag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 113
    :pswitch_0
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "jingle is not supported yet"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 109
    :pswitch_1
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "sipub is not supported yet"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 104
    :pswitch_2
    invoke-static {p1}, Lorg/jivesoftware/smackx/hoxt/provider/AbstractHttpOverXmppProvider;->parseIbb(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Ibb;

    move-result-object v0

    .line 105
    goto :goto_3

    .line 101
    :pswitch_3
    invoke-static {p1}, Lorg/jivesoftware/smackx/hoxt/provider/AbstractHttpOverXmppProvider;->parseXml(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Xml;

    move-result-object v0

    .line 102
    goto :goto_3

    .line 98
    :pswitch_4
    invoke-static {p1}, Lorg/jivesoftware/smackx/hoxt/provider/AbstractHttpOverXmppProvider;->parseChunkedBase64(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$ChunkedBase64;

    move-result-object v0

    .line 99
    goto :goto_3

    .line 95
    :pswitch_5
    invoke-static {p1}, Lorg/jivesoftware/smackx/hoxt/provider/AbstractHttpOverXmppProvider;->parseBase64(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Base64;

    move-result-object v0

    .line 96
    goto :goto_3

    .line 92
    :pswitch_6
    invoke-static {p1}, Lorg/jivesoftware/smackx/hoxt/provider/AbstractHttpOverXmppProvider;->parseText(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Text;

    move-result-object v0

    .line 93
    nop

    .line 116
    :goto_3
    goto :goto_4

    .line 118
    :cond_1
    if-ne v3, v5, :cond_2

    .line 119
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "data"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 120
    const/4 v1, 0x1

    .line 123
    .end local v3    # "eventType":I
    :cond_2
    :goto_4
    goto/16 :goto_0

    .line 124
    :cond_3
    new-instance v3, Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Data;

    invoke-direct {v3, v0}, Lorg/jivesoftware/smackx/hoxt/packet/AbstractHttpOverXmpp$Data;-><init>(Lorg/jivesoftware/smack/packet/NamedElement;)V

    move-object v2, v3

    .line 126
    :cond_4
    return-object v2

    :sswitch_data_0
    .sparse-switch
        -0x533862b1 -> :sswitch_6
        -0x4523194f -> :sswitch_5
        0x19669 -> :sswitch_4
        0x1d017 -> :sswitch_3
        0x36452d -> :sswitch_2
        0x685fce7 -> :sswitch_1
        0x7577c83b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected parseHeaders(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smackx/shim/packet/HeadersExtension;
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 61
    .local p0, "this":Lorg/jivesoftware/smackx/hoxt/provider/AbstractHttpOverXmppProvider;, "Lorg/jivesoftware/smackx/hoxt/provider/AbstractHttpOverXmppProvider<TH;>;"
    const/4 v0, 0x0

    .line 63
    .local v0, "headersExtension":Lorg/jivesoftware/smackx/shim/packet/HeadersExtension;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "headers"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    sget-object v1, Lorg/jivesoftware/smackx/shim/provider/HeadersProvider;->INSTANCE:Lorg/jivesoftware/smackx/shim/provider/HeadersProvider;

    invoke-virtual {v1, p1}, Lorg/jivesoftware/smackx/shim/provider/HeadersProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Element;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/jivesoftware/smackx/shim/packet/HeadersExtension;

    .line 65
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 68
    :cond_0
    return-object v0
.end method
