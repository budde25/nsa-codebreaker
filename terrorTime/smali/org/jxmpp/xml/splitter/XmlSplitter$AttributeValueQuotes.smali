.class final enum Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;
.super Ljava/lang/Enum;
.source "XmlSplitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jxmpp/xml/splitter/XmlSplitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AttributeValueQuotes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;

.field public static final enum apos:Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;

.field public static final enum quot:Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;


# instance fields
.field final c:C


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 72
    new-instance v0, Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;

    const/4 v1, 0x0

    const-string v2, "apos"

    const/16 v3, 0x27

    invoke-direct {v0, v2, v1, v3}, Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;->apos:Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;

    .line 73
    new-instance v0, Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;

    const/4 v2, 0x1

    const-string v3, "quot"

    const/16 v4, 0x22

    invoke-direct {v0, v3, v2, v4}, Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;->quot:Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;

    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;

    sget-object v3, Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;->apos:Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;

    aput-object v3, v0, v1

    sget-object v1, Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;->quot:Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;

    aput-object v1, v0, v2

    sput-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;->$VALUES:[Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IC)V
    .locals 0
    .param p3, "c"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    iput-char p3, p0, Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;->c:C

    .line 80
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 71
    const-class v0, Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;

    return-object v0
.end method

.method public static values()[Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;
    .locals 1

    .line 71
    sget-object v0, Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;->$VALUES:[Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;

    invoke-virtual {v0}, [Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jxmpp/xml/splitter/XmlSplitter$AttributeValueQuotes;

    return-object v0
.end method
