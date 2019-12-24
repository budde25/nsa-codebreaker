.class public Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$ConfigurationElement;
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
    name = "ConfigurationElement"
.end annotation


# instance fields
.field private configuration:Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;)V
    .locals 0
    .param p1, "configuration"    # Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object p1, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$ConfigurationElement;->configuration:Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;

    .line 255
    return-void
.end method


# virtual methods
.method public toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 259
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>()V

    .line 260
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    const-string v1, "configuration"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->openElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 262
    iget-object v2, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$ConfigurationElement;->configuration:Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;->getRoomName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "roomname"

    invoke-virtual {v0, v3, v2}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->element(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 263
    iget-object v2, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$ConfigurationElement;->configuration:Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;->getSubject()Ljava/lang/String;

    move-result-object v2

    const-string v3, "subject"

    invoke-virtual {v0, v3, v2}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 265
    iget-object v2, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$ConfigurationElement;->configuration:Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;->getCustomConfigs()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 266
    iget-object v2, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$ConfigurationElement;->configuration:Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;->getCustomConfigs()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 267
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 268
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 269
    .local v3, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->element(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 270
    .end local v3    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 273
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 274
    return-object v0
.end method
