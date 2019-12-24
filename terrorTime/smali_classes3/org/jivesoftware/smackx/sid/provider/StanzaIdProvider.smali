.class public Lorg/jivesoftware/smackx/sid/provider/StanzaIdProvider;
.super Lorg/jivesoftware/smack/provider/ExtensionElementProvider;
.source "StanzaIdProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/ExtensionElementProvider<",
        "Lorg/jivesoftware/smackx/sid/element/StanzaIdElement;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/jivesoftware/smackx/sid/provider/StanzaIdProvider;

.field public static final TEST_INSTANCE:Lorg/jivesoftware/smackx/sid/provider/StanzaIdProvider;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lorg/jivesoftware/smackx/sid/provider/StanzaIdProvider;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/sid/provider/StanzaIdProvider;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/sid/provider/StanzaIdProvider;->INSTANCE:Lorg/jivesoftware/smackx/sid/provider/StanzaIdProvider;

    .line 30
    sget-object v0, Lorg/jivesoftware/smackx/sid/provider/StanzaIdProvider;->INSTANCE:Lorg/jivesoftware/smackx/sid/provider/StanzaIdProvider;

    sput-object v0, Lorg/jivesoftware/smackx/sid/provider/StanzaIdProvider;->TEST_INSTANCE:Lorg/jivesoftware/smackx/sid/provider/StanzaIdProvider;

    return-void
.end method

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
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/sid/provider/StanzaIdProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/sid/element/StanzaIdElement;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/sid/element/StanzaIdElement;
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    const-string v1, "id"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "id":Ljava/lang/String;
    const-string v2, "by"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "by":Ljava/lang/String;
    new-instance v2, Lorg/jivesoftware/smackx/sid/element/StanzaIdElement;

    invoke-direct {v2, v1, v0}, Lorg/jivesoftware/smackx/sid/element/StanzaIdElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
