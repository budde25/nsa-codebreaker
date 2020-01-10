.class public Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;
.super Ljava/lang/Object;
.source "NetworkDataSourceWithAccounting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/source/NetworkDataSourceWithAccounting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stats"
.end annotation


# instance fields
.field public final averageResponseSize:I

.field public final averageTcpResponseSize:I

.field public final averageUdpResponseSize:I

.field public final failedQueries:I

.field public final failedTcpQueries:I

.field public final failedUdpQueries:I

.field public final responseSize:I

.field private stringCache:Ljava/lang/String;

.field public final successfulQueries:I

.field public final successfulTcpQueries:I

.field public final successfulUdpQueries:I

.field public final tcpResponseSize:I

.field public final udpResponseSize:I


# direct methods
.method private constructor <init>(Lorg/minidns/source/NetworkDataSourceWithAccounting;)V
    .locals 3
    .param p1, "ndswa"    # Lorg/minidns/source/NetworkDataSourceWithAccounting;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-static {p1}, Lorg/minidns/source/NetworkDataSourceWithAccounting;->access$100(Lorg/minidns/source/NetworkDataSourceWithAccounting;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;->successfulQueries:I

    .line 116
    invoke-static {p1}, Lorg/minidns/source/NetworkDataSourceWithAccounting;->access$200(Lorg/minidns/source/NetworkDataSourceWithAccounting;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;->responseSize:I

    .line 117
    invoke-static {p1}, Lorg/minidns/source/NetworkDataSourceWithAccounting;->access$300(Lorg/minidns/source/NetworkDataSourceWithAccounting;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;->failedQueries:I

    .line 119
    invoke-static {p1}, Lorg/minidns/source/NetworkDataSourceWithAccounting;->access$400(Lorg/minidns/source/NetworkDataSourceWithAccounting;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;->successfulUdpQueries:I

    .line 120
    invoke-static {p1}, Lorg/minidns/source/NetworkDataSourceWithAccounting;->access$500(Lorg/minidns/source/NetworkDataSourceWithAccounting;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;->udpResponseSize:I

    .line 121
    invoke-static {p1}, Lorg/minidns/source/NetworkDataSourceWithAccounting;->access$600(Lorg/minidns/source/NetworkDataSourceWithAccounting;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;->failedUdpQueries:I

    .line 123
    invoke-static {p1}, Lorg/minidns/source/NetworkDataSourceWithAccounting;->access$700(Lorg/minidns/source/NetworkDataSourceWithAccounting;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;->successfulTcpQueries:I

    .line 124
    invoke-static {p1}, Lorg/minidns/source/NetworkDataSourceWithAccounting;->access$800(Lorg/minidns/source/NetworkDataSourceWithAccounting;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;->tcpResponseSize:I

    .line 125
    invoke-static {p1}, Lorg/minidns/source/NetworkDataSourceWithAccounting;->access$900(Lorg/minidns/source/NetworkDataSourceWithAccounting;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;->failedTcpQueries:I

    .line 128
    iget v0, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;->successfulQueries:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget v2, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;->responseSize:I

    div-int v0, v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;->averageResponseSize:I

    .line 129
    iget v0, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;->successfulUdpQueries:I

    if-lez v0, :cond_1

    iget v2, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;->udpResponseSize:I

    div-int v0, v2, v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput v0, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;->averageUdpResponseSize:I

    .line 130
    iget v0, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;->successfulTcpQueries:I

    if-lez v0, :cond_2

    iget v1, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;->tcpResponseSize:I

    div-int/2addr v1, v0

    :cond_2
    iput v1, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;->averageTcpResponseSize:I

    .line 131
    return-void
.end method

.method synthetic constructor <init>(Lorg/minidns/source/NetworkDataSourceWithAccounting;Lorg/minidns/source/NetworkDataSourceWithAccounting$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/minidns/source/NetworkDataSourceWithAccounting;
    .param p2, "x1"    # Lorg/minidns/source/NetworkDataSourceWithAccounting$1;

    .line 96
    invoke-direct {p0, p1}, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;-><init>(Lorg/minidns/source/NetworkDataSourceWithAccounting;)V

    return-void
.end method

.method private static toString(I)Ljava/lang/String;
    .locals 4
    .param p0, "i"    # I

    .line 157
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%,09d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 135
    iget-object v0, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;->stringCache:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 136
    return-object v0

    .line 138
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Stats\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "# Successful"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "# Failed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    const-string v2, "Resp. Size"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "Avg. Resp. Size"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    const-string v3, "Total\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;->successfulQueries:I

    invoke-static {v3}, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;->failedQueries:I

    invoke-static {v3}, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;->responseSize:I

    invoke-static {v3}, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;->averageResponseSize:I

    invoke-static {v3}, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    const-string v3, "UDP\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;->successfulUdpQueries:I

    invoke-static {v3}, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;->failedUdpQueries:I

    invoke-static {v3}, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;->udpResponseSize:I

    invoke-static {v3}, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;->averageUdpResponseSize:I

    .line 147
    invoke-static {v3}, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    const-string v3, "TCP\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;->successfulTcpQueries:I

    invoke-static {v3}, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;->failedTcpQueries:I

    invoke-static {v3}, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;->tcpResponseSize:I

    invoke-static {v3}, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;->averageTcpResponseSize:I

    .line 150
    invoke-static {v1}, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;->stringCache:Ljava/lang/String;

    .line 153
    iget-object v1, p0, Lorg/minidns/source/NetworkDataSourceWithAccounting$Stats;->stringCache:Ljava/lang/String;

    return-object v1
.end method
