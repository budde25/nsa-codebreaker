.class public Lorg/jivesoftware/smackx/delay/packet/DelayInformation;
.super Ljava/lang/Object;
.source "DelayInformation.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/ExtensionElement;


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "delay"

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:delay"


# instance fields
.field private final from:Ljava/lang/String;

.field private final reason:Ljava/lang/String;

.field private final stamp:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/util/Date;)V
    .locals 1
    .param p1, "stamp"    # Ljava/util/Date;

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/jivesoftware/smackx/delay/packet/DelayInformation;-><init>(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "stamp"    # Ljava/util/Date;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/jivesoftware/smackx/delay/packet/DelayInformation;->stamp:Ljava/util/Date;

    .line 55
    iput-object p2, p0, Lorg/jivesoftware/smackx/delay/packet/DelayInformation;->from:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lorg/jivesoftware/smackx/delay/packet/DelayInformation;->reason:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public static from(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/delay/packet/DelayInformation;
    .locals 2
    .param p0, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 134
    const-string v0, "delay"

    const-string v1, "urn:xmpp:delay"

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/packet/Stanza;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/delay/packet/DelayInformation;

    return-object v0
.end method

.method public static getFrom(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/delay/packet/DelayInformation;
    .locals 1
    .param p0, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 124
    invoke-static {p0}, Lorg/jivesoftware/smackx/delay/packet/DelayInformation;->from(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/delay/packet/DelayInformation;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 96
    const-string v0, "delay"

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/jivesoftware/smackx/delay/packet/DelayInformation;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 101
    const-string v0, "urn:xmpp:delay"

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/jivesoftware/smackx/delay/packet/DelayInformation;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getStamp()Ljava/util/Date;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/jivesoftware/smackx/delay/packet/DelayInformation;->stamp:Ljava/util/Date;

    return-object v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/delay/packet/DelayInformation;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 3
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 106
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 107
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    iget-object v1, p0, Lorg/jivesoftware/smackx/delay/packet/DelayInformation;->stamp:Ljava/util/Date;

    invoke-static {v1}, Lorg/jxmpp/util/XmppDateTime;->formatXEP0082Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "stamp"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 108
    iget-object v1, p0, Lorg/jivesoftware/smackx/delay/packet/DelayInformation;->from:Ljava/lang/String;

    const-string v2, "from"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 109
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 110
    iget-object v1, p0, Lorg/jivesoftware/smackx/delay/packet/DelayInformation;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAppend(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 111
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 112
    return-object v0
.end method
