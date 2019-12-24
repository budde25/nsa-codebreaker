.class public Lorg/minidns/edns/Nsid;
.super Lorg/minidns/edns/EdnsOption;
.source "Nsid.java"


# static fields
.field public static final REQUEST:Lorg/minidns/edns/Nsid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lorg/minidns/edns/Nsid;

    invoke-direct {v0}, Lorg/minidns/edns/Nsid;-><init>()V

    sput-object v0, Lorg/minidns/edns/Nsid;->REQUEST:Lorg/minidns/edns/Nsid;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 21
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-direct {p0, v0}, Lorg/minidns/edns/Nsid;-><init>([B)V

    .line 22
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "payload"    # [B

    .line 25
    invoke-direct {p0, p1}, Lorg/minidns/edns/EdnsOption;-><init>([B)V

    .line 26
    return-void
.end method


# virtual methods
.method protected asTerminalOutputInternal()Ljava/lang/CharSequence;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/minidns/edns/Nsid;->optionData:[B

    invoke-static {v0}, Lorg/minidns/util/Hex;->from([B)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getOptionCode()Lorg/minidns/edns/Edns$OptionCode;
    .locals 1

    .line 30
    sget-object v0, Lorg/minidns/edns/Edns$OptionCode;->NSID:Lorg/minidns/edns/Edns$OptionCode;

    return-object v0
.end method

.method protected toStringInternal()Ljava/lang/CharSequence;
    .locals 4

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/minidns/edns/Edns$OptionCode;->NSID:Lorg/minidns/edns/Edns$OptionCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "res":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/minidns/edns/Nsid;->optionData:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    return-object v0
.end method
