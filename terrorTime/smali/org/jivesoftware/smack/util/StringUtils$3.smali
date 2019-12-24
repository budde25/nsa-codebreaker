.class synthetic Lorg/jivesoftware/smack/util/StringUtils$3;
.super Ljava/lang/Object;
.source "StringUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/util/StringUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$jivesoftware$smack$util$StringUtils$XmlEscapeMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 119
    invoke-static {}, Lorg/jivesoftware/smack/util/StringUtils$XmlEscapeMode;->values()[Lorg/jivesoftware/smack/util/StringUtils$XmlEscapeMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/jivesoftware/smack/util/StringUtils$3;->$SwitchMap$org$jivesoftware$smack$util$StringUtils$XmlEscapeMode:[I

    :try_start_0
    sget-object v0, Lorg/jivesoftware/smack/util/StringUtils$3;->$SwitchMap$org$jivesoftware$smack$util$StringUtils$XmlEscapeMode:[I

    sget-object v1, Lorg/jivesoftware/smack/util/StringUtils$XmlEscapeMode;->safe:Lorg/jivesoftware/smack/util/StringUtils$XmlEscapeMode;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/util/StringUtils$XmlEscapeMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lorg/jivesoftware/smack/util/StringUtils$3;->$SwitchMap$org$jivesoftware$smack$util$StringUtils$XmlEscapeMode:[I

    sget-object v1, Lorg/jivesoftware/smack/util/StringUtils$XmlEscapeMode;->forAttribute:Lorg/jivesoftware/smack/util/StringUtils$XmlEscapeMode;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/util/StringUtils$XmlEscapeMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lorg/jivesoftware/smack/util/StringUtils$3;->$SwitchMap$org$jivesoftware$smack$util$StringUtils$XmlEscapeMode:[I

    sget-object v1, Lorg/jivesoftware/smack/util/StringUtils$XmlEscapeMode;->forAttributeApos:Lorg/jivesoftware/smack/util/StringUtils$XmlEscapeMode;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/util/StringUtils$XmlEscapeMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    sget-object v0, Lorg/jivesoftware/smack/util/StringUtils$3;->$SwitchMap$org$jivesoftware$smack$util$StringUtils$XmlEscapeMode:[I

    sget-object v1, Lorg/jivesoftware/smack/util/StringUtils$XmlEscapeMode;->forText:Lorg/jivesoftware/smack/util/StringUtils$XmlEscapeMode;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/util/StringUtils$XmlEscapeMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    return-void
.end method
