.class public Lorg/jivesoftware/smack/packet/StreamOpen;
.super Ljava/lang/Object;
.source "StreamOpen.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/Nonza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/packet/StreamOpen$StreamContentNamespace;
    }
.end annotation


# static fields
.field public static final CLIENT_NAMESPACE:Ljava/lang/String; = "jabber:client"

.field public static final ELEMENT:Ljava/lang/String; = "stream:stream"

.field public static final SERVER_NAMESPACE:Ljava/lang/String; = "jabber:server"

.field public static final VERSION:Ljava/lang/String; = "1.0"


# instance fields
.field private final contentNamespace:Ljava/lang/String;

.field private final from:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final lang:Ljava/lang/String;

.field private final to:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "to"    # Ljava/lang/CharSequence;

    .line 64
    sget-object v5, Lorg/jivesoftware/smack/packet/StreamOpen$StreamContentNamespace;->client:Lorg/jivesoftware/smack/packet/StreamOpen$StreamContentNamespace;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smack/packet/StreamOpen;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/StreamOpen$StreamContentNamespace;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 6
    .param p1, "to"    # Ljava/lang/CharSequence;
    .param p2, "from"    # Ljava/lang/CharSequence;
    .param p3, "id"    # Ljava/lang/String;

    .line 68
    sget-object v5, Lorg/jivesoftware/smack/packet/StreamOpen$StreamContentNamespace;->client:Lorg/jivesoftware/smack/packet/StreamOpen$StreamContentNamespace;

    const-string v4, "en"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smack/packet/StreamOpen;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/StreamOpen$StreamContentNamespace;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/StreamOpen$StreamContentNamespace;)V
    .locals 2
    .param p1, "to"    # Ljava/lang/CharSequence;
    .param p2, "from"    # Ljava/lang/CharSequence;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "lang"    # Ljava/lang/String;
    .param p5, "ns"    # Lorg/jivesoftware/smack/packet/StreamOpen$StreamContentNamespace;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->maybeToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/StreamOpen;->to:Ljava/lang/String;

    .line 73
    invoke-static {p2}, Lorg/jivesoftware/smack/util/StringUtils;->maybeToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/StreamOpen;->from:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lorg/jivesoftware/smack/packet/StreamOpen;->id:Ljava/lang/String;

    .line 75
    iput-object p4, p0, Lorg/jivesoftware/smack/packet/StreamOpen;->lang:Ljava/lang/String;

    .line 76
    sget-object v0, Lorg/jivesoftware/smack/packet/StreamOpen$1;->$SwitchMap$org$jivesoftware$smack$packet$StreamOpen$StreamContentNamespace:[I

    invoke-virtual {p5}, Lorg/jivesoftware/smack/packet/StreamOpen$StreamContentNamespace;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 81
    const-string v0, "jabber:server"

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/StreamOpen;->contentNamespace:Ljava/lang/String;

    .line 82
    goto :goto_0

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 78
    :cond_1
    const-string v0, "jabber:client"

    iput-object v0, p0, Lorg/jivesoftware/smack/packet/StreamOpen;->contentNamespace:Ljava/lang/String;

    .line 79
    nop

    .line 86
    :goto_0
    return-void
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 95
    const-string v0, "stream:stream"

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/StreamOpen;->contentNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/packet/StreamOpen;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 3
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 100
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>()V

    .line 101
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/StreamOpen;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->halfOpenElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 103
    const-string v1, "xmlns"

    invoke-virtual {v0, v1, p1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 105
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/StreamOpen;->to:Ljava/lang/String;

    const-string v2, "to"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 106
    const-string v1, "xmlns:stream"

    const-string v2, "http://etherx.jabber.org/streams"

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 107
    const-string v1, "version"

    const-string v2, "1.0"

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 108
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/StreamOpen;->from:Ljava/lang/String;

    const-string v2, "from"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 109
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/StreamOpen;->id:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 110
    iget-object v1, p0, Lorg/jivesoftware/smack/packet/StreamOpen;->lang:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->xmllangAttribute(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 111
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 112
    return-object v0
.end method
