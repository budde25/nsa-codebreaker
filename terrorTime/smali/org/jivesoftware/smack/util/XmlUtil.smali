.class public Lorg/jivesoftware/smack/util/XmlUtil;
.super Ljava/lang/Object;
.source "XmlUtil.java"


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final transformerFactory:Ljavax/xml/transform/TransformerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 33
    const-class v0, Lorg/jivesoftware/smack/util/XmlUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/util/XmlUtil;->LOGGER:Ljava/util/logging/Logger;

    .line 35
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/util/XmlUtil;->transformerFactory:Ljavax/xml/transform/TransformerFactory;

    .line 39
    :try_start_0
    sget-object v0, Lorg/jivesoftware/smack/util/XmlUtil;->transformerFactory:Ljavax/xml/transform/TransformerFactory;

    const-string v1, "indent-number"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/TransformerFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lorg/jivesoftware/smack/util/XmlUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "XML TransformerFactory does not support indent-number attribute"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static prettyFormatXml(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 8
    .param p0, "xml"    # Ljava/lang/CharSequence;

    .line 46
    const-string v0, "yes"

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "xmlString":Ljava/lang/String;
    new-instance v2, Ljavax/xml/transform/stream/StreamSource;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/Reader;)V

    .line 48
    .local v2, "source":Ljavax/xml/transform/stream/StreamSource;
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 49
    .local v3, "stringWriter":Ljava/io/StringWriter;
    new-instance v4, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v4, v3}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    .line 52
    .local v4, "result":Ljavax/xml/transform/stream/StreamResult;
    :try_start_0
    sget-object v5, Lorg/jivesoftware/smack/util/XmlUtil;->transformerFactory:Ljavax/xml/transform/TransformerFactory;

    invoke-virtual {v5}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v5

    .line 53
    .local v5, "transformer":Ljavax/xml/transform/Transformer;
    const-string v6, "omit-xml-declaration"

    invoke-virtual {v5, v6, v0}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v6, "indent"

    invoke-virtual {v5, v6, v0}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v0, "{http://xml.apache.org/xslt}indent-amount"

    const-string v6, "2"

    invoke-virtual {v5, v0, v6}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v5, v2, v4}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v5    # "transformer":Ljavax/xml/transform/Transformer;
    nop

    .line 65
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 60
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    sget-object v5, Lorg/jivesoftware/smack/util/XmlUtil;->LOGGER:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v7, "Transformer error"

    invoke-virtual {v5, v6, v7, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    return-object v1
.end method
