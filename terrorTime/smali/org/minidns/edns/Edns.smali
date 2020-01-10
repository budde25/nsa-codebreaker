.class public Lorg/minidns/edns/Edns;
.super Ljava/lang/Object;
.source "Edns.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/minidns/edns/Edns$Builder;,
        Lorg/minidns/edns/Edns$OptionCode;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final FLAG_DNSSEC_OK:I = 0x8000


# instance fields
.field public final dnssecOk:Z

.field public final extendedRcode:I

.field public final flags:I

.field private optRecord:Lorg/minidns/record/Record;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/minidns/record/Record<",
            "Lorg/minidns/record/OPT;",
            ">;"
        }
    .end annotation
.end field

.field private terminalOutputCache:Ljava/lang/String;

.field public final udpPayloadSize:I

.field public final variablePart:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/minidns/edns/EdnsOption;",
            ">;"
        }
    .end annotation
.end field

.field public final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/minidns/edns/Edns$Builder;)V
    .locals 2
    .param p1, "builder"    # Lorg/minidns/edns/Edns$Builder;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-static {p1}, Lorg/minidns/edns/Edns$Builder;->access$000(Lorg/minidns/edns/Edns$Builder;)I

    move-result v0

    iput v0, p0, Lorg/minidns/edns/Edns;->udpPayloadSize:I

    .line 117
    invoke-static {p1}, Lorg/minidns/edns/Edns$Builder;->access$100(Lorg/minidns/edns/Edns$Builder;)I

    move-result v0

    iput v0, p0, Lorg/minidns/edns/Edns;->extendedRcode:I

    .line 118
    invoke-static {p1}, Lorg/minidns/edns/Edns$Builder;->access$200(Lorg/minidns/edns/Edns$Builder;)I

    move-result v0

    iput v0, p0, Lorg/minidns/edns/Edns;->version:I

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "flags":I
    invoke-static {p1}, Lorg/minidns/edns/Edns$Builder;->access$300(Lorg/minidns/edns/Edns$Builder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    const v1, 0x8000

    or-int/2addr v0, v1

    .line 123
    :cond_0
    invoke-static {p1}, Lorg/minidns/edns/Edns$Builder;->access$300(Lorg/minidns/edns/Edns$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/minidns/edns/Edns;->dnssecOk:Z

    .line 124
    iput v0, p0, Lorg/minidns/edns/Edns;->flags:I

    .line 125
    invoke-static {p1}, Lorg/minidns/edns/Edns$Builder;->access$400(Lorg/minidns/edns/Edns$Builder;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 126
    invoke-static {p1}, Lorg/minidns/edns/Edns$Builder;->access$400(Lorg/minidns/edns/Edns$Builder;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/minidns/edns/Edns;->variablePart:Ljava/util/List;

    goto :goto_0

    .line 128
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/minidns/edns/Edns;->variablePart:Ljava/util/List;

    .line 130
    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/minidns/record/Record;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/record/Record<",
            "Lorg/minidns/record/OPT;",
            ">;)V"
        }
    .end annotation

    .line 101
    .local p1, "optRecord":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<Lorg/minidns/record/OPT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    nop

    .line 103
    iget v0, p1, Lorg/minidns/record/Record;->clazzValue:I

    iput v0, p0, Lorg/minidns/edns/Edns;->udpPayloadSize:I

    .line 104
    iget-wide v0, p1, Lorg/minidns/record/Record;->ttl:J

    const/16 v2, 0x8

    shr-long/2addr v0, v2

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lorg/minidns/edns/Edns;->extendedRcode:I

    .line 105
    iget-wide v0, p1, Lorg/minidns/record/Record;->ttl:J

    const/16 v4, 0x10

    shr-long/2addr v0, v4

    and-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lorg/minidns/edns/Edns;->version:I

    .line 106
    iget-wide v0, p1, Lorg/minidns/record/Record;->ttl:J

    long-to-int v0, v0

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Lorg/minidns/edns/Edns;->flags:I

    .line 108
    iget-wide v0, p1, Lorg/minidns/record/Record;->ttl:J

    const-wide/32 v2, 0x8000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/minidns/edns/Edns;->dnssecOk:Z

    .line 110
    iget-object v0, p1, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    check-cast v0, Lorg/minidns/record/OPT;

    .line 111
    .local v0, "opt":Lorg/minidns/record/OPT;
    iget-object v1, v0, Lorg/minidns/record/OPT;->variablePart:Ljava/util/List;

    iput-object v1, p0, Lorg/minidns/edns/Edns;->variablePart:Ljava/util/List;

    .line 112
    iput-object p1, p0, Lorg/minidns/edns/Edns;->optRecord:Lorg/minidns/record/Record;

    .line 113
    return-void
.end method

.method public static builder()Lorg/minidns/edns/Edns$Builder;
    .locals 2

    .line 192
    new-instance v0, Lorg/minidns/edns/Edns$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/minidns/edns/Edns$Builder;-><init>(Lorg/minidns/edns/Edns$1;)V

    return-object v0
.end method

.method public static fromRecord(Lorg/minidns/record/Record;)Lorg/minidns/edns/Edns;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/Data;",
            ">;)",
            "Lorg/minidns/edns/Edns;"
        }
    .end annotation

    .line 184
    .local p0, "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    iget-object v0, p0, Lorg/minidns/record/Record;->type:Lorg/minidns/record/Record$TYPE;

    sget-object v1, Lorg/minidns/record/Record$TYPE;->OPT:Lorg/minidns/record/Record$TYPE;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 187
    :cond_0
    move-object v0, p0

    .line 188
    .local v0, "optRecord":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<Lorg/minidns/record/OPT;>;"
    new-instance v1, Lorg/minidns/edns/Edns;

    invoke-direct {v1, v0}, Lorg/minidns/edns/Edns;-><init>(Lorg/minidns/record/Record;)V

    return-object v1
.end method


# virtual methods
.method public asRecord()Lorg/minidns/record/Record;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/minidns/record/Record<",
            "Lorg/minidns/record/OPT;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lorg/minidns/edns/Edns;->optRecord:Lorg/minidns/record/Record;

    if-nez v0, :cond_0

    .line 144
    iget v0, p0, Lorg/minidns/edns/Edns;->flags:I

    int-to-long v0, v0

    .line 145
    .local v0, "optFlags":J
    iget v2, p0, Lorg/minidns/edns/Edns;->extendedRcode:I

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 146
    iget v2, p0, Lorg/minidns/edns/Edns;->version:I

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    or-long/2addr v0, v2

    .line 147
    new-instance v2, Lorg/minidns/record/Record;

    sget-object v5, Lorg/minidns/dnsname/DnsName;->ROOT:Lorg/minidns/dnsname/DnsName;

    sget-object v6, Lorg/minidns/record/Record$TYPE;->OPT:Lorg/minidns/record/Record$TYPE;

    iget v7, p0, Lorg/minidns/edns/Edns;->udpPayloadSize:I

    new-instance v10, Lorg/minidns/record/OPT;

    iget-object v3, p0, Lorg/minidns/edns/Edns;->variablePart:Ljava/util/List;

    invoke-direct {v10, v3}, Lorg/minidns/record/OPT;-><init>(Ljava/util/List;)V

    move-object v4, v2

    move-wide v8, v0

    invoke-direct/range {v4 .. v10}, Lorg/minidns/record/Record;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;IJLorg/minidns/record/Data;)V

    iput-object v2, p0, Lorg/minidns/edns/Edns;->optRecord:Lorg/minidns/record/Record;

    .line 149
    .end local v0    # "optFlags":J
    :cond_0
    iget-object v0, p0, Lorg/minidns/edns/Edns;->optRecord:Lorg/minidns/record/Record;

    return-object v0
.end method

.method public asTerminalOutput()Ljava/lang/String;
    .locals 5

    .line 155
    iget-object v0, p0, Lorg/minidns/edns/Edns;->terminalOutputCache:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "EDNS: version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/minidns/edns/Edns;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flags:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget-boolean v1, p0, Lorg/minidns/edns/Edns;->dnssecOk:Z

    if-eqz v1, :cond_0

    .line 159
    const-string v1, " do"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    :cond_0
    const-string v1, "; udp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/minidns/edns/Edns;->udpPayloadSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    iget-object v1, p0, Lorg/minidns/edns/Edns;->variablePart:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 162
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    iget-object v2, p0, Lorg/minidns/edns/Edns;->variablePart:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 164
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/minidns/edns/EdnsOption;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 165
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/minidns/edns/EdnsOption;

    .line 166
    .local v3, "edns":Lorg/minidns/edns/EdnsOption;
    invoke-virtual {v3}, Lorg/minidns/edns/EdnsOption;->getOptionCode()Lorg/minidns/edns/Edns$OptionCode;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v3}, Lorg/minidns/edns/EdnsOption;->asTerminalOutput()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    .end local v3    # "edns":Lorg/minidns/edns/EdnsOption;
    :cond_1
    goto :goto_0

    .line 173
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/minidns/edns/EdnsOption;>;"
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/minidns/edns/Edns;->terminalOutputCache:Ljava/lang/String;

    .line 175
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    iget-object v0, p0, Lorg/minidns/edns/Edns;->terminalOutputCache:Ljava/lang/String;

    return-object v0
.end method

.method public getEdnsOption(Lorg/minidns/edns/Edns$OptionCode;)Lorg/minidns/edns/EdnsOption;
    .locals 3
    .param p1, "optionCode"    # Lorg/minidns/edns/Edns$OptionCode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Lorg/minidns/edns/EdnsOption;",
            ">(",
            "Lorg/minidns/edns/Edns$OptionCode;",
            ")TO;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lorg/minidns/edns/Edns;->variablePart:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/minidns/edns/EdnsOption;

    .line 135
    .local v1, "o":Lorg/minidns/edns/EdnsOption;
    invoke-virtual {v1}, Lorg/minidns/edns/EdnsOption;->getOptionCode()Lorg/minidns/edns/Edns$OptionCode;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/minidns/edns/Edns$OptionCode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    return-object v1

    .line 138
    .end local v1    # "o":Lorg/minidns/edns/EdnsOption;
    :cond_0
    goto :goto_0

    .line 139
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 180
    invoke-virtual {p0}, Lorg/minidns/edns/Edns;->asTerminalOutput()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
