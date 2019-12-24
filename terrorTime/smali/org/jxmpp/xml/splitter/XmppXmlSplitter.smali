.class public Lorg/jxmpp/xml/splitter/XmppXmlSplitter;
.super Lorg/jxmpp/xml/splitter/XmlSplitter;
.source "XmppXmlSplitter.java"


# instance fields
.field private final maxElementSize:I

.field private streamPrefix:Ljava/lang/String;

.field private final xmppElementCallback:Lorg/jxmpp/xml/splitter/XmppElementCallback;


# direct methods
.method public constructor <init>(ILorg/jxmpp/xml/splitter/XmppElementCallback;)V
    .locals 1
    .param p1, "maxElementSize"    # I
    .param p2, "xmppElementCallback"    # Lorg/jxmpp/xml/splitter/XmppElementCallback;

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/jxmpp/xml/splitter/XmppXmlSplitter;-><init>(ILorg/jxmpp/xml/splitter/XmppElementCallback;Lorg/jxmpp/xml/splitter/DeclarationCallback;Lorg/jxmpp/xml/splitter/ProcessingInstructionCallback;)V

    .line 67
    return-void
.end method

.method public constructor <init>(ILorg/jxmpp/xml/splitter/XmppElementCallback;Lorg/jxmpp/xml/splitter/DeclarationCallback;Lorg/jxmpp/xml/splitter/ProcessingInstructionCallback;)V
    .locals 0
    .param p1, "maxElementSize"    # I
    .param p2, "xmppElementCallback"    # Lorg/jxmpp/xml/splitter/XmppElementCallback;
    .param p3, "declarationCallback"    # Lorg/jxmpp/xml/splitter/DeclarationCallback;
    .param p4, "processingInstructionCallback"    # Lorg/jxmpp/xml/splitter/ProcessingInstructionCallback;

    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jxmpp/xml/splitter/XmlSplitter;-><init>(ILorg/jxmpp/xml/splitter/CompleteElementCallback;Lorg/jxmpp/xml/splitter/DeclarationCallback;Lorg/jxmpp/xml/splitter/ProcessingInstructionCallback;)V

    .line 80
    iput p1, p0, Lorg/jxmpp/xml/splitter/XmppXmlSplitter;->maxElementSize:I

    .line 81
    iput-object p2, p0, Lorg/jxmpp/xml/splitter/XmppXmlSplitter;->xmppElementCallback:Lorg/jxmpp/xml/splitter/XmppElementCallback;

    .line 82
    return-void
.end method

.method public constructor <init>(Lorg/jxmpp/xml/splitter/XmppElementCallback;)V
    .locals 1
    .param p1, "xmppElementCallback"    # Lorg/jxmpp/xml/splitter/XmppElementCallback;

    .line 42
    const/16 v0, 0x2710

    invoke-direct {p0, v0, p1}, Lorg/jxmpp/xml/splitter/XmppXmlSplitter;-><init>(ILorg/jxmpp/xml/splitter/XmppElementCallback;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/jxmpp/xml/splitter/XmppElementCallback;Lorg/jxmpp/xml/splitter/DeclarationCallback;Lorg/jxmpp/xml/splitter/ProcessingInstructionCallback;)V
    .locals 1
    .param p1, "xmppElementCallback"    # Lorg/jxmpp/xml/splitter/XmppElementCallback;
    .param p2, "declarationCallback"    # Lorg/jxmpp/xml/splitter/DeclarationCallback;
    .param p3, "processingInstructionCallback"    # Lorg/jxmpp/xml/splitter/ProcessingInstructionCallback;

    .line 56
    const/16 v0, 0x2710

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/jxmpp/xml/splitter/XmppXmlSplitter;-><init>(ILorg/jxmpp/xml/splitter/XmppElementCallback;Lorg/jxmpp/xml/splitter/DeclarationCallback;Lorg/jxmpp/xml/splitter/ProcessingInstructionCallback;)V

    .line 57
    return-void
.end method


# virtual methods
.method protected onEndTag(Ljava/lang/String;)V
    .locals 2
    .param p1, "qName"    # Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lorg/jxmpp/xml/splitter/XmppXmlSplitter;->streamPrefix:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jxmpp/xml/splitter/XmppXmlSplitter;->streamPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":stream"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lorg/jxmpp/xml/splitter/XmppXmlSplitter;->xmppElementCallback:Lorg/jxmpp/xml/splitter/XmppElementCallback;

    invoke-interface {v0}, Lorg/jxmpp/xml/splitter/XmppElementCallback;->streamClosed()V

    .line 116
    :cond_1
    return-void

    .line 110
    :cond_2
    :goto_0
    return-void
.end method

.method protected onNextChar()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lorg/jxmpp/xml/splitter/XmppXmlSplitter;->getCurrentSplittedPartSize()I

    move-result v0

    iget v1, p0, Lorg/jxmpp/xml/splitter/XmppXmlSplitter;->maxElementSize:I

    if-ge v0, v1, :cond_0

    .line 89
    return-void

    .line 87
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Max element size exceeded"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onStartTag(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "localpart"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 93
    .local p3, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "stream"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    return-void

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xmlns:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "http://etherx.jabber.org/streams"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iput-object p1, p0, Lorg/jxmpp/xml/splitter/XmppXmlSplitter;->streamPrefix:Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Lorg/jxmpp/xml/splitter/XmppXmlSplitter;->newSplittedPart()V

    .line 101
    iget-object v0, p0, Lorg/jxmpp/xml/splitter/XmppXmlSplitter;->xmppElementCallback:Lorg/jxmpp/xml/splitter/XmppElementCallback;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/jxmpp/xml/splitter/XmppElementCallback;->streamOpened(Ljava/lang/String;Ljava/util/Map;)V

    .line 103
    :cond_1
    return-void
.end method
