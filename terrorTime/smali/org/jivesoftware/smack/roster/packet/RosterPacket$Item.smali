.class public Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
.super Ljava/lang/Object;
.source "RosterPacket.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/NamedElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/roster/packet/RosterPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "item"

.field public static final GROUP:Ljava/lang/String; = "group"


# instance fields
.field private approved:Z

.field private final groupNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private itemType:Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

.field private final jid:Lorg/jxmpp/jid/BareJid;

.field private name:Ljava/lang/String;

.field private subscriptionPending:Z


# direct methods
.method public constructor <init>(Lorg/jxmpp/jid/BareJid;Ljava/lang/String;)V
    .locals 1
    .param p1, "jid"    # Lorg/jxmpp/jid/BareJid;
    .param p2, "name"    # Ljava/lang/String;

    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;-><init>(Lorg/jxmpp/jid/BareJid;Ljava/lang/String;Z)V

    .line 143
    return-void
.end method

.method public constructor <init>(Lorg/jxmpp/jid/BareJid;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "jid"    # Lorg/jxmpp/jid/BareJid;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "subscriptionPending"    # Z

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    sget-object v0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;->none:Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

    iput-object v0, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->itemType:Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

    .line 153
    invoke-static {p1}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jxmpp/jid/BareJid;

    iput-object v0, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->jid:Lorg/jxmpp/jid/BareJid;

    .line 154
    iput-object p2, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->name:Ljava/lang/String;

    .line 155
    iput-boolean p3, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->subscriptionPending:Z

    .line 156
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->groupNames:Ljava/util/Set;

    .line 157
    return-void
.end method


# virtual methods
.method public addGroupName(Ljava/lang/String;)V
    .locals 1
    .param p1, "groupName"    # Ljava/lang/String;

    .line 262
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->groupNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 263
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 308
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 309
    return v0

    .line 310
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 311
    return v1

    .line 312
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 313
    return v1

    .line 314
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;

    .line 315
    .local v2, "other":Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;
    iget-object v3, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->groupNames:Ljava/util/Set;

    if-nez v3, :cond_3

    .line 316
    iget-object v3, v2, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->groupNames:Ljava/util/Set;

    if-eqz v3, :cond_4

    .line 317
    return v1

    .line 319
    :cond_3
    iget-object v4, v2, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->groupNames:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 320
    return v1

    .line 321
    :cond_4
    iget-boolean v3, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->subscriptionPending:Z

    iget-boolean v4, v2, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->subscriptionPending:Z

    if-eq v3, v4, :cond_5

    .line 322
    return v1

    .line 323
    :cond_5
    iget-object v3, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->itemType:Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

    iget-object v4, v2, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->itemType:Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

    if-eq v3, v4, :cond_6

    .line 324
    return v1

    .line 325
    :cond_6
    iget-object v3, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->name:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 326
    iget-object v3, v2, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->name:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 327
    return v1

    .line 329
    :cond_7
    iget-object v4, v2, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 330
    return v1

    .line 331
    :cond_8
    iget-object v3, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->jid:Lorg/jxmpp/jid/BareJid;

    if-nez v3, :cond_9

    .line 332
    iget-object v3, v2, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->jid:Lorg/jxmpp/jid/BareJid;

    if-eqz v3, :cond_a

    .line 333
    return v1

    .line 335
    :cond_9
    iget-object v4, v2, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->jid:Lorg/jxmpp/jid/BareJid;

    invoke-interface {v3, v4}, Lorg/jxmpp/jid/BareJid;->equals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 336
    return v1

    .line 337
    :cond_a
    iget-boolean v3, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->approved:Z

    iget-boolean v4, v2, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->approved:Z

    if-eq v3, v4, :cond_b

    .line 338
    return v1

    .line 339
    :cond_b
    return v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 161
    const-string v0, "item"

    return-object v0
.end method

.method public getGroupNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->groupNames:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getItemType()Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->itemType:Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

    return-object v0
.end method

.method public getJid()Lorg/jxmpp/jid/BareJid;
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->jid:Lorg/jxmpp/jid/BareJid;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 172
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->jid:Lorg/jxmpp/jid/BareJid;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 295
    const/16 v0, 0x1f

    .line 296
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 297
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->groupNames:Ljava/util/Set;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Ljava/util/Set;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 298
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-boolean v3, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->subscriptionPending:Z

    xor-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    .line 299
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->itemType:Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    .line 300
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->name:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v1, v3

    .line 301
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->jid:Lorg/jxmpp/jid/BareJid;

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_3
    add-int/2addr v2, v4

    .line 302
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-boolean v3, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->approved:Z

    add-int/2addr v1, v3

    .line 303
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public isApproved()Z
    .locals 1

    .line 234
    iget-boolean v0, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->approved:Z

    return v0
.end method

.method public isSubscriptionPending()Z
    .locals 1

    .line 225
    iget-boolean v0, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->subscriptionPending:Z

    return v0
.end method

.method public removeGroupName(Ljava/lang/String;)V
    .locals 1
    .param p1, "groupName"    # Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->groupNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 272
    return-void
.end method

.method public setApproved(Z)V
    .locals 0
    .param p1, "approved"    # Z

    .line 243
    iput-boolean p1, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->approved:Z

    .line 244
    return-void
.end method

.method public setItemType(Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;)V
    .locals 1
    .param p1, "itemType"    # Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

    .line 217
    const-string v0, "itemType must not be null"

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

    iput-object v0, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->itemType:Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

    .line 218
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 199
    iput-object p1, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->name:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setSubscriptionPending(Z)V
    .locals 0
    .param p1, "subscriptionPending"    # Z

    .line 221
    iput-boolean p1, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->subscriptionPending:Z

    .line 222
    return-void
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 113
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 5
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 276
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/NamedElement;)V

    .line 277
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    iget-object v1, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->jid:Lorg/jxmpp/jid/BareJid;

    const-string v2, "jid"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 278
    iget-object v1, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->name:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 279
    iget-object v1, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->itemType:Lorg/jivesoftware/smack/roster/packet/RosterPacket$ItemType;

    const-string v2, "subscription"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/Enum;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 280
    iget-boolean v1, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->subscriptionPending:Z

    if-eqz v1, :cond_0

    .line 281
    const-string v1, " ask=\'subscribe\'"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->append(Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 283
    :cond_0
    iget-boolean v1, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->approved:Z

    const-string v2, "approved"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optBooleanAttribute(Ljava/lang/String;Z)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 284
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 286
    iget-object v1, p0, Lorg/jivesoftware/smack/roster/packet/RosterPacket$Item;->groupNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 287
    .local v2, "groupName":Ljava/lang/String;
    const-string v3, "group"

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->openElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->escape(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 288
    .end local v2    # "groupName":Ljava/lang/String;
    goto :goto_0

    .line 289
    :cond_1
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 290
    return-object v0
.end method
