.class public Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "MamPrefsIQ.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;
    }
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "prefs"

.field public static final NAMESPACE:Ljava/lang/String; = "urn:xmpp:mam:1"


# instance fields
.field private final alwaysJids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jxmpp/jid/Jid;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultBehavior:Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;

.field private final neverJids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jxmpp/jid/Jid;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 74
    const-string v0, "prefs"

    const-string v1, "urn:xmpp:mam:1"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;->alwaysJids:Ljava/util/List;

    .line 76
    iput-object v0, p0, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;->neverJids:Ljava/util/List;

    .line 77
    iput-object v0, p0, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;->defaultBehavior:Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;)V
    .locals 2
    .param p3, "defaultBehavior"    # Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jxmpp/jid/Jid;",
            ">;",
            "Ljava/util/List<",
            "Lorg/jxmpp/jid/Jid;",
            ">;",
            "Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;",
            ")V"
        }
    .end annotation

    .line 88
    .local p1, "alwaysJids":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/jid/Jid;>;"
    .local p2, "neverJids":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/jid/Jid;>;"
    const-string v0, "prefs"

    const-string v1, "urn:xmpp:mam:1"

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smack/packet/IQ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    sget-object v0, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 90
    iput-object p1, p0, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;->alwaysJids:Ljava/util/List;

    .line 91
    iput-object p2, p0, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;->neverJids:Ljava/util/List;

    .line 92
    iput-object p3, p0, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;->defaultBehavior:Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;

    .line 93
    return-void
.end method


# virtual methods
.method public getAlwaysJids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jxmpp/jid/Jid;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;->alwaysJids:Ljava/util/List;

    return-object v0
.end method

.method public getDefault()Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;->defaultBehavior:Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;

    return-object v0
.end method

.method protected getIQChildElementBuilder(Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;)Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;
    .locals 2
    .param p1, "xml"    # Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;

    .line 125
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v0

    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/IQ$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v0

    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->result:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/IQ$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;->defaultBehavior:Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ$DefaultBehavior;

    const-string v1, "default"

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/Enum;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 129
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;->alwaysJids:Ljava/util/List;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;->neverJids:Ljava/util/List;

    if-nez v0, :cond_2

    .line 130
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->setEmptyElement()V

    .line 131
    return-object p1

    .line 134
    :cond_2
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 136
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;->alwaysJids:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 137
    new-instance v1, Lorg/jivesoftware/smackx/mam/element/MamElements$AlwaysJidListElement;

    invoke-direct {v1, v0}, Lorg/jivesoftware/smackx/mam/element/MamElements$AlwaysJidListElement;-><init>(Ljava/util/List;)V

    move-object v0, v1

    .line 138
    .local v0, "alwaysElement":Lorg/jivesoftware/smackx/mam/element/MamElements$AlwaysJidListElement;
    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->element(Lorg/jivesoftware/smack/packet/Element;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 141
    .end local v0    # "alwaysElement":Lorg/jivesoftware/smackx/mam/element/MamElements$AlwaysJidListElement;
    :cond_3
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;->neverJids:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 142
    new-instance v1, Lorg/jivesoftware/smackx/mam/element/MamElements$NeverJidListElement;

    invoke-direct {v1, v0}, Lorg/jivesoftware/smackx/mam/element/MamElements$NeverJidListElement;-><init>(Ljava/util/List;)V

    move-object v0, v1

    .line 143
    .local v0, "neverElement":Lorg/jivesoftware/smackx/mam/element/MamElements$NeverJidListElement;
    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/IQ$IQChildElementXmlStringBuilder;->element(Lorg/jivesoftware/smack/packet/Element;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 146
    .end local v0    # "neverElement":Lorg/jivesoftware/smackx/mam/element/MamElements$NeverJidListElement;
    :cond_4
    return-object p1
.end method

.method public getNeverJids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jxmpp/jid/Jid;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/element/MamPrefsIQ;->neverJids:Ljava/util/List;

    return-object v0
.end method
