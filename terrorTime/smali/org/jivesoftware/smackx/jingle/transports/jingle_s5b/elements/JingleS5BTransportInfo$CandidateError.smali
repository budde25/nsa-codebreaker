.class public final Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportInfo$CandidateError;
.super Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportInfo;
.source "JingleS5BTransportInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CandidateError"
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "candidate-error"

.field public static final INSTANCE:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportInfo$CandidateError;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 92
    new-instance v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportInfo$CandidateError;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportInfo$CandidateError;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportInfo$CandidateError;->INSTANCE:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportInfo$CandidateError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportInfo;-><init>()V

    .line 97
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .line 114
    sget-object v0, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportInfo$CandidateError;->INSTANCE:Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportInfo$CandidateError;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 101
    const-string v0, "candidate-error"

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportInfo$CandidateError;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 91
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/jingle/transports/jingle_s5b/elements/JingleS5BTransportInfo$CandidateError;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 1
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 106
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>()V

    .line 107
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->halfOpenElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 108
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 109
    return-object v0
.end method
