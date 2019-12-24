.class public abstract Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;
.super Ljava/lang/Object;
.source "JingleContentDescription.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/ExtensionElement;


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "description"


# instance fields
.field private final payloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/NamedElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/jivesoftware/smack/packet/NamedElement;",
            ">;)V"
        }
    .end annotation

    .line 36
    .local p1, "payloads":Ljava/util/List;, "Ljava/util/List<+Lorg/jivesoftware/smack/packet/NamedElement;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-eqz p1, :cond_0

    .line 38
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;->payloads:Ljava/util/List;

    goto :goto_0

    .line 41
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;->payloads:Ljava/util/List;

    .line 43
    :goto_0
    return-void
.end method


# virtual methods
.method protected addExtraAttributes(Lorg/jivesoftware/smack/util/XmlStringBuilder;)V
    .locals 0
    .param p1, "xml"    # Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 56
    return-void
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 47
    const-string v0, "description"

    return-object v0
.end method

.method public getJingleContentDescriptionChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smack/packet/NamedElement;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;->payloads:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 2
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 60
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 61
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;->addExtraAttributes(Lorg/jivesoftware/smack/util/XmlStringBuilder;)V

    .line 62
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 64
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;->payloads:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->append(Ljava/util/Collection;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 66
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 67
    return-object v0
.end method
