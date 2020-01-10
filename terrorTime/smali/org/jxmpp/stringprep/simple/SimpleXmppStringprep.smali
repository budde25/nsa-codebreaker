.class public final Lorg/jxmpp/stringprep/simple/SimpleXmppStringprep;
.super Ljava/lang/Object;
.source "SimpleXmppStringprep.java"

# interfaces
.implements Lorg/jxmpp/stringprep/XmppStringprep;


# static fields
.field private static final LOCALPART_FURTHER_EXCLUDED_CHARACTERS:[C

.field private static instance:Lorg/jxmpp/stringprep/simple/SimpleXmppStringprep;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const/16 v0, 0x9

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jxmpp/stringprep/simple/SimpleXmppStringprep;->LOCALPART_FURTHER_EXCLUDED_CHARACTERS:[C

    return-void

    :array_0
    .array-data 2
        0x22s
        0x26s
        0x27s
        0x2fs
        0x3as
        0x3cs
        0x3es
        0x40s
        0x20s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static getInstance()Lorg/jxmpp/stringprep/simple/SimpleXmppStringprep;
    .locals 1

    .line 42
    sget-object v0, Lorg/jxmpp/stringprep/simple/SimpleXmppStringprep;->instance:Lorg/jxmpp/stringprep/simple/SimpleXmppStringprep;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lorg/jxmpp/stringprep/simple/SimpleXmppStringprep;

    invoke-direct {v0}, Lorg/jxmpp/stringprep/simple/SimpleXmppStringprep;-><init>()V

    sput-object v0, Lorg/jxmpp/stringprep/simple/SimpleXmppStringprep;->instance:Lorg/jxmpp/stringprep/simple/SimpleXmppStringprep;

    .line 45
    :cond_0
    sget-object v0, Lorg/jxmpp/stringprep/simple/SimpleXmppStringprep;->instance:Lorg/jxmpp/stringprep/simple/SimpleXmppStringprep;

    return-object v0
.end method

.method public static setup()V
    .locals 1

    .line 33
    invoke-static {}, Lorg/jxmpp/stringprep/simple/SimpleXmppStringprep;->getInstance()Lorg/jxmpp/stringprep/simple/SimpleXmppStringprep;

    move-result-object v0

    invoke-static {v0}, Lorg/jxmpp/stringprep/XmppStringPrepUtil;->setXmppStringprep(Lorg/jxmpp/stringprep/XmppStringprep;)V

    .line 34
    return-void
.end method

.method private static simpleStringprep(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .line 97
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "res":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public domainprep(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 83
    invoke-static {p1}, Lorg/jxmpp/stringprep/simple/SimpleXmppStringprep;->simpleStringprep(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public localprep(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 70
    invoke-static {p1}, Lorg/jxmpp/stringprep/simple/SimpleXmppStringprep;->simpleStringprep(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-char v4, v0, v3

    .line 72
    .local v4, "charFromString":C
    sget-object v5, Lorg/jxmpp/stringprep/simple/SimpleXmppStringprep;->LOCALPART_FURTHER_EXCLUDED_CHARACTERS:[C

    array-length v6, v5

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_1

    aget-char v8, v5, v7

    .line 73
    .local v8, "forbiddenChar":C
    if-eq v4, v8, :cond_0

    .line 72
    .end local v8    # "forbiddenChar":C
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 74
    .restart local v8    # "forbiddenChar":C
    :cond_0
    new-instance v0, Lorg/jxmpp/stringprep/XmppStringprepException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Localpart must not contain \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/jxmpp/stringprep/XmppStringprepException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 71
    .end local v4    # "charFromString":C
    .end local v8    # "forbiddenChar":C
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 78
    :cond_2
    return-object p1
.end method

.method public resourceprep(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 93
    return-object p1
.end method
