.class public Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence$History;
.super Ljava/lang/Object;
.source "MUCInitialPresence.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/NamedElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "History"
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "history"


# instance fields
.field private maxChars:I

.field private maxStanzas:I

.field private seconds:I

.field private since:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    const/4 v0, -0x1

    iput v0, p0, Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence$History;->maxChars:I

    .line 185
    iput v0, p0, Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence$History;->maxStanzas:I

    .line 186
    iput v0, p0, Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence$History;->seconds:I

    .line 187
    return-void
.end method

.method public constructor <init>(IIILjava/util/Date;)V
    .locals 1
    .param p1, "maxChars"    # I
    .param p2, "maxStanzas"    # I
    .param p3, "seconds"    # I
    .param p4, "since"    # Ljava/util/Date;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    if-gez p1, :cond_1

    if-gez p2, :cond_1

    if-gez p3, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 193
    :cond_1
    :goto_0
    iput p1, p0, Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence$History;->maxChars:I

    .line 194
    iput p2, p0, Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence$History;->maxStanzas:I

    .line 195
    iput p3, p0, Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence$History;->seconds:I

    .line 196
    iput-object p4, p0, Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence$History;->since:Ljava/util/Date;

    .line 197
    return-void
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 303
    const-string v0, "history"

    return-object v0
.end method

.method public getMaxChars()I
    .locals 1

    .line 205
    iget v0, p0, Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence$History;->maxChars:I

    return v0
.end method

.method public getMaxStanzas()I
    .locals 1

    .line 214
    iget v0, p0, Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence$History;->maxStanzas:I

    return v0
.end method

.method public getSeconds()I
    .locals 1

    .line 225
    iget v0, p0, Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence$History;->seconds:I

    return v0
.end method

.method public getSince()Ljava/util/Date;
    .locals 1

    .line 236
    iget-object v0, p0, Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence$History;->since:Ljava/util/Date;

    return-object v0
.end method

.method public setMaxChars(I)V
    .locals 0
    .param p1, "maxChars"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 247
    iput p1, p0, Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence$History;->maxChars:I

    .line 248
    return-void
.end method

.method public setMaxStanzas(I)V
    .locals 0
    .param p1, "maxStanzas"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 258
    iput p1, p0, Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence$History;->maxStanzas:I

    .line 259
    return-void
.end method

.method public setSeconds(I)V
    .locals 0
    .param p1, "seconds"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 272
    iput p1, p0, Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence$History;->seconds:I

    .line 273
    return-void
.end method

.method public setSince(Ljava/util/Date;)V
    .locals 0
    .param p1, "since"    # Ljava/util/Date;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 285
    iput-object p1, p0, Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence$History;->since:Ljava/util/Date;

    .line 286
    return-void
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 168
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence$History;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 3
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 290
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/NamedElement;)V

    .line 291
    .local v0, "xml":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence$History;->getMaxChars()I

    move-result v1

    const-string v2, "maxchars"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optIntAttribute(Ljava/lang/String;I)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 292
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence$History;->getMaxStanzas()I

    move-result v1

    const-string v2, "maxstanzas"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optIntAttribute(Ljava/lang/String;I)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 293
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence$History;->getSeconds()I

    move-result v1

    const-string v2, "seconds"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optIntAttribute(Ljava/lang/String;I)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 294
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence$History;->getSince()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 295
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/muc/packet/MUCInitialPresence$History;->getSince()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lorg/jxmpp/util/XmppDateTime;->formatXEP0082Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "since"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 297
    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeEmptyElement()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 298
    return-object v0
.end method
