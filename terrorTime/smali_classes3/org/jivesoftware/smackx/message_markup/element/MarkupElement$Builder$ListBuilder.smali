.class public final Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder$ListBuilder;
.super Ljava/lang/Object;
.source "MarkupElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ListBuilder"
.end annotation


# instance fields
.field private end:I

.field private final entries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/jivesoftware/smackx/message_markup/element/ListElement$ListEntryElement;",
            ">;"
        }
    .end annotation
.end field

.field private final markup:Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;


# direct methods
.method private constructor <init>(Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;)V
    .locals 1
    .param p1, "markup"    # Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder$ListBuilder;->entries:Ljava/util/ArrayList;

    .line 203
    const/4 v0, -0x1

    iput v0, p0, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder$ListBuilder;->end:I

    .line 206
    iput-object p1, p0, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder$ListBuilder;->markup:Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;

    .line 207
    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;
    .param p2, "x1"    # Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$1;

    .line 200
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder$ListBuilder;-><init>(Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;)V

    return-void
.end method


# virtual methods
.method public addEntry(II)Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder$ListBuilder;
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 219
    invoke-static {p1, p2}, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;->access$200(II)V

    .line 221
    iget-object v0, p0, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder$ListBuilder;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder$ListBuilder;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/message_markup/element/ListElement$ListEntryElement;

    .line 223
    .local v0, "last":Lorg/jivesoftware/smackx/message_markup/element/ListElement$ListEntryElement;
    :goto_0
    if-eqz v0, :cond_2

    iget v1, p0, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder$ListBuilder;->end:I

    if-ne p1, v1, :cond_1

    goto :goto_1

    .line 224
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Next entries start must be equal to last entries end ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder$ListBuilder;->end:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 226
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder$ListBuilder;->entries:Ljava/util/ArrayList;

    new-instance v2, Lorg/jivesoftware/smackx/message_markup/element/ListElement$ListEntryElement;

    invoke-direct {v2, p1}, Lorg/jivesoftware/smackx/message_markup/element/ListElement$ListEntryElement;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    iput p2, p0, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder$ListBuilder;->end:I

    .line 229
    return-object p0
.end method

.method public endList()Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;
    .locals 5

    .line 238
    iget-object v0, p0, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder$ListBuilder;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 239
    iget-object v0, p0, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder$ListBuilder;->entries:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/message_markup/element/ListElement$ListEntryElement;

    .line 240
    .local v0, "first":Lorg/jivesoftware/smackx/message_markup/element/ListElement$ListEntryElement;
    new-instance v1, Lorg/jivesoftware/smackx/message_markup/element/ListElement;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/message_markup/element/ListElement$ListEntryElement;->getStart()I

    move-result v2

    iget v3, p0, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder$ListBuilder;->end:I

    iget-object v4, p0, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder$ListBuilder;->entries:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Lorg/jivesoftware/smackx/message_markup/element/ListElement;-><init>(IILjava/util/List;)V

    .line 241
    .local v1, "list":Lorg/jivesoftware/smackx/message_markup/element/ListElement;
    iget-object v2, p0, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder$ListBuilder;->markup:Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;

    invoke-static {v2}, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;->access$300(Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    .end local v0    # "first":Lorg/jivesoftware/smackx/message_markup/element/ListElement$ListEntryElement;
    .end local v1    # "list":Lorg/jivesoftware/smackx/message_markup/element/ListElement;
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder$ListBuilder;->markup:Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$Builder;

    return-object v0
.end method
