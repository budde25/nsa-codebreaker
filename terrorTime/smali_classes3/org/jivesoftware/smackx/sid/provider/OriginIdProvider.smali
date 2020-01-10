.class public Lorg/jivesoftware/smackx/sid/provider/OriginIdProvider;
.super Lorg/jivesoftware/smack/provider/ExtensionElementProvider;
.source "OriginIdProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/provider/ExtensionElementProvider<",
        "Lorg/jivesoftware/smackx/sid/element/OriginIdElement;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/jivesoftware/smackx/sid/provider/OriginIdProvider;

.field public static final TEST_INSTANCE:Lorg/jivesoftware/smackx/sid/provider/OriginIdProvider;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lorg/jivesoftware/smackx/sid/provider/OriginIdProvider;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/sid/provider/OriginIdProvider;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/sid/provider/OriginIdProvider;->INSTANCE:Lorg/jivesoftware/smackx/sid/provider/OriginIdProvider;

    .line 30
    sget-object v0, Lorg/jivesoftware/smackx/sid/provider/OriginIdProvider;->INSTANCE:Lorg/jivesoftware/smackx/sid/provider/OriginIdProvider;

    sput-object v0, Lorg/jivesoftware/smackx/sid/provider/OriginIdProvider;->TEST_INSTANCE:Lorg/jivesoftware/smackx/sid/provider/OriginIdProvider;

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
    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/sid/provider/OriginIdProvider;->parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/sid/element/OriginIdElement;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;I)Lorg/jivesoftware/smackx/sid/element/OriginIdElement;
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "initialDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    new-instance v0, Lorg/jivesoftware/smackx/sid/element/OriginIdElement;

    const/4 v1, 0x0

    const-string v2, "id"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/sid/element/OriginIdElement;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
