.class public Lorg/jivesoftware/smack/filter/OrFilter;
.super Lorg/jivesoftware/smack/filter/AbstractListFilter;
.source "OrFilter.java"

# interfaces
.implements Lorg/jivesoftware/smack/filter/StanzaFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/jivesoftware/smack/filter/AbstractListFilter;-><init>()V

    .line 36
    return-void
.end method

.method public varargs constructor <init>([Lorg/jivesoftware/smack/filter/StanzaFilter;)V
    .locals 0
    .param p1, "filters"    # [Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 44
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/filter/AbstractListFilter;-><init>([Lorg/jivesoftware/smack/filter/StanzaFilter;)V

    .line 45
    return-void
.end method


# virtual methods
.method public accept(Lorg/jivesoftware/smack/packet/Stanza;)Z
    .locals 3
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 49
    iget-object v0, p0, Lorg/jivesoftware/smack/filter/OrFilter;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 50
    .local v1, "filter":Lorg/jivesoftware/smack/filter/StanzaFilter;
    invoke-interface {v1, p1}, Lorg/jivesoftware/smack/filter/StanzaFilter;->accept(Lorg/jivesoftware/smack/packet/Stanza;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    const/4 v0, 0x1

    return v0

    .line 53
    .end local v1    # "filter":Lorg/jivesoftware/smack/filter/StanzaFilter;
    :cond_0
    goto :goto_0

    .line 54
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
