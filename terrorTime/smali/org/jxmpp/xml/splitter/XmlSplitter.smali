.class public Lorg/jxmpp/xml/splitter/XmlSplitter;
.super Ljava/io/Writer;
.source "XmlSplitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;,
        Lorg/jxmpp/xml/splitter/XmlSplitter$State;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private attributeName:Ljava/lang/String;

.field private attributeValueQuotes:Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;

.field private final attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final completeElementCallback:Lorg/jxmpp/xml/splitter/CompleteElementCallback;

.field private final declarationCallback:Lorg/jxmpp/xml/splitter/DeclarationCallback;

.field private depth:I

.field private final processingInstructionCallback:Lorg/jxmpp/xml/splitter/ProcessingInstructionCallback;

.field private qName:Ljava/lang/String;

.field private final splittedPartBuffer:Ljava/lang/StringBuilder;

.field private state:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

.field private final tokenBuffer:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 33
    return-void
.end method

.method public constructor <init>(ILorg/jxmpp/xml/splitter/CompleteElementCallback;)V
    .locals 1
    .param p1, "bufferSize"    # I
    .param p2, "completeElementCallback"    # Lorg/jxmpp/xml/splitter/CompleteElementCallback;

    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/jxmpp/xml/splitter/XmlSplitter;-><init>(ILorg/jxmpp/xml/splitter/CompleteElementCallback;Lorg/jxmpp/xml/splitter/DeclarationCallback;Lorg/jxmpp/xml/splitter/ProcessingInstructionCallback;)V

    .line 116
    return-void
.end method

.method public constructor <init>(ILorg/jxmpp/xml/splitter/CompleteElementCallback;Lorg/jxmpp/xml/splitter/DeclarationCallback;Lorg/jxmpp/xml/splitter/ProcessingInstructionCallback;)V
    .locals 2
    .param p1, "bufferSize"    # I
    .param p2, "completeElementCallback"    # Lorg/jxmpp/xml/splitter/CompleteElementCallback;
    .param p3, "declarationCallback"    # Lorg/jxmpp/xml/splitter/DeclarationCallback;
    .param p4, "processingInstructionCallback"    # Lorg/jxmpp/xml/splitter/ProcessingInstructionCallback;

    .line 98
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->tokenBuffer:Ljava/lang/StringBuilder;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->attributes:Ljava/util/Map;

    .line 69
    sget-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->START:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    iput-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->state:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->splittedPartBuffer:Ljava/lang/StringBuilder;

    .line 100
    if-eqz p2, :cond_0

    .line 103
    iput-object p2, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->completeElementCallback:Lorg/jxmpp/xml/splitter/CompleteElementCallback;

    .line 104
    iput-object p3, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->declarationCallback:Lorg/jxmpp/xml/splitter/DeclarationCallback;

    .line 105
    iput-object p4, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->processingInstructionCallback:Lorg/jxmpp/xml/splitter/ProcessingInstructionCallback;

    .line 106
    return-void

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static extractLocalpart(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "qName"    # Ljava/lang/String;

    .line 381
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 382
    .local v0, "index":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    return-object v1
.end method

.method private static extractPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "qName"    # Ljava/lang/String;

    .line 376
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 377
    .local v0, "index":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    return-object v1
.end method

.method private getToken()Ljava/lang/String;
    .locals 3

    .line 358
    iget-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->tokenBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "token":Ljava/lang/String;
    iget-object v1, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->tokenBuffer:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 360
    return-object v0
.end method

.method private onEndTagFinished()V
    .locals 4

    .line 340
    invoke-direct {p0}, Lorg/jxmpp/xml/splitter/XmlSplitter;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "endTagName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 343
    iget-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->qName:Ljava/lang/String;

    .line 345
    :cond_0
    iget v1, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->depth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->depth:I

    .line 346
    iget v1, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->depth:I

    if-nez v1, :cond_1

    .line 347
    iget-object v1, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->splittedPartBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, "completeElement":Ljava/lang/String;
    iget-object v2, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->splittedPartBuffer:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 349
    iget-object v2, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->completeElementCallback:Lorg/jxmpp/xml/splitter/CompleteElementCallback;

    invoke-interface {v2, v1}, Lorg/jxmpp/xml/splitter/CompleteElementCallback;->onCompleteElement(Ljava/lang/String;)V

    .line 351
    .end local v1    # "completeElement":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v0}, Lorg/jxmpp/xml/splitter/XmlSplitter;->onEndTag(Ljava/lang/String;)V

    .line 353
    nop

    .line 354
    sget-object v1, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->START:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    iput-object v1, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->state:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    .line 355
    return-void
.end method

.method private onProcessingInstructionOrDeclaration(Ljava/lang/String;)V
    .locals 1
    .param p1, "processingInstructionOrDeclaration"    # Ljava/lang/String;

    .line 364
    const-string v0, "<?xml "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->declarationCallback:Lorg/jxmpp/xml/splitter/DeclarationCallback;

    if-eqz v0, :cond_1

    .line 366
    invoke-interface {v0, p1}, Lorg/jxmpp/xml/splitter/DeclarationCallback;->onDeclaration(Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :cond_0
    iget-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->processingInstructionCallback:Lorg/jxmpp/xml/splitter/ProcessingInstructionCallback;

    if-eqz v0, :cond_1

    .line 370
    invoke-interface {v0, p1}, Lorg/jxmpp/xml/splitter/ProcessingInstructionCallback;->onProcessingInstruction(Ljava/lang/String;)V

    .line 373
    :cond_1
    :goto_0
    return-void
.end method

.method private onStartTagFinished()V
    .locals 3

    .line 332
    iget v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->depth:I

    .line 333
    iget-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->qName:Ljava/lang/String;

    invoke-static {v0}, Lorg/jxmpp/xml/splitter/XmlSplitter;->extractPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "prefix":Ljava/lang/String;
    iget-object v1, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->qName:Ljava/lang/String;

    invoke-static {v1}, Lorg/jxmpp/xml/splitter/XmlSplitter;->extractLocalpart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 335
    .local v1, "localpart":Ljava/lang/String;
    iget-object v2, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->attributes:Ljava/util/Map;

    invoke-virtual {p0, v0, v1, v2}, Lorg/jxmpp/xml/splitter/XmlSplitter;->onStartTag(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 336
    iget-object v2, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->attributes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 337
    return-void
.end method

.method private processChar(C)V
    .locals 10
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    invoke-virtual {p0}, Lorg/jxmpp/xml/splitter/XmlSplitter;->onNextChar()V

    .line 165
    iget-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->splittedPartBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    sget-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$1;->$SwitchMap$org$jxmpp$xml$splitter$XmlSplitter$State:[I

    iget-object v1, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->state:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    invoke-virtual {v1}, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x22

    const/16 v3, 0x20

    const/16 v4, 0xd

    const/16 v5, 0xa

    const/16 v6, 0x9

    const/16 v7, 0x3f

    const/16 v8, 0x2f

    const/16 v9, 0x3e

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 326
    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 312
    :pswitch_1
    if-ne p1, v9, :cond_0

    .line 313
    iget-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->splittedPartBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "processingInstructionOrDeclaration":Ljava/lang/String;
    invoke-direct {p0, v0}, Lorg/jxmpp/xml/splitter/XmlSplitter;->onProcessingInstructionOrDeclaration(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Lorg/jxmpp/xml/splitter/XmlSplitter;->newSplittedPart()V

    .line 316
    .end local v0    # "processingInstructionOrDeclaration":Ljava/lang/String;
    goto/16 :goto_2

    .line 317
    :cond_0
    sget-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->IN_PROCESSING_INSTRUCTION_OR_DECLARATION:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    iput-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->state:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    .line 319
    goto/16 :goto_2

    .line 307
    :pswitch_2
    iget-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->attributeValueQuotes:Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;

    iget-char v0, v0, Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;->c:C

    if-ne p1, v0, :cond_14

    .line 308
    sget-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->IN_PROCESSING_INSTRUCTION_OR_DECLARATION:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    iput-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->state:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    goto/16 :goto_2

    .line 292
    :pswitch_3
    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    if-eq p1, v7, :cond_1

    goto :goto_0

    .line 302
    :cond_1
    sget-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->IN_PROCESSING_INSTRUCTION_OR_DECLARATION_QUESTION_MARK:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    iput-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->state:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    goto :goto_0

    .line 294
    :cond_2
    sget-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;->apos:Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;

    iput-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->attributeValueQuotes:Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;

    .line 295
    sget-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->IN_PROCESSING_INSTRUCTION_OR_DECLARATION_PSEUDO_ATTRIBUTE_VALUE:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    iput-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->state:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    .line 296
    goto :goto_0

    .line 298
    :cond_3
    sget-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;->quot:Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;

    iput-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->attributeValueQuotes:Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;

    .line 299
    sget-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->IN_PROCESSING_INSTRUCTION_OR_DECLARATION_PSEUDO_ATTRIBUTE_VALUE:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    iput-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->state:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    .line 300
    nop

    .line 305
    :goto_0
    goto/16 :goto_2

    .line 283
    :pswitch_4
    if-ne p1, v9, :cond_4

    .line 285
    invoke-direct {p0}, Lorg/jxmpp/xml/splitter/XmlSplitter;->onEndTagFinished()V

    .line 286
    goto/16 :goto_2

    .line 288
    :cond_4
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 275
    :pswitch_5
    iget-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->attributeValueQuotes:Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;

    iget-char v0, v0, Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;->c:C

    if-ne p1, v0, :cond_5

    .line 276
    iget-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->attributes:Ljava/util/Map;

    iget-object v1, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->attributeName:Ljava/lang/String;

    invoke-direct {p0}, Lorg/jxmpp/xml/splitter/XmlSplitter;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->AFTER_START_NAME:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    iput-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->state:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    goto/16 :goto_2

    .line 279
    :cond_5
    iget-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->tokenBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 281
    goto/16 :goto_2

    .line 261
    :pswitch_6
    if-eq p1, v2, :cond_7

    if-ne p1, v1, :cond_6

    .line 263
    sget-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;->apos:Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;

    iput-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->attributeValueQuotes:Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;

    .line 264
    sget-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->IN_ATTRIBUTE_VALUE:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    iput-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->state:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    .line 265
    goto/16 :goto_2

    .line 271
    :cond_6
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 267
    :cond_7
    sget-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;->quot:Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;

    iput-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->attributeValueQuotes:Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;

    .line 268
    sget-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->IN_ATTRIBUTE_VALUE:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    iput-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->state:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    .line 269
    goto/16 :goto_2

    .line 251
    :pswitch_7
    const/16 v0, 0x3d

    if-eq p1, v0, :cond_8

    .line 257
    iget-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->tokenBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 259
    goto/16 :goto_2

    .line 253
    :cond_8
    invoke-direct {p0}, Lorg/jxmpp/xml/splitter/XmlSplitter;->getToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->attributeName:Ljava/lang/String;

    .line 254
    sget-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->AFTER_ATTRIBUTE_EQUALS:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    iput-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->state:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    .line 255
    goto/16 :goto_2

    .line 228
    :pswitch_8
    if-eq p1, v6, :cond_b

    if-eq p1, v5, :cond_b

    if-eq p1, v4, :cond_b

    if-eq p1, v3, :cond_b

    if-eq p1, v8, :cond_a

    if-eq p1, v9, :cond_9

    .line 245
    iget-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->tokenBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 246
    sget-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->IN_ATTRIBUTE_NAME:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    iput-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->state:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    .line 247
    goto/16 :goto_2

    .line 234
    :cond_9
    invoke-direct {p0}, Lorg/jxmpp/xml/splitter/XmlSplitter;->onStartTagFinished()V

    .line 235
    sget-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->START:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    iput-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->state:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    .line 236
    goto/16 :goto_2

    .line 230
    :cond_a
    invoke-direct {p0}, Lorg/jxmpp/xml/splitter/XmlSplitter;->onStartTagFinished()V

    .line 231
    sget-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->IN_EMPTY_TAG:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    iput-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->state:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    .line 232
    goto/16 :goto_2

    .line 242
    :cond_b
    goto/16 :goto_2

    .line 218
    :pswitch_9
    if-eq p1, v9, :cond_c

    .line 223
    iget-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->tokenBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 224
    goto/16 :goto_2

    .line 220
    :cond_c
    invoke-direct {p0}, Lorg/jxmpp/xml/splitter/XmlSplitter;->onEndTagFinished()V

    .line 221
    goto/16 :goto_2

    .line 193
    :pswitch_a
    if-eq p1, v6, :cond_f

    if-eq p1, v5, :cond_f

    if-eq p1, v4, :cond_f

    if-eq p1, v3, :cond_f

    if-eq p1, v8, :cond_e

    if-eq p1, v9, :cond_d

    .line 213
    iget-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->tokenBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    goto :goto_2

    .line 208
    :cond_d
    invoke-direct {p0}, Lorg/jxmpp/xml/splitter/XmlSplitter;->getToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->qName:Ljava/lang/String;

    .line 209
    invoke-direct {p0}, Lorg/jxmpp/xml/splitter/XmlSplitter;->onStartTagFinished()V

    .line 210
    sget-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->START:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    iput-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->state:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    .line 211
    goto :goto_2

    .line 203
    :cond_e
    invoke-direct {p0}, Lorg/jxmpp/xml/splitter/XmlSplitter;->getToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->qName:Ljava/lang/String;

    .line 204
    invoke-direct {p0}, Lorg/jxmpp/xml/splitter/XmlSplitter;->onStartTagFinished()V

    .line 205
    sget-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->IN_EMPTY_TAG:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    iput-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->state:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    .line 206
    goto :goto_2

    .line 199
    :cond_f
    invoke-direct {p0}, Lorg/jxmpp/xml/splitter/XmlSplitter;->getToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->qName:Ljava/lang/String;

    .line 200
    sget-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->AFTER_START_NAME:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    iput-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->state:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    .line 201
    goto :goto_2

    .line 176
    :pswitch_b
    const/16 v0, 0x21

    if-eq p1, v0, :cond_12

    if-eq p1, v8, :cond_11

    if-eq p1, v7, :cond_10

    .line 187
    iget-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->tokenBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    sget-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->IN_TAG_NAME:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    iput-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->state:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    .line 189
    goto :goto_2

    .line 181
    :cond_10
    sget-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->IN_PROCESSING_INSTRUCTION_OR_DECLARATION:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    iput-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->state:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    .line 182
    goto :goto_2

    .line 178
    :cond_11
    sget-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->IN_END_TAG:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    iput-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->state:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    .line 179
    goto :goto_2

    .line 184
    :cond_12
    sget-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->AFTER_COMMENT_BANG:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    iput-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->state:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    .line 185
    goto :goto_2

    .line 169
    :pswitch_c
    const/16 v0, 0x3c

    if-eq p1, v0, :cond_13

    goto :goto_1

    .line 171
    :cond_13
    sget-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->AFTER_TAG_RIGHT_ANGLE_BRACKET:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    iput-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->state:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    .line 174
    :goto_1
    nop

    .line 328
    :cond_14
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    return-void
.end method

.method public final getCurrentSplittedPartSize()I
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->splittedPartBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method protected final newSplittedPart()V
    .locals 2

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->depth:I

    .line 153
    iget-object v1, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->splittedPartBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 155
    nop

    .line 156
    sget-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$State;->START:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    iput-object v0, p0, Lorg/jxmpp/xml/splitter/XmlSplitter;->state:Lorg/jxmpp/xml/splitter/XmlSplitter$State;

    .line 157
    return-void
.end method

.method protected onEndTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "qName"    # Ljava/lang/String;

    .line 149
    return-void
.end method

.method protected onNextChar()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    return-void
.end method

.method protected onStartTag(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
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

    .line 146
    .local p3, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public write([CII)V
    .locals 2
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    move v0, p2

    .local v0, "cur":I
    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 121
    add-int v1, p2, v0

    aget-char v1, p1, v1

    invoke-direct {p0, v1}, Lorg/jxmpp/xml/splitter/XmlSplitter;->processChar(C)V

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    .end local v0    # "cur":I
    :cond_0
    return-void
.end method
