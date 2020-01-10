.class public Lorg/jivesoftware/smackx/message_markup/element/ListElement;
.super Ljava/lang/Object;
.source "ListElement.java"

# interfaces
.implements Lorg/jivesoftware/smackx/message_markup/element/MarkupElement$MarkupChildElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/message_markup/element/ListElement$ListEntryElement;
    }
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "list"

.field public static final ELEM_LI:Ljava/lang/String; = "li"


# instance fields
.field private final end:I

.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/message_markup/element/ListElement$ListEntryElement;",
            ">;"
        }
    .end annotation
.end field

.field private final start:I


# direct methods
.method public constructor <init>(IILjava/util/List;)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/message_markup/element/ListElement$ListEntryElement;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p3, "entries":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/message_markup/element/ListElement$ListEntryElement;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lorg/jivesoftware/smackx/message_markup/element/ListElement;->start:I

    .line 42
    iput p2, p0, Lorg/jivesoftware/smackx/message_markup/element/ListElement;->end:I

    .line 43
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/message_markup/element/ListElement;->entries:Ljava/util/List;

    .line 44
    return-void
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 67
    const-string v0, "list"

    return-object v0
.end method

.method public getEnd()I
    .locals 1

    .line 53
    iget v0, p0, Lorg/jivesoftware/smackx/message_markup/element/ListElement;->end:I

    return v0
.end method

.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/message_markup/element/ListElement$ListEntryElement;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lorg/jivesoftware/smackx/message_markup/element/ListElement;->entries:Ljava/util/List;

    return-object v0
.end method

.method public getStart()I
    .locals 1

    .line 48
    iget v0, p0, Lorg/jivesoftware/smackx/message_markup/element/ListElement;->start:I

    return v0
.end method

.method public toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 72
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>()V

    .line 73
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->halfOpenElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 74
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/message_markup/element/ListElement;->getStart()I

    move-result v1

    const-string v2, "start"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;I)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 75
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/message_markup/element/ListElement;->getEnd()I

    move-result v1

    const-string v2, "end"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;I)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 76
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 78
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/message_markup/element/ListElement;->getEntries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/message_markup/element/ListElement$ListEntryElement;

    .line 79
    .local v2, "li":Lorg/jivesoftware/smackx/message_markup/element/ListElement$ListEntryElement;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/message_markup/element/ListElement$ListEntryElement;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->append(Lorg/jivesoftware/smack/util/XmlStringBuilder;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 80
    .end local v2    # "li":Lorg/jivesoftware/smackx/message_markup/element/ListElement$ListEntryElement;
    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 83
    return-object v0
.end method
