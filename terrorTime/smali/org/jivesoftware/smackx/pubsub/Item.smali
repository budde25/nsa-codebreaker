.class public Lorg/jivesoftware/smackx/pubsub/Item;
.super Lorg/jivesoftware/smackx/pubsub/NodeExtension;
.source "Item.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;
    }
.end annotation


# instance fields
.field private final itemId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 84
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;->pubsub:Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lorg/jivesoftware/smackx/pubsub/Item;-><init>(Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "itemId"    # Ljava/lang/String;

    .line 95
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;->pubsub:Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/jivesoftware/smackx/pubsub/Item;-><init>(Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "nodeId"    # Ljava/lang/String;

    .line 121
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;->pubsub:Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;

    invoke-direct {p0, v0, p1, p2}, Lorg/jivesoftware/smackx/pubsub/Item;-><init>(Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;Ljava/lang/String;)V
    .locals 1
    .param p1, "itemNamespace"    # Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;
    .param p2, "itemId"    # Ljava/lang/String;

    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jivesoftware/smackx/pubsub/Item;-><init>(Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "itemNamespace"    # Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;
    .param p2, "itemId"    # Ljava/lang/String;
    .param p3, "nodeId"    # Ljava/lang/String;

    .line 136
    invoke-static {p1}, Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;->access$000(Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;)Lorg/jivesoftware/smackx/pubsub/PubSubElementType;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/jivesoftware/smackx/pubsub/NodeExtension;-><init>(Lorg/jivesoftware/smackx/pubsub/PubSubElementType;Ljava/lang/String;)V

    .line 137
    iput-object p2, p0, Lorg/jivesoftware/smackx/pubsub/Item;->itemId:Ljava/lang/String;

    .line 138
    return-void
.end method


# virtual methods
.method protected final getCommonXml()Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 3

    .line 159
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 161
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/Item;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 162
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/Item;->getNode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "node"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 164
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/Item;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | Content ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smackx/pubsub/Item;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/pubsub/Item;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 1
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/Item;->getCommonXml()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    .line 153
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 155
    return-object v0
.end method
