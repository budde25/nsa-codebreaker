.class public abstract Lorg/jxmpp/jid/parts/Part;
.super Ljava/lang/Object;
.source "Part.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient internalizedCache:Ljava/lang/String;

.field private final part:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "part"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/jxmpp/jid/parts/Part;->part:Ljava/lang/String;

    .line 34
    return-void
.end method

.method protected static assertNotLongerThan1023BytesOrEmpty(Ljava/lang/String;)V
    .locals 3
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jxmpp/stringprep/XmppStringprepException;
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 77
    .local v0, "bytes":[C
    array-length v1, v0

    const/16 v2, 0x3ff

    if-gt v1, v2, :cond_1

    .line 79
    array-length v1, v0

    if-eqz v1, :cond_0

    .line 82
    return-void

    .line 80
    :cond_0
    new-instance v1, Lorg/jxmpp/stringprep/XmppStringprepException;

    const-string v2, "Argument can\'t be the empty string"

    invoke-direct {v1, p0, v2}, Lorg/jxmpp/stringprep/XmppStringprepException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_1
    new-instance v1, Lorg/jxmpp/stringprep/XmppStringprepException;

    const-string v2, "Given string is longer then 1023 bytes"

    invoke-direct {v1, p0, v2}, Lorg/jxmpp/stringprep/XmppStringprepException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .line 43
    iget-object v0, p0, Lorg/jxmpp/jid/parts/Part;->part:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 58
    if-ne p0, p1, :cond_0

    .line 59
    const/4 v0, 0x1

    return v0

    .line 61
    :cond_0
    if-nez p1, :cond_1

    .line 62
    const/4 v0, 0x0

    return v0

    .line 64
    :cond_1
    iget-object v0, p0, Lorg/jxmpp/jid/parts/Part;->part:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/jxmpp/jid/parts/Part;->part:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final intern()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/jxmpp/jid/parts/Part;->internalizedCache:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lorg/jxmpp/jid/parts/Part;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jxmpp/jid/parts/Part;->internalizedCache:Ljava/lang/String;

    .line 99
    :cond_0
    iget-object v0, p0, Lorg/jxmpp/jid/parts/Part;->internalizedCache:Ljava/lang/String;

    return-object v0
.end method

.method public final length()I
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/jxmpp/jid/parts/Part;->part:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public final subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 48
    iget-object v0, p0, Lorg/jxmpp/jid/parts/Part;->part:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/jxmpp/jid/parts/Part;->part:Ljava/lang/String;

    return-object v0
.end method
