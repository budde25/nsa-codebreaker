.class public final Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;
.super Ljava/lang/Object;
.source "MarkupElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/message_markup/element/MarkupElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder$ListBuilder;
    }
.end annotation


# instance fields
.field private final codes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/message_markup/element/CodeBlockElement;",
            ">;"
        }
    .end annotation
.end field

.field private final lists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/message_markup/element/ListElement;",
            ">;"
        }
    .end annotation
.end field

.field private final quotes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/message_markup/element/BlockQuoteElement;",
            ">;"
        }
    .end annotation
.end field

.field private final spans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/message_markup/element/SpanElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;->spans:Ljava/util/List;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;->quotes:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;->codes:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;->lists:Ljava/util/List;

    .line 93
    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$1;

    .line 84
    invoke-direct {p0}, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$200(II)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 84
    invoke-static {p0, p1}, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;->verifyStartEnd(II)V

    return-void
.end method

.method static synthetic access$300(Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;

    .line 84
    iget-object v0, p0, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;->lists:Ljava/util/List;

    return-object v0
.end method

.method private static verifyStartEnd(II)V
    .locals 3
    .param p0, "start"    # I
    .param p1, "end"    # I

    .line 263
    if-ge p0, p1, :cond_0

    if-ltz p0, :cond_0

    .line 267
    return-void

    .line 264
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start value ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") MUST be greater equal than 0 and MUST be smaller than end value ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addSpan(IILjava/util/Set;)Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Set<",
            "Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;",
            ">;)",
            "Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;"
        }
    .end annotation

    .line 137
    .local p3, "styles":Ljava/util/Set;, "Ljava/util/Set<Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;>;"
    invoke-static {p1, p2}, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;->verifyStartEnd(II)V

    .line 139
    iget-object v0, p0, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;->spans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/message_markup/element/SpanElement;

    .line 140
    .local v1, "other":Lorg/jivesoftware/smackx/message_markup/element/SpanElement;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/message_markup/element/SpanElement;->getStart()I

    move-result v2

    if-lt p1, v2, :cond_0

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/message_markup/element/SpanElement;->getEnd()I

    move-result v2

    if-le p1, v2, :cond_1

    .line 141
    :cond_0
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/message_markup/element/SpanElement;->getStart()I

    move-result v2

    if-lt p2, v2, :cond_2

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/message_markup/element/SpanElement;->getEnd()I

    move-result v2

    if-le p2, v2, :cond_1

    goto :goto_1

    .line 142
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Spans MUST NOT overlap each other."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    .end local v1    # "other":Lorg/jivesoftware/smackx/message_markup/element/SpanElement;
    :cond_2
    :goto_1
    goto :goto_0

    .line 146
    :cond_3
    iget-object v0, p0, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;->spans:Ljava/util/List;

    new-instance v1, Lorg/jivesoftware/smackx/message_markup/element/SpanElement;

    invoke-direct {v1, p1, p2, p3}, Lorg/jivesoftware/smackx/message_markup/element/SpanElement;-><init>(IILjava/util/Set;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    return-object p0
.end method

.method public beginList()Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder$ListBuilder;
    .locals 2

    .line 197
    new-instance v0, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder$ListBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder$ListBuilder;-><init>(Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$1;)V

    return-object v0
.end method

.method public build()Lorg/jivesoftware/smackx/message_markup/element/MarkupElement;
    .locals 2

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$MarkupChildElement;>;"
    iget-object v1, p0, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;->spans:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 256
    iget-object v1, p0, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;->quotes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 257
    iget-object v1, p0, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;->codes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 258
    iget-object v1, p0, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;->lists:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 259
    new-instance v1, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement;

    invoke-direct {v1, v0}, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public setBlockQuote(II)Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;
    .locals 8
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 158
    invoke-static {p1, p2}, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;->verifyStartEnd(II)V

    .line 160
    iget-object v0, p0, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;->quotes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/message_markup/element/BlockQuoteElement;

    .line 162
    .local v1, "other":Lorg/jivesoftware/smackx/message_markup/element/BlockQuoteElement;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 163
    .local v2, "s":Ljava/lang/Integer;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 164
    .local v3, "e":Ljava/lang/Integer;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/message_markup/element/BlockQuoteElement;->getStart()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v4

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/message_markup/element/BlockQuoteElement;->getEnd()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v5

    mul-int/2addr v4, v5

    .line 165
    .local v4, "startPos":I
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/message_markup/element/BlockQuoteElement;->getStart()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v5

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/message_markup/element/BlockQuoteElement;->getEnd()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v6

    mul-int/2addr v5, v6

    .line 166
    .local v5, "endPos":I
    mul-int v6, v4, v5

    .line 168
    .local v6, "allowed":I
    const/4 v7, 0x1

    if-lt v6, v7, :cond_0

    .line 171
    .end local v1    # "other":Lorg/jivesoftware/smackx/message_markup/element/BlockQuoteElement;
    .end local v2    # "s":Ljava/lang/Integer;
    .end local v3    # "e":Ljava/lang/Integer;
    .end local v4    # "startPos":I
    .end local v5    # "endPos":I
    .end local v6    # "allowed":I
    goto :goto_0

    .line 169
    .restart local v1    # "other":Lorg/jivesoftware/smackx/message_markup/element/BlockQuoteElement;
    .restart local v2    # "s":Ljava/lang/Integer;
    .restart local v3    # "e":Ljava/lang/Integer;
    .restart local v4    # "startPos":I
    .restart local v5    # "endPos":I
    .restart local v6    # "allowed":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v7, "BlockQuotes MUST NOT overlap each others boundaries"

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    .end local v1    # "other":Lorg/jivesoftware/smackx/message_markup/element/BlockQuoteElement;
    .end local v2    # "s":Ljava/lang/Integer;
    .end local v3    # "e":Ljava/lang/Integer;
    .end local v4    # "startPos":I
    .end local v5    # "endPos":I
    .end local v6    # "allowed":I
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;->quotes:Ljava/util/List;

    new-instance v1, Lorg/jivesoftware/smackx/message_markup/element/BlockQuoteElement;

    invoke-direct {v1, p1, p2}, Lorg/jivesoftware/smackx/message_markup/element/BlockQuoteElement;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    return-object p0
.end method

.method public setCode(II)Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 125
    sget-object v0, Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;->code:Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;->addSpan(IILjava/util/Set;)Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCodeBlock(II)Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 185
    invoke-static {p1, p2}, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;->verifyStartEnd(II)V

    .line 187
    iget-object v0, p0, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;->codes:Ljava/util/List;

    new-instance v1, Lorg/jivesoftware/smackx/message_markup/element/CodeBlockElement;

    invoke-direct {v1, p1, p2}, Lorg/jivesoftware/smackx/message_markup/element/CodeBlockElement;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    return-object p0
.end method

.method public setDeleted(II)Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 103
    sget-object v0, Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;->deleted:Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;->addSpan(IILjava/util/Set;)Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setEmphasis(II)Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 114
    sget-object v0, Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;->emphasis:Lorg/jivesoftware/smackx/message_markup/element/SpanElement$SpanStyle;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;->addSpan(IILjava/util/Set;)Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;

    move-result-object v0

    return-object v0
.end method
