.class public Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement;
.super Ljava/lang/Object;
.source "ExplicitMessageEncryptionElement.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/ExtensionElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;
    }
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "encryption"

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:eme:0"

.field private static final PROTOCOL_LUT:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final encryptionNamespace:Ljava/lang/String;

.field private isUnknownProtocol:Z

.field private final name:Ljava/lang/String;

.field private protocolCache:Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement;->PROTOCOL_LUT:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "encryptionNamespace"    # Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "encryptionNamespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-string v0, "encryptionNamespace must not be null"

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/StringUtils;->requireNotNullOrEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement;->encryptionNamespace:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement;->name:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;)V
    .locals 2
    .param p1, "protocol"    # Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;

    .line 81
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .line 27
    sget-object v0, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement;->PROTOCOL_LUT:Ljava/util/Map;

    return-object v0
.end method

.method public static from(Lorg/jivesoftware/smack/packet/Message;)Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement;
    .locals 2
    .param p0, "message"    # Lorg/jivesoftware/smack/packet/Message;

    .line 146
    const-string v0, "encryption"

    const-string v1, "urn:xmpp:eme:0"

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement;

    return-object v0
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 128
    const-string v0, "encryption"

    return-object v0
.end method

.method public getEncryptionNamespace()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement;->encryptionNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 133
    const-string v0, "urn:xmpp:eme:0"

    return-object v0
.end method

.method public getProtocol()Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;
    .locals 3

    .line 95
    iget-object v0, p0, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement;->protocolCache:Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;

    if-eqz v0, :cond_0

    .line 96
    return-object v0

    .line 99
    :cond_0
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement;->isUnknownProtocol:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 100
    return-object v1

    .line 103
    :cond_1
    sget-object v0, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement;->PROTOCOL_LUT:Ljava/util/Map;

    iget-object v2, p0, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement;->encryptionNamespace:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;

    .line 104
    .local v0, "protocol":Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;
    if-nez v0, :cond_2

    .line 105
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement;->isUnknownProtocol:Z

    .line 106
    return-object v1

    .line 109
    :cond_2
    iput-object v0, p0, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement;->protocolCache:Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement$ExplicitMessageEncryptionProtocol;

    .line 110
    return-object v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 3
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 138
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 139
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement;->getEncryptionNamespace()Ljava/lang/String;

    move-result-object v1

    const-string v2, "namespace"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 140
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/eme/element/ExplicitMessageEncryptionElement;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 141
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 142
    return-object v0
.end method
