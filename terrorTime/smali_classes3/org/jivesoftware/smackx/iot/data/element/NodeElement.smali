.class public Lorg/jivesoftware/smackx/iot/data/element/NodeElement;
.super Ljava/lang/Object;
.source "NodeElement.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/NamedElement;


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "node"


# instance fields
.field private final nodeInfo:Lorg/jivesoftware/smackx/iot/element/NodeInfo;

.field private final timestampElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/iot/data/element/TimestampElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/iot/element/NodeInfo;Ljava/util/List;)V
    .locals 1
    .param p1, "nodeInfo"    # Lorg/jivesoftware/smackx/iot/element/NodeInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smackx/iot/element/NodeInfo;",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/iot/data/element/TimestampElement;",
            ">;)V"
        }
    .end annotation

    .line 38
    .local p2, "timestampElements":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/iot/data/element/TimestampElement;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/jivesoftware/smackx/iot/data/element/NodeElement;->nodeInfo:Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    .line 40
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/iot/data/element/NodeElement;->timestampElements:Ljava/util/List;

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/iot/element/NodeInfo;Lorg/jivesoftware/smackx/iot/data/element/TimestampElement;)V
    .locals 1
    .param p1, "nodeInfo"    # Lorg/jivesoftware/smackx/iot/element/NodeInfo;
    .param p2, "timestampElement"    # Lorg/jivesoftware/smackx/iot/data/element/TimestampElement;

    .line 35
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/iot/data/element/NodeElement;-><init>(Lorg/jivesoftware/smackx/iot/element/NodeInfo;Ljava/util/List;)V

    .line 36
    return-void
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 49
    const-string v0, "node"

    return-object v0
.end method

.method public getTimestampElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/iot/data/element/TimestampElement;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/data/element/NodeElement;->timestampElements:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/iot/data/element/NodeElement;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 2
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 54
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/NamedElement;)V

    .line 55
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    iget-object v1, p0, Lorg/jivesoftware/smackx/iot/data/element/NodeElement;->nodeInfo:Lorg/jivesoftware/smackx/iot/element/NodeInfo;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smackx/iot/element/NodeInfo;->appendTo(Lorg/jivesoftware/smack/util/XmlStringBuilder;)V

    .line 56
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 58
    iget-object v1, p0, Lorg/jivesoftware/smackx/iot/data/element/NodeElement;->timestampElements:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->append(Ljava/util/Collection;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 60
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 61
    return-object v0
.end method
