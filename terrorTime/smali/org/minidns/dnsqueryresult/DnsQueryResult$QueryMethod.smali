.class public final enum Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;
.super Ljava/lang/Enum;
.source "DnsQueryResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/dnsqueryresult/DnsQueryResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QueryMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;

.field public static final enum asyncTcp:Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;

.field public static final enum asyncUdp:Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;

.field public static final enum cachedDirect:Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;

.field public static final enum cachedSynthesized:Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;

.field public static final enum tcp:Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;

.field public static final enum testWorld:Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;

.field public static final enum udp:Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 19
    new-instance v0, Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;

    const/4 v1, 0x0

    const-string v2, "udp"

    invoke-direct {v0, v2, v1}, Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;->udp:Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;

    .line 20
    new-instance v0, Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;

    const/4 v2, 0x1

    const-string v3, "tcp"

    invoke-direct {v0, v3, v2}, Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;->tcp:Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;

    .line 21
    new-instance v0, Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;

    const/4 v3, 0x2

    const-string v4, "asyncUdp"

    invoke-direct {v0, v4, v3}, Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;->asyncUdp:Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;

    .line 22
    new-instance v0, Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;

    const/4 v4, 0x3

    const-string v5, "asyncTcp"

    invoke-direct {v0, v5, v4}, Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;->asyncTcp:Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;

    .line 23
    new-instance v0, Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;

    const/4 v5, 0x4

    const-string v6, "cachedDirect"

    invoke-direct {v0, v6, v5}, Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;->cachedDirect:Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;

    .line 24
    new-instance v0, Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;

    const/4 v6, 0x5

    const-string v7, "cachedSynthesized"

    invoke-direct {v0, v7, v6}, Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;->cachedSynthesized:Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;

    .line 25
    new-instance v0, Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;

    const/4 v7, 0x6

    const-string v8, "testWorld"

    invoke-direct {v0, v8, v7}, Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;->testWorld:Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;

    .line 18
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;

    sget-object v8, Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;->udp:Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;

    aput-object v8, v0, v1

    sget-object v1, Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;->tcp:Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;

    aput-object v1, v0, v2

    sget-object v1, Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;->asyncUdp:Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;

    aput-object v1, v0, v3

    sget-object v1, Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;->asyncTcp:Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;

    aput-object v1, v0, v4

    sget-object v1, Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;->cachedDirect:Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;

    aput-object v1, v0, v5

    sget-object v1, Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;->cachedSynthesized:Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;

    aput-object v1, v0, v6

    sget-object v1, Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;->testWorld:Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;

    aput-object v1, v0, v7

    sput-object v0, Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;->$VALUES:[Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 18
    const-class v0, Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;

    return-object v0
.end method

.method public static values()[Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;
    .locals 1

    .line 18
    sget-object v0, Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;->$VALUES:[Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;

    invoke-virtual {v0}, [Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/minidns/dnsqueryresult/DnsQueryResult$QueryMethod;

    return-object v0
.end method
