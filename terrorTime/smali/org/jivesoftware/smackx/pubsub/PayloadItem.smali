.class public Lorg/jivesoftware/smackx/pubsub/PayloadItem;
.super Lorg/jivesoftware/smackx/pubsub/Item;
.source "PayloadItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lorg/jivesoftware/smack/packet/ExtensionElement;",
        ">",
        "Lorg/jivesoftware/smackx/pubsub/Item;"
    }
.end annotation


# instance fields
.field private final payload:Lorg/jivesoftware/smack/packet/ExtensionElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/ExtensionElement;)V
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "nodeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TE;)V"
        }
    .end annotation

    .line 97
    .local p0, "this":Lorg/jivesoftware/smackx/pubsub/PayloadItem;, "Lorg/jivesoftware/smackx/pubsub/PayloadItem<TE;>;"
    .local p3, "payloadExt":Lorg/jivesoftware/smack/packet/ExtensionElement;, "TE;"
    sget-object v0, Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;->pubsub:Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/jivesoftware/smackx/pubsub/PayloadItem;-><init>(Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jivesoftware/smack/packet/ExtensionElement;)V
    .locals 2
    .param p1, "itemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TE;)V"
        }
    .end annotation

    .line 75
    .local p0, "this":Lorg/jivesoftware/smackx/pubsub/PayloadItem;, "Lorg/jivesoftware/smackx/pubsub/PayloadItem<TE;>;"
    .local p2, "payloadExt":Lorg/jivesoftware/smack/packet/ExtensionElement;, "TE;"
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/pubsub/Item;-><init>(Ljava/lang/String;)V

    .line 77
    if-eqz p2, :cond_0

    .line 79
    iput-object p2, p0, Lorg/jivesoftware/smackx/pubsub/PayloadItem;->payload:Lorg/jivesoftware/smack/packet/ExtensionElement;

    .line 80
    return-void

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "payload cannot be \'null\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 61
    .local p0, "this":Lorg/jivesoftware/smackx/pubsub/PayloadItem;, "Lorg/jivesoftware/smackx/pubsub/PayloadItem<TE;>;"
    .local p1, "payloadExt":Lorg/jivesoftware/smack/packet/ExtensionElement;, "TE;"
    invoke-direct {p0}, Lorg/jivesoftware/smackx/pubsub/Item;-><init>()V

    .line 63
    if-eqz p1, :cond_0

    .line 65
    iput-object p1, p0, Lorg/jivesoftware/smackx/pubsub/PayloadItem;->payload:Lorg/jivesoftware/smack/packet/ExtensionElement;

    .line 66
    return-void

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "payload cannot be \'null\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/ExtensionElement;)V
    .locals 2
    .param p1, "itemNamespace"    # Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;
    .param p2, "itemId"    # Ljava/lang/String;
    .param p3, "nodeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TE;)V"
        }
    .end annotation

    .line 115
    .local p0, "this":Lorg/jivesoftware/smackx/pubsub/PayloadItem;, "Lorg/jivesoftware/smackx/pubsub/PayloadItem<TE;>;"
    .local p4, "payloadExt":Lorg/jivesoftware/smack/packet/ExtensionElement;, "TE;"
    invoke-direct {p0, p1, p2, p3}, Lorg/jivesoftware/smackx/pubsub/Item;-><init>(Lorg/jivesoftware/smackx/pubsub/Item$ItemNamespace;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    if-eqz p4, :cond_0

    .line 119
    iput-object p4, p0, Lorg/jivesoftware/smackx/pubsub/PayloadItem;->payload:Lorg/jivesoftware/smack/packet/ExtensionElement;

    .line 120
    return-void

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "payload cannot be \'null\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getPayload()Lorg/jivesoftware/smack/packet/ExtensionElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 129
    .local p0, "this":Lorg/jivesoftware/smackx/pubsub/PayloadItem;, "Lorg/jivesoftware/smackx/pubsub/PayloadItem<TE;>;"
    iget-object v0, p0, Lorg/jivesoftware/smackx/pubsub/PayloadItem;->payload:Lorg/jivesoftware/smack/packet/ExtensionElement;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 145
    .local p0, "this":Lorg/jivesoftware/smackx/pubsub/PayloadItem;, "Lorg/jivesoftware/smackx/pubsub/PayloadItem<TE;>;"
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

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smackx/pubsub/PayloadItem;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

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

    .line 52
    .local p0, "this":Lorg/jivesoftware/smackx/pubsub/PayloadItem;, "Lorg/jivesoftware/smackx/pubsub/PayloadItem<TE;>;"
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/pubsub/PayloadItem;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 3
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 134
    .local p0, "this":Lorg/jivesoftware/smackx/pubsub/PayloadItem;, "Lorg/jivesoftware/smackx/pubsub/PayloadItem<TE;>;"
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/pubsub/PayloadItem;->getCommonXml()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    .line 136
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 137
    iget-object v1, p0, Lorg/jivesoftware/smackx/pubsub/PayloadItem;->payload:Lorg/jivesoftware/smack/packet/ExtensionElement;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/jivesoftware/smack/packet/ExtensionElement;->toXML(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 138
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 140
    return-object v0
.end method
