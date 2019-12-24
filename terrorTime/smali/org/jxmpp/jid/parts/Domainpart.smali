.class public Lorg/jxmpp/jid/parts/Domainpart;
.super Lorg/jxmpp/jid/parts/Part;
.source "Domainpart.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "domain"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Lorg/jxmpp/jid/parts/Part;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static from(Ljava/lang/String;)Lorg/jxmpp/jid/parts/Domainpart;
    .locals 2
    .param p0, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 81
    if-eqz p0, :cond_1

    .line 87
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 90
    :cond_0
    invoke-static {p0}, Lorg/jxmpp/stringprep/XmppStringPrepUtil;->domainprep(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 92
    invoke-static {p0}, Lorg/jxmpp/jid/parts/Domainpart;->assertNotLongerThan1023BytesOrEmpty(Ljava/lang/String;)V

    .line 93
    new-instance v0, Lorg/jxmpp/jid/parts/Domainpart;

    invoke-direct {v0, p0}, Lorg/jxmpp/jid/parts/Domainpart;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 82
    :cond_1
    new-instance v0, Lorg/jxmpp/stringprep/XmppStringprepException;

    const-string v1, "Input \'domain\' must not be null"

    invoke-direct {v0, p0, v1}, Lorg/jxmpp/stringprep/XmppStringprepException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public static fromOrNull(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/parts/Domainpart;
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 49
    :try_start_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jxmpp/jid/parts/Domainpart;->from(Ljava/lang/String;)Lorg/jxmpp/jid/parts/Domainpart;

    move-result-object v0
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static fromOrThrowUnchecked(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/parts/Domainpart;
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 67
    :try_start_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jxmpp/jid/parts/Domainpart;->from(Ljava/lang/String;)Lorg/jxmpp/jid/parts/Domainpart;

    move-result-object v0
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
