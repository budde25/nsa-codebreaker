.class public final Lorg/jivesoftware/smack/filter/MessageWithBodiesFilter;
.super Lorg/jivesoftware/smack/filter/FlexibleStanzaTypeFilter;
.source "MessageWithBodiesFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jivesoftware/smack/filter/FlexibleStanzaTypeFilter<",
        "Lorg/jivesoftware/smack/packet/Message;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/jivesoftware/smack/filter/StanzaFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lorg/jivesoftware/smack/filter/MessageWithBodiesFilter;

    invoke-direct {v0}, Lorg/jivesoftware/smack/filter/MessageWithBodiesFilter;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/filter/MessageWithBodiesFilter;->INSTANCE:Lorg/jivesoftware/smack/filter/StanzaFilter;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 30
    const-class v0, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/filter/FlexibleStanzaTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected acceptSpecific(Lorg/jivesoftware/smack/packet/Message;)Z
    .locals 1
    .param p1, "message"    # Lorg/jivesoftware/smack/packet/Message;

    .line 36
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getBodies()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected bridge synthetic acceptSpecific(Lorg/jivesoftware/smack/packet/Stanza;)Z
    .locals 0

    .line 25
    check-cast p1, Lorg/jivesoftware/smack/packet/Message;

    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/filter/MessageWithBodiesFilter;->acceptSpecific(Lorg/jivesoftware/smack/packet/Message;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
