.class public Lorg/jivesoftware/smack/util/PacketParserUtils;
.super Ljava/lang/Object;
.source "PacketParserUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final FEATURE_XML_ROUNDTRIP:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#xml-roundtrip"

.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final XML_PULL_PARSER_FACTORY:Lorg/xmlpull/v1/XmlPullParserFactory;

.field public static final XML_PULL_PARSER_SUPPORTS_ROUNDTRIP:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 62
    nop

    .line 63
    const-class v0, Lorg/jivesoftware/smack/util/PacketParserUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/util/PacketParserUtils;->LOGGER:Ljava/util/logging/Logger;

    .line 76
    invoke-static {}, Lorg/jivesoftware/smack/SmackConfiguration;->getVersion()Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    .line 81
    .local v0, "roundtrip":Z
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    sput-object v1, Lorg/jivesoftware/smack/util/PacketParserUtils;->XML_PULL_PARSER_FACTORY:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 82
    sget-object v1, Lorg/jivesoftware/smack/util/PacketParserUtils;->XML_PULL_PARSER_FACTORY:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 84
    .local v1, "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_1
    const-string v2, "http://xmlpull.org/v1/doc/features.html#xml-roundtrip"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 86
    const/4 v0, 0x1

    .line 90
    goto :goto_0

    .line 87
    :catch_0
    move-exception v2

    .line 89
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    sget-object v3, Lorg/jivesoftware/smack/util/PacketParserUtils;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v5, "XmlPullParser does not support XML_ROUNDTRIP"

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    .line 95
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_0
    nop

    .line 96
    sput-boolean v0, Lorg/jivesoftware/smack/util/PacketParserUtils;->XML_PULL_PARSER_SUPPORTS_ROUNDTRIP:Z

    .line 97
    .end local v0    # "roundtrip":Z
    .end local v1    # "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    return-void

    .line 92
    .restart local v0    # "roundtrip":Z
    :catch_1
    move-exception v1

    .line 94
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addExtensionElement(Ljava/util/Collection;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/jivesoftware/smack/packet/ExtensionElement;",
            ">;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 995
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jivesoftware/smack/packet/ExtensionElement;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->addExtensionElement(Ljava/util/Collection;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    return-void
.end method

.method public static addExtensionElement(Ljava/util/Collection;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "elementName"    # Ljava/lang/String;
    .param p3, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/jivesoftware/smack/packet/ExtensionElement;",
            ">;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1001
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jivesoftware/smack/packet/ExtensionElement;>;"
    invoke-static {p2, p3, p1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseExtensionElement(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v0

    .line 1002
    .local v0, "packetExtension":Lorg/jivesoftware/smack/packet/ExtensionElement;
    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1003
    return-void
.end method

.method public static addExtensionElement(Lorg/jivesoftware/smack/packet/Stanza;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p0, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 983
    invoke-static {p1}, Lorg/jivesoftware/smack/util/ParserUtils;->assertAtStartTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 984
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->addExtensionElement(Lorg/jivesoftware/smack/packet/Stanza;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    return-void
.end method

.method public static addExtensionElement(Lorg/jivesoftware/smack/packet/Stanza;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "elementName"    # Ljava/lang/String;
    .param p3, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 989
    invoke-static {p2, p3, p1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseExtensionElement(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v0

    .line 990
    .local v0, "packetExtension":Lorg/jivesoftware/smack/packet/ExtensionElement;
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/packet/Stanza;->addExtension(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 991
    return-void
.end method

.method public static getParserFor(Ljava/io/Reader;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 4
    .param p0, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-static {p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->newXmppParser(Ljava/io/Reader;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 106
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 107
    .local v1, "event":I
    :goto_0
    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 108
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 111
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 109
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Document contains no start tag"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 113
    :cond_1
    return-object v0
.end method

.method public static getParserFor(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 1
    .param p0, "stanza"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getParserFor(Ljava/io/Reader;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    return-object v0
.end method

.method public static getParserFor(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 6
    .param p0, "stanza"    # Ljava/lang/String;
    .param p1, "startTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    invoke-static {p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getParserFor(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 121
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 122
    .local v1, "event":I
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    nop

    .line 133
    .end local v1    # "event":I
    .end local v2    # "name":Ljava/lang/String;
    return-object v0

    .line 126
    .restart local v1    # "event":I
    .restart local v2    # "name":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    .line 130
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 131
    .end local v1    # "event":I
    .end local v2    # "name":Ljava/lang/String;
    goto :goto_0

    .line 127
    .restart local v1    # "event":I
    .restart local v2    # "name":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find start tag \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' in stanza: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static newXmppParser()Lorg/xmlpull/v1/XmlPullParser;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 178
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 179
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v1, 0x1

    const-string v2, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 180
    sget-boolean v2, Lorg/jivesoftware/smack/util/PacketParserUtils;->XML_PULL_PARSER_SUPPORTS_ROUNDTRIP:Z

    if-eqz v2, :cond_0

    .line 182
    :try_start_0
    const-string v2, "http://xmlpull.org/v1/doc/features.html#xml-roundtrip"

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    goto :goto_0

    .line 184
    :catch_0
    move-exception v1

    .line 185
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v2, Lorg/jivesoftware/smack/util/PacketParserUtils;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "XmlPullParser does not support XML_ROUNDTRIP, although it was first determined to be supported"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_0
    :goto_0
    return-object v0
.end method

.method public static newXmppParser(Ljava/io/Reader;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 1
    .param p0, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 207
    invoke-static {}, Lorg/jivesoftware/smack/util/PacketParserUtils;->newXmppParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 208
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v0, p0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 209
    return-object v0
.end method

.method public static parseCompressionFeature(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/compress/packet/Compress$Feature;
    .locals 8
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 700
    nop

    .line 702
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 703
    .local v0, "initialDepth":I
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 705
    .local v1, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 706
    .local v2, "eventType":I
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_6

    .line 716
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 717
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0x555a5966

    if-eq v6, v7, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    const-string v6, "compression"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    :goto_1
    move v4, v5

    :goto_2
    if-eqz v4, :cond_3

    goto :goto_6

    .line 719
    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-ne v4, v0, :cond_8

    .line 720
    nop

    .line 725
    .end local v2    # "eventType":I
    nop

    .line 726
    nop

    .line 727
    new-instance v2, Lorg/jivesoftware/smack/compress/packet/Compress$Feature;

    invoke-direct {v2, v1}, Lorg/jivesoftware/smack/compress/packet/Compress$Feature;-><init>(Ljava/util/List;)V

    return-object v2

    .line 708
    .end local v3    # "name":Ljava/lang/String;
    .restart local v2    # "eventType":I
    :cond_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 709
    .restart local v3    # "name":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x403a2f1f

    if-eq v6, v7, :cond_6

    :cond_5
    goto :goto_3

    :cond_6
    const-string v6, "method"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_4

    :goto_3
    move v4, v5

    :goto_4
    if-eqz v4, :cond_7

    goto :goto_5

    .line 711
    :cond_7
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 714
    :goto_5
    nop

    .line 724
    .end local v2    # "eventType":I
    .end local v3    # "name":Ljava/lang/String;
    :cond_8
    :goto_6
    goto :goto_0
.end method

.method public static parseContent(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 373
    nop

    .line 374
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    const-string v0, ""

    return-object v0

    .line 378
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 379
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseContentDepth(Lorg/xmlpull/v1/XmlPullParser;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static parseContentDepth(Lorg/xmlpull/v1/XmlPullParser;I)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "depth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseContentDepth(Lorg/xmlpull/v1/XmlPullParser;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static parseContentDepth(Lorg/xmlpull/v1/XmlPullParser;IZ)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "depth"    # I
    .param p2, "fullNamespaces"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 411
    const-string v0, "http://xmlpull.org/v1/doc/features.html#xml-roundtrip"

    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    invoke-static {p0, p1, p2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseContentDepthWithRoundtrip(Lorg/xmlpull/v1/XmlPullParser;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 414
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseContentDepthWithoutRoundtrip(Lorg/xmlpull/v1/XmlPullParser;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private static parseContentDepthWithRoundtrip(Lorg/xmlpull/v1/XmlPullParser;IZ)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "depth"    # I
    .param p2, "fullNamespaces"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 482
    .local v1, "event":I
    :goto_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v2

    if-nez v2, :cond_2

    .line 483
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    .line 484
    .local v2, "text":Ljava/lang/CharSequence;
    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 485
    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->escapeForXmlText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 487
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 489
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-gt v2, p1, :cond_3

    .line 490
    nop

    .line 494
    return-object v0

    .line 492
    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0
.end method

.method private static parseContentDepthWithoutRoundtrip(Lorg/xmlpull/v1/XmlPullParser;IZ)Ljava/lang/CharSequence;
    .locals 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "depth"    # I
    .param p2, "fullNamespaces"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 420
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>()V

    .line 421
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 422
    .local v1, "event":I
    const/4 v2, 0x0

    .line 426
    .local v2, "isEmptyElement":Z
    const/4 v3, 0x0

    .line 428
    .local v3, "namespaceElement":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_1

    const/4 v4, 0x4

    if-eq v1, v4, :cond_0

    goto :goto_3

    .line 467
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->escape(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    goto :goto_3

    .line 450
    :cond_1
    if-eqz v2, :cond_2

    .line 452
    const/4 v2, 0x0

    goto :goto_1

    .line 455
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 457
    :goto_1
    if-eqz v3, :cond_3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 459
    const/4 v3, 0x0

    .line 461
    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-gt v4, p1, :cond_9

    .line 463
    nop

    .line 472
    return-object v0

    .line 430
    :cond_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->halfOpenElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 431
    if-eqz v3, :cond_5

    if-eqz p2, :cond_6

    .line 432
    :cond_5
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v4

    .line 433
    .local v4, "namespace":Ljava/lang/String;
    invoke-static {v4}, Lorg/jivesoftware/smack/util/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 434
    const-string v5, "xmlns"

    invoke-virtual {v0, v5, v4}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 435
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 438
    .end local v4    # "namespace":Ljava/lang/String;
    :cond_6
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 439
    invoke-interface {p0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 438
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 441
    .end local v4    # "i":I
    :cond_7
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 442
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 443
    const/4 v2, 0x1

    goto :goto_3

    .line 446
    :cond_8
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 448
    nop

    .line 470
    :cond_9
    :goto_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0
.end method

.method public static parseDescriptiveTexts(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 732
    .local p1, "descriptiveTexts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 733
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object p1, v0

    .line 735
    :cond_0
    invoke-static {p0}, Lorg/jivesoftware/smack/util/ParserUtils;->getXmlLang(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 736
    .local v0, "xmllang":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 739
    const-string v0, ""

    .line 742
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 743
    .local v1, "text":Ljava/lang/String;
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 744
    .local v2, "previousValue":Ljava/lang/String;
    nop

    .line 745
    return-object p1
.end method

.method public static parseElement(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseElement(Lorg/xmlpull/v1/XmlPullParser;Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static parseElement(Lorg/xmlpull/v1/XmlPullParser;Z)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "fullNamespaces"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    nop

    .line 352
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    invoke-static {p0, v0, p1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseContentDepth(Lorg/xmlpull/v1/XmlPullParser;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static parseElementText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    nop

    .line 303
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    const-string v0, ""

    .local v0, "res":Ljava/lang/String;
    goto :goto_0

    .line 308
    .end local v0    # "res":Ljava/lang/String;
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 309
    .local v0, "event":I
    const/4 v1, 0x4

    const/4 v2, 0x3

    if-eq v0, v1, :cond_2

    .line 310
    if-ne v0, v2, :cond_1

    .line 316
    const-string v1, ""

    return-object v1

    .line 318
    :cond_1
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Non-empty element tag not followed by text, while Mixed Content (XML 3.2.2) is disallowed"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 322
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, "res":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 324
    if-ne v0, v2, :cond_3

    move-object v0, v1

    .line 329
    .end local v1    # "res":Ljava/lang/String;
    .local v0, "res":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 325
    .local v0, "event":I
    .restart local v1    # "res":Ljava/lang/String;
    :cond_3
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Non-empty element tag contains child-elements, while Mixed Content (XML 3.2.2) is disallowed"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static parseError(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/StanzaError$Builder;
    .locals 11
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 842
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 843
    .local v0, "initialDepth":I
    const/4 v1, 0x0

    .line 844
    .local v1, "descriptiveTexts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 845
    .local v2, "extensions":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/ExtensionElement;>;"
    invoke-static {}, Lorg/jivesoftware/smack/packet/StanzaError;->getBuilder()Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    move-result-object v3

    .line 848
    .local v3, "builder":Lorg/jivesoftware/smack/packet/StanzaError$Builder;
    const-string v4, ""

    const-string v5, "type"

    invoke-interface {p0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/jivesoftware/smack/packet/StanzaError$Type;->fromString(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/StanzaError$Type;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/jivesoftware/smack/packet/StanzaError$Builder;->setType(Lorg/jivesoftware/smack/packet/StanzaError$Type;)Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    .line 849
    const-string v5, "by"

    invoke-interface {p0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/packet/StanzaError$Builder;->setErrorGenerator(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    .line 852
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 853
    .local v4, "eventType":I
    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    goto/16 :goto_7

    .line 876
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-ne v5, v0, :cond_9

    .line 877
    nop

    .line 881
    .end local v4    # "eventType":I
    invoke-virtual {v3, v2}, Lorg/jivesoftware/smack/packet/StanzaError$Builder;->setExtensions(Ljava/util/List;)Lorg/jivesoftware/smack/packet/AbstractError$Builder;

    move-result-object v4

    check-cast v4, Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    invoke-virtual {v4, v1}, Lorg/jivesoftware/smack/packet/StanzaError$Builder;->setDescriptiveTexts(Ljava/util/Map;)Lorg/jivesoftware/smack/packet/AbstractError$Builder;

    .line 882
    return-object v3

    .line 855
    .restart local v4    # "eventType":I
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 856
    .local v5, "name":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v6

    .line 857
    .local v6, "namespace":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, 0x34f9b5a7

    const/4 v9, 0x0

    const/4 v10, -0x1

    if-eq v7, v8, :cond_3

    :cond_2
    goto :goto_1

    :cond_3
    const-string v7, "urn:ietf:params:xml:ns:xmpp-stanzas"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v9

    goto :goto_2

    :goto_1
    move v7, v10

    :goto_2
    if-eqz v7, :cond_4

    .line 872
    invoke-static {v2, p0, v5, v6}, Lorg/jivesoftware/smack/util/PacketParserUtils;->addExtensionElement(Ljava/util/Collection;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 859
    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, 0x36452d

    if-eq v7, v8, :cond_6

    :cond_5
    goto :goto_3

    :cond_6
    const-string v7, "text"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_4

    :goto_3
    move v9, v10

    :goto_4
    if-eqz v9, :cond_7

    .line 864
    invoke-static {v5}, Lorg/jivesoftware/smack/packet/StanzaError$Condition;->fromString(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/StanzaError$Condition;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/jivesoftware/smack/packet/StanzaError$Builder;->setCondition(Lorg/jivesoftware/smack/packet/StanzaError$Condition;)Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    .line 865
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v7

    if-nez v7, :cond_8

    .line 866
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/jivesoftware/smack/packet/StanzaError$Builder;->setConditionText(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    goto :goto_5

    .line 861
    :cond_7
    invoke-static {p0, v1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseDescriptiveTexts(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 862
    nop

    .line 870
    :cond_8
    :goto_5
    nop

    .line 874
    :goto_6
    nop

    .line 880
    .end local v4    # "eventType":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "namespace":Ljava/lang/String;
    :cond_9
    :goto_7
    goto :goto_0
.end method

.method public static parseExtensionElement(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/ExtensionElement;
    .locals 2
    .param p0, "elementName"    # Ljava/lang/String;
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 914
    invoke-static {p2}, Lorg/jivesoftware/smack/util/ParserUtils;->assertAtStartTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 916
    invoke-static {p0, p1}, Lorg/jivesoftware/smack/provider/ProviderManager;->getExtensionProvider(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/provider/ExtensionElementProvider;

    move-result-object v0

    .line 917
    .local v0, "provider":Lorg/jivesoftware/smack/provider/ExtensionElementProvider;, "Lorg/jivesoftware/smack/provider/ExtensionElementProvider<Lorg/jivesoftware/smack/packet/ExtensionElement;>;"
    if-eqz v0, :cond_0

    .line 918
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smack/provider/ExtensionElementProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Element;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/ExtensionElement;

    return-object v1

    .line 922
    :cond_0
    sget-object v1, Lorg/jivesoftware/smack/parsing/StandardExtensionElementProvider;->INSTANCE:Lorg/jivesoftware/smack/parsing/StandardExtensionElementProvider;

    invoke-virtual {v1, p2}, Lorg/jivesoftware/smack/parsing/StandardExtensionElementProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Element;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/packet/ExtensionElement;

    return-object v1
.end method

.method public static parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;
    .locals 13
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 590
    invoke-static {p0}, Lorg/jivesoftware/smack/util/ParserUtils;->assertAtStartTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 591
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 592
    .local v0, "initialDepth":I
    const/4 v1, 0x0

    .line 593
    .local v1, "iqPacket":Lorg/jivesoftware/smack/packet/IQ;
    const/4 v2, 0x0

    .line 595
    .local v2, "error":Lorg/jivesoftware/smack/packet/StanzaError$Builder;
    const-string v3, ""

    const-string v4, "id"

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 596
    .local v4, "id":Ljava/lang/String;
    const-string v5, "to"

    invoke-static {p0, v5}, Lorg/jivesoftware/smack/util/ParserUtils;->getJidAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lorg/jxmpp/jid/Jid;

    move-result-object v5

    .line 597
    .local v5, "to":Lorg/jxmpp/jid/Jid;
    const-string v6, "from"

    invoke-static {p0, v6}, Lorg/jivesoftware/smack/util/ParserUtils;->getJidAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lorg/jxmpp/jid/Jid;

    move-result-object v6

    .line 598
    .local v6, "from":Lorg/jxmpp/jid/Jid;
    const-string v7, "type"

    invoke-interface {p0, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jivesoftware/smack/packet/IQ$Type;->fromString(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v3

    .line 601
    .local v3, "type":Lorg/jivesoftware/smack/packet/IQ$Type;
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 603
    .local v7, "eventType":I
    const/4 v8, 0x2

    if-eq v7, v8, :cond_4

    const/4 v9, 0x3

    if-eq v7, v9, :cond_0

    goto/16 :goto_4

    .line 629
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-ne v9, v0, :cond_9

    .line 630
    nop

    .line 636
    .end local v7    # "eventType":I
    if-nez v1, :cond_3

    .line 637
    sget-object v7, Lorg/jivesoftware/smack/util/PacketParserUtils$1;->$SwitchMap$org$jivesoftware$smack$packet$IQ$Type:[I

    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/IQ$Type;->ordinal()I

    move-result v9

    aget v7, v7, v9

    const/4 v9, 0x1

    if-eq v7, v9, :cond_2

    if-eq v7, v8, :cond_1

    goto :goto_1

    .line 643
    :cond_1
    new-instance v7, Lorg/jivesoftware/smack/packet/EmptyResultIQ;

    invoke-direct {v7}, Lorg/jivesoftware/smack/packet/EmptyResultIQ;-><init>()V

    move-object v1, v7

    .line 644
    goto :goto_1

    .line 640
    :cond_2
    new-instance v7, Lorg/jivesoftware/smack/packet/ErrorIQ;

    invoke-direct {v7, v2}, Lorg/jivesoftware/smack/packet/ErrorIQ;-><init>(Lorg/jivesoftware/smack/packet/StanzaError$Builder;)V

    move-object v1, v7

    .line 651
    :cond_3
    :goto_1
    invoke-virtual {v1, v4}, Lorg/jivesoftware/smack/packet/IQ;->setStanzaId(Ljava/lang/String;)V

    .line 652
    invoke-virtual {v1, v5}, Lorg/jivesoftware/smack/packet/IQ;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 653
    invoke-virtual {v1, v6}, Lorg/jivesoftware/smack/packet/IQ;->setFrom(Lorg/jxmpp/jid/Jid;)V

    .line 654
    invoke-virtual {v1, v3}, Lorg/jivesoftware/smack/packet/IQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 655
    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/IQ;->setError(Lorg/jivesoftware/smack/packet/StanzaError$Builder;)V

    .line 657
    return-object v1

    .line 605
    .restart local v7    # "eventType":I
    :cond_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 606
    .local v8, "elementName":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v9

    .line 607
    .local v9, "namespace":Ljava/lang/String;
    const/4 v10, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v11

    const v12, 0x5c4d208

    if-eq v11, v12, :cond_6

    :cond_5
    goto :goto_2

    :cond_6
    const-string v11, "error"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v10, 0x0

    :goto_2
    if-eqz v10, :cond_8

    .line 614
    invoke-static {v8, v9}, Lorg/jivesoftware/smack/provider/ProviderManager;->getIQProvider(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/provider/IQProvider;

    move-result-object v10

    .line 615
    .local v10, "provider":Lorg/jivesoftware/smack/provider/IQProvider;, "Lorg/jivesoftware/smack/provider/IQProvider<Lorg/jivesoftware/smack/packet/IQ;>;"
    if-eqz v10, :cond_7

    .line 616
    invoke-virtual {v10, p0}, Lorg/jivesoftware/smack/provider/IQProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Element;

    move-result-object v11

    move-object v1, v11

    check-cast v1, Lorg/jivesoftware/smack/packet/IQ;

    goto :goto_3

    .line 623
    :cond_7
    new-instance v11, Lorg/jivesoftware/smack/packet/UnparsedIQ;

    invoke-static {p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseElement(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-direct {v11, v8, v9, v12}, Lorg/jivesoftware/smack/packet/UnparsedIQ;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    move-object v1, v11

    goto :goto_3

    .line 609
    .end local v10    # "provider":Lorg/jivesoftware/smack/provider/IQProvider;, "Lorg/jivesoftware/smack/provider/IQProvider<Lorg/jivesoftware/smack/packet/IQ;>;"
    :cond_8
    invoke-static {p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseError(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    move-result-object v2

    .line 610
    nop

    .line 627
    :goto_3
    nop

    .line 634
    .end local v7    # "eventType":I
    .end local v8    # "elementName":Ljava/lang/String;
    .end local v9    # "namespace":Ljava/lang/String;
    :cond_9
    :goto_4
    goto :goto_0
.end method

.method public static parseMechanisms(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/Collection;
    .locals 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 670
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 671
    .local v0, "mechanisms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 672
    .local v1, "done":Z
    :goto_0
    if-nez v1, :cond_3

    .line 673
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 675
    .local v2, "eventType":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 676
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 677
    .local v3, "elementName":Ljava/lang/String;
    const-string v4, "mechanism"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 678
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    .end local v3    # "elementName":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 681
    :cond_1
    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 682
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mechanisms"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 683
    const/4 v1, 0x1

    .line 686
    .end local v2    # "eventType":I
    :cond_2
    :goto_1
    goto :goto_0

    .line 687
    :cond_3
    return-object v0
.end method

.method public static parseMessage(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Message;
    .locals 13
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 221
    invoke-static {p0}, Lorg/jivesoftware/smack/util/ParserUtils;->assertAtStartTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 222
    nop

    .line 224
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 225
    .local v0, "initialDepth":I
    new-instance v1, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v1}, Lorg/jivesoftware/smack/packet/Message;-><init>()V

    .line 226
    .local v1, "message":Lorg/jivesoftware/smack/packet/Message;
    const-string v2, ""

    const-string v3, "id"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smack/packet/Message;->setStanzaId(Ljava/lang/String;)V

    .line 227
    const-string v3, "to"

    invoke-static {p0, v3}, Lorg/jivesoftware/smack/util/ParserUtils;->getJidAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lorg/jxmpp/jid/Jid;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smack/packet/Message;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 228
    const-string v3, "from"

    invoke-static {p0, v3}, Lorg/jivesoftware/smack/util/ParserUtils;->getJidAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lorg/jxmpp/jid/Jid;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smack/packet/Message;->setFrom(Lorg/jxmpp/jid/Jid;)V

    .line 229
    const-string v3, "type"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "typeString":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 231
    invoke-static {v2}, Lorg/jivesoftware/smack/packet/Message$Type;->fromString(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Message$Type;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jivesoftware/smack/packet/Message;->setType(Lorg/jivesoftware/smack/packet/Message$Type;)V

    .line 233
    :cond_0
    invoke-static {p0}, Lorg/jivesoftware/smack/util/ParserUtils;->getXmlLang(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, "language":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lorg/jivesoftware/smack/packet/Message;->setLanguage(Ljava/lang/String;)V

    .line 239
    const/4 v4, 0x0

    .line 241
    .local v4, "thread":Ljava/lang/String;
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 242
    .local v5, "eventType":I
    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    goto/16 :goto_3

    .line 269
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-ne v6, v0, :cond_b

    .line 270
    nop

    .line 276
    .end local v5    # "eventType":I
    invoke-virtual {v1, v4}, Lorg/jivesoftware/smack/packet/Message;->setThread(Ljava/lang/String;)V

    .line 282
    return-object v1

    .line 244
    .restart local v5    # "eventType":I
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 245
    .local v7, "elementName":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v8

    .line 246
    .local v8, "namespace":Ljava/lang/String;
    const/4 v9, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, -0x6f55aad4

    const/4 v12, 0x1

    if-eq v10, v11, :cond_6

    const v11, -0x341ef1f6    # -2.9498388E7f

    if-eq v10, v11, :cond_5

    const v11, 0x5c4d208

    if-eq v10, v11, :cond_4

    :cond_3
    goto :goto_1

    :cond_4
    const-string v10, "error"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v9, v6

    goto :goto_1

    :cond_5
    const-string v10, "thread"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v9, v12

    goto :goto_1

    :cond_6
    const-string v10, "subject"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_9

    if-eq v9, v12, :cond_8

    if-eq v9, v6, :cond_7

    .line 264
    invoke-static {v1, p0, v7, v8}, Lorg/jivesoftware/smack/util/PacketParserUtils;->addExtensionElement(Lorg/jivesoftware/smack/packet/Stanza;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 261
    :cond_7
    invoke-static {p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseError(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/jivesoftware/smack/packet/Message;->setError(Lorg/jivesoftware/smack/packet/StanzaError$Builder;)V

    .line 262
    goto :goto_2

    .line 256
    :cond_8
    if-nez v4, :cond_a

    .line 257
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 248
    :cond_9
    invoke-static {p0}, Lorg/jivesoftware/smack/util/ParserUtils;->getXmlLang(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    .line 249
    .local v6, "xmlLangSubject":Ljava/lang/String;
    invoke-static {p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseElementText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v9

    .line 251
    .local v9, "subject":Ljava/lang/String;
    invoke-virtual {v1, v6}, Lorg/jivesoftware/smack/packet/Message;->getSubject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_a

    .line 252
    invoke-virtual {v1, v6, v9}, Lorg/jivesoftware/smack/packet/Message;->addSubject(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Message$Subject;

    .line 267
    .end local v6    # "xmlLangSubject":Ljava/lang/String;
    .end local v9    # "subject":Ljava/lang/String;
    :cond_a
    :goto_2
    nop

    .line 274
    .end local v5    # "eventType":I
    .end local v7    # "elementName":Ljava/lang/String;
    .end local v8    # "namespace":Ljava/lang/String;
    :cond_b
    :goto_3
    goto :goto_0
.end method

.method public static parsePacketExtension(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/ExtensionElement;
    .locals 1
    .param p0, "elementName"    # Ljava/lang/String;
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 899
    invoke-static {p0, p1, p2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseExtensionElement(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v0

    return-object v0
.end method

.method public static parsePresence(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Presence;
    .locals 13
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 506
    invoke-static {p0}, Lorg/jivesoftware/smack/util/ParserUtils;->assertAtStartTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 507
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 509
    .local v0, "initialDepth":I
    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    .line 510
    .local v1, "type":Lorg/jivesoftware/smack/packet/Presence$Type;
    const-string v2, ""

    const-string v3, "type"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 511
    .local v3, "typeString":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 512
    invoke-static {v3}, Lorg/jivesoftware/smack/packet/Presence$Type;->fromString(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v1

    .line 514
    :cond_0
    new-instance v4, Lorg/jivesoftware/smack/packet/Presence;

    invoke-direct {v4, v1}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    .line 515
    .local v4, "presence":Lorg/jivesoftware/smack/packet/Presence;
    const-string v5, "to"

    invoke-static {p0, v5}, Lorg/jivesoftware/smack/util/ParserUtils;->getJidAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lorg/jxmpp/jid/Jid;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 516
    const-string v5, "from"

    invoke-static {p0, v5}, Lorg/jivesoftware/smack/util/ParserUtils;->getJidAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lorg/jxmpp/jid/Jid;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smack/packet/Presence;->setFrom(Lorg/jxmpp/jid/Jid;)V

    .line 517
    const-string v5, "id"

    invoke-interface {p0, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jivesoftware/smack/packet/Presence;->setStanzaId(Ljava/lang/String;)V

    .line 519
    invoke-static {p0}, Lorg/jivesoftware/smack/util/ParserUtils;->getXmlLang(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v5

    .line 520
    .local v5, "language":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 522
    invoke-virtual {v4, v5}, Lorg/jivesoftware/smack/packet/Presence;->setLanguage(Ljava/lang/String;)V

    .line 528
    :cond_1
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 529
    .local v2, "eventType":I
    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eq v2, v7, :cond_3

    if-eq v2, v6, :cond_2

    goto/16 :goto_3

    .line 573
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-ne v6, v0, :cond_a

    .line 574
    nop

    .line 579
    .end local v2    # "eventType":I
    return-object v4

    .line 531
    .restart local v2    # "eventType":I
    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 532
    .local v8, "elementName":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v9

    .line 533
    .local v9, "namespace":Ljava/lang/String;
    const/4 v10, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v11

    const/4 v12, 0x1

    sparse-switch v11, :sswitch_data_0

    :cond_4
    goto :goto_1

    :sswitch_0
    const-string v11, "error"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    move v10, v6

    goto :goto_1

    :sswitch_1
    const-string v11, "show"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    move v10, v7

    goto :goto_1

    :sswitch_2
    const-string v11, "status"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v10, 0x0

    goto :goto_1

    :sswitch_3
    const-string v11, "priority"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    move v10, v12

    :goto_1
    if-eqz v10, :cond_9

    if-eq v10, v12, :cond_8

    if-eq v10, v7, :cond_6

    if-eq v10, v6, :cond_5

    .line 564
    :try_start_0
    invoke-static {v4, p0, v8, v9}, Lorg/jivesoftware/smack/util/PacketParserUtils;->addExtensionElement(Lorg/jivesoftware/smack/packet/Stanza;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    goto/16 :goto_2

    .line 565
    :catch_0
    move-exception v6

    .line 566
    .local v6, "e":Ljava/lang/Exception;
    sget-object v7, Lorg/jivesoftware/smack/util/PacketParserUtils;->LOGGER:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to parse extension element in Presence stanza: \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "\" from: \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    invoke-virtual {v4}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " id: \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/jivesoftware/smack/packet/Presence;->getStanzaId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 566
    invoke-virtual {v7, v10}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_2

    .line 557
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-static {p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseError(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/StanzaError$Builder;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/jivesoftware/smack/packet/Presence;->setError(Lorg/jivesoftware/smack/packet/StanzaError$Builder;)V

    .line 558
    goto :goto_2

    .line 542
    :cond_6
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    .line 543
    .local v6, "modeText":Ljava/lang/String;
    invoke-static {v6}, Lorg/jivesoftware/smack/util/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 544
    invoke-static {v6}, Lorg/jivesoftware/smack/packet/Presence$Mode;->fromString(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Presence$Mode;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/jivesoftware/smack/packet/Presence;->setMode(Lorg/jivesoftware/smack/packet/Presence$Mode;)V

    goto :goto_2

    .line 549
    :cond_7
    sget-object v7, Lorg/jivesoftware/smack/util/PacketParserUtils;->LOGGER:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Empty or null mode text in presence show element form "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    invoke-virtual {v4}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Lorg/jxmpp/jid/Jid;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " with id \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    invoke-virtual {v4}, Lorg/jivesoftware/smack/packet/Presence;->getStanzaId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\' which is invalid according to RFC6121 4.7.2.1"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 549
    invoke-virtual {v7, v10}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 555
    goto :goto_2

    .line 538
    .end local v6    # "modeText":Ljava/lang/String;
    :cond_8
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 539
    .local v6, "priority":I
    invoke-virtual {v4, v6}, Lorg/jivesoftware/smack/packet/Presence;->setPriority(I)V

    .line 540
    goto :goto_2

    .line 535
    .end local v6    # "priority":I
    :cond_9
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/jivesoftware/smack/packet/Presence;->setStatus(Ljava/lang/String;)V

    .line 536
    nop

    .line 571
    :goto_2
    nop

    .line 578
    .end local v2    # "eventType":I
    .end local v8    # "elementName":Ljava/lang/String;
    .end local v9    # "namespace":Ljava/lang/String;
    :cond_a
    :goto_3
    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x4577865c -> :sswitch_3
        -0x3532300e -> :sswitch_2
        0x35dafd -> :sswitch_1
        0x5c4d208 -> :sswitch_0
    .end sparse-switch
.end method

.method public static parseSASLFailure(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/sasl/packet/SaslStreamElements$SASLFailure;
    .locals 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 757
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 758
    .local v0, "initialDepth":I
    const/4 v1, 0x0

    .line 759
    .local v1, "condition":Ljava/lang/String;
    const/4 v2, 0x0

    .line 761
    .local v2, "descriptiveTexts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 762
    .local v3, "eventType":I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 774
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-ne v4, v0, :cond_3

    .line 775
    nop

    .line 780
    .end local v3    # "eventType":I
    new-instance v3, Lorg/jivesoftware/smack/sasl/packet/SaslStreamElements$SASLFailure;

    invoke-direct {v3, v1, v2}, Lorg/jivesoftware/smack/sasl/packet/SaslStreamElements$SASLFailure;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v3

    .line 764
    .restart local v3    # "eventType":I
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 765
    .local v4, "name":Ljava/lang/String;
    const-string v5, "text"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 766
    invoke-static {p0, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseDescriptiveTexts(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    goto :goto_1

    .line 769
    :cond_2
    nop

    .line 770
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 772
    nop

    .line 779
    .end local v3    # "eventType":I
    .end local v4    # "name":Ljava/lang/String;
    :cond_3
    :goto_1
    goto :goto_0
.end method

.method public static parseSessionFeature(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Session$Feature;
    .locals 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 953
    invoke-static {p0}, Lorg/jivesoftware/smack/util/ParserUtils;->assertAtStartTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 954
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 955
    .local v0, "initialDepth":I
    const/4 v1, 0x0

    .line 956
    .local v1, "optional":Z
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 957
    new-instance v2, Lorg/jivesoftware/smack/packet/Session$Feature;

    invoke-direct {v2, v1}, Lorg/jivesoftware/smack/packet/Session$Feature;-><init>(Z)V

    return-object v2

    .line 961
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 962
    .local v2, "event":I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    goto :goto_3

    .line 972
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ne v3, v0, :cond_6

    .line 973
    nop

    .line 978
    .end local v2    # "event":I
    new-instance v2, Lorg/jivesoftware/smack/packet/Session$Feature;

    invoke-direct {v2, v1}, Lorg/jivesoftware/smack/packet/Session$Feature;-><init>(Z)V

    return-object v2

    .line 964
    .restart local v2    # "event":I
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 965
    .local v3, "name":Ljava/lang/String;
    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x4b5b4a0

    if-eq v5, v6, :cond_4

    :cond_3
    goto :goto_1

    :cond_4
    const-string v5, "optional"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_5

    goto :goto_2

    .line 967
    :cond_5
    const/4 v1, 0x1

    .line 970
    :goto_2
    nop

    .line 976
    .end local v2    # "event":I
    .end local v3    # "name":Ljava/lang/String;
    :cond_6
    :goto_3
    goto :goto_0
.end method

.method public static parseStanza(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Stanza;
    .locals 1
    .param p0, "stanza"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lorg/jivesoftware/smack/packet/Stanza;",
            ">(",
            "Ljava/lang/String;",
            ")TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 138
    invoke-static {p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->getParserFor(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseStanza(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Stanza;

    move-result-object v0

    return-object v0
.end method

.method public static parseStanza(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Stanza;
    .locals 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 151
    invoke-static {p0}, Lorg/jivesoftware/smack/util/ParserUtils;->assertAtStartTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 152
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x4c186305

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_3

    const/16 v2, 0xd28

    if-eq v1, v2, :cond_2

    const v2, 0x38eb0007

    if-eq v1, v2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v1, "message"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const-string v1, "iq"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :cond_3
    const-string v1, "presence"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_6

    if-eq v1, v4, :cond_5

    if-ne v1, v3, :cond_4

    .line 159
    invoke-static {p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parsePresence(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Presence;

    move-result-object v1

    return-object v1

    .line 161
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can only parse message, iq or presence, not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    :cond_5
    invoke-static {p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseIQ(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/IQ;

    move-result-object v1

    return-object v1

    .line 155
    :cond_6
    invoke-static {p0}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseMessage(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Message;

    move-result-object v1

    return-object v1
.end method

.method public static parseStartTlsFeature(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/StartTls;
    .locals 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 927
    nop

    .line 928
    nop

    .line 929
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 930
    .local v0, "initalDepth":I
    const/4 v1, 0x0

    .line 932
    .local v1, "required":Z
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 933
    .local v2, "event":I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_3

    .line 943
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ne v3, v0, :cond_5

    .line 944
    nop

    .line 948
    .end local v2    # "event":I
    nop

    .line 949
    new-instance v2, Lorg/jivesoftware/smack/packet/StartTls;

    invoke-direct {v2, v1}, Lorg/jivesoftware/smack/packet/StartTls;-><init>(Z)V

    return-object v2

    .line 935
    .restart local v2    # "event":I
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 936
    .local v3, "name":Ljava/lang/String;
    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x176ed461

    if-eq v5, v6, :cond_3

    :cond_2
    goto :goto_1

    :cond_3
    const-string v5, "required"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_4

    goto :goto_2

    .line 938
    :cond_4
    const/4 v1, 0x1

    .line 941
    :goto_2
    nop

    .line 947
    .end local v2    # "event":I
    .end local v3    # "name":Ljava/lang/String;
    :cond_5
    :goto_3
    goto :goto_0
.end method

.method public static parseStreamError(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/StreamError;
    .locals 12
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 791
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 792
    .local v0, "initialDepth":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 793
    .local v1, "extensions":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smack/packet/ExtensionElement;>;"
    const/4 v2, 0x0

    .line 794
    .local v2, "descriptiveTexts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 795
    .local v3, "condition":Lorg/jivesoftware/smack/packet/StreamError$Condition;
    const/4 v4, 0x0

    .line 797
    .local v4, "conditionText":Ljava/lang/String;
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 798
    .local v5, "eventType":I
    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    goto :goto_7

    .line 824
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-ne v6, v0, :cond_9

    .line 825
    nop

    .line 830
    .end local v5    # "eventType":I
    new-instance v5, Lorg/jivesoftware/smack/packet/StreamError;

    invoke-direct {v5, v3, v4, v2, v1}, Lorg/jivesoftware/smack/packet/StreamError;-><init>(Lorg/jivesoftware/smack/packet/StreamError$Condition;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    return-object v5

    .line 800
    .restart local v5    # "eventType":I
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 801
    .local v6, "name":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v7

    .line 802
    .local v7, "namespace":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, 0x35e4d17c

    const/4 v10, 0x0

    const/4 v11, -0x1

    if-eq v8, v9, :cond_3

    :cond_2
    goto :goto_1

    :cond_3
    const-string v8, "urn:ietf:params:xml:ns:xmpp-streams"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v8, v10

    goto :goto_2

    :goto_1
    move v8, v11

    :goto_2
    if-eqz v8, :cond_4

    .line 819
    invoke-static {v1, p0, v6, v7}, Lorg/jivesoftware/smack/util/PacketParserUtils;->addExtensionElement(Ljava/util/Collection;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 804
    :cond_4
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, 0x36452d

    if-eq v8, v9, :cond_6

    :cond_5
    goto :goto_3

    :cond_6
    const-string v8, "text"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_4

    :goto_3
    move v10, v11

    :goto_4
    if-eqz v10, :cond_7

    .line 811
    invoke-static {v6}, Lorg/jivesoftware/smack/packet/StreamError$Condition;->fromString(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/StreamError$Condition;

    move-result-object v3

    .line 812
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v8

    if-nez v8, :cond_8

    .line 813
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .line 806
    :cond_7
    invoke-static {p0, v2}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseDescriptiveTexts(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 807
    nop

    .line 817
    :cond_8
    :goto_5
    nop

    .line 822
    :goto_6
    nop

    .line 829
    .end local v5    # "eventType":I
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "namespace":Ljava/lang/String;
    :cond_9
    :goto_7
    goto :goto_0
.end method
