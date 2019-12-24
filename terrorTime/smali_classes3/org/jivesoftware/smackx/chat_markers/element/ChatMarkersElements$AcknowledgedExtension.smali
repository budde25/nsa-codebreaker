.class public Lorg/jivesoftware/smackx/chat_markers/element/ChatMarkersElements$AcknowledgedExtension;
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
    name = "AcknowledgedExtension"
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "acknowledged"


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p1, p0, Lorg/jivesoftware/smackx/chat_markers/element/ChatMarkersElements$AcknowledgedExtension;->id:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public static from(Lorg/jivesoftware/smack/packet/Message;)Lorg/jivesoftware/smackx/chat_markers/element/ChatMarkersElements$AcknowledgedExtension;
    .locals 2
    .param p0, "message"    # Lorg/jivesoftware/smack/packet/Message;

    .line 230
    const-string v0, "acknowledged"

    const-string v1, "urn:xmpp:chat-markers:0"

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/chat_markers/element/ChatMarkersElements$AcknowledgedExtension;

    return-object v0
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 213
    const-string v0, "acknowledged"

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/jivesoftware/smackx/chat_markers/element/ChatMarkersElements$AcknowledgedExtension;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 218
    const-string v0, "urn:xmpp:chat-markers:0"

    return-object v0
.end method

.method public toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 223
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 224
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    iget-object v1, p0, Lorg/jivesoftware/smackx/chat_markers/element/ChatMarkersElements$AcknowledgedExtension;->id:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 225
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 226
    return-object v0
.end method
