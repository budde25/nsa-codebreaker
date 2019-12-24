.class public Lorg/jivesoftware/smackx/forward/provider/ForwardedProvider;
.super Lorg/jivesoftware/smack/provider/ExtensionElementProvider;
.source "ForwardedProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/ExtensionElementProvider<",
        "Lorg/jivesoftware/smackx/forward/packet/Forwarded;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/jivesoftware/smackx/forward/provider/ForwardedProvider;

.field private static final LOGGER:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lorg/jivesoftware/smackx/forward/provider/ForwardedProvider;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/forward/provider/ForwardedProvider;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/forward/provider/ForwardedProvider;->INSTANCE:Lorg/jivesoftware/smackx/forward/provider/ForwardedProvider;

    .line 43
    const-class v0, Lorg/jivesoftware/smackx/forward/provider/ForwardedProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smackx/forward/provider/ForwardedProvider;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
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

    .line 39
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/forward/provider/ForwardedProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/forward/packet/Forwarded;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/forward/packet/Forwarded;
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "di":Lorg/jivesoftware/smackx/delay/packet/DelayInformation;
    const/4 v1, 0x0

    .line 51
    .local v1, "packet":Lorg/jivesoftware/smack/packet/Stanza;
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 52
    .local v2, "eventType":I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto/16 :goto_3

    .line 73
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ne v3, p2, :cond_9

    .line 74
    nop

    .line 80
    .end local v2    # "eventType":I
    if-eqz v1, :cond_1

    .line 82
    new-instance v2, Lorg/jivesoftware/smackx/forward/packet/Forwarded;

    invoke-direct {v2, v0, v1}, Lorg/jivesoftware/smackx/forward/packet/Forwarded;-><init>(Lorg/jivesoftware/smackx/delay/packet/DelayInformation;Lorg/jivesoftware/smack/packet/Stanza;)V

    return-object v2

    .line 81
    :cond_1
    new-instance v2, Lorg/jivesoftware/smack/SmackException;

    const-string v3, "forwarded extension must contain a packet"

    invoke-direct {v2, v3}, Lorg/jivesoftware/smack/SmackException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    .restart local v2    # "eventType":I
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "name":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, "namespace":Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0x5b0b983

    const/4 v8, 0x1

    if-eq v6, v7, :cond_5

    const v7, 0x38eb0007

    if-eq v6, v7, :cond_4

    :cond_3
    goto :goto_1

    :cond_4
    const-string v6, "message"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v5, v8

    goto :goto_1

    :cond_5
    const-string v6, "delay"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_7

    if-eq v5, v8, :cond_6

    .line 69
    sget-object v5, Lorg/jivesoftware/smackx/forward/provider/ForwardedProvider;->LOGGER:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported forwarded packet type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_2

    .line 66
    :cond_6
    invoke-static {p1}, Lorg/jivesoftware/smack/util/PacketParserUtils;->parseMessage(Lorg/xmlpull/v1/XmlPullParser;)Lorg/jivesoftware/smack/packet/Message;

    move-result-object v1

    .line 67
    goto :goto_2

    .line 58
    :cond_7
    const-string v5, "urn:xmpp:delay"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 59
    sget-object v5, Lorg/jivesoftware/smackx/delay/provider/DelayInformationProvider;->INSTANCE:Lorg/jivesoftware/smackx/delay/provider/DelayInformationProvider;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    invoke-virtual {v5, p1, v6}, Lorg/jivesoftware/smackx/delay/provider/DelayInformationProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/delay/packet/DelayInformation;

    move-result-object v0

    goto :goto_2

    .line 61
    :cond_8
    sget-object v6, Lorg/jivesoftware/smackx/forward/provider/ForwardedProvider;->LOGGER:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Namespace \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\' does not match expected namespace \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 64
    nop

    .line 71
    :goto_2
    nop

    .line 78
    .end local v2    # "eventType":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "namespace":Ljava/lang/String;
    :cond_9
    :goto_3
    goto/16 :goto_0
.end method
