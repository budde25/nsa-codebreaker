.class public final Lorg/jivesoftware/smackx/privacy/filter/SetDefaultListFilter;
.super Lorg/jivesoftware/smack/filter/FlexibleStanzaTypeFilter;
.source "SetDefaultListFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/filter/FlexibleStanzaTypeFilter<",
        "Lorg/jivesoftware/smackx/privacy/packet/Privacy;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/jivesoftware/smackx/privacy/filter/SetDefaultListFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lorg/jivesoftware/smackx/privacy/filter/SetDefaultListFilter;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/privacy/filter/SetDefaultListFilter;-><init>()V

    sput-object v0, Lorg/jivesoftware/smackx/privacy/filter/SetDefaultListFilter;->INSTANCE:Lorg/jivesoftware/smackx/privacy/filter/SetDefaultListFilter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/jivesoftware/smack/filter/FlexibleStanzaTypeFilter;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method protected bridge synthetic acceptSpecific(Lorg/jivesoftware/smack/packet/Stanza;)Z
    .locals 0

    .line 24
    check-cast p1, Lorg/jivesoftware/smackx/privacy/packet/Privacy;

    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/privacy/filter/SetDefaultListFilter;->acceptSpecific(Lorg/jivesoftware/smackx/privacy/packet/Privacy;)Z

    move-result p1

    return p1
.end method

.method protected acceptSpecific(Lorg/jivesoftware/smackx/privacy/packet/Privacy;)Z
    .locals 3
    .param p1, "privacy"    # Lorg/jivesoftware/smackx/privacy/packet/Privacy;

    .line 33
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/privacy/packet/Privacy;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v0

    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->set:Lorg/jivesoftware/smack/packet/IQ$Type;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 34
    return v2

    .line 36
    :cond_0
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/privacy/packet/Privacy;->getDefaultName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/privacy/packet/Privacy;->isDeclineDefaultList()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method
