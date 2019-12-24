.class public Lorg/jivesoftware/smack/sm/provider/StreamManagementStreamFeatureProvider;
.super Lorg/jivesoftware/smack/provider/ExtensionElementProvider;
.source "StreamManagementStreamFeatureProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/ExtensionElementProvider<",
        "Lorg/jivesoftware/smack/sm/packet/StreamManagement$StreamManagementFeature;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
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

    .line 24
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smack/sm/provider/StreamManagementStreamFeatureProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smack/sm/packet/StreamManagement$StreamManagementFeature;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smack/sm/packet/StreamManagement$StreamManagementFeature;
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I

    .line 29
    sget-object v0, Lorg/jivesoftware/smack/sm/packet/StreamManagement$StreamManagementFeature;->INSTANCE:Lorg/jivesoftware/smack/sm/packet/StreamManagement$StreamManagementFeature;

    return-object v0
.end method
