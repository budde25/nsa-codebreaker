.class public final Lorg/jivesoftware/smackx/jingle/element/JingleError;
.super Ljava/lang/Object;
.source "JingleError.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/ExtensionElement;


# static fields
.field public static NAMESPACE:Ljava/lang/String;

.field public static final OUT_OF_ORDER:Lorg/jivesoftware/smackx/jingle/element/JingleError;

.field public static final TIE_BREAK:Lorg/jivesoftware/smackx/jingle/element/JingleError;

.field public static final UNKNOWN_SESSION:Lorg/jivesoftware/smackx/jingle/element/JingleError;

.field public static final UNSUPPORTED_INFO:Lorg/jivesoftware/smackx/jingle/element/JingleError;


# instance fields
.field private final errorName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    const-string v0, "urn:xmpp:jingle:errors:1"

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleError;->NAMESPACE:Ljava/lang/String;

    .line 29
    new-instance v0, Lorg/jivesoftware/smackx/jingle/element/JingleError;

    const-string v1, "out-of-order"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/jingle/element/JingleError;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleError;->OUT_OF_ORDER:Lorg/jivesoftware/smackx/jingle/element/JingleError;

    .line 31
    new-instance v0, Lorg/jivesoftware/smackx/jingle/element/JingleError;

    const-string v1, "tie-break"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/jingle/element/JingleError;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleError;->TIE_BREAK:Lorg/jivesoftware/smackx/jingle/element/JingleError;

    .line 33
    new-instance v0, Lorg/jivesoftware/smackx/jingle/element/JingleError;

    const-string v1, "unknown-session"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/jingle/element/JingleError;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleError;->UNKNOWN_SESSION:Lorg/jivesoftware/smackx/jingle/element/JingleError;

    .line 35
    new-instance v0, Lorg/jivesoftware/smackx/jingle/element/JingleError;

    const-string v1, "unsupported-info"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/jingle/element/JingleError;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleError;->UNSUPPORTED_INFO:Lorg/jivesoftware/smackx/jingle/element/JingleError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorName"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/element/JingleError;->errorName:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lorg/jivesoftware/smackx/jingle/element/JingleError;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .line 68
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 69
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "unsupported-info"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v0, "tie-break"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v0, "unknown-session"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_3
    const-string v0, "out-of-order"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_1

    .line 77
    sget-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleError;->UNSUPPORTED_INFO:Lorg/jivesoftware/smackx/jingle/element/JingleError;

    return-object v0

    .line 79
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 75
    :cond_2
    sget-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleError;->TIE_BREAK:Lorg/jivesoftware/smackx/jingle/element/JingleError;

    return-object v0

    .line 73
    :cond_3
    sget-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleError;->UNKNOWN_SESSION:Lorg/jivesoftware/smackx/jingle/element/JingleError;

    return-object v0

    .line 71
    :cond_4
    sget-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleError;->OUT_OF_ORDER:Lorg/jivesoftware/smackx/jingle/element/JingleError;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x6aab2889 -> :sswitch_3
        -0x56b8d7ed -> :sswitch_2
        -0x4687e7e -> :sswitch_1
        0x3ebb7d46 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/JingleError;->errorName:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/element/JingleError;->errorName:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 95
    sget-object v0, Lorg/jivesoftware/smackx/jingle/element/JingleError;->NAMESPACE:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 85
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/jingle/element/JingleError;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/jingle/element/JingleError;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 1
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 59
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/ExtensionElement;)V

    .line 60
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 61
    return-object v0
.end method
