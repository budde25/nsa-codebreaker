.class public Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$OccupantsElement;
.super Ljava/lang/Object;
.source "MUCLightElements.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/Element;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/muclight/element/MUCLightElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OccupantsElement"
.end annotation


# instance fields
.field private occupants:Ljava/util/HashMap;
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
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lorg/jxmpp/jid/Jid;",
            "Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;",
            ">;)V"
        }
    .end annotation

    .line 294
    .local p1, "occupants":Ljava/util/HashMap;, "Ljava/util/HashMap<Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p1, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$OccupantsElement;->occupants:Ljava/util/HashMap;

    .line 296
    return-void
.end method


# virtual methods
.method public toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 300
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>()V

    .line 301
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    const-string v1, "occupants"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->openElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 303
    iget-object v2, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$OccupantsElement;->occupants:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 304
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 305
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 306
    .local v3, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;>;"
    new-instance v4, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$UserWithAffiliationElement;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jxmpp/jid/Jid;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;

    invoke-direct {v4, v5, v6}, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$UserWithAffiliationElement;-><init>(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;)V

    invoke-virtual {v0, v4}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->element(Lorg/jivesoftware/smack/packet/Element;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 307
    .end local v3    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;>;"
    goto :goto_0

    .line 309
    :cond_0
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 310
    return-object v0
.end method
