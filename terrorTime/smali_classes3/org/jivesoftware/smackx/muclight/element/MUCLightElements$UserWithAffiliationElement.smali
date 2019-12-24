.class public Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$UserWithAffiliationElement;
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
    name = "UserWithAffiliationElement"
.end annotation


# instance fields
.field private affiliation:Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;

.field private user:Lorg/jxmpp/jid/Jid;


# direct methods
.method public constructor <init>(Lorg/jxmpp/jid/Jid;Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;)V
    .locals 0
    .param p1, "user"    # Lorg/jxmpp/jid/Jid;
    .param p2, "affiliation"    # Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    iput-object p1, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$UserWithAffiliationElement;->user:Lorg/jxmpp/jid/Jid;

    .line 334
    iput-object p2, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$UserWithAffiliationElement;->affiliation:Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;

    .line 335
    return-void
.end method


# virtual methods
.method public toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 339
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>()V

    .line 340
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    const-string v1, "user"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->halfOpenElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 341
    iget-object v2, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$UserWithAffiliationElement;->affiliation:Lorg/jivesoftware/smackx/muclight/MUCLightAffiliation;

    const-string v3, "affiliation"

    invoke-virtual {v0, v3, v2}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/Enum;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 342
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 343
    iget-object v2, p0, Lorg/jivesoftware/smackx/muclight/element/MUCLightElements$UserWithAffiliationElement;->user:Lorg/jxmpp/jid/Jid;

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->escape(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 344
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 345
    return-object v0
.end method
