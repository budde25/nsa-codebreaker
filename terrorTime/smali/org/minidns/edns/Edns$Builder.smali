.class public Lorg/minidns/edns/Edns$Builder;
.super Ljava/lang/Object;
.source "Edns.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/edns/Edns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private dnssecOk:Z

.field private extendedRcode:I

.field private udpPayloadSize:I

.field private variablePart:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/minidns/edns/EdnsOption;",
            ">;"
        }
    .end annotation
.end field

.field private version:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    return-void
.end method

.method synthetic constructor <init>(Lorg/minidns/edns/Edns$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/minidns/edns/Edns$1;

    .line 195
    invoke-direct {p0}, Lorg/minidns/edns/Edns$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/minidns/edns/Edns$Builder;)I
    .locals 1
    .param p0, "x0"    # Lorg/minidns/edns/Edns$Builder;

    .line 195
    iget v0, p0, Lorg/minidns/edns/Edns$Builder;->udpPayloadSize:I

    return v0
.end method

.method static synthetic access$100(Lorg/minidns/edns/Edns$Builder;)I
    .locals 1
    .param p0, "x0"    # Lorg/minidns/edns/Edns$Builder;

    .line 195
    iget v0, p0, Lorg/minidns/edns/Edns$Builder;->extendedRcode:I

    return v0
.end method

.method static synthetic access$200(Lorg/minidns/edns/Edns$Builder;)I
    .locals 1
    .param p0, "x0"    # Lorg/minidns/edns/Edns$Builder;

    .line 195
    iget v0, p0, Lorg/minidns/edns/Edns$Builder;->version:I

    return v0
.end method

.method static synthetic access$300(Lorg/minidns/edns/Edns$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/minidns/edns/Edns$Builder;

    .line 195
    iget-boolean v0, p0, Lorg/minidns/edns/Edns$Builder;->dnssecOk:Z

    return v0
.end method

.method static synthetic access$400(Lorg/minidns/edns/Edns$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/minidns/edns/Edns$Builder;

    .line 195
    iget-object v0, p0, Lorg/minidns/edns/Edns$Builder;->variablePart:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addEdnsOption(Lorg/minidns/edns/EdnsOption;)Lorg/minidns/edns/Edns$Builder;
    .locals 2
    .param p1, "ednsOption"    # Lorg/minidns/edns/EdnsOption;

    .line 224
    iget-object v0, p0, Lorg/minidns/edns/Edns$Builder;->variablePart:Ljava/util/List;

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/minidns/edns/Edns$Builder;->variablePart:Ljava/util/List;

    .line 227
    :cond_0
    iget-object v0, p0, Lorg/minidns/edns/Edns$Builder;->variablePart:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    return-object p0
.end method

.method public build()Lorg/minidns/edns/Edns;
    .locals 1

    .line 232
    new-instance v0, Lorg/minidns/edns/Edns;

    invoke-direct {v0, p0}, Lorg/minidns/edns/Edns;-><init>(Lorg/minidns/edns/Edns$Builder;)V

    return-object v0
.end method

.method public setDnssecOk()Lorg/minidns/edns/Edns$Builder;
    .locals 1

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/minidns/edns/Edns$Builder;->dnssecOk:Z

    .line 220
    return-object p0
.end method

.method public setDnssecOk(Z)Lorg/minidns/edns/Edns$Builder;
    .locals 0
    .param p1, "dnssecOk"    # Z

    .line 214
    iput-boolean p1, p0, Lorg/minidns/edns/Edns$Builder;->dnssecOk:Z

    .line 215
    return-object p0
.end method

.method public setUdpPayloadSize(I)Lorg/minidns/edns/Edns$Builder;
    .locals 3
    .param p1, "udpPayloadSize"    # I

    .line 206
    const v0, 0xffff

    if-gt p1, v0, :cond_0

    .line 209
    iput p1, p0, Lorg/minidns/edns/Edns$Builder;->udpPayloadSize:I

    .line 210
    return-object p0

    .line 207
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UDP payload size must not be greater than 65536, was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
