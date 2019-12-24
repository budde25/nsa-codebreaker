.class public Lorg/jivesoftware/smack/roster/provider/SubscriptionPreApprovalStreamFeatureProvider;
.super Lorg/jivesoftware/smack/provider/ExtensionElementProvider;
.source "SubscriptionPreApprovalStreamFeatureProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/ExtensionElementProvider<",
        "Lorg/jivesoftware/smack/roster/packet/SubscriptionPreApproval;",
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
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smack/roster/provider/SubscriptionPreApprovalStreamFeatureProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smack/roster/packet/SubscriptionPreApproval;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smack/roster/packet/SubscriptionPreApproval;
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Lorg/jivesoftware/smack/SmackException;
        }
    .end annotation

    .line 33
    sget-object v0, Lorg/jivesoftware/smack/roster/packet/SubscriptionPreApproval;->INSTANCE:Lorg/jivesoftware/smack/roster/packet/SubscriptionPreApproval;

    return-object v0
.end method
