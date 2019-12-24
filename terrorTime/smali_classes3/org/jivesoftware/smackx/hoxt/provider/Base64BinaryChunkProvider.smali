.class public Lorg/jivesoftware/smackx/hoxt/provider/Base64BinaryChunkProvider;
.super Lorg/jivesoftware/smack/provider/ExtensionElementProvider;
.source "Base64BinaryChunkProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/ExtensionElementProvider<",
        "Lorg/jivesoftware/smackx/hoxt/packet/Base64BinaryChunk;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
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

    .line 34
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/hoxt/provider/Base64BinaryChunkProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/hoxt/packet/Base64BinaryChunk;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/hoxt/packet/Base64BinaryChunk;
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    const-string v0, ""

    const-string v1, "streamId"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "streamId":Ljava/lang/String;
    const-string v2, "nr"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, "nrString":Ljava/lang/String;
    const-string v3, "last"

    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "lastString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 42
    .local v3, "last":Z
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 44
    .local v4, "nr":I
    if-eqz v0, :cond_0

    .line 45
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 48
    :cond_0
    const/4 v5, 0x0

    .line 49
    .local v5, "text":Ljava/lang/String;
    const/4 v6, 0x0

    .line 51
    .local v6, "done":Z
    :goto_0
    if-nez v6, :cond_4

    .line 52
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 54
    .local v7, "eventType":I
    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    .line 55
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "chunk"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 56
    const/4 v6, 0x1

    goto :goto_1

    .line 58
    :cond_1
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unexpected end tag of: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 60
    :cond_2
    const/4 v8, 0x4

    if-ne v7, v8, :cond_3

    .line 61
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 65
    .end local v7    # "eventType":I
    :goto_1
    goto :goto_0

    .line 63
    .restart local v7    # "eventType":I
    :cond_3
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unexpected eventType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 67
    .end local v7    # "eventType":I
    :cond_4
    new-instance v7, Lorg/jivesoftware/smackx/hoxt/packet/Base64BinaryChunk;

    invoke-direct {v7, v5, v1, v4, v3}, Lorg/jivesoftware/smackx/hoxt/packet/Base64BinaryChunk;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-object v7
.end method
