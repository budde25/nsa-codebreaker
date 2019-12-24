.class public Lorg/jivesoftware/smackx/chat_markers/element/ChatMarkersElements$MarkableExtension;
.super Ljava/lang/Object;
.source "ChatMarkersElements.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/ExtensionElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/chat_markers/element/ChatMarkersElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarkableExtension"
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "markable"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static from(Lorg/jivesoftware/smack/packet/Message;)Lorg/jivesoftware/smackx/chat_markers/element/ChatMarkersElements$MarkableExtension;
    .locals 2
    .param p0, "message"    # Lorg/jivesoftware/smack/packet/Message;

    .line 71
    const-string v0, "markable"

    const-string v1, "urn:xmpp:chat-markers:0"

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/chat_markers/element/ChatMarkersElements$MarkableExtension;

    return-object v0
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 55
    const-string v0, "markable"

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 60
    const-string v0, "urn:xmpp:chat-markers:0"

    return-object v0
.end method

.method public toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 65
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 66
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 67
    return-object v0
.end method
