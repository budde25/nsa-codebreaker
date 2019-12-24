.class public Lorg/jivesoftware/smackx/iot/provisioning/provider/FriendProvider;
.super Lorg/jivesoftware/smack/provider/ExtensionElementProvider;
.source "FriendProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/ExtensionElementProvider<",
        "Lorg/jivesoftware/smackx/iot/provisioning/element/Friend;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/jivesoftware/smack/provider/ExtensionElementProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smack/packet/Element;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/iot/provisioning/provider/FriendProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/iot/provisioning/element/Friend;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/iot/provisioning/element/Friend;
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 32
    invoke-static {p1}, Lorg/jivesoftware/smack/util/ParserUtils;->getBareJidAttribute(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v0

    .line 33
    .local v0, "jid":Lorg/jxmpp/jid/BareJid;
    new-instance v1, Lorg/jivesoftware/smackx/iot/provisioning/element/Friend;

    invoke-direct {v1, v0}, Lorg/jivesoftware/smackx/iot/provisioning/element/Friend;-><init>(Lorg/jxmpp/jid/BareJid;)V

    return-object v1
.end method
