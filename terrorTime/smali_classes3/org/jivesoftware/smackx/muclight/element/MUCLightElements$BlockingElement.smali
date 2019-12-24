.class public Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$BlockingElement;
.super Ljava/lang/Object;
.source "MUCLightElements.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/Element;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/muclight/element/MUCLightElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlockingElement"
.end annotation


# instance fields
.field private allow:Ljava/lang/Boolean;

.field private isRoom:Ljava/lang/Boolean;

.field private jid:Lorg/jxmpp/jid/Jid;


# direct methods
.method public constructor <init>(Lorg/jxmpp/jid/Jid;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "jid"    # Lorg/jxmpp/jid/Jid;
    .param p2, "allow"    # Ljava/lang/Boolean;
    .param p3, "isRoom"    # Ljava/lang/Boolean;

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    iput-object p1, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$BlockingElement;->jid:Lorg/jxmpp/jid/Jid;

    .line 371
    iput-object p2, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$BlockingElement;->allow:Ljava/lang/Boolean;

    .line 372
    iput-object p3, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$BlockingElement;->isRoom:Ljava/lang/Boolean;

    .line 373
    return-void
.end method


# virtual methods
.method public toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 377
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>()V

    .line 379
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    iget-object v1, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$BlockingElement;->isRoom:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "room"

    goto :goto_0

    :cond_0
    const-string v1, "user"

    .line 380
    .local v1, "tag":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->halfOpenElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 382
    iget-object v2, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$BlockingElement;->allow:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "allow"

    goto :goto_1

    :cond_1
    const-string v2, "deny"

    .line 383
    .local v2, "action":Ljava/lang/String;
    :goto_1
    const-string v3, "action"

    invoke-virtual {v0, v3, v2}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 384
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 386
    iget-object v3, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$BlockingElement;->jid:Lorg/jxmpp/jid/Jid;

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->escape(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 388
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 389
    return-object v0
.end method
