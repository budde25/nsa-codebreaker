.class public Lorg/jivesoftware/smackx/jiveproperties/JivePropertiesManager;
.super Ljava/lang/Object;
.source "JivePropertiesManager.java"


# static fields
.field private static javaObjectEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lorg/jivesoftware/smackx/jiveproperties/JivePropertiesManager;->javaObjectEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addProperty(Lorg/jivesoftware/smack/packet/Stanza;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 59
    const-string v0, "http://www.jivesoftware.com/xmlns/xmpp/properties"

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/packet/Stanza;->getExtension(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jiveproperties/packet/JivePropertiesExtension;

    .line 60
    .local v0, "jpe":Lorg/jivesoftware/smackx/jiveproperties/packet/JivePropertiesExtension;
    if-nez v0, :cond_0

    .line 61
    new-instance v1, Lorg/jivesoftware/smackx/jiveproperties/packet/JivePropertiesExtension;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/jiveproperties/packet/JivePropertiesExtension;-><init>()V

    move-object v0, v1

    .line 62
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/packet/Stanza;->addExtension(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 64
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/jivesoftware/smackx/jiveproperties/packet/JivePropertiesExtension;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method public static getProperties(Lorg/jivesoftware/smack/packet/Stanza;)Ljava/util/Map;
    .locals 2
    .param p0, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/packet/Stanza;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 107
    const-string v0, "http://www.jivesoftware.com/xmlns/xmpp/properties"

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/packet/Stanza;->getExtension(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jiveproperties/packet/JivePropertiesExtension;

    .line 108
    .local v0, "jpe":Lorg/jivesoftware/smackx/jiveproperties/packet/JivePropertiesExtension;
    if-nez v0, :cond_0

    .line 109
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 111
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jiveproperties/packet/JivePropertiesExtension;->getProperties()Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public static getPropertiesNames(Lorg/jivesoftware/smack/packet/Stanza;)Ljava/util/Collection;
    .locals 2
    .param p0, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jivesoftware/smack/packet/Stanza;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 92
    const-string v0, "http://www.jivesoftware.com/xmlns/xmpp/properties"

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/packet/Stanza;->getExtension(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jiveproperties/packet/JivePropertiesExtension;

    .line 93
    .local v0, "jpe":Lorg/jivesoftware/smackx/jiveproperties/packet/JivePropertiesExtension;
    if-nez v0, :cond_0

    .line 94
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 96
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/jiveproperties/packet/JivePropertiesExtension;->getPropertyNames()Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method public static getProperty(Lorg/jivesoftware/smack/packet/Stanza;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;
    .param p1, "name"    # Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "res":Ljava/lang/Object;
    const-string v1, "http://www.jivesoftware.com/xmlns/xmpp/properties"

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smack/packet/Stanza;->getExtension(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/jiveproperties/packet/JivePropertiesExtension;

    .line 78
    .local v1, "jpe":Lorg/jivesoftware/smackx/jiveproperties/packet/JivePropertiesExtension;
    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smackx/jiveproperties/packet/JivePropertiesExtension;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 81
    :cond_0
    return-object v0
.end method

.method public static isJavaObjectEnabled()Z
    .locals 1

    .line 48
    sget-boolean v0, Lorg/jivesoftware/smackx/jiveproperties/JivePropertiesManager;->javaObjectEnabled:Z

    return v0
.end method

.method public static setJavaObjectEnabled(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .line 44
    sput-boolean p0, Lorg/jivesoftware/smackx/jiveproperties/JivePropertiesManager;->javaObjectEnabled:Z

    .line 45
    return-void
.end method
