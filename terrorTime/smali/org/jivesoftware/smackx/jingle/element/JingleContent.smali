.class public final Lorg/jivesoftware/smackx/jingle/element/JingleContent;
.super Ljava/lang/Object;
.source "JingleContent.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/NamedElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;,
        Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;,
        Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;
    }
.end annotation


# static fields
.field public static final CREATOR_ATTRIBUTE_NAME:Ljava/lang/String; = "creator"

.field public static final DISPOSITION_ATTRIBUTE_NAME:Ljava/lang/String; = "disposition"

.field public static final ELEMENT:Ljava/lang/String; = "content"

.field public static final NAME_ATTRIBUTE_NAME:Ljava/lang/String; = "name"

.field public static final SENDERS_ATTRIBUTE_NAME:Ljava/lang/String; = "senders"


# instance fields
.field private final creator:Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;

.field private final description:Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;

.field private final disposition:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final senders:Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;

.field private final transport:Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;


# direct methods
.method private constructor <init>(Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;)V
    .locals 1
    .param p1, "creator"    # Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;
    .param p2, "disposition"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "senders"    # Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;
    .param p5, "description"    # Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;
    .param p6, "transport"    # Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-string v0, "Jingle content creator must not be null"

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/JingleContent;->creator:Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;

    .line 77
    iput-object p2, p0, Lorg/jivesoftware/smackx/jingle/element/JingleContent;->disposition:Ljava/lang/String;

    .line 78
    const-string v0, "Jingle content name must not be null or empty"

    invoke-static {p3, v0}, Lorg/jivesoftware/smack/util/StringUtils;->requireNotNullOrEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/JingleContent;->name:Ljava/lang/String;

    .line 79
    iput-object p4, p0, Lorg/jivesoftware/smackx/jingle/element/JingleContent;->senders:Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;

    .line 80
    iput-object p5, p0, Lorg/jivesoftware/smackx/jingle/element/JingleContent;->description:Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;

    .line 81
    iput-object p6, p0, Lorg/jivesoftware/smackx/jingle/element/JingleContent;->transport:Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    .line 82
    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;Lorg/jivesoftware/smackx/jingle/element/JingleContent$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;
    .param p5, "x4"    # Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;
    .param p6, "x5"    # Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;
    .param p7, "x6"    # Lorg/jivesoftware/smackx/jingle/element/JingleContent$1;

    .line 27
    invoke-direct/range {p0 .. p6}, Lorg/jivesoftware/smackx/jingle/element/JingleContent;-><init>(Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;)V

    return-void
.end method

.method public static getBuilder()Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;
    .locals 2

    .line 151
    new-instance v0, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/jingle/element/JingleContent$Builder;-><init>(Lorg/jivesoftware/smackx/jingle/element/JingleContent$1;)V

    return-object v0
.end method


# virtual methods
.method public getCreator()Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/JingleContent;->creator:Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;

    return-object v0
.end method

.method public getDescription()Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/JingleContent;->description:Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;

    return-object v0
.end method

.method public getDisposition()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/JingleContent;->disposition:Ljava/lang/String;

    return-object v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 131
    const-string v0, "content"

    return-object v0
.end method

.method public getJingleTransport()Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 117
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/element/JingleContent;->getTransport()Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/JingleContent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSenders()Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/JingleContent;->senders:Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;

    return-object v0
.end method

.method public getTransport()Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/JingleContent;->transport:Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    return-object v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/jingle/element/JingleContent;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 3
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 136
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/NamedElement;)V

    .line 137
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/element/JingleContent;->creator:Lorg/jivesoftware/smackx/jingle/element/JingleContent$Creator;

    const-string v2, "creator"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/Enum;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 138
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/element/JingleContent;->disposition:Ljava/lang/String;

    const-string v2, "disposition"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 139
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/element/JingleContent;->name:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 140
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/element/JingleContent;->senders:Lorg/jivesoftware/smackx/jingle/element/JingleContent$Senders;

    const-string v2, "senders"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/Enum;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 141
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 143
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/element/JingleContent;->description:Lorg/jivesoftware/smackx/jingle/element/JingleContentDescription;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAppend(Lorg/jivesoftware/smack/packet/Element;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 144
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/element/JingleContent;->transport:Lorg/jivesoftware/smackx/jingle/element/JingleContentTransport;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Lorg/jivesoftware/smack/packet/Element;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 146
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 147
    return-object v0
.end method
