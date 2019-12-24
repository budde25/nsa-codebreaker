.class public Lorg/jivesoftware/smackx/muclight/element/MUCLightCreateIQ;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "MUCLightCreateIQ.java"


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "query"

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:muclight:0#create"


# instance fields
.field private configuration:Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;

.field private final occupants:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/jxmpp/jid/Jid;",
            "Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jxmpp/jid/EntityJid;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/List;)V
    .locals 4
    .param p1, "room"    # Lorg/jxmpp/jid/EntityJid;
    .param p2, "roomName"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jxmpp/jid/EntityJid;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lorg/jxmpp/jid/Jid;",
            ">;)V"
        }
    .end annotation

    .line 58
    .local p4, "customConfigs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "occupants":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/jid/Jid;>;"
    const-string v0, "query"

    const-string v1, "urn:xmpp:muclight:0#create"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v0, Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;

    invoke-direct {v0, p2, p3, p4}, Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightCreateIQ;->configuration:Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightCreateIQ;->occupants:Ljava/util/HashMap;

    .line 62
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jxmpp/jid/Jid;

    .line 63
    .local v1, "occupant":Lorg/jxmpp/jid/Jid;
    iget-object v2, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightCreateIQ;->occupants:Ljava/util/HashMap;

    sget-object v3, Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;->member:Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .end local v1    # "occupant":Lorg/jxmpp/jid/Jid;
    goto :goto_0

    .line 66
    :cond_0
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/muclight/element/MUCLightCreateIQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 67
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/muclight/element/MUCLightCreateIQ;->setTo(Lorg/jxmpp/jid/Jid;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lorg/jxmpp/jid/EntityJid;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p1, "room"    # Lorg/jxmpp/jid/EntityJid;
    .param p2, "roomName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jxmpp/jid/EntityJid;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jxmpp/jid/Jid;",
            ">;)V"
        }
    .end annotation

    .line 78
    .local p3, "occupants":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/jid/Jid;>;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smackx/muclight/element/MUCLightCreateIQ;-><init>(Lorg/jxmpp/jid/EntityJid;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/List;)V

    .line 79
    return-void
.end method


# virtual methods
.method public getConfiguration()Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightCreateIQ;->configuration:Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;

    return-object v0
.end method

.method protected getIQChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .locals 2
    .param p1, "xml"    # Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    .line 101
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 102
    new-instance v0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$ConfigurationElement;

    iget-object v1, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightCreateIQ;->configuration:Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$ConfigurationElement;-><init>(Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;)V

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->element(Lorg/jivesoftware/smack/packet/Element;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 104
    iget-object v0, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightCreateIQ;->occupants:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$OccupantsElement;

    iget-object v1, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightCreateIQ;->occupants:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$OccupantsElement;-><init>(Ljava/util/HashMap;)V

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->element(Lorg/jivesoftware/smack/packet/Element;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 108
    :cond_0
    return-object p1
.end method

.method public getOccupants()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lorg/jxmpp/jid/Jid;",
            "Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightCreateIQ;->occupants:Ljava/util/HashMap;

    return-object v0
.end method
