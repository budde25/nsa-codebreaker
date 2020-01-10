.class public abstract Lorg/minidns/dnslabel/DnsLabel;
.super Ljava/lang/Object;
.source "DnsLabel.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/minidns/dnslabel/DnsLabel$LabelToLongException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Comparable<",
        "Lorg/minidns/dnslabel/DnsLabel;",
        ">;"
    }
.end annotation


# static fields
.field public static final MAX_LABEL_LENGTH_IN_OCTETS:I = 0x3f

.field public static VALIDATE:Z

.field public static final WILDCARD_LABEL:Lorg/minidns/dnslabel/DnsLabel;


# instance fields
.field private transient byteCache:[B

.field private transient internationalizedRepresentation:Ljava/lang/String;

.field public final label:Ljava/lang/String;

.field private transient lowercasedVariant:Lorg/minidns/dnslabel/DnsLabel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-string v0, "*"

    invoke-static {v0}, Lorg/minidns/dnslabel/DnsLabel;->from(Ljava/lang/String;)Lorg/minidns/dnslabel/DnsLabel;

    move-result-object v0

    sput-object v0, Lorg/minidns/dnslabel/DnsLabel;->WILDCARD_LABEL:Lorg/minidns/dnslabel/DnsLabel;

    .line 41
    const/4 v0, 0x1

    sput-boolean v0, Lorg/minidns/dnslabel/DnsLabel;->VALIDATE:Z

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/minidns/dnslabel/DnsLabel;->label:Ljava/lang/String;

    .line 48
    sget-boolean v0, Lorg/minidns/dnslabel/DnsLabel;->VALIDATE:Z

    if-nez v0, :cond_0

    .line 49
    return-void

    .line 52
    :cond_0
    invoke-direct {p0}, Lorg/minidns/dnslabel/DnsLabel;->setBytesIfRequired()V

    .line 53
    iget-object v0, p0, Lorg/minidns/dnslabel/DnsLabel;->byteCache:[B

    array-length v0, v0

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_1

    .line 56
    return-void

    .line 54
    :cond_1
    new-instance v0, Lorg/minidns/dnslabel/DnsLabel$LabelToLongException;

    invoke-direct {v0, p1}, Lorg/minidns/dnslabel/DnsLabel$LabelToLongException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static from(Ljava/lang/String;)Lorg/minidns/dnslabel/DnsLabel;
    .locals 2
    .param p0, "label"    # Ljava/lang/String;

    .line 143
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    invoke-static {p0}, Lorg/minidns/dnslabel/LdhLabel;->isLdhLabel(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-static {p0}, Lorg/minidns/dnslabel/LdhLabel;->fromInternal(Ljava/lang/String;)Lorg/minidns/dnslabel/LdhLabel;

    move-result-object v0

    return-object v0

    .line 151
    :cond_0
    invoke-static {p0}, Lorg/minidns/dnslabel/NonLdhLabel;->fromInternal(Ljava/lang/String;)Lorg/minidns/dnslabel/DnsLabel;

    move-result-object v0

    return-object v0

    .line 144
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Label is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static from([Ljava/lang/String;)[Lorg/minidns/dnslabel/DnsLabel;
    .locals 3
    .param p0, "labels"    # [Ljava/lang/String;

    .line 155
    array-length v0, p0

    new-array v0, v0, [Lorg/minidns/dnslabel/DnsLabel;

    .line 157
    .local v0, "res":[Lorg/minidns/dnslabel/DnsLabel;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 158
    aget-object v2, p0, v1

    invoke-static {v2}, Lorg/minidns/dnslabel/DnsLabel;->from(Ljava/lang/String;)Lorg/minidns/dnslabel/DnsLabel;

    move-result-object v2

    aput-object v2, v0, v1

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static isIdnAcePrefixed(Ljava/lang/String;)Z
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .line 165
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "xn--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setBytesIfRequired()V
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/minidns/dnslabel/DnsLabel;->byteCache:[B

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lorg/minidns/dnslabel/DnsLabel;->label:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/dnslabel/DnsLabel;->byteCache:[B

    .line 125
    :cond_0
    return-void
.end method


# virtual methods
.method public final asLowercaseVariant()Lorg/minidns/dnslabel/DnsLabel;
    .locals 2

    .line 112
    iget-object v0, p0, Lorg/minidns/dnslabel/DnsLabel;->lowercasedVariant:Lorg/minidns/dnslabel/DnsLabel;

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lorg/minidns/dnslabel/DnsLabel;->label:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "lowercaseLabel":Ljava/lang/String;
    invoke-static {v0}, Lorg/minidns/dnslabel/DnsLabel;->from(Ljava/lang/String;)Lorg/minidns/dnslabel/DnsLabel;

    move-result-object v1

    iput-object v1, p0, Lorg/minidns/dnslabel/DnsLabel;->lowercasedVariant:Lorg/minidns/dnslabel/DnsLabel;

    .line 116
    .end local v0    # "lowercaseLabel":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lorg/minidns/dnslabel/DnsLabel;->lowercasedVariant:Lorg/minidns/dnslabel/DnsLabel;

    return-object v0
.end method

.method public final charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .line 82
    iget-object v0, p0, Lorg/minidns/dnslabel/DnsLabel;->label:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 27
    check-cast p1, Lorg/minidns/dnslabel/DnsLabel;

    invoke-virtual {p0, p1}, Lorg/minidns/dnslabel/DnsLabel;->compareTo(Lorg/minidns/dnslabel/DnsLabel;)I

    move-result p1

    return p1
.end method

.method public final compareTo(Lorg/minidns/dnslabel/DnsLabel;)I
    .locals 3
    .param p1, "other"    # Lorg/minidns/dnslabel/DnsLabel;

    .line 136
    invoke-virtual {p0}, Lorg/minidns/dnslabel/DnsLabel;->asLowercaseVariant()Lorg/minidns/dnslabel/DnsLabel;

    move-result-object v0

    iget-object v0, v0, Lorg/minidns/dnslabel/DnsLabel;->label:Ljava/lang/String;

    .line 137
    .local v0, "myCanonical":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/minidns/dnslabel/DnsLabel;->asLowercaseVariant()Lorg/minidns/dnslabel/DnsLabel;

    move-result-object v1

    iget-object v1, v1, Lorg/minidns/dnslabel/DnsLabel;->label:Ljava/lang/String;

    .line 139
    .local v1, "otherCanonical":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 97
    instance-of v0, p1, Lorg/minidns/dnslabel/DnsLabel;

    if-nez v0, :cond_0

    .line 98
    const/4 v0, 0x0

    return v0

    .line 100
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/minidns/dnslabel/DnsLabel;

    .line 101
    .local v0, "otherDnsLabel":Lorg/minidns/dnslabel/DnsLabel;
    iget-object v1, p0, Lorg/minidns/dnslabel/DnsLabel;->label:Ljava/lang/String;

    iget-object v2, v0, Lorg/minidns/dnslabel/DnsLabel;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public final getInternationalizedRepresentation()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/minidns/dnslabel/DnsLabel;->internationalizedRepresentation:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lorg/minidns/dnslabel/DnsLabel;->getInternationalizedRepresentationInternal()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/dnslabel/DnsLabel;->internationalizedRepresentation:Ljava/lang/String;

    .line 64
    :cond_0
    iget-object v0, p0, Lorg/minidns/dnslabel/DnsLabel;->internationalizedRepresentation:Ljava/lang/String;

    return-object v0
.end method

.method protected getInternationalizedRepresentationInternal()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/minidns/dnslabel/DnsLabel;->label:Ljava/lang/String;

    return-object v0
.end method

.method public final getLabelType()Ljava/lang/String;
    .locals 1

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/minidns/dnslabel/DnsLabel;->label:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final length()I
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/minidns/dnslabel/DnsLabel;->label:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public final subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 87
    iget-object v0, p0, Lorg/minidns/dnslabel/DnsLabel;->label:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/minidns/dnslabel/DnsLabel;->label:Ljava/lang/String;

    return-object v0
.end method

.method public final writeToBoas(Ljava/io/ByteArrayOutputStream;)V
    .locals 3
    .param p1, "byteArrayOutputStream"    # Ljava/io/ByteArrayOutputStream;

    .line 128
    invoke-direct {p0}, Lorg/minidns/dnslabel/DnsLabel;->setBytesIfRequired()V

    .line 130
    iget-object v0, p0, Lorg/minidns/dnslabel/DnsLabel;->byteCache:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 131
    iget-object v0, p0, Lorg/minidns/dnslabel/DnsLabel;->byteCache:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 132
    return-void
.end method
