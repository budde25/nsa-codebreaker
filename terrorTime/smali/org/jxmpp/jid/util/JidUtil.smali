.class public Lorg/jxmpp/jid/util/JidUtil;
.super Ljava/lang/Object;
.source "JidUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jxmpp/jid/util/JidUtil$NotAEntityBareJidStringException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static entityBareJidSetFrom(Ljava/util/Collection;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Ljava/util/Set<",
            "Lorg/jxmpp/jid/EntityBareJid;",
            ">;"
        }
    .end annotation

    .line 283
    .local p0, "jidStrings":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/CharSequence;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 284
    .local v0, "res":Ljava/util/Set;, "Ljava/util/Set<Lorg/jxmpp/jid/EntityBareJid;>;"
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/jxmpp/jid/util/JidUtil;->entityBareJidsFrom(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;)V

    .line 285
    return-object v0
.end method

.method public static entityBareJidsFrom(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/Collection<",
            "-",
            "Lorg/jxmpp/jid/EntityBareJid;",
            ">;",
            "Ljava/util/List<",
            "Lorg/jxmpp/stringprep/XmppStringprepException;",
            ">;)V"
        }
    .end annotation

    .line 304
    .local p0, "jidStrings":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/CharSequence;>;"
    .local p1, "output":Ljava/util/Collection;, "Ljava/util/Collection<-Lorg/jxmpp/jid/EntityBareJid;>;"
    .local p2, "exceptions":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/stringprep/XmppStringprepException;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 306
    .local v1, "jid":Ljava/lang/CharSequence;
    :try_start_0
    invoke-static {v1}, Lorg/jxmpp/jid/impl/JidCreate;->entityBareFrom(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v2

    .line 307
    .local v2, "bareJid":Lorg/jxmpp/jid/EntityBareJid;
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    nop

    .end local v2    # "bareJid":Lorg/jxmpp/jid/EntityBareJid;
    goto :goto_1

    .line 308
    :catch_0
    move-exception v2

    .line 309
    .local v2, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    if-eqz p2, :cond_0

    .line 310
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    .end local v1    # "jid":Ljava/lang/CharSequence;
    .end local v2    # "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    :goto_1
    goto :goto_0

    .line 312
    .restart local v1    # "jid":Ljava/lang/CharSequence;
    .restart local v2    # "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 316
    .end local v1    # "jid":Ljava/lang/CharSequence;
    .end local v2    # "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    :cond_1
    return-void
.end method

.method public static filterDomainFullJid(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jxmpp/jid/Jid;",
            ">;",
            "Ljava/util/Collection<",
            "-",
            "Lorg/jxmpp/jid/DomainFullJid;",
            ">;)V"
        }
    .end annotation

    .line 244
    .local p0, "in":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jxmpp/jid/Jid;>;"
    .local p1, "out":Ljava/util/Collection;, "Ljava/util/Collection<-Lorg/jxmpp/jid/DomainFullJid;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jxmpp/jid/Jid;

    .line 245
    .local v1, "jid":Lorg/jxmpp/jid/Jid;
    invoke-interface {v1}, Lorg/jxmpp/jid/Jid;->asDomainFullJidIfPossible()Lorg/jxmpp/jid/DomainFullJid;

    move-result-object v2

    .line 246
    .local v2, "domainFullJid":Lorg/jxmpp/jid/DomainFullJid;
    if-eqz v2, :cond_0

    .line 247
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 249
    .end local v1    # "jid":Lorg/jxmpp/jid/Jid;
    .end local v2    # "domainFullJid":Lorg/jxmpp/jid/DomainFullJid;
    :cond_0
    goto :goto_0

    .line 250
    :cond_1
    return-void
.end method

.method public static filterDomainFullJidList(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jxmpp/jid/Jid;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/jxmpp/jid/DomainFullJid;",
            ">;"
        }
    .end annotation

    .line 271
    .local p0, "input":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jxmpp/jid/Jid;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 272
    .local v0, "res":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/jid/DomainFullJid;>;"
    invoke-static {p0, v0}, Lorg/jxmpp/jid/util/JidUtil;->filterDomainFullJid(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 273
    return-object v0
.end method

.method public static filterDomainFullJidSet(Ljava/util/Collection;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jxmpp/jid/Jid;",
            ">;)",
            "Ljava/util/Set<",
            "Lorg/jxmpp/jid/DomainFullJid;",
            ">;"
        }
    .end annotation

    .line 259
    .local p0, "input":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jxmpp/jid/Jid;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 260
    .local v0, "res":Ljava/util/Set;, "Ljava/util/Set<Lorg/jxmpp/jid/DomainFullJid;>;"
    invoke-static {p0, v0}, Lorg/jxmpp/jid/util/JidUtil;->filterDomainFullJid(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 261
    return-object v0
.end method

.method public static filterEntityBareJid(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jxmpp/jid/Jid;",
            ">;",
            "Ljava/util/Collection<",
            "-",
            "Lorg/jxmpp/jid/EntityBareJid;",
            ">;)V"
        }
    .end annotation

    .line 166
    .local p0, "in":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jxmpp/jid/Jid;>;"
    .local p1, "out":Ljava/util/Collection;, "Ljava/util/Collection<-Lorg/jxmpp/jid/EntityBareJid;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jxmpp/jid/Jid;

    .line 167
    .local v1, "jid":Lorg/jxmpp/jid/Jid;
    invoke-interface {v1}, Lorg/jxmpp/jid/Jid;->asEntityBareJidIfPossible()Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v2

    .line 168
    .local v2, "bareJid":Lorg/jxmpp/jid/EntityBareJid;
    if-eqz v2, :cond_0

    .line 169
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 171
    .end local v1    # "jid":Lorg/jxmpp/jid/Jid;
    .end local v2    # "bareJid":Lorg/jxmpp/jid/EntityBareJid;
    :cond_0
    goto :goto_0

    .line 172
    :cond_1
    return-void
.end method

.method public static filterEntityBareJidList(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jxmpp/jid/Jid;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/jxmpp/jid/EntityBareJid;",
            ">;"
        }
    .end annotation

    .line 193
    .local p0, "input":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jxmpp/jid/Jid;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 194
    .local v0, "res":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/jid/EntityBareJid;>;"
    invoke-static {p0, v0}, Lorg/jxmpp/jid/util/JidUtil;->filterEntityBareJid(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 195
    return-object v0
.end method

.method public static filterEntityBareJidSet(Ljava/util/Collection;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jxmpp/jid/Jid;",
            ">;)",
            "Ljava/util/Set<",
            "Lorg/jxmpp/jid/EntityBareJid;",
            ">;"
        }
    .end annotation

    .line 181
    .local p0, "input":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jxmpp/jid/Jid;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 182
    .local v0, "res":Ljava/util/Set;, "Ljava/util/Set<Lorg/jxmpp/jid/EntityBareJid;>;"
    invoke-static {p0, v0}, Lorg/jxmpp/jid/util/JidUtil;->filterEntityBareJid(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 183
    return-object v0
.end method

.method public static filterEntityFullJid(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jxmpp/jid/Jid;",
            ">;",
            "Ljava/util/Collection<",
            "-",
            "Lorg/jxmpp/jid/EntityFullJid;",
            ">;)V"
        }
    .end annotation

    .line 205
    .local p0, "in":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jxmpp/jid/Jid;>;"
    .local p1, "out":Ljava/util/Collection;, "Ljava/util/Collection<-Lorg/jxmpp/jid/EntityFullJid;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jxmpp/jid/Jid;

    .line 206
    .local v1, "jid":Lorg/jxmpp/jid/Jid;
    invoke-interface {v1}, Lorg/jxmpp/jid/Jid;->asEntityFullJidIfPossible()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v2

    .line 207
    .local v2, "fullJid":Lorg/jxmpp/jid/EntityFullJid;
    if-eqz v2, :cond_0

    .line 208
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 210
    .end local v1    # "jid":Lorg/jxmpp/jid/Jid;
    .end local v2    # "fullJid":Lorg/jxmpp/jid/EntityFullJid;
    :cond_0
    goto :goto_0

    .line 211
    :cond_1
    return-void
.end method

.method public static filterEntityFullJidList(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jxmpp/jid/Jid;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/jxmpp/jid/EntityFullJid;",
            ">;"
        }
    .end annotation

    .line 232
    .local p0, "input":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jxmpp/jid/Jid;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 233
    .local v0, "res":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/jid/EntityFullJid;>;"
    invoke-static {p0, v0}, Lorg/jxmpp/jid/util/JidUtil;->filterEntityFullJid(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 234
    return-object v0
.end method

.method public static filterEntityFullJidSet(Ljava/util/Collection;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jxmpp/jid/Jid;",
            ">;)",
            "Ljava/util/Set<",
            "Lorg/jxmpp/jid/EntityFullJid;",
            ">;"
        }
    .end annotation

    .line 220
    .local p0, "input":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jxmpp/jid/Jid;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 221
    .local v0, "res":Ljava/util/Set;, "Ljava/util/Set<Lorg/jxmpp/jid/EntityFullJid;>;"
    invoke-static {p0, v0}, Lorg/jxmpp/jid/util/JidUtil;->filterEntityFullJid(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 222
    return-object v0
.end method

.method public static isTypicalValidEntityBareJid(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p0, "jid"    # Ljava/lang/CharSequence;

    .line 51
    :try_start_0
    invoke-static {p0}, Lorg/jxmpp/jid/util/JidUtil;->validateTypicalEntityBareJid(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/EntityBareJid;
    :try_end_0
    .catch Lorg/jxmpp/jid/util/JidUtil$NotAEntityBareJidStringException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    nop

    .line 55
    const/4 v0, 0x1

    return v0

    .line 52
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isValidEntityBareJid(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p0, "jid"    # Ljava/lang/CharSequence;

    .line 99
    :try_start_0
    invoke-static {p0}, Lorg/jxmpp/jid/util/JidUtil;->validateEntityBareJid(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/EntityBareJid;
    :try_end_0
    .catch Lorg/jxmpp/jid/util/JidUtil$NotAEntityBareJidStringException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    nop

    .line 103
    const/4 v0, 0x1

    return v0

    .line 100
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public static jidSetFrom(Ljava/util/Collection;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Ljava/util/Set<",
            "Lorg/jxmpp/jid/Jid;",
            ">;"
        }
    .end annotation

    .line 338
    .local p0, "jidStrings":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/CharSequence;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 339
    .local v0, "res":Ljava/util/Set;, "Ljava/util/Set<Lorg/jxmpp/jid/Jid;>;"
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/jxmpp/jid/util/JidUtil;->jidsFrom(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;)V

    .line 340
    return-object v0
.end method

.method public static jidSetFrom([Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .param p0, "jids"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lorg/jxmpp/jid/Jid;",
            ">;"
        }
    .end annotation

    .line 328
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/jxmpp/jid/util/JidUtil;->jidSetFrom(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static jidsFrom(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/Collection<",
            "-",
            "Lorg/jxmpp/jid/Jid;",
            ">;",
            "Ljava/util/List<",
            "Lorg/jxmpp/stringprep/XmppStringprepException;",
            ">;)V"
        }
    .end annotation

    .line 359
    .local p0, "jidStrings":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/CharSequence;>;"
    .local p1, "output":Ljava/util/Collection;, "Ljava/util/Collection<-Lorg/jxmpp/jid/Jid;>;"
    .local p2, "exceptions":Ljava/util/List;, "Ljava/util/List<Lorg/jxmpp/stringprep/XmppStringprepException;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 361
    .local v1, "jidString":Ljava/lang/CharSequence;
    :try_start_0
    invoke-static {v1}, Lorg/jxmpp/jid/impl/JidCreate;->from(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/Jid;

    move-result-object v2

    .line 362
    .local v2, "jid":Lorg/jxmpp/jid/Jid;
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/jxmpp/stringprep/XmppStringprepException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    nop

    .end local v2    # "jid":Lorg/jxmpp/jid/Jid;
    goto :goto_1

    .line 363
    :catch_0
    move-exception v2

    .line 364
    .local v2, "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    if-eqz p2, :cond_0

    .line 365
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    .end local v1    # "jidString":Ljava/lang/CharSequence;
    .end local v2    # "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    :goto_1
    goto :goto_0

    .line 367
    .restart local v1    # "jidString":Ljava/lang/CharSequence;
    .restart local v2    # "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 371
    .end local v1    # "jidString":Ljava/lang/CharSequence;
    .end local v2    # "e":Lorg/jxmpp/stringprep/XmppStringprepException;
    :cond_1
    return-void
.end method

.method public static toStringList(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jxmpp/jid/Jid;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 380
    .local p0, "jids":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jxmpp/jid/Jid;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 381
    .local v0, "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, v0}, Lorg/jxmpp/jid/util/JidUtil;->toStrings(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 382
    return-object v0
.end method

.method public static toStringSet(Ljava/util/Collection;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jxmpp/jid/Jid;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 392
    .local p0, "jids":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jxmpp/jid/Jid;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 393
    .local v0, "res":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0, v0}, Lorg/jxmpp/jid/util/JidUtil;->toStrings(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 394
    return-object v0
.end method

.method public static toStrings(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jxmpp/jid/Jid;",
            ">;",
            "Ljava/util/Collection<",
            "-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 404
    .local p0, "jids":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jxmpp/jid/Jid;>;"
    .local p1, "jidStrings":Ljava/util/Collection;, "Ljava/util/Collection<-Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jxmpp/jid/Jid;

    .line 405
    .local v1, "jid":Lorg/jxmpp/jid/Jid;
    invoke-interface {v1}, Lorg/jxmpp/jid/Jid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 406
    .end local v1    # "jid":Lorg/jxmpp/jid/Jid;
    goto :goto_0

    .line 407
    :cond_0
    return-void
.end method

.method public static validateEntityBareJid(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/EntityBareJid;
    .locals 7
    .param p0, "jidcs"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/jid/util/JidUtil$NotAEntityBareJidStringException;,
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 125
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "jid":Ljava/lang/String;
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 127
    .local v2, "atIndex":I
    const/4 v3, -0x1

    const-string v4, "\'"

    if-eq v2, v3, :cond_3

    .line 129
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 132
    invoke-static {v0}, Lorg/jxmpp/util/XmppStringUtils;->parseLocalpart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "localpart":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    invoke-static {v0}, Lorg/jxmpp/util/XmppStringUtils;->parseDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "domainpart":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 140
    invoke-static {v0}, Lorg/jxmpp/jid/impl/JidCreate;->entityBareFromUnescaped(Ljava/lang/String;)Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v4

    return-object v4

    .line 138
    :cond_0
    new-instance v5, Lorg/jxmpp/jid/util/JidUtil$NotAEntityBareJidStringException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' has empty domainpart"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/jxmpp/jid/util/JidUtil$NotAEntityBareJidStringException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 134
    .end local v3    # "domainpart":Ljava/lang/String;
    :cond_1
    new-instance v3, Lorg/jxmpp/jid/util/JidUtil$NotAEntityBareJidStringException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' has empty localpart"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jxmpp/jid/util/JidUtil$NotAEntityBareJidStringException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 130
    .end local v1    # "localpart":Ljava/lang/String;
    :cond_2
    new-instance v1, Lorg/jxmpp/jid/util/JidUtil$NotAEntityBareJidStringException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' contains multiple \'@\' characters"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/jxmpp/jid/util/JidUtil$NotAEntityBareJidStringException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    :cond_3
    new-instance v1, Lorg/jxmpp/jid/util/JidUtil$NotAEntityBareJidStringException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' does not contain a \'@\' character"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/jxmpp/jid/util/JidUtil$NotAEntityBareJidStringException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static validateTypicalEntityBareJid(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/EntityBareJid;
    .locals 3
    .param p0, "jidcs"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/jid/util/JidUtil$NotAEntityBareJidStringException;,
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 75
    invoke-static {p0}, Lorg/jxmpp/jid/util/JidUtil;->validateEntityBareJid(Ljava/lang/CharSequence;)Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v0

    .line 76
    .local v0, "jid":Lorg/jxmpp/jid/EntityBareJid;
    invoke-interface {v0}, Lorg/jxmpp/jid/EntityBareJid;->getDomain()Lorg/jxmpp/jid/parts/Domainpart;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jxmpp/jid/parts/Domainpart;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 79
    return-object v0

    .line 77
    :cond_0
    new-instance v1, Lorg/jxmpp/jid/util/JidUtil$NotAEntityBareJidStringException;

    const-string v2, "Domainpart does not include a dot (\'.\') character"

    invoke-direct {v1, v2}, Lorg/jxmpp/jid/util/JidUtil$NotAEntityBareJidStringException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
