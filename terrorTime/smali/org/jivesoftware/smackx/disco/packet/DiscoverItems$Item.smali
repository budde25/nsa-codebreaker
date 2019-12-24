.class public Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;
.super Ljava/lang/Object;
.source "DiscoverItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/disco/packet/DiscoverItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# static fields
.field public static final REMOVE_ACTION:Ljava/lang/String; = "remove"

.field public static final UPDATE_ACTION:Ljava/lang/String; = "update"


# instance fields
.field private action:Ljava/lang/String;

.field private final entityID:Lorg/jxmpp/jid/Jid;

.field private name:Ljava/lang/String;

.field private node:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/jxmpp/jid/Jid;)V
    .locals 0
    .param p1, "entityID"    # Lorg/jxmpp/jid/Jid;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;->entityID:Lorg/jxmpp/jid/Jid;

    .line 151
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getEntityID()Lorg/jxmpp/jid/Jid;
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;->entityID:Lorg/jxmpp/jid/Jid;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNode()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;->node:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .line 227
    iput-object p1, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;->action:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 177
    iput-object p1, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;->name:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setNode(Ljava/lang/String;)V
    .locals 0
    .param p1, "node"    # Ljava/lang/String;

    .line 203
    iput-object p1, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;->node:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public toXML()Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 3

    .line 231
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>()V

    .line 232
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    const-string v1, "item"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->halfOpenElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 233
    iget-object v1, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;->entityID:Lorg/jxmpp/jid/Jid;

    const-string v2, "jid"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 234
    iget-object v1, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;->name:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 235
    iget-object v1, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;->node:Ljava/lang/String;

    const-string v2, "node"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 236
    iget-object v1, p0, Lorg/jivesoftware/smackx/disco/packet/DiscoverItems$Item;->action:Ljava/lang/String;

    const-string v2, "action"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 237
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 238
    return-object v0
.end method
