.class public Lorg/jivesoftware/smack/sm/predicates/ShortcutPredicates;
.super Ljava/lang/Object;
.source "ShortcutPredicates.java"

# interfaces
.implements Lorg/jivesoftware/smack/filter/StanzaFilter;


# instance fields
.field private final predicates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jivesoftware/smack/filter/StanzaFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/sm/predicates/ShortcutPredicates;->predicates:Ljava/util/Set;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jivesoftware/smack/filter/StanzaFilter;",
            ">;)V"
        }
    .end annotation

    .line 33
    .local p1, "predicates":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jivesoftware/smack/filter/StanzaFilter;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/sm/predicates/ShortcutPredicates;->predicates:Ljava/util/Set;

    .line 34
    iget-object v0, p0, Lorg/jivesoftware/smack/sm/predicates/ShortcutPredicates;->predicates:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 35
    return-void
.end method


# virtual methods
.method public accept(Lorg/jivesoftware/smack/packet/Stanza;)Z
    .locals 3
    .param p1, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 47
    iget-object v0, p0, Lorg/jivesoftware/smack/sm/predicates/ShortcutPredicates;->predicates:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 48
    .local v1, "predicate":Lorg/jivesoftware/smack/filter/StanzaFilter;
    invoke-interface {v1, p1}, Lorg/jivesoftware/smack/filter/StanzaFilter;->accept(Lorg/jivesoftware/smack/packet/Stanza;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    const/4 v0, 0x1

    return v0

    .line 51
    .end local v1    # "predicate":Lorg/jivesoftware/smack/filter/StanzaFilter;
    :cond_0
    goto :goto_0

    .line 52
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public addPredicate(Lorg/jivesoftware/smack/filter/StanzaFilter;)Z
    .locals 1
    .param p1, "predicate"    # Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 38
    iget-object v0, p0, Lorg/jivesoftware/smack/sm/predicates/ShortcutPredicates;->predicates:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removePredicate(Lorg/jivesoftware/smack/filter/StanzaFilter;)Z
    .locals 1
    .param p1, "prediacte"    # Lorg/jivesoftware/smack/filter/StanzaFilter;

    .line 42
    iget-object v0, p0, Lorg/jivesoftware/smack/sm/predicates/ShortcutPredicates;->predicates:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
