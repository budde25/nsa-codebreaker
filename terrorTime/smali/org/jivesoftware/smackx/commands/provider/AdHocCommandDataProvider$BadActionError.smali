.class public Lorg/jivesoftware/smackx/commands/provider/AdHocCommandDataProvider$BadActionError;
.super Lorg/jivesoftware/smack/provider/ExtensionElementProvider;
.source "AdHocCommandDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/commands/provider/AdHocCommandDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BadActionError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/ExtensionElementProvider<",
        "Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData$SpecificError;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 125
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

    .line 125
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/commands/provider/AdHocCommandDataProvider$BadActionError;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData$SpecificError;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData$SpecificError;
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I

    .line 128
    new-instance v0, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData$SpecificError;

    sget-object v1, Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;->badAction:Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/commands/packet/AdHocCommandData$SpecificError;-><init>(Lorg/jivesoftware/smackx/commands/AdHocCommand$SpecificErrorCondition;)V

    return-object v0
.end method
