.class public Lorg/jivesoftware/smackx/last_interaction/provider/IdleProvider;
.super Lorg/jivesoftware/smack/provider/ExtensionElementProvider;
.source "IdleProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/ExtensionElementProvider<",
        "Lorg/jivesoftware/smackx/last_interaction/element/IdleElement;",
        ">;"
    }
.end annotation


# static fields
.field public static final TEST_INSTANCE:Lorg/jivesoftware/smackx/last_interaction/provider/IdleProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lorg/jivesoftware/smackx/last_interaction/provider/IdleProvider;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/last_interaction/provider/IdleProvider;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/last_interaction/provider/IdleProvider;->TEST_INSTANCE:Lorg/jivesoftware/smackx/last_interaction/provider/IdleProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
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

    .line 27
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/last_interaction/provider/IdleProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/last_interaction/element/IdleElement;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/last_interaction/element/IdleElement;
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    const/4 v0, 0x0

    const-string v1, "since"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "dateString":Ljava/lang/String;
    invoke-static {v0}, Lorg/jxmpp/util/XmppDateTime;->parseXEP0082Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 38
    .local v1, "since":Ljava/util/Date;
    new-instance v2, Lorg/jivesoftware/smackx/last_interaction/element/IdleElement;

    invoke-direct {v2, v1}, Lorg/jivesoftware/smackx/last_interaction/element/IdleElement;-><init>(Ljava/util/Date;)V

    return-object v2
.end method
