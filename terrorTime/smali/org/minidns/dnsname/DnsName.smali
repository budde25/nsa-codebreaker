.class public Lorg/minidns/dnsname/DnsName;
.super Ljava/lang/Object;
.source "DnsName.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/CharSequence;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lorg/minidns/dnsname/DnsName;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final IN_ADDR_ARPA:Lorg/minidns/dnsname/DnsName;

.field public static final IP6_ARPA:Lorg/minidns/dnsname/DnsName;

.field private static final LABEL_SEP_REGEX:Ljava/lang/String; = "[.\u3002\uff0e\uff61]"

.field static final MAX_DNSNAME_LENGTH_IN_OCTETS:I = 0xff

.field public static final MAX_LABELS:I = 0x80

.field public static final ROOT:Lorg/minidns/dnsname/DnsName;

.field public static VALIDATE:Z = false

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final ace:Ljava/lang/String;

.field private transient bytes:[B

.field private transient domainpart:Ljava/lang/String;

.field private transient hashCode:I

.field private transient hostpart:Ljava/lang/String;

.field private transient idn:Ljava/lang/String;

.field private transient labels:[Lorg/minidns/dnslabel/DnsLabel;

.field private final rawAce:Ljava/lang/String;

.field private transient rawBytes:[B

.field private transient rawLabels:[Lorg/minidns/dnslabel/DnsLabel;

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    nop

    .line 62
    new-instance v0, Lorg/minidns/dnsname/DnsName;

    const-string v1, "."

    invoke-direct {v0, v1}, Lorg/minidns/dnsname/DnsName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/minidns/dnsname/DnsName;->ROOT:Lorg/minidns/dnsname/DnsName;

    .line 64
    new-instance v0, Lorg/minidns/dnsname/DnsName;

    const-string v1, "in-addr.arpa"

    invoke-direct {v0, v1}, Lorg/minidns/dnsname/DnsName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/minidns/dnsname/DnsName;->IN_ADDR_ARPA:Lorg/minidns/dnsname/DnsName;

    .line 66
    new-instance v0, Lorg/minidns/dnsname/DnsName;

    const-string v1, "ip6.arpa"

    invoke-direct {v0, v1}, Lorg/minidns/dnsname/DnsName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/minidns/dnsname/DnsName;->IP6_ARPA:Lorg/minidns/dnsname/DnsName;

    .line 71
    const/4 v0, 0x1

    sput-boolean v0, Lorg/minidns/dnsname/DnsName;->VALIDATE:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 106
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/minidns/dnsname/DnsName;-><init>(Ljava/lang/String;Z)V

    .line 107
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "inAce"    # Z

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lorg/minidns/dnsname/DnsName;->size:I

    .line 110
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Lorg/minidns/dnsname/DnsName;->ROOT:Lorg/minidns/dnsname/DnsName;

    iget-object v0, v0, Lorg/minidns/dnsname/DnsName;->rawAce:Ljava/lang/String;

    iput-object v0, p0, Lorg/minidns/dnsname/DnsName;->rawAce:Ljava/lang/String;

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 114
    .local v0, "nameLength":I
    add-int/lit8 v1, v0, -0x1

    .line 118
    .local v1, "nameLastPos":I
    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_1

    .line 119
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 122
    :cond_1
    if-eqz p2, :cond_2

    .line 124
    iput-object p1, p0, Lorg/minidns/dnsname/DnsName;->rawAce:Ljava/lang/String;

    goto :goto_0

    .line 126
    :cond_2
    invoke-static {p1}, Lorg/minidns/idna/MiniDnsIdna;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/minidns/dnsname/DnsName;->rawAce:Ljava/lang/String;

    .line 130
    .end local v0    # "nameLength":I
    .end local v1    # "nameLastPos":I
    :goto_0
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->rawAce:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    .line 132
    sget-boolean v0, Lorg/minidns/dnsname/DnsName;->VALIDATE:Z

    if-nez v0, :cond_3

    .line 133
    return-void

    .line 137
    :cond_3
    invoke-direct {p0}, Lorg/minidns/dnsname/DnsName;->validateMaxDnsnameLengthInOctets()V

    .line 138
    return-void
.end method

.method private constructor <init>([Lorg/minidns/dnslabel/DnsLabel;Z)V
    .locals 4
    .param p1, "rawLabels"    # [Lorg/minidns/dnslabel/DnsLabel;
    .param p2, "validateMaxDnsnameLength"    # Z

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lorg/minidns/dnsname/DnsName;->size:I

    .line 141
    iput-object p1, p0, Lorg/minidns/dnsname/DnsName;->rawLabels:[Lorg/minidns/dnslabel/DnsLabel;

    .line 142
    array-length v0, p1

    new-array v0, v0, [Lorg/minidns/dnslabel/DnsLabel;

    iput-object v0, p0, Lorg/minidns/dnsname/DnsName;->labels:[Lorg/minidns/dnslabel/DnsLabel;

    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 146
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/minidns/dnslabel/DnsLabel;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 147
    iget-object v2, p0, Lorg/minidns/dnsname/DnsName;->labels:[Lorg/minidns/dnslabel/DnsLabel;

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lorg/minidns/dnslabel/DnsLabel;->asLowercaseVariant()Lorg/minidns/dnslabel/DnsLabel;

    move-result-object v3

    aput-object v3, v2, v1

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    .end local v1    # "i":I
    :cond_0
    invoke-static {p1, v0}, Lorg/minidns/dnsname/DnsName;->labelsToString([Lorg/minidns/dnslabel/DnsLabel;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/minidns/dnsname/DnsName;->rawAce:Ljava/lang/String;

    .line 151
    iget-object v1, p0, Lorg/minidns/dnsname/DnsName;->labels:[Lorg/minidns/dnslabel/DnsLabel;

    invoke-static {v1, v0}, Lorg/minidns/dnsname/DnsName;->labelsToString([Lorg/minidns/dnslabel/DnsLabel;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    .line 156
    if-eqz p2, :cond_2

    sget-boolean v1, Lorg/minidns/dnsname/DnsName;->VALIDATE:Z

    if-nez v1, :cond_1

    goto :goto_1

    .line 160
    :cond_1
    invoke-direct {p0}, Lorg/minidns/dnsname/DnsName;->validateMaxDnsnameLengthInOctets()V

    .line 161
    return-void

    .line 157
    :cond_2
    :goto_1
    return-void
.end method

.method public static from(Ljava/lang/CharSequence;)Lorg/minidns/dnsname/DnsName;
    .locals 1
    .param p0, "name"    # Ljava/lang/CharSequence;

    .line 335
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    move-result-object v0

    return-object v0
.end method

.method public static from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 339
    new-instance v0, Lorg/minidns/dnsname/DnsName;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/minidns/dnsname/DnsName;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static from(Lorg/minidns/dnslabel/DnsLabel;Lorg/minidns/dnslabel/DnsLabel;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/dnsname/DnsName;
    .locals 4
    .param p0, "grandchild"    # Lorg/minidns/dnslabel/DnsLabel;
    .param p1, "child"    # Lorg/minidns/dnslabel/DnsLabel;
    .param p2, "parent"    # Lorg/minidns/dnsname/DnsName;

    .line 374
    invoke-direct {p2}, Lorg/minidns/dnsname/DnsName;->setBytesIfRequired()V

    .line 376
    iget-object v0, p2, Lorg/minidns/dnsname/DnsName;->rawLabels:[Lorg/minidns/dnslabel/DnsLabel;

    array-length v1, v0

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lorg/minidns/dnslabel/DnsLabel;

    .line 377
    .local v1, "rawLabels":[Lorg/minidns/dnslabel/DnsLabel;
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 378
    iget-object v0, p2, Lorg/minidns/dnsname/DnsName;->rawLabels:[Lorg/minidns/dnslabel/DnsLabel;

    array-length v2, v0

    aput-object p1, v1, v2

    .line 379
    array-length v0, v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    aput-object p0, v1, v0

    .line 380
    new-instance v0, Lorg/minidns/dnsname/DnsName;

    invoke-direct {v0, v1, v2}, Lorg/minidns/dnsname/DnsName;-><init>([Lorg/minidns/dnslabel/DnsLabel;Z)V

    return-object v0
.end method

.method public static from(Lorg/minidns/dnslabel/DnsLabel;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/dnsname/DnsName;
    .locals 5
    .param p0, "child"    # Lorg/minidns/dnslabel/DnsLabel;
    .param p1, "parent"    # Lorg/minidns/dnsname/DnsName;

    .line 365
    invoke-direct {p1}, Lorg/minidns/dnsname/DnsName;->setLabelsIfRequired()V

    .line 367
    iget-object v0, p1, Lorg/minidns/dnsname/DnsName;->rawLabels:[Lorg/minidns/dnslabel/DnsLabel;

    array-length v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [Lorg/minidns/dnslabel/DnsLabel;

    .line 368
    .local v1, "rawLabels":[Lorg/minidns/dnslabel/DnsLabel;
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 369
    array-length v0, v1

    aput-object p0, v1, v0

    .line 370
    new-instance v0, Lorg/minidns/dnsname/DnsName;

    invoke-direct {v0, v1, v2}, Lorg/minidns/dnsname/DnsName;-><init>([Lorg/minidns/dnslabel/DnsLabel;Z)V

    return-object v0
.end method

.method public static from(Lorg/minidns/dnsname/DnsName;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/dnsname/DnsName;
    .locals 5
    .param p0, "child"    # Lorg/minidns/dnsname/DnsName;
    .param p1, "parent"    # Lorg/minidns/dnsname/DnsName;

    .line 355
    invoke-direct {p0}, Lorg/minidns/dnsname/DnsName;->setLabelsIfRequired()V

    .line 356
    invoke-direct {p1}, Lorg/minidns/dnsname/DnsName;->setLabelsIfRequired()V

    .line 358
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->rawLabels:[Lorg/minidns/dnslabel/DnsLabel;

    array-length v0, v0

    iget-object v1, p1, Lorg/minidns/dnsname/DnsName;->rawLabels:[Lorg/minidns/dnslabel/DnsLabel;

    array-length v2, v1

    add-int/2addr v0, v2

    new-array v0, v0, [Lorg/minidns/dnslabel/DnsLabel;

    .line 359
    .local v0, "rawLabels":[Lorg/minidns/dnslabel/DnsLabel;
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 360
    iget-object v1, p0, Lorg/minidns/dnsname/DnsName;->rawLabels:[Lorg/minidns/dnslabel/DnsLabel;

    iget-object v2, p1, Lorg/minidns/dnsname/DnsName;->rawLabels:[Lorg/minidns/dnslabel/DnsLabel;

    array-length v2, v2

    array-length v4, v1

    invoke-static {v1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    new-instance v1, Lorg/minidns/dnsname/DnsName;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lorg/minidns/dnsname/DnsName;-><init>([Lorg/minidns/dnslabel/DnsLabel;Z)V

    return-object v1
.end method

.method public static from([Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;
    .locals 3
    .param p0, "parts"    # [Ljava/lang/String;

    .line 402
    invoke-static {p0}, Lorg/minidns/dnslabel/DnsLabel;->from([Ljava/lang/String;)[Lorg/minidns/dnslabel/DnsLabel;

    move-result-object v0

    .line 404
    .local v0, "rawLabels":[Lorg/minidns/dnslabel/DnsLabel;
    new-instance v1, Lorg/minidns/dnsname/DnsName;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lorg/minidns/dnsname/DnsName;-><init>([Lorg/minidns/dnslabel/DnsLabel;Z)V

    return-object v1
.end method

.method public static varargs from([Lorg/minidns/dnsname/DnsName;)Lorg/minidns/dnsname/DnsName;
    .locals 9
    .param p0, "nameComponents"    # [Lorg/minidns/dnsname/DnsName;

    .line 384
    const/4 v0, 0x0

    .line 385
    .local v0, "labelCount":I
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .end local v0    # "labelCount":I
    .local v3, "labelCount":I
    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v4, p0, v0

    .line 386
    .local v4, "component":Lorg/minidns/dnsname/DnsName;
    invoke-direct {v4}, Lorg/minidns/dnsname/DnsName;->setLabelsIfRequired()V

    .line 387
    iget-object v5, v4, Lorg/minidns/dnsname/DnsName;->rawLabels:[Lorg/minidns/dnslabel/DnsLabel;

    array-length v5, v5

    add-int/2addr v3, v5

    .line 385
    .end local v4    # "component":Lorg/minidns/dnsname/DnsName;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 390
    :cond_0
    new-array v0, v3, [Lorg/minidns/dnslabel/DnsLabel;

    .line 391
    .local v0, "rawLabels":[Lorg/minidns/dnslabel/DnsLabel;
    const/4 v1, 0x0

    .line 392
    .local v1, "destLabelPos":I
    array-length v4, p0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_1

    .line 393
    aget-object v6, p0, v4

    .line 394
    .local v6, "component":Lorg/minidns/dnsname/DnsName;
    iget-object v7, v6, Lorg/minidns/dnsname/DnsName;->rawLabels:[Lorg/minidns/dnslabel/DnsLabel;

    array-length v8, v7

    invoke-static {v7, v2, v0, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 395
    iget-object v7, v6, Lorg/minidns/dnsname/DnsName;->rawLabels:[Lorg/minidns/dnslabel/DnsLabel;

    array-length v7, v7

    add-int/2addr v1, v7

    .line 392
    .end local v6    # "component":Lorg/minidns/dnsname/DnsName;
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 398
    .end local v4    # "i":I
    :cond_1
    new-instance v2, Lorg/minidns/dnsname/DnsName;

    invoke-direct {v2, v0, v5}, Lorg/minidns/dnsname/DnsName;-><init>([Lorg/minidns/dnslabel/DnsLabel;Z)V

    return-object v2
.end method

.method private static getLabels(Ljava/lang/String;)[Lorg/minidns/dnslabel/DnsLabel;
    .locals 5
    .param p0, "ace"    # Ljava/lang/String;

    .line 237
    const-string v0, "[.\u3002\uff0e\uff61]"

    const/16 v1, 0x80

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "labels":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_0

    .line 241
    aget-object v2, v0, v1

    .line 242
    .local v2, "t":Ljava/lang/String;
    array-length v3, v0

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    .line 243
    .local v3, "j":I
    aget-object v4, v0, v3

    aput-object v4, v0, v1

    .line 244
    aput-object v2, v0, v3

    .line 240
    .end local v2    # "t":Ljava/lang/String;
    .end local v3    # "j":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    .end local v1    # "i":I
    :cond_0
    :try_start_0
    invoke-static {v0}, Lorg/minidns/dnslabel/DnsLabel;->from([Ljava/lang/String;)[Lorg/minidns/dnslabel/DnsLabel;

    move-result-object v1
    :try_end_0
    .catch Lorg/minidns/dnslabel/DnsLabel$LabelToLongException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 249
    :catch_0
    move-exception v1

    .line 250
    .local v1, "e":Lorg/minidns/dnslabel/DnsLabel$LabelToLongException;
    new-instance v2, Lorg/minidns/dnsname/InvalidDnsNameException$LabelTooLongException;

    iget-object v3, v1, Lorg/minidns/dnslabel/DnsLabel$LabelToLongException;->label:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lorg/minidns/dnsname/InvalidDnsNameException$LabelTooLongException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method private static labelsToString([Lorg/minidns/dnslabel/DnsLabel;I)Ljava/lang/String;
    .locals 3
    .param p0, "labels"    # [Lorg/minidns/dnslabel/DnsLabel;
    .param p1, "stringLength"    # I

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 165
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 166
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 168
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static parse(Ljava/io/DataInputStream;[B)Lorg/minidns/dnsname/DnsName;
    .locals 6
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 418
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    .line 419
    .local v0, "c":I
    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_0

    .line 420
    and-int/lit8 v1, v0, 0x3f

    shl-int/lit8 v1, v1, 0x8

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2

    add-int/2addr v1, v2

    .line 421
    .end local v0    # "c":I
    .local v1, "c":I
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 422
    .local v0, "jumps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 423
    invoke-static {p1, v1, v0}, Lorg/minidns/dnsname/DnsName;->parse([BILjava/util/HashSet;)Lorg/minidns/dnsname/DnsName;

    move-result-object v2

    return-object v2

    .line 425
    .end local v1    # "c":I
    .local v0, "c":I
    :cond_0
    if-nez v0, :cond_1

    .line 426
    sget-object v1, Lorg/minidns/dnsname/DnsName;->ROOT:Lorg/minidns/dnsname/DnsName;

    return-object v1

    .line 428
    :cond_1
    new-array v1, v0, [B

    .line 429
    .local v1, "b":[B
    invoke-virtual {p0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 431
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 432
    .local v2, "childLabelString":Ljava/lang/String;
    new-instance v3, Lorg/minidns/dnsname/DnsName;

    invoke-direct {v3, v2}, Lorg/minidns/dnsname/DnsName;-><init>(Ljava/lang/String;)V

    .line 434
    .local v3, "child":Lorg/minidns/dnsname/DnsName;
    invoke-static {p0, p1}, Lorg/minidns/dnsname/DnsName;->parse(Ljava/io/DataInputStream;[B)Lorg/minidns/dnsname/DnsName;

    move-result-object v4

    .line 435
    .local v4, "parent":Lorg/minidns/dnsname/DnsName;
    invoke-static {v3, v4}, Lorg/minidns/dnsname/DnsName;->from(Lorg/minidns/dnsname/DnsName;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/dnsname/DnsName;

    move-result-object v5

    return-object v5
.end method

.method private static parse([BILjava/util/HashSet;)Lorg/minidns/dnsname/DnsName;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/minidns/dnsname/DnsName;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 449
    .local p2, "jumps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    .line 450
    .local v0, "c":I
    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_1

    .line 451
    and-int/lit8 v1, v0, 0x3f

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    .line 452
    .end local v0    # "c":I
    .local v1, "c":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 456
    invoke-static {p0, v1, p2}, Lorg/minidns/dnsname/DnsName;->parse([BILjava/util/HashSet;)Lorg/minidns/dnsname/DnsName;

    move-result-object v0

    return-object v0

    .line 453
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cyclic offsets detected."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    .end local v1    # "c":I
    .restart local v0    # "c":I
    :cond_1
    if-nez v0, :cond_2

    .line 459
    sget-object v1, Lorg/minidns/dnsname/DnsName;->ROOT:Lorg/minidns/dnsname/DnsName;

    return-object v1

    .line 462
    :cond_2
    new-instance v1, Ljava/lang/String;

    add-int/lit8 v2, p1, 0x1

    invoke-direct {v1, p0, v2, v0}, Ljava/lang/String;-><init>([BII)V

    .line 463
    .local v1, "childLabelString":Ljava/lang/String;
    new-instance v2, Lorg/minidns/dnsname/DnsName;

    invoke-direct {v2, v1}, Lorg/minidns/dnsname/DnsName;-><init>(Ljava/lang/String;)V

    .line 465
    .local v2, "child":Lorg/minidns/dnsname/DnsName;
    add-int/lit8 v3, p1, 0x1

    add-int/2addr v3, v0

    invoke-static {p0, v3, p2}, Lorg/minidns/dnsname/DnsName;->parse([BILjava/util/HashSet;)Lorg/minidns/dnsname/DnsName;

    move-result-object v3

    .line 466
    .local v3, "parent":Lorg/minidns/dnsname/DnsName;
    invoke-static {v2, v3}, Lorg/minidns/dnsname/DnsName;->from(Lorg/minidns/dnsname/DnsName;Lorg/minidns/dnsname/DnsName;)Lorg/minidns/dnsname/DnsName;

    move-result-object v4

    return-object v4
.end method

.method private setBytesIfRequired()V
    .locals 1

    .line 204
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->bytes:[B

    if-eqz v0, :cond_0

    .line 205
    return-void

    .line 207
    :cond_0
    invoke-direct {p0}, Lorg/minidns/dnsname/DnsName;->setLabelsIfRequired()V

    .line 208
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->labels:[Lorg/minidns/dnslabel/DnsLabel;

    invoke-static {v0}, Lorg/minidns/dnsname/DnsName;->toBytes([Lorg/minidns/dnslabel/DnsLabel;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/dnsname/DnsName;->bytes:[B

    .line 209
    return-void
.end method

.method private setHostnameAndDomainpartIfRequired()V
    .locals 3

    .line 292
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->hostpart:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "[.\u3002\uff0e\uff61]"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "parts":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lorg/minidns/dnsname/DnsName;->hostpart:Ljava/lang/String;

    .line 296
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 297
    aget-object v1, v0, v2

    iput-object v1, p0, Lorg/minidns/dnsname/DnsName;->domainpart:Ljava/lang/String;

    goto :goto_0

    .line 299
    :cond_1
    const-string v1, ""

    iput-object v1, p0, Lorg/minidns/dnsname/DnsName;->domainpart:Ljava/lang/String;

    .line 301
    :goto_0
    return-void
.end method

.method private setLabelsIfRequired()V
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->labels:[Lorg/minidns/dnslabel/DnsLabel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->rawLabels:[Lorg/minidns/dnslabel/DnsLabel;

    if-eqz v0, :cond_0

    return-void

    .line 227
    :cond_0
    invoke-virtual {p0}, Lorg/minidns/dnsname/DnsName;->isRootLabel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/minidns/dnslabel/DnsLabel;

    iput-object v0, p0, Lorg/minidns/dnsname/DnsName;->labels:[Lorg/minidns/dnslabel/DnsLabel;

    iput-object v0, p0, Lorg/minidns/dnsname/DnsName;->rawLabels:[Lorg/minidns/dnslabel/DnsLabel;

    .line 229
    return-void

    .line 232
    :cond_1
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    invoke-static {v0}, Lorg/minidns/dnsname/DnsName;->getLabels(Ljava/lang/String;)[Lorg/minidns/dnslabel/DnsLabel;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/dnsname/DnsName;->labels:[Lorg/minidns/dnslabel/DnsLabel;

    .line 233
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->rawAce:Ljava/lang/String;

    invoke-static {v0}, Lorg/minidns/dnsname/DnsName;->getLabels(Ljava/lang/String;)[Lorg/minidns/dnslabel/DnsLabel;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/dnsname/DnsName;->rawLabels:[Lorg/minidns/dnslabel/DnsLabel;

    .line 234
    return-void
.end method

.method private static toBytes([Lorg/minidns/dnslabel/DnsLabel;)[B
    .locals 3
    .param p0, "labels"    # [Lorg/minidns/dnslabel/DnsLabel;

    .line 212
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 213
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 214
    aget-object v2, p0, v1

    invoke-virtual {v2, v0}, Lorg/minidns/dnslabel/DnsLabel;->writeToBoas(Ljava/io/ByteArrayOutputStream;)V

    .line 213
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 217
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 219
    nop

    .line 221
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private validateMaxDnsnameLengthInOctets()V
    .locals 3

    .line 173
    invoke-direct {p0}, Lorg/minidns/dnsname/DnsName;->setBytesIfRequired()V

    .line 174
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->bytes:[B

    array-length v1, v0

    const/16 v2, 0xff

    if-gt v1, v2, :cond_0

    .line 177
    return-void

    .line 175
    :cond_0
    new-instance v1, Lorg/minidns/dnsname/InvalidDnsNameException$DNSNameTooLongException;

    iget-object v2, p0, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lorg/minidns/dnsname/InvalidDnsNameException$DNSNameTooLongException;-><init>(Ljava/lang/String;[B)V

    throw v1
.end method


# virtual methods
.method public asIdn()Ljava/lang/String;
    .locals 1

    .line 259
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->idn:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 260
    return-object v0

    .line 262
    :cond_0
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    invoke-static {v0}, Lorg/minidns/idna/MiniDnsIdna;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/dnsname/DnsName;->idn:Ljava/lang/String;

    .line 263
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->idn:Ljava/lang/String;

    return-object v0
.end method

.method public charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .line 321
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 43
    check-cast p1, Lorg/minidns/dnsname/DnsName;

    invoke-virtual {p0, p1}, Lorg/minidns/dnsname/DnsName;->compareTo(Lorg/minidns/dnsname/DnsName;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/minidns/dnsname/DnsName;)I
    .locals 2
    .param p1, "other"    # Lorg/minidns/dnsname/DnsName;

    .line 471
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    iget-object v1, p1, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 476
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 478
    :cond_0
    instance-of v1, p1, Lorg/minidns/dnsname/DnsName;

    if-eqz v1, :cond_1

    .line 479
    move-object v0, p1

    check-cast v0, Lorg/minidns/dnsname/DnsName;

    .line 480
    .local v0, "otherDnsName":Lorg/minidns/dnsname/DnsName;
    invoke-direct {p0}, Lorg/minidns/dnsname/DnsName;->setBytesIfRequired()V

    .line 481
    invoke-direct {v0}, Lorg/minidns/dnsname/DnsName;->setBytesIfRequired()V

    .line 482
    iget-object v1, p0, Lorg/minidns/dnsname/DnsName;->bytes:[B

    iget-object v2, v0, Lorg/minidns/dnsname/DnsName;->bytes:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1

    .line 485
    .end local v0    # "otherDnsName":Lorg/minidns/dnsname/DnsName;
    :cond_1
    return v0
.end method

.method public getBytes()[B
    .locals 1

    .line 190
    invoke-direct {p0}, Lorg/minidns/dnsname/DnsName;->setBytesIfRequired()V

    .line 191
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->bytes:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getDomainpart()Ljava/lang/String;
    .locals 1

    .line 272
    invoke-direct {p0}, Lorg/minidns/dnsname/DnsName;->setHostnameAndDomainpartIfRequired()V

    .line 273
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->domainpart:Ljava/lang/String;

    return-object v0
.end method

.method public getHostpart()Ljava/lang/String;
    .locals 1

    .line 282
    invoke-direct {p0}, Lorg/minidns/dnsname/DnsName;->setHostnameAndDomainpartIfRequired()V

    .line 283
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->hostpart:Ljava/lang/String;

    return-object v0
.end method

.method public getHostpartLabel()Lorg/minidns/dnslabel/DnsLabel;
    .locals 2

    .line 287
    invoke-direct {p0}, Lorg/minidns/dnsname/DnsName;->setLabelsIfRequired()V

    .line 288
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->labels:[Lorg/minidns/dnslabel/DnsLabel;

    array-length v1, v0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLabel(I)Lorg/minidns/dnslabel/DnsLabel;
    .locals 1
    .param p1, "labelNum"    # I

    .line 546
    invoke-direct {p0}, Lorg/minidns/dnsname/DnsName;->setLabelsIfRequired()V

    .line 547
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->labels:[Lorg/minidns/dnslabel/DnsLabel;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLabelCount()I
    .locals 1

    .line 529
    invoke-direct {p0}, Lorg/minidns/dnsname/DnsName;->setLabelsIfRequired()V

    .line 530
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->labels:[Lorg/minidns/dnslabel/DnsLabel;

    array-length v0, v0

    return v0
.end method

.method public getLabels()[Lorg/minidns/dnslabel/DnsLabel;
    .locals 1

    .line 540
    invoke-direct {p0}, Lorg/minidns/dnsname/DnsName;->setLabelsIfRequired()V

    .line 541
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->labels:[Lorg/minidns/dnslabel/DnsLabel;

    invoke-virtual {v0}, [Lorg/minidns/dnslabel/DnsLabel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/minidns/dnslabel/DnsLabel;

    return-object v0
.end method

.method public getParent()Lorg/minidns/dnsname/DnsName;
    .locals 1

    .line 593
    invoke-virtual {p0}, Lorg/minidns/dnsname/DnsName;->isRootLabel()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/minidns/dnsname/DnsName;->ROOT:Lorg/minidns/dnsname/DnsName;

    return-object v0

    .line 594
    :cond_0
    invoke-virtual {p0}, Lorg/minidns/dnsname/DnsName;->getLabelCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/minidns/dnsname/DnsName;->stripToLabels(I)Lorg/minidns/dnsname/DnsName;

    move-result-object v0

    return-object v0
.end method

.method public getRawAce()Ljava/lang/String;
    .locals 1

    .line 255
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->rawAce:Ljava/lang/String;

    return-object v0
.end method

.method public getRawBytes()[B
    .locals 1

    .line 195
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->rawBytes:[B

    if-nez v0, :cond_0

    .line 196
    invoke-direct {p0}, Lorg/minidns/dnsname/DnsName;->setLabelsIfRequired()V

    .line 197
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->rawLabels:[Lorg/minidns/dnslabel/DnsLabel;

    invoke-static {v0}, Lorg/minidns/dnsname/DnsName;->toBytes([Lorg/minidns/dnslabel/DnsLabel;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/dnsname/DnsName;->rawBytes:[B

    .line 200
    :cond_0
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->rawBytes:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getRawLabels()[Lorg/minidns/dnslabel/DnsLabel;
    .locals 1

    .line 557
    invoke-direct {p0}, Lorg/minidns/dnsname/DnsName;->setLabelsIfRequired()V

    .line 558
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->rawLabels:[Lorg/minidns/dnslabel/DnsLabel;

    invoke-virtual {v0}, [Lorg/minidns/dnslabel/DnsLabel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/minidns/dnslabel/DnsLabel;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 490
    iget v0, p0, Lorg/minidns/dnsname/DnsName;->hashCode:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/minidns/dnsname/DnsName;->isRootLabel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    invoke-direct {p0}, Lorg/minidns/dnsname/DnsName;->setBytesIfRequired()V

    .line 492
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->bytes:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lorg/minidns/dnsname/DnsName;->hashCode:I

    .line 494
    :cond_0
    iget v0, p0, Lorg/minidns/dnsname/DnsName;->hashCode:I

    return v0
.end method

.method public isChildOf(Lorg/minidns/dnsname/DnsName;)Z
    .locals 4
    .param p1, "parent"    # Lorg/minidns/dnsname/DnsName;

    .line 514
    invoke-direct {p0}, Lorg/minidns/dnsname/DnsName;->setLabelsIfRequired()V

    .line 515
    invoke-direct {p1}, Lorg/minidns/dnsname/DnsName;->setLabelsIfRequired()V

    .line 517
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->labels:[Lorg/minidns/dnslabel/DnsLabel;

    array-length v0, v0

    iget-object v1, p1, Lorg/minidns/dnsname/DnsName;->labels:[Lorg/minidns/dnslabel/DnsLabel;

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 518
    return v2

    .line 520
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lorg/minidns/dnsname/DnsName;->labels:[Lorg/minidns/dnslabel/DnsLabel;

    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 521
    iget-object v3, p0, Lorg/minidns/dnsname/DnsName;->labels:[Lorg/minidns/dnslabel/DnsLabel;

    aget-object v3, v3, v0

    aget-object v1, v1, v0

    invoke-virtual {v3, v1}, Lorg/minidns/dnslabel/DnsLabel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 522
    return v2

    .line 520
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 525
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public isDirectChildOf(Lorg/minidns/dnsname/DnsName;)Z
    .locals 6
    .param p1, "parent"    # Lorg/minidns/dnsname/DnsName;

    .line 498
    invoke-direct {p0}, Lorg/minidns/dnsname/DnsName;->setLabelsIfRequired()V

    .line 499
    invoke-direct {p1}, Lorg/minidns/dnsname/DnsName;->setLabelsIfRequired()V

    .line 500
    iget-object v0, p1, Lorg/minidns/dnsname/DnsName;->labels:[Lorg/minidns/dnslabel/DnsLabel;

    array-length v0, v0

    .line 502
    .local v0, "parentLabelsCount":I
    iget-object v1, p0, Lorg/minidns/dnsname/DnsName;->labels:[Lorg/minidns/dnslabel/DnsLabel;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    if-eq v1, v0, :cond_0

    .line 503
    return v3

    .line 505
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p1, Lorg/minidns/dnsname/DnsName;->labels:[Lorg/minidns/dnslabel/DnsLabel;

    array-length v5, v4

    if-ge v1, v5, :cond_2

    .line 506
    iget-object v5, p0, Lorg/minidns/dnsname/DnsName;->labels:[Lorg/minidns/dnslabel/DnsLabel;

    aget-object v5, v5, v1

    aget-object v4, v4, v1

    invoke-virtual {v5, v4}, Lorg/minidns/dnslabel/DnsLabel;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 507
    return v3

    .line 505
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 510
    .end local v1    # "i":I
    :cond_2
    return v2
.end method

.method public isRootLabel()Z
    .locals 2

    .line 598
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public length()I
    .locals 1

    .line 316
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 304
    iget v0, p0, Lorg/minidns/dnsname/DnsName;->size:I

    if-gez v0, :cond_1

    .line 305
    invoke-virtual {p0}, Lorg/minidns/dnsname/DnsName;->isRootLabel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    const/4 v0, 0x1

    iput v0, p0, Lorg/minidns/dnsname/DnsName;->size:I

    goto :goto_0

    .line 308
    :cond_0
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/minidns/dnsname/DnsName;->size:I

    .line 311
    :cond_1
    :goto_0
    iget v0, p0, Lorg/minidns/dnsname/DnsName;->size:I

    return v0
.end method

.method public stripToLabels(I)Lorg/minidns/dnsname/DnsName;
    .locals 3
    .param p1, "labelCount"    # I

    .line 562
    invoke-direct {p0}, Lorg/minidns/dnsname/DnsName;->setLabelsIfRequired()V

    .line 564
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->labels:[Lorg/minidns/dnslabel/DnsLabel;

    array-length v1, v0

    if-gt p1, v1, :cond_2

    .line 568
    array-length v0, v0

    if-ne p1, v0, :cond_0

    .line 569
    return-object p0

    .line 572
    :cond_0
    if-nez p1, :cond_1

    .line 573
    sget-object v0, Lorg/minidns/dnsname/DnsName;->ROOT:Lorg/minidns/dnsname/DnsName;

    return-object v0

    .line 576
    :cond_1
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->rawLabels:[Lorg/minidns/dnslabel/DnsLabel;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/minidns/dnslabel/DnsLabel;

    .line 578
    .local v0, "stripedLabels":[Lorg/minidns/dnslabel/DnsLabel;
    new-instance v2, Lorg/minidns/dnsname/DnsName;

    invoke-direct {v2, v0, v1}, Lorg/minidns/dnsname/DnsName;-><init>([Lorg/minidns/dnslabel/DnsLabel;Z)V

    return-object v2

    .line 565
    .end local v0    # "stripedLabels":[Lorg/minidns/dnslabel/DnsLabel;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 326
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 331
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->ace:Ljava/lang/String;

    return-object v0
.end method

.method public writeToStream(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    invoke-direct {p0}, Lorg/minidns/dnsname/DnsName;->setBytesIfRequired()V

    .line 181
    iget-object v0, p0, Lorg/minidns/dnsname/DnsName;->bytes:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 182
    return-void
.end method
