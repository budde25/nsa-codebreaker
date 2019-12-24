.class public Lorg/jivesoftware/smackx/carbons/provider/CarbonManagerProvider;
.super Lorg/jivesoftware/smack/provider/ExtensionElementProvider;
.source "CarbonManagerProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/ExtensionElementProvider<",
        "Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension;",
        ">;"
    }
.end annotation


# static fields
.field private static final FORWARDED_PROVIDER:Lorg/jivesoftware/smackx/forward/provider/ForwardedProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lorg/jivesoftware/smackx/forward/provider/ForwardedProvider;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/forward/provider/ForwardedProvider;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/carbons/provider/CarbonManagerProvider;->FORWARDED_PROVIDER:Lorg/jivesoftware/smackx/forward/provider/ForwardedProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
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

    .line 36
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/carbons/provider/CarbonManagerProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension;
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Direction;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Direction;

    move-result-object v0

    .line 44
    .local v0, "dir":Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Direction;
    const/4 v1, 0x0

    .line 46
    .local v1, "fwd":Lorg/jivesoftware/smackx/forward/packet/Forwarded;
    const/4 v2, 0x0

    .line 47
    .local v2, "done":Z
    :goto_0
    if-nez v2, :cond_2

    .line 48
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 49
    .local v3, "eventType":I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "forwarded"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    sget-object v4, Lorg/jivesoftware/smackx/carbons/provider/CarbonManagerProvider;->FORWARDED_PROVIDER:Lorg/jivesoftware/smackx/forward/provider/ForwardedProvider;

    invoke-virtual {v4, p1}, Lorg/jivesoftware/smackx/forward/provider/ForwardedProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Element;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Lorg/jivesoftware/smackx/forward/packet/Forwarded;

    goto :goto_1

    .line 52
    :cond_0
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Direction;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Direction;

    move-result-object v4

    if-ne v0, v4, :cond_1

    .line 53
    const/4 v2, 0x1

    .line 54
    .end local v3    # "eventType":I
    :cond_1
    :goto_1
    goto :goto_0

    .line 55
    :cond_2
    if-eqz v1, :cond_3

    .line 57
    new-instance v3, Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension;

    invoke-direct {v3, v0, v1}, Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension;-><init>(Lorg/jivesoftware/smackx/carbons/packet/CarbonExtension$Direction;Lorg/jivesoftware/smackx/forward/packet/Forwarded;)V

    return-object v3

    .line 56
    :cond_3
    new-instance v3, Lorg/jivesoftware/smack/SmackException;

    const-string v4, "sent/received must contain exactly one <forwarded> tag"

    invoke-direct {v3, v4}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
