.class public Lorg/jivesoftware/smackx/last_interaction/element/IdleElement;
.super Ljava/lang/Object;
.source "IdleElement.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/ExtensionElement;


# static fields
.field public static final ATTR_SINCE:Ljava/lang/String; = "since"

.field public static final ELEMENT:Ljava/lang/String; = "idle"

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:idle:1"


# instance fields
.field private final since:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/last_interaction/element/IdleElement;-><init>(Ljava/util/Date;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 1
    .param p1, "since"    # Ljava/util/Date;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p1}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lorg/jivesoftware/smackx/last_interaction/element/IdleElement;->since:Ljava/util/Date;

    .line 47
    return-void
.end method

.method public static addToPresence(Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 1
    .param p0, "presence"    # Lorg/jivesoftware/smack/packet/Presence;

    .line 62
    new-instance v0, Lorg/jivesoftware/smackx/last_interaction/element/IdleElement;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/last_interaction/element/IdleElement;-><init>()V

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smack/packet/Presence;->addExtension(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 63
    return-void
.end method

.method public static fromPresence(Lorg/jivesoftware/smack/packet/Presence;)Lorg/jivesoftware/smackx/last_interaction/element/IdleElement;
    .locals 2
    .param p0, "presence"    # Lorg/jivesoftware/smack/packet/Presence;

    .line 73
    const-string v0, "idle"

    const-string v1, "urn:xmpp:idle:1"

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/packet/Presence;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/last_interaction/element/IdleElement;

    return-object v0
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 89
    const-string v0, "idle"

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 81
    const-string v0, "urn:xmpp:idle:1"

    return-object v0
.end method

.method public getSince()Ljava/util/Date;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/jivesoftware/smackx/last_interaction/element/IdleElement;->since:Ljava/util/Date;

    return-object v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/last_interaction/element/IdleElement;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 3
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 97
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    iget-object v1, p0, Lorg/jivesoftware/smackx/last_interaction/element/IdleElement;->since:Ljava/util/Date;

    .line 98
    const-string v2, "since"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/util/Date;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    .line 97
    return-object v0
.end method
