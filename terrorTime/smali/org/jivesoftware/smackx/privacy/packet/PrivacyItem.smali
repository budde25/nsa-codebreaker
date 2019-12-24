.class public Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;
.super Ljava/lang/Object;
.source "PrivacyItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem$Type;
    }
.end annotation


# static fields
.field public static final SUBSCRIPTION_BOTH:Ljava/lang/String; = "both"

.field public static final SUBSCRIPTION_FROM:Ljava/lang/String; = "from"

.field public static final SUBSCRIPTION_NONE:Ljava/lang/String; = "none"

.field public static final SUBSCRIPTION_TO:Ljava/lang/String; = "to"


# instance fields
.field private final allow:Z

.field private filterIQ:Z

.field private filterMessage:Z

.field private filterPresenceIn:Z

.field private filterPresenceOut:Z

.field private final order:J

.field private final type:Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem$Type;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem$Type;Ljava/lang/CharSequence;ZJ)V
    .locals 7
    .param p1, "type"    # Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem$Type;
    .param p2, "value"    # Ljava/lang/CharSequence;
    .param p3, "allow"    # Z
    .param p4, "order"    # J

    .line 124
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;-><init>(Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem$Type;Ljava/lang/String;ZJ)V

    .line 125
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem$Type;Ljava/lang/String;ZJ)V
    .locals 1
    .param p1, "type"    # Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem$Type;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "allow"    # Z
    .param p4, "order"    # J

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;->filterIQ:Z

    .line 69
    iput-boolean v0, p0, Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;->filterMessage:Z

    .line 71
    iput-boolean v0, p0, Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;->filterPresenceIn:Z

    .line 73
    iput-boolean v0, p0, Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;->filterPresenceOut:Z

    .line 102
    invoke-static {p4, p5}, Lorg/jivesoftware/smack/util/NumberUtil;->checkIfInUInt32Range(J)V

    .line 103
    iput-object p1, p0, Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;->type:Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem$Type;

    .line 104
    iput-object p2, p0, Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;->value:Ljava/lang/String;

    .line 105
    iput-boolean p3, p0, Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;->allow:Z

    .line 106
    iput-wide p4, p0, Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;->order:J

    .line 107
    return-void
.end method

.method public constructor <init>(ZJ)V
    .locals 6
    .param p1, "allow"    # Z
    .param p2, "order"    # J

    .line 84
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;-><init>(Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem$Type;Ljava/lang/String;ZJ)V

    .line 85
    return-void
.end method


# virtual methods
.method public getOrder()J
    .locals 2

    .line 239
    iget-wide v0, p0, Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;->order:J

    return-wide v0
.end method

.method public getType()Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem$Type;
    .locals 1

    .line 250
    iget-object v0, p0, Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;->type:Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem$Type;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 267
    iget-object v0, p0, Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isAllow()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;->allow:Z

    return v0
.end method

.method public isFilterEverything()Z
    .locals 1

    .line 282
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;->isFilterIQ()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;->isFilterMessage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;->isFilterPresenceIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;->isFilterPresenceOut()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 282
    :goto_0
    return v0
.end method

.method public isFilterIQ()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;->filterIQ:Z

    return v0
.end method

.method public isFilterMessage()Z
    .locals 1

    .line 169
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;->filterMessage:Z

    return v0
.end method

.method public isFilterPresenceIn()Z
    .locals 1

    .line 191
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;->filterPresenceIn:Z

    return v0
.end method

.method public isFilterPresenceOut()Z
    .locals 1

    .line 213
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;->filterPresenceOut:Z

    return v0
.end method

.method public setFilterIQ(Z)V
    .locals 0
    .param p1, "filterIQ"    # Z

    .line 158
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;->filterIQ:Z

    .line 159
    return-void
.end method

.method public setFilterMessage(Z)V
    .locals 0
    .param p1, "filterMessage"    # Z

    .line 180
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;->filterMessage:Z

    .line 181
    return-void
.end method

.method public setFilterPresenceIn(Z)V
    .locals 0
    .param p1, "filterPresenceIn"    # Z

    .line 202
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;->filterPresenceIn:Z

    .line 203
    return-void
.end method

.method public setFilterPresenceOut(Z)V
    .locals 0
    .param p1, "filterPresenceOut"    # Z

    .line 224
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;->filterPresenceOut:Z

    .line 225
    return-void
.end method

.method public toXML()Ljava/lang/String;
    .locals 3

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "<item"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;->isAllow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    const-string v1, " action=\"allow\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 297
    :cond_0
    const-string v1, " action=\"deny\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :goto_0
    const-string v1, " order=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;->getOrder()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;->getType()Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem$Type;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 301
    const-string v2, " type=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;->getType()Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem$Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 303
    :cond_1
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 304
    const-string v2, " value=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 306
    :cond_2
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;->isFilterEverything()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 307
    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 309
    :cond_3
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;->isFilterIQ()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 311
    const-string v1, "<iq/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    :cond_4
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;->isFilterMessage()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 314
    const-string v1, "<message/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    :cond_5
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;->isFilterPresenceIn()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 317
    const-string v1, "<presence-in/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :cond_6
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/privacy/packet/PrivacyItem;->isFilterPresenceOut()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 320
    const-string v1, "<presence-out/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    :cond_7
    const-string v1, "</item>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
