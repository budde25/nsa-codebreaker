.class synthetic Lorg/minidns/DnsClient$3;
.super Ljava/lang/Object;
.source "DnsClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/DnsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$minidns$AbstractDnsClient$IpVersionSetting:[I

.field static final synthetic $SwitchMap$org$minidns$dnsmessage$DnsMessage$RESPONSE_CODE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 178
    invoke-static {}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->values()[Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/minidns/DnsClient$3;->$SwitchMap$org$minidns$dnsmessage$DnsMessage$RESPONSE_CODE:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lorg/minidns/DnsClient$3;->$SwitchMap$org$minidns$dnsmessage$DnsMessage$RESPONSE_CODE:[I

    sget-object v2, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->NO_ERROR:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    invoke-virtual {v2}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lorg/minidns/DnsClient$3;->$SwitchMap$org$minidns$dnsmessage$DnsMessage$RESPONSE_CODE:[I

    sget-object v3, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->NX_DOMAIN:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    invoke-virtual {v3}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 108
    :goto_1
    invoke-static {}, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->values()[Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lorg/minidns/DnsClient$3;->$SwitchMap$org$minidns$AbstractDnsClient$IpVersionSetting:[I

    :try_start_2
    sget-object v2, Lorg/minidns/DnsClient$3;->$SwitchMap$org$minidns$AbstractDnsClient$IpVersionSetting:[I

    sget-object v3, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->v4v6:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    invoke-virtual {v3}, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    sget-object v0, Lorg/minidns/DnsClient$3;->$SwitchMap$org$minidns$AbstractDnsClient$IpVersionSetting:[I

    sget-object v2, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->v6v4:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    invoke-virtual {v2}, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    :try_start_4
    sget-object v0, Lorg/minidns/DnsClient$3;->$SwitchMap$org$minidns$AbstractDnsClient$IpVersionSetting:[I

    sget-object v1, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->v4only:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    invoke-virtual {v1}, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    :try_start_5
    sget-object v0, Lorg/minidns/DnsClient$3;->$SwitchMap$org$minidns$AbstractDnsClient$IpVersionSetting:[I

    sget-object v1, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->v6only:Lorg/minidns/AbstractDnsClient$IpVersionSetting;

    invoke-virtual {v1}, Lorg/minidns/AbstractDnsClient$IpVersionSetting;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    :goto_5
    return-void
.end method
