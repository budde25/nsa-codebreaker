.class public Lorg/jivesoftware/smackx/iot/data/element/IoTFieldsExtension;
.super Ljava/lang/Object;
.source "IoTFieldsExtension.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/ExtensionElement;


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "fields"

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:iot:sensordata"


# instance fields
.field private final done:Z

.field private final nodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/iot/data/element/NodeElement;",
            ">;"
        }
    .end annotation
.end field

.field private final seqNr:I


# direct methods
.method public constructor <init>(IZLjava/util/List;)V
    .locals 1
    .param p1, "seqNr"    # I
    .param p2, "done"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/iot/data/element/NodeElement;",
            ">;)V"
        }
    .end annotation

    .line 42
    .local p3, "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/iot/data/element/NodeElement;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lorg/jivesoftware/smackx/iot/data/element/IoTFieldsExtension;->seqNr:I

    .line 44
    iput-boolean p2, p0, Lorg/jivesoftware/smackx/iot/data/element/IoTFieldsExtension;->done:Z

    .line 45
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/iot/data/element/IoTFieldsExtension;->nodes:Ljava/util/List;

    .line 46
    return-void
.end method

.method public constructor <init>(IZLorg/jivesoftware/smackx/iot/data/element/NodeElement;)V
    .locals 1
    .param p1, "seqNr"    # I
    .param p2, "done"    # Z
    .param p3, "node"    # Lorg/jivesoftware/smackx/iot/data/element/NodeElement;

    .line 39
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/iot/data/element/IoTFieldsExtension;-><init>(IZLjava/util/List;)V

    .line 40
    return-void
.end method

.method public static buildFor(IZLorg/jivesoftware/smackx/iot/element/NodeInfo;Ljava/util/List;)Lorg/jivesoftware/smackx/iot/data/element/IoTFieldsExtension;
    .locals 3
    .param p0, "seqNr"    # I
    .param p1, "done"    # Z
    .param p2, "nodeInfo"    # Lorg/jivesoftware/smackx/iot/element/NodeInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lorg/jivesoftware/smackx/iot/element/NodeInfo;",
            "Ljava/util/List<",
            "+",
            "Lorg/jivesoftware/smackx/iot/data/element/IoTDataField;",
            ">;)",
            "Lorg/jivesoftware/smackx/iot/data/element/IoTFieldsExtension;"
        }
    .end annotation

    .line 85
    .local p3, "data":Ljava/util/List;, "Ljava/util/List<+Lorg/jivesoftware/smackx/iot/data/element/IoTDataField;>;"
    new-instance v0, Lorg/jivesoftware/smackx/iot/data/element/TimestampElement;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-direct {v0, v1, p3}, Lorg/jivesoftware/smackx/iot/data/element/TimestampElement;-><init>(Ljava/util/Date;Ljava/util/List;)V

    .line 86
    .local v0, "timestampElement":Lorg/jivesoftware/smackx/iot/data/element/TimestampElement;
    new-instance v1, Lorg/jivesoftware/smackx/iot/data/element/NodeElement;

    invoke-direct {v1, p2, v0}, Lorg/jivesoftware/smackx/iot/data/element/NodeElement;-><init>(Lorg/jivesoftware/smackx/iot/element/NodeInfo;Lorg/jivesoftware/smackx/iot/data/element/TimestampElement;)V

    .line 87
    .local v1, "nodeElement":Lorg/jivesoftware/smackx/iot/data/element/NodeElement;
    new-instance v2, Lorg/jivesoftware/smackx/iot/data/element/IoTFieldsExtension;

    invoke-direct {v2, p0, p1, v1}, Lorg/jivesoftware/smackx/iot/data/element/IoTFieldsExtension;-><init>(IZLorg/jivesoftware/smackx/iot/data/element/NodeElement;)V

    return-object v2
.end method

.method public static from(Lorg/jivesoftware/smack/packet/Message;)Lorg/jivesoftware/smackx/iot/data/element/IoTFieldsExtension;
    .locals 2
    .param p0, "message"    # Lorg/jivesoftware/smack/packet/Message;

    .line 91
    const-string v0, "fields"

    const-string v1, "urn:xmpp:iot:sensordata"

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/iot/data/element/IoTFieldsExtension;

    return-object v0
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 62
    const-string v0, "fields"

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 67
    const-string v0, "urn:xmpp:iot:sensordata"

    return-object v0
.end method

.method public getNodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/iot/data/element/NodeElement;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/jivesoftware/smackx/iot/data/element/IoTFieldsExtension;->nodes:Ljava/util/List;

    return-object v0
.end method

.method public getSequenceNr()I
    .locals 1

    .line 49
    iget v0, p0, Lorg/jivesoftware/smackx/iot/data/element/IoTFieldsExtension;->seqNr:I

    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/iot/data/element/IoTFieldsExtension;->done:Z

    return v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/iot/data/element/IoTFieldsExtension;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 3
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 72
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 73
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    iget v1, p0, Lorg/jivesoftware/smackx/iot/data/element/IoTFieldsExtension;->seqNr:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "seqnr"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 74
    iget-boolean v1, p0, Lorg/jivesoftware/smackx/iot/data/element/IoTFieldsExtension;->done:Z

    const-string v2, "done"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Z)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 75
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 77
    iget-object v1, p0, Lorg/jivesoftware/smackx/iot/data/element/IoTFieldsExtension;->nodes:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->append(Ljava/util/Collection;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 79
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 80
    return-object v0
.end method
