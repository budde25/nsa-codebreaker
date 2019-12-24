.class public abstract Lorg/jivesoftware/smackx/json/packet/AbstractJsonPacketExtension;
.super Ljava/lang/Object;
.source "AbstractJsonPacketExtension.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/ExtensionElement;


# instance fields
.field private final json:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "json"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/jivesoftware/smackx/json/packet/AbstractJsonPacketExtension;->json:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public final getJson()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/jivesoftware/smackx/json/packet/AbstractJsonPacketExtension;->json:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/json/packet/AbstractJsonPacketExtension;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 2
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 36
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 37
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 38
    iget-object v1, p0, Lorg/jivesoftware/smackx/json/packet/AbstractJsonPacketExtension;->json:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 39
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 40
    return-object v0
.end method
