.class public Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence;
.super Ljava/lang/Object;
.source "MUCInitialPresence.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/ExtensionElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence$History;
    }
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "x"

.field public static final NAMESPACE:Ljava/lang/String; = "http://jabber.org/protocol/muc"


# instance fields
.field private history:Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence$History;

.field private password:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/util/Date;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "maxChars"    # I
    .param p3, "maxStanzas"    # I
    .param p4, "seconds"    # I
    .param p5, "since"    # Ljava/util/Date;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence;->password:Ljava/lang/String;

    .line 69
    const/4 v0, -0x1

    if-gt p2, v0, :cond_1

    if-gt p3, v0, :cond_1

    if-gt p4, v0, :cond_1

    if-eqz p5, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence;->history:Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence$History;

    goto :goto_1

    .line 70
    :cond_1
    :goto_0
    new-instance v0, Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence$History;

    invoke-direct {v0, p2, p3, p4, p5}, Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence$History;-><init>(IIILjava/util/Date;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence;->history:Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence$History;

    .line 74
    :goto_1
    return-void
.end method

.method public static from(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence;
    .locals 2
    .param p0, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 159
    const-string v0, "x"

    const-string v1, "http://jabber.org/protocol/muc"

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/packet/Stanza;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence;

    return-object v0
.end method

.method public static getFrom(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence;
    .locals 1
    .param p0, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 149
    invoke-static {p0}, Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence;->from(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 78
    const-string v0, "x"

    return-object v0
.end method

.method public getHistory()Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence$History;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence;->history:Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence$History;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 83
    const-string v0, "http://jabber.org/protocol/muc"

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence;->password:Ljava/lang/String;

    return-object v0
.end method

.method public setHistory(Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence$History;)V
    .locals 0
    .param p1, "history"    # Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence$History;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 126
    iput-object p1, p0, Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence;->history:Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence$History;

    .line 127
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 137
    iput-object p1, p0, Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence;->password:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 3
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 88
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 89
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 90
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence;->getPassword()Ljava/lang/String;

    move-result-object v1

    const-string v2, "password"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 91
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence;->getHistory()Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence$History;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Lorg/jivesoftware/smack/packet/Element;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 92
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 93
    return-object v0
.end method
