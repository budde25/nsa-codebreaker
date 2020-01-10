.class public Lorg/jxmpp/jid/parts/Resourcepart;
.super Lorg/jxmpp/jid/parts/Part;
.source "Resourcepart.java"


# static fields
.field public static final EMPTY:Lorg/jxmpp/jid/parts/Resourcepart;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lorg/jxmpp/jid/parts/Resourcepart;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/jxmpp/jid/parts/Resourcepart;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jxmpp/jid/parts/Resourcepart;->EMPTY:Lorg/jxmpp/jid/parts/Resourcepart;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "resource"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Lorg/jxmpp/jid/parts/Part;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static from(Ljava/lang/String;)Lorg/jxmpp/jid/parts/Resourcepart;
    .locals 1
    .param p0, "resource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 91
    invoke-static {p0}, Lorg/jxmpp/stringprep/XmppStringPrepUtil;->resourceprep(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 93
    invoke-static {p0}, Lorg/jxmpp/jid/parts/Resourcepart;->assertNotLongerThan1023BytesOrEmpty(Ljava/lang/String;)V

    .line 94
    new-instance v0, Lorg/jxmpp/jid/parts/Resourcepart;

    invoke-direct {v0, p0}, Lorg/jxmpp/jid/parts/Resourcepart;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromOrNull(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/parts/Resourcepart;
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 59
    :try_start_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jxmpp/jid/parts/Resourcepart;->from(Ljava/lang/String;)Lorg/jxmpp/jid/parts/Resourcepart;

    move-result-object v0
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static fromOrThrowUnchecked(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/parts/Resourcepart;
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 77
    :try_start_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jxmpp/jid/parts/Resourcepart;->from(Ljava/lang/String;)Lorg/jxmpp/jid/parts/Resourcepart;

    move-result-object v0
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
