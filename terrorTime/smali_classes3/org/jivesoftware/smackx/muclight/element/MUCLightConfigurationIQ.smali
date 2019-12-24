.class public Lorg/jivesoftware/smackx/muclight/element/MUCLightConfigurationIQ;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "MUCLightConfigurationIQ.java"


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "query"

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:muclight:0#configuration"


# instance fields
.field private final configuration:Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;

.field private final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;)V
    .locals 2
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "configuration"    # Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;

    .line 46
    const-string v0, "query"

    const-string v1, "urn:xmpp:muclight:0#configuration"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightConfigurationIQ;->version:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightConfigurationIQ;->configuration:Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;

    .line 49
    return-void
.end method


# virtual methods
.method public getConfiguration()Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightConfigurationIQ;->configuration:Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;

    return-object v0
.end method

.method protected getIQChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .locals 2
    .param p1, "xml"    # Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    .line 53
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 54
    iget-object v0, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightConfigurationIQ;->version:Ljava/lang/String;

    const-string v1, "version"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 55
    new-instance v0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$ConfigurationElement;

    iget-object v1, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightConfigurationIQ;->configuration:Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$ConfigurationElement;-><init>(Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;)V

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->element(Lorg/jivesoftware/smack/packet/Element;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 56
    return-object p1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightConfigurationIQ;->version:Ljava/lang/String;

    return-object v0
.end method
