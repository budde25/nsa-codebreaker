.class public final Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;
.super Ljava/lang/Object;
.source "MultipleAddresses.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/NamedElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/address/packet/MultipleAddresses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Address"
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "address"


# instance fields
.field private delivered:Z

.field private description:Ljava/lang/String;

.field private jid:Lorg/jxmpp/jid/Jid;

.field private node:Ljava/lang/String;

.field private final type:Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;

.field private uri:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;)V
    .locals 0
    .param p1, "type"    # Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;->type:Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;

    .line 145
    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;
    .param p2, "x1"    # Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$1;

    .line 132
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;-><init>(Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;)V

    return-void
.end method

.method static synthetic access$100(Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;Lorg/jxmpp/jid/Jid;)V
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;
    .param p1, "x1"    # Lorg/jxmpp/jid/Jid;

    .line 132
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;->setJid(Lorg/jxmpp/jid/Jid;)V

    return-void
.end method

.method static synthetic access$200(Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;
    .param p1, "x1"    # Ljava/lang/String;

    .line 132
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;->setNode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;
    .param p1, "x1"    # Ljava/lang/String;

    .line 132
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;
    .param p1, "x1"    # Z

    .line 132
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;->setDelivered(Z)V

    return-void
.end method

.method static synthetic access$500(Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;
    .param p1, "x1"    # Ljava/lang/String;

    .line 132
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;->setUri(Ljava/lang/String;)V

    return-void
.end method

.method private setDelivered(Z)V
    .locals 0
    .param p1, "delivered"    # Z

    .line 180
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;->delivered:Z

    .line 181
    return-void
.end method

.method private setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .line 172
    iput-object p1, p0, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;->description:Ljava/lang/String;

    .line 173
    return-void
.end method

.method private setJid(Lorg/jxmpp/jid/Jid;)V
    .locals 0
    .param p1, "jid"    # Lorg/jxmpp/jid/Jid;

    .line 156
    iput-object p1, p0, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;->jid:Lorg/jxmpp/jid/Jid;

    .line 157
    return-void
.end method

.method private setNode(Ljava/lang/String;)V
    .locals 0
    .param p1, "node"    # Ljava/lang/String;

    .line 164
    iput-object p1, p0, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;->node:Ljava/lang/String;

    .line 165
    return-void
.end method

.method private setUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .line 188
    iput-object p1, p0, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;->uri:Ljava/lang/String;

    .line 189
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 193
    const-string v0, "address"

    return-object v0
.end method

.method public getJid()Lorg/jxmpp/jid/Jid;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;->jid:Lorg/jxmpp/jid/Jid;

    return-object v0
.end method

.method public getNode()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;->node:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;->type:Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public isDelivered()Z
    .locals 1

    .line 176
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;->delivered:Z

    return v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 132
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 4
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 198
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>()V

    .line 199
    .local v0, "buf":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->halfOpenElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;->type:Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Type;

    const-string v3, "type"

    invoke-virtual {v1, v3, v2}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/Enum;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 200
    iget-object v1, p0, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;->jid:Lorg/jxmpp/jid/Jid;

    const-string v2, "jid"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 201
    iget-object v1, p0, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;->node:Ljava/lang/String;

    const-string v2, "node"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 202
    iget-object v1, p0, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;->description:Ljava/lang/String;

    const-string v2, "desc"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 203
    iget-object v1, p0, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;->description:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 204
    const-string v1, " desc=\""

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 205
    iget-object v1, p0, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->append(C)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 207
    :cond_0
    iget-boolean v1, p0, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;->delivered:Z

    const-string v2, "delivered"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optBooleanAttribute(Ljava/lang/String;Z)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 208
    iget-object v1, p0, Lorg/jivesoftware/smackx/address/packet/MultipleAddresses$Address;->uri:Ljava/lang/String;

    const-string v2, "uri"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 209
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 210
    return-object v0
.end method
