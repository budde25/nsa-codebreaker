.class public Lorg/minidns/edns/UnknownEdnsOption;
.super Lorg/minidns/edns/EdnsOption;
.source "UnknownEdnsOption.java"


# direct methods
.method protected constructor <init>(I[B)V
    .locals 0
    .param p1, "optionCode"    # I
    .param p2, "optionData"    # [B

    .line 19
    invoke-direct {p0, p1, p2}, Lorg/minidns/edns/EdnsOption;-><init>(I[B)V

    .line 20
    return-void
.end method


# virtual methods
.method protected asTerminalOutputInternal()Ljava/lang/CharSequence;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/minidns/edns/UnknownEdnsOption;->optionData:[B

    invoke-static {v0}, Lorg/minidns/util/Hex;->from([B)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getOptionCode()Lorg/minidns/edns/Edns$OptionCode;
    .locals 1

    .line 24
    sget-object v0, Lorg/minidns/edns/Edns$OptionCode;->UNKNOWN:Lorg/minidns/edns/Edns$OptionCode;

    return-object v0
.end method

.method protected toStringInternal()Ljava/lang/CharSequence;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lorg/minidns/edns/UnknownEdnsOption;->asTerminalOutputInternal()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
