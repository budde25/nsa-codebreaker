.class public Lorg/jivesoftware/smackx/muc/packet/MUCUser$Decline;
.super Ljava/lang/Object;
.source "MUCUser.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/NamedElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/muc/packet/MUCUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Decline"
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "decline"


# instance fields
.field private final from:Lorg/jxmpp/jid/EntityBareJid;

.field private final reason:Ljava/lang/String;

.field private final to:Lorg/jxmpp/jid/EntityBareJid;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jxmpp/jid/EntityBareJid;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "to"    # Lorg/jxmpp/jid/EntityBareJid;

    .line 334
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/jivesoftware/smackx/muc/packet/MUCUser$Decline;-><init>(Ljava/lang/String;Lorg/jxmpp/jid/EntityBareJid;Lorg/jxmpp/jid/EntityBareJid;)V

    .line 335
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jxmpp/jid/EntityBareJid;Lorg/jxmpp/jid/EntityBareJid;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "from"    # Lorg/jxmpp/jid/EntityBareJid;
    .param p3, "to"    # Lorg/jxmpp/jid/EntityBareJid;

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    iput-object p1, p0, Lorg/jivesoftware/smackx/muc/packet/MUCUser$Decline;->reason:Ljava/lang/String;

    .line 339
    iput-object p2, p0, Lorg/jivesoftware/smackx/muc/packet/MUCUser$Decline;->from:Lorg/jxmpp/jid/EntityBareJid;

    .line 340
    iput-object p3, p0, Lorg/jivesoftware/smackx/muc/packet/MUCUser$Decline;->to:Lorg/jxmpp/jid/EntityBareJid;

    .line 341
    return-void
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 384
    const-string v0, "decline"

    return-object v0
.end method

.method public getFrom()Lorg/jxmpp/jid/EntityBareJid;
    .locals 1

    .line 350
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/packet/MUCUser$Decline;->from:Lorg/jxmpp/jid/EntityBareJid;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 359
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/packet/MUCUser$Decline;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getTo()Lorg/jxmpp/jid/EntityBareJid;
    .locals 1

    .line 368
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/packet/MUCUser$Decline;->to:Lorg/jxmpp/jid/EntityBareJid;

    return-object v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 326
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/muc/packet/MUCUser$Decline;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 3
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 373
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/NamedElement;)V

    .line 374
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muc/packet/MUCUser$Decline;->getTo()Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v1

    const-string v2, "to"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 375
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muc/packet/MUCUser$Decline;->getFrom()Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v1

    const-string v2, "from"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 376
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 377
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muc/packet/MUCUser$Decline;->getReason()Ljava/lang/String;

    move-result-object v1

    const-string v2, "reason"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 378
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 379
    return-object v0
.end method
