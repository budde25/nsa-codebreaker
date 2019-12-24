.class public Lorg/jivesoftware/smackx/chatstates/packet/ChatStateExtension;
.super Ljava/lang/Object;
.source "ChatStateExtension.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/ExtensionElement;


# static fields
.field public static final NAMESPACE:Ljava/lang/String; = "http://jabber.org/protocol/chatstates"


# instance fields
.field private final state:Lorg/jivesoftware/smackx/chatstates/ChatState;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/chatstates/ChatState;)V
    .locals 0
    .param p1, "state"    # Lorg/jivesoftware/smackx/chatstates/ChatState;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/jivesoftware/smackx/chatstates/packet/ChatStateExtension;->state:Lorg/jivesoftware/smackx/chatstates/ChatState;

    .line 45
    return-void
.end method


# virtual methods
.method public getChatState()Lorg/jivesoftware/smackx/chatstates/ChatState;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/jivesoftware/smackx/chatstates/packet/ChatStateExtension;->state:Lorg/jivesoftware/smackx/chatstates/ChatState;

    return-object v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/jivesoftware/smackx/chatstates/packet/ChatStateExtension;->state:Lorg/jivesoftware/smackx/chatstates/ChatState;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/chatstates/ChatState;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 54
    const-string v0, "http://jabber.org/protocol/chatstates"

    return-object v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/chatstates/packet/ChatStateExtension;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 1
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 63
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 64
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 65
    return-object v0
.end method
