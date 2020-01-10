.class public final Lorg/jivesoftware/smack/filter/EmptyToMatcher;
.super Ljava/lang/Object;
.source "EmptyToMatcher.java"

# interfaces
.implements Lorg/jivesoftware/smack/filter/StanzaFilter;


# static fields
.field public static final INSTANCE:Lorg/jivesoftware/smack/filter/EmptyToMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lorg/jivesoftware/smack/filter/EmptyToMatcher;

    invoke-direct {v0}, Lorg/jivesoftware/smack/filter/EmptyToMatcher;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/filter/EmptyToMatcher;->INSTANCE:Lorg/jivesoftware/smack/filter/EmptyToMatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public accept(Lorg/jivesoftware/smack/packet/Stanza;)Z
    .locals 2
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 32
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Stanza;->getTo()Lorg/jxmpp/jid/Jid;

    move-result-object v0

    .line 33
    .local v0, "packetTo":Lorg/jxmpp/jid/Jid;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
