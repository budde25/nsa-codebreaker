.class public Lorg/jivesoftware/smackx/jingle/element/JingleReason$AlternativeSession;
.super Lorg/jivesoftware/smackx/jingle/element/JingleReason;
.source "JingleReason.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/jingle/element/JingleReason;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlternativeSession"
.end annotation


# static fields
.field public static final SID:Ljava/lang/String; = "sid"


# instance fields
.field private final sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "sessionId"    # Ljava/lang/String;

    .line 138
    sget-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->alternative_session:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smackx/jingle/element/JingleReason;-><init>(Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;)V

    .line 139
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->isNullOrEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$AlternativeSession;->sessionId:Ljava/lang/String;

    .line 143
    return-void

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "SessionID must not be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAlternativeSessionId()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$AlternativeSession;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 132
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/jingle/element/JingleReason$AlternativeSession;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 3
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 147
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/NamedElement;)V

    .line 148
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 150
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$AlternativeSession;->reason:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    iget-object v1, v1, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->asString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->openElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 151
    const-string v1, "sid"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->openElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 152
    iget-object v2, p0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$AlternativeSession;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 153
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 154
    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/element/JingleReason$AlternativeSession;->reason:Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;

    iget-object v1, v1, Lorg/jivesoftware/smackx/jingle/element/JingleReason$Reason;->asString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 156
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 157
    return-object v0
.end method
