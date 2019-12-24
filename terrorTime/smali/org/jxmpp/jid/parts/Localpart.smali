.class public Lorg/jxmpp/jid/parts/Localpart;
.super Lorg/jxmpp/jid/parts/Part;
.source "Localpart.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient unescapedCache:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "localpart"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0, p1}, Lorg/jxmpp/jid/parts/Part;-><init>(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static formUnescapedOrNull(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/parts/Localpart;
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 112
    :try_start_0
    invoke-static {p0}, Lorg/jxmpp/jid/parts/Localpart;->fromUnescaped(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/parts/Localpart;

    move-result-object v0
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static from(Ljava/lang/String;)Lorg/jxmpp/jid/parts/Localpart;
    .locals 1
    .param p0, "localpart"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 165
    invoke-static {p0}, Lorg/jxmpp/stringprep/XmppStringPrepUtil;->localprep(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 167
    invoke-static {p0}, Lorg/jxmpp/jid/parts/Localpart;->assertNotLongerThan1023BytesOrEmpty(Ljava/lang/String;)V

    .line 168
    new-instance v0, Lorg/jxmpp/jid/parts/Localpart;

    invoke-direct {v0, p0}, Lorg/jxmpp/jid/parts/Localpart;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromOrNull(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/parts/Localpart;
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 151
    :try_start_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jxmpp/jid/parts/Localpart;->from(Ljava/lang/String;)Lorg/jxmpp/jid/parts/Localpart;

    move-result-object v0
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static fromOrThrowUnchecked(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/parts/Localpart;
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 81
    :try_start_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jxmpp/jid/parts/Localpart;->from(Ljava/lang/String;)Lorg/jxmpp/jid/parts/Localpart;

    move-result-object v0
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static fromUnescaped(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/parts/Localpart;
    .locals 1
    .param p0, "unescapedLocalpart"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 140
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jxmpp/jid/parts/Localpart;->fromUnescaped(Ljava/lang/String;)Lorg/jxmpp/jid/parts/Localpart;

    move-result-object v0

    return-object v0
.end method

.method public static fromUnescaped(Ljava/lang/String;)Lorg/jxmpp/jid/parts/Localpart;
    .locals 2
    .param p0, "unescapedLocalpart"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 127
    invoke-static {p0}, Lorg/jxmpp/util/XmppStringUtils;->escapeLocalpart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "escapedLocalpartString":Ljava/lang/String;
    invoke-static {v0}, Lorg/jxmpp/jid/parts/Localpart;->from(Ljava/lang/String;)Lorg/jxmpp/jid/parts/Localpart;

    move-result-object v1

    return-object v1
.end method

.method public static fromUnescapedOrThrowUnchecked(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/parts/Localpart;
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 98
    :try_start_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jxmpp/jid/parts/Localpart;->fromUnescaped(Ljava/lang/String;)Lorg/jxmpp/jid/parts/Localpart;

    move-result-object v0
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public asUnescapedString()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/jxmpp/jid/parts/Localpart;->unescapedCache:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 63
    return-object v0

    .line 65
    :cond_0
    invoke-virtual {p0}, Lorg/jxmpp/jid/parts/Localpart;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jxmpp/util/XmppStringUtils;->unescapeLocalpart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jxmpp/jid/parts/Localpart;->unescapedCache:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lorg/jxmpp/jid/parts/Localpart;->unescapedCache:Ljava/lang/String;

    return-object v0
.end method
