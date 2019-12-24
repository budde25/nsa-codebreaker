.class public Lorg/jivesoftware/smack/filter/NotFilter;
.super Ljava/lang/Object;
.source "NotFilter.java"

# interfaces
.implements Lorg/jivesoftware/smack/filter/StanzaFilter;


# instance fields
.field private final filter:Lorg/jivesoftware/smack/filter/StanzaFilter;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/filter/StanzaFilter;)V
    .locals 1
    .param p1, "filter"    # Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "Parameter must not be null."

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/filter/StanzaFilter;

    iput-object v0, p0, Lorg/jivesoftware/smack/filter/NotFilter;->filter:Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 40
    return-void
.end method


# virtual methods
.method public accept(Lorg/jivesoftware/smack/packet/Stanza;)Z
    .locals 1
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 44
    iget-object v0, p0, Lorg/jivesoftware/smack/filter/NotFilter;->filter:Lorg/jivesoftware/smack/filter/StanzaFilter;

    invoke-interface {v0, p1}, Lorg/jivesoftware/smack/filter/StanzaFilter;->accept(Lorg/jivesoftware/smack/packet/Stanza;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
