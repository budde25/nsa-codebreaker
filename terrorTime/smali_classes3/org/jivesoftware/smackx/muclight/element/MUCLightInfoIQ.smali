.class public Lorg/jivesoftware/smackx/muclight/element/MUCLightInfoIQ;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "MUCLightInfoIQ.java"


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "query"

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:muclight:0#info"


# instance fields
.field private final configuration:Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;

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

.field private final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;Ljava/util/HashMap;)V
    .locals 2
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "configuration"    # Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;",
            "Ljava/util/HashMap<",
            "Lorg/jxmpp/jid/Jid;",
            "Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p3, "occupants":Ljava/util/HashMap;, "Ljava/util/HashMap<Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;>;"
    const-string v0, "query"

    const-string v1, "urn:xmpp:muclight:0#info"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightInfoIQ;->version:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightInfoIQ;->configuration:Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;

    .line 58
    iput-object p3, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightInfoIQ;->occupants:Ljava/util/HashMap;

    .line 59
    return-void
.end method


# virtual methods
.method public getConfiguration()Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightInfoIQ;->configuration:Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;

    return-object v0
.end method

.method protected getIQChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .locals 2
    .param p1, "xml"    # Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    .line 63
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 64
    iget-object v0, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightInfoIQ;->version:Ljava/lang/String;

    const-string v1, "version"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 65
    new-instance v0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$ConfigurationElement;

    iget-object v1, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightInfoIQ;->configuration:Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$ConfigurationElement;-><init>(Lorg/jivesoftware/smackx/muclight/MUCLightRoomConfiguration;)V

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->element(Lorg/jivesoftware/smack/packet/Element;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 66
    new-instance v0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$OccupantsElement;

    iget-object v1, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightInfoIQ;->occupants:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$OccupantsElement;-><init>(Ljava/util/HashMap;)V

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->element(Lorg/jivesoftware/smack/packet/Element;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 67
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

    .line 94
    iget-object v0, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightInfoIQ;->occupants:Ljava/util/HashMap;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightInfoIQ;->version:Ljava/lang/String;

    return-object v0
.end method
