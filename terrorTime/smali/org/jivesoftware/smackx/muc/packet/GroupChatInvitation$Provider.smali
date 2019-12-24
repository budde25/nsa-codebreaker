.class public Lorg/jivesoftware/smackx/muc/packet/GroupChatInvitation$Provider;
.super Lorg/jivesoftware/smack/provider/ExtensionElementProvider;
.source "GroupChatInvitation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/muc/packet/GroupChatInvitation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Provider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/ExtensionElementProvider<",
        "Lorg/jivesoftware/smackx/muc/packet/GroupChatInvitation;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 134
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

    .line 134
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/muc/packet/GroupChatInvitation$Provider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/muc/packet/GroupChatInvitation;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/muc/packet/GroupChatInvitation;
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    const-string v0, ""

    const-string v1, "jid"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "roomAddress":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 143
    new-instance v1, Lorg/jivesoftware/smackx/muc/packet/GroupChatInvitation;

    invoke-direct {v1, v0}, Lorg/jivesoftware/smackx/muc/packet/GroupChatInvitation;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
