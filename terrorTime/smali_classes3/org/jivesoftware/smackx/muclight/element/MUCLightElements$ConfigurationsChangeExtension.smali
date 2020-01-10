.class public Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$ConfigurationsChangeExtension;
.super Ljava/lang/Object;
.source "MUCLightElements.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/ExtensionElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/muclight/element/MUCLightElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigurationsChangeExtension"
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "x"

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:muclight:0#configuration"


# instance fields
.field private final customConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final prevVersion:Ljava/lang/String;

.field private final roomName:Ljava/lang/String;

.field private final subject:Ljava/lang/String;

.field private final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "prevVersion"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "roomName"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 147
    .local p5, "customConfigs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$ConfigurationsChangeExtension;->prevVersion:Ljava/lang/String;

    .line 149
    iput-object p2, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$ConfigurationsChangeExtension;->version:Ljava/lang/String;

    .line 150
    iput-object p3, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$ConfigurationsChangeExtension;->roomName:Ljava/lang/String;

    .line 151
    iput-object p4, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$ConfigurationsChangeExtension;->subject:Ljava/lang/String;

    .line 152
    iput-object p5, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$ConfigurationsChangeExtension;->customConfigs:Ljava/util/HashMap;

    .line 153
    return-void
.end method

.method public static from(Lorg/jivesoftware/smack/packet/Message;)Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$ConfigurationsChangeExtension;
    .locals 2
    .param p0, "message"    # Lorg/jivesoftware/smack/packet/Message;

    .line 233
    const-string v0, "x"

    const-string v1, "urn:xmpp:muclight:0#configuration"

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$ConfigurationsChangeExtension;

    return-object v0
.end method


# virtual methods
.method public getCustomConfigs()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$ConfigurationsChangeExtension;->customConfigs:Ljava/util/HashMap;

    return-object v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 157
    const-string v0, "x"

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 162
    const-string v0, "urn:xmpp:muclight:0#configuration"

    return-object v0
.end method

.method public getPrevVersion()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$ConfigurationsChangeExtension;->prevVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomName()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$ConfigurationsChangeExtension;->roomName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$ConfigurationsChangeExtension;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$ConfigurationsChangeExtension;->version:Ljava/lang/String;

    return-object v0
.end method

.method public toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 212
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 213
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 215
    iget-object v1, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$ConfigurationsChangeExtension;->prevVersion:Ljava/lang/String;

    const-string v2, "prev-version"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 216
    iget-object v1, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$ConfigurationsChangeExtension;->version:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 217
    iget-object v1, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$ConfigurationsChangeExtension;->roomName:Ljava/lang/String;

    const-string v2, "roomname"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 218
    iget-object v1, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$ConfigurationsChangeExtension;->subject:Ljava/lang/String;

    const-string v2, "subject"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 220
    iget-object v1, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$ConfigurationsChangeExtension;->customConfigs:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 222
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 223
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 224
    .local v2, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->element(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 225
    .end local v2    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 228
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 229
    return-object v0
.end method
