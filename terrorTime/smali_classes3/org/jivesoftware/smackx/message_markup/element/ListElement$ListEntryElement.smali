.class public Lorg/jivesoftware/smackx/message_markup/element/ListElement$ListEntryElement;
.super Ljava/lang/Object;
.source "ListElement.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/NamedElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/message_markup/element/ListElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListEntryElement"
.end annotation


# instance fields
.field private final start:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "start"    # I

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput p1, p0, Lorg/jivesoftware/smackx/message_markup/element/ListElement$ListEntryElement;->start:I

    .line 97
    return-void
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 109
    const-string v0, "li"

    return-object v0
.end method

.method public getStart()I
    .locals 1

    .line 104
    iget v0, p0, Lorg/jivesoftware/smackx/message_markup/element/ListElement$ListEntryElement;->start:I

    return v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 86
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/message_markup/element/ListElement$ListEntryElement;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 3
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 114
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>()V

    .line 115
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->halfOpenElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 116
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/message_markup/element/ListElement$ListEntryElement;->getStart()I

    move-result v1

    const-string v2, "start"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;I)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 117
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 118
    return-object v0
.end method
