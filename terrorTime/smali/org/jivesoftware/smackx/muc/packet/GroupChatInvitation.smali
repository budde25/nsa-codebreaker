.class public Lorg/jivesoftware/smackx/muc/packet/GroupChatInvitation;
.super Ljava/lang/Object;
.source "GroupChatInvitation.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/ExtensionElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/muc/packet/GroupChatInvitation$Provider;
    }
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "x"

.field public static final NAMESPACE:Ljava/lang/String; = "jabber:x:conference"


# instance fields
.field private final roomAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "roomAddress"    # Ljava/lang/String;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lorg/jivesoftware/smackx/muc/packet/GroupChatInvitation;->roomAddress:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public static from(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/muc/packet/GroupChatInvitation;
    .locals 2
    .param p0, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 131
    const-string v0, "x"

    const-string v1, "jabber:x:conference"

    invoke-virtual {p0, v0, v1}, Lorg/jivesoftware/smack/packet/Stanza;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/ExtensionElement;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/muc/packet/GroupChatInvitation;

    return-object v0
.end method

.method public static getFrom(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/muc/packet/GroupChatInvitation;
    .locals 1
    .param p0, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 122
    invoke-static {p0}, Lorg/jivesoftware/smackx/muc/packet/GroupChatInvitation;->from(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/muc/packet/GroupChatInvitation;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 98
    const-string v0, "x"

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 103
    const-string v0, "jabber:x:conference"

    return-object v0
.end method

.method public getRoomAddress()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/packet/GroupChatInvitation;->roomAddress:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/muc/packet/GroupChatInvitation;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 3
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 108
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 109
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muc/packet/GroupChatInvitation;->getRoomAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "jid"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 110
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 111
    return-object v0
.end method
