.class public abstract Lorg/jxmpp/jid/impl/AbstractJid;
.super Ljava/lang/Object;
.source "AbstractJid.java"

# interfaces
.implements Lorg/jxmpp/jid/Jid;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected cache:Ljava/lang/String;

.field private transient internalizedCache:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(TO;",
            "Ljava/lang/String;",
            ")TO;"
        }
    .end annotation

    .line 240
    .local p0, "object":Ljava/lang/Object;, "TO;"
    if-eqz p0, :cond_0

    .line 241
    return-object p0

    .line 243
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwIse(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The JID \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "exceptionMessage":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public asDomainFullJidOrThrow()Lorg/jxmpp/jid/DomainFullJid;
    .locals 2

    .line 129
    invoke-virtual {p0}, Lorg/jxmpp/jid/impl/AbstractJid;->asDomainFullJidIfPossible()Lorg/jxmpp/jid/DomainFullJid;

    move-result-object v0

    .line 130
    .local v0, "domainFullJid":Lorg/jxmpp/jid/DomainFullJid;
    if-nez v0, :cond_0

    const-string v1, "can not be converted to DomainFullJid"

    invoke-direct {p0, v1}, Lorg/jxmpp/jid/impl/AbstractJid;->throwIse(Ljava/lang/String;)V

    .line 131
    :cond_0
    return-object v0
.end method

.method public final asEntityBareJidOrThrow()Lorg/jxmpp/jid/EntityBareJid;
    .locals 2

    .line 101
    invoke-virtual {p0}, Lorg/jxmpp/jid/impl/AbstractJid;->asEntityBareJidIfPossible()Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v0

    .line 102
    .local v0, "entityBareJid":Lorg/jxmpp/jid/EntityBareJid;
    if-nez v0, :cond_0

    const-string v1, "can not be converted to EntityBareJid"

    invoke-direct {p0, v1}, Lorg/jxmpp/jid/impl/AbstractJid;->throwIse(Ljava/lang/String;)V

    .line 103
    :cond_0
    return-object v0
.end method

.method public asEntityFullJidOrThrow()Lorg/jxmpp/jid/EntityFullJid;
    .locals 2

    .line 108
    invoke-virtual {p0}, Lorg/jxmpp/jid/impl/AbstractJid;->asEntityFullJidIfPossible()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v0

    .line 109
    .local v0, "entityFullJid":Lorg/jxmpp/jid/EntityFullJid;
    if-nez v0, :cond_0

    const-string v1, "can not be converted to EntityFullJid"

    invoke-direct {p0, v1}, Lorg/jxmpp/jid/impl/AbstractJid;->throwIse(Ljava/lang/String;)V

    .line 110
    :cond_0
    return-object v0
.end method

.method public asEntityJidOrThrow()Lorg/jxmpp/jid/EntityJid;
    .locals 2

    .line 115
    invoke-virtual {p0}, Lorg/jxmpp/jid/impl/AbstractJid;->asEntityJidIfPossible()Lorg/jxmpp/jid/EntityJid;

    move-result-object v0

    .line 116
    .local v0, "entityJid":Lorg/jxmpp/jid/EntityJid;
    if-nez v0, :cond_0

    const-string v1, "can not be converted to EntityJid"

    invoke-direct {p0, v1}, Lorg/jxmpp/jid/impl/AbstractJid;->throwIse(Ljava/lang/String;)V

    .line 117
    :cond_0
    return-object v0
.end method

.method public asFullJidOrThrow()Lorg/jxmpp/jid/EntityFullJid;
    .locals 2

    .line 122
    invoke-virtual {p0}, Lorg/jxmpp/jid/impl/AbstractJid;->asEntityFullJidIfPossible()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v0

    .line 123
    .local v0, "entityFullJid":Lorg/jxmpp/jid/EntityFullJid;
    if-nez v0, :cond_0

    const-string v1, "can not be converted to EntityBareJid"

    invoke-direct {p0, v1}, Lorg/jxmpp/jid/impl/AbstractJid;->throwIse(Ljava/lang/String;)V

    .line 124
    :cond_0
    return-object v0
.end method

.method public charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 29
    check-cast p1, Lorg/jxmpp/jid/Jid;

    invoke-virtual {p0, p1}, Lorg/jxmpp/jid/impl/AbstractJid;->compareTo(Lorg/jxmpp/jid/Jid;)I

    move-result p1

    return p1
.end method

.method public final compareTo(Lorg/jxmpp/jid/Jid;)I
    .locals 3
    .param p1, "other"    # Lorg/jxmpp/jid/Jid;

    .line 215
    invoke-interface {p1}, Lorg/jxmpp/jid/Jid;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "otherString":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "myString":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public final downcast(Ljava/lang/Class;)Lorg/jxmpp/jid/Jid;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/jxmpp/jid/Jid;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 81
    .local p1, "jidClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jxmpp/jid/Jid;

    return-object v0
.end method

.method public final equals(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .line 201
    if-nez p1, :cond_0

    .line 202
    const/4 v0, 0x0

    return v0

    .line 204
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jxmpp/jid/impl/AbstractJid;->equals(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 186
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 187
    return v0

    .line 189
    :cond_0
    if-ne p0, p1, :cond_1

    .line 190
    const/4 v0, 0x1

    return v0

    .line 192
    :cond_1
    instance-of v1, p1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 193
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lorg/jxmpp/jid/impl/AbstractJid;->equals(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 195
    :cond_2
    return v0
.end method

.method public final equals(Ljava/lang/String;)Z
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 210
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract getLocalpartOrNull()Lorg/jxmpp/jid/parts/Localpart;
.end method

.method public final getLocalpartOrThrow()Lorg/jxmpp/jid/parts/Localpart;
    .locals 2

    .line 156
    invoke-virtual {p0}, Lorg/jxmpp/jid/impl/AbstractJid;->getLocalpartOrNull()Lorg/jxmpp/jid/parts/Localpart;

    move-result-object v0

    .line 157
    .local v0, "localpart":Lorg/jxmpp/jid/parts/Localpart;
    if-nez v0, :cond_0

    const-string v1, "has no localpart"

    invoke-direct {p0, v1}, Lorg/jxmpp/jid/impl/AbstractJid;->throwIse(Ljava/lang/String;)V

    .line 158
    :cond_0
    return-object v0
.end method

.method public final getResourceOrEmpty()Lorg/jxmpp/jid/parts/Resourcepart;
    .locals 2

    .line 139
    invoke-virtual {p0}, Lorg/jxmpp/jid/impl/AbstractJid;->getResourceOrNull()Lorg/jxmpp/jid/parts/Resourcepart;

    move-result-object v0

    .line 140
    .local v0, "resourcepart":Lorg/jxmpp/jid/parts/Resourcepart;
    if-nez v0, :cond_0

    sget-object v1, Lorg/jxmpp/jid/parts/Resourcepart;->EMPTY:Lorg/jxmpp/jid/parts/Resourcepart;

    return-object v1

    .line 141
    :cond_0
    return-object v0
.end method

.method public abstract getResourceOrNull()Lorg/jxmpp/jid/parts/Resourcepart;
.end method

.method public final getResourceOrThrow()Lorg/jxmpp/jid/parts/Resourcepart;
    .locals 2

    .line 146
    invoke-virtual {p0}, Lorg/jxmpp/jid/impl/AbstractJid;->getResourceOrNull()Lorg/jxmpp/jid/parts/Resourcepart;

    move-result-object v0

    .line 147
    .local v0, "resourcepart":Lorg/jxmpp/jid/parts/Resourcepart;
    if-nez v0, :cond_0

    const-string v1, "has no resourcepart"

    invoke-direct {p0, v1}, Lorg/jxmpp/jid/impl/AbstractJid;->throwIse(Ljava/lang/String;)V

    .line 148
    :cond_0
    return-object v0
.end method

.method public final hasLocalpart()Z
    .locals 1

    .line 76
    instance-of v0, p0, Lorg/jxmpp/jid/EntityJid;

    return v0
.end method

.method public abstract hasNoResource()Z
.end method

.method public final hasResource()Z
    .locals 1

    .line 71
    instance-of v0, p0, Lorg/jxmpp/jid/FullJid;

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final intern()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lorg/jxmpp/jid/impl/AbstractJid;->internalizedCache:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 229
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jxmpp/jid/impl/AbstractJid;->internalizedCache:Ljava/lang/String;

    iput-object v0, p0, Lorg/jxmpp/jid/impl/AbstractJid;->cache:Ljava/lang/String;

    .line 231
    :cond_0
    iget-object v0, p0, Lorg/jxmpp/jid/impl/AbstractJid;->internalizedCache:Ljava/lang/String;

    return-object v0
.end method

.method public final isDomainBareJid()Z
    .locals 1

    .line 58
    instance-of v0, p0, Lorg/jxmpp/jid/DomainBareJid;

    return v0
.end method

.method public final isDomainFullJid()Z
    .locals 1

    .line 63
    instance-of v0, p0, Lorg/jxmpp/jid/DomainFullJid;

    return v0
.end method

.method public final isEntityBareJid()Z
    .locals 1

    .line 48
    instance-of v0, p0, Lorg/jxmpp/jid/EntityBareJid;

    return v0
.end method

.method public final isEntityFullJid()Z
    .locals 1

    .line 53
    instance-of v0, p0, Lorg/jxmpp/jid/EntityFullJid;

    return v0
.end method

.method public final isEntityJid()Z
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/jxmpp/jid/impl/AbstractJid;->isEntityBareJid()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/jxmpp/jid/impl/AbstractJid;->isEntityFullJid()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final isParentOf(Lorg/jxmpp/jid/Jid;)Z
    .locals 4
    .param p1, "jid"    # Lorg/jxmpp/jid/Jid;

    .line 163
    invoke-interface {p1}, Lorg/jxmpp/jid/Jid;->asEntityFullJidIfPossible()Lorg/jxmpp/jid/EntityFullJid;

    move-result-object v0

    .line 164
    .local v0, "fullJid":Lorg/jxmpp/jid/EntityFullJid;
    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0, v0}, Lorg/jxmpp/jid/impl/AbstractJid;->isParentOf(Lorg/jxmpp/jid/EntityFullJid;)Z

    move-result v1

    return v1

    .line 167
    :cond_0
    invoke-interface {p1}, Lorg/jxmpp/jid/Jid;->asEntityBareJidIfPossible()Lorg/jxmpp/jid/EntityBareJid;

    move-result-object v1

    .line 168
    .local v1, "bareJid":Lorg/jxmpp/jid/EntityBareJid;
    if-eqz v1, :cond_1

    .line 169
    invoke-virtual {p0, v1}, Lorg/jxmpp/jid/impl/AbstractJid;->isParentOf(Lorg/jxmpp/jid/EntityBareJid;)Z

    move-result v2

    return v2

    .line 171
    :cond_1
    invoke-interface {p1}, Lorg/jxmpp/jid/Jid;->asDomainFullJidIfPossible()Lorg/jxmpp/jid/DomainFullJid;

    move-result-object v2

    .line 172
    .local v2, "domainFullJid":Lorg/jxmpp/jid/DomainFullJid;
    if-eqz v2, :cond_2

    .line 173
    invoke-virtual {p0, v2}, Lorg/jxmpp/jid/impl/AbstractJid;->isParentOf(Lorg/jxmpp/jid/DomainFullJid;)Z

    move-result v3

    return v3

    .line 176
    :cond_2
    invoke-interface {p1}, Lorg/jxmpp/jid/Jid;->asDomainBareJid()Lorg/jxmpp/jid/DomainBareJid;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/jxmpp/jid/impl/AbstractJid;->isParentOf(Lorg/jxmpp/jid/DomainBareJid;)Z

    move-result v3

    return v3
.end method

.method public length()I
    .locals 1

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
