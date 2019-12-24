.class public abstract Lorg/minidns/edns/EdnsOption;
.super Ljava/lang/Object;
.source "EdnsOption.java"


# instance fields
.field public final optionCode:I

.field protected final optionData:[B

.field public final optionLength:I

.field private terminalOutputCache:Ljava/lang/String;

.field private toStringCache:Ljava/lang/String;


# direct methods
.method protected constructor <init>(I[B)V
    .locals 1
    .param p1, "optionCode"    # I
    .param p2, "optionData"    # [B

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lorg/minidns/edns/EdnsOption;->optionCode:I

    .line 27
    array-length v0, p2

    iput v0, p0, Lorg/minidns/edns/EdnsOption;->optionLength:I

    .line 28
    iput-object p2, p0, Lorg/minidns/edns/EdnsOption;->optionData:[B

    .line 29
    return-void
.end method

.method protected constructor <init>([B)V
    .locals 1
    .param p1, "optionData"    # [B

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p0}, Lorg/minidns/edns/EdnsOption;->getOptionCode()Lorg/minidns/edns/Edns$OptionCode;

    move-result-object v0

    iget v0, v0, Lorg/minidns/edns/Edns$OptionCode;->asInt:I

    iput v0, p0, Lorg/minidns/edns/EdnsOption;->optionCode:I

    .line 33
    array-length v0, p1

    iput v0, p0, Lorg/minidns/edns/EdnsOption;->optionLength:I

    .line 34
    iput-object p1, p0, Lorg/minidns/edns/EdnsOption;->optionData:[B

    .line 35
    return-void
.end method

.method public static parse(I[B)Lorg/minidns/edns/EdnsOption;
    .locals 3
    .param p0, "intOptionCode"    # I
    .param p1, "optionData"    # [B

    .line 69
    invoke-static {p0}, Lorg/minidns/edns/Edns$OptionCode;->from(I)Lorg/minidns/edns/Edns$OptionCode;

    move-result-object v0

    .line 71
    .local v0, "optionCode":Lorg/minidns/edns/Edns$OptionCode;
    sget-object v1, Lorg/minidns/edns/EdnsOption$1;->$SwitchMap$org$minidns$edns$Edns$OptionCode:[I

    invoke-virtual {v0}, Lorg/minidns/edns/Edns$OptionCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 76
    new-instance v1, Lorg/minidns/edns/UnknownEdnsOption;

    invoke-direct {v1, p0, p1}, Lorg/minidns/edns/UnknownEdnsOption;-><init>(I[B)V

    .local v1, "res":Lorg/minidns/edns/EdnsOption;
    goto :goto_0

    .line 73
    .end local v1    # "res":Lorg/minidns/edns/EdnsOption;
    :cond_0
    new-instance v1, Lorg/minidns/edns/Nsid;

    invoke-direct {v1, p1}, Lorg/minidns/edns/Nsid;-><init>([B)V

    .line 74
    .restart local v1    # "res":Lorg/minidns/edns/EdnsOption;
    nop

    .line 79
    :goto_0
    return-object v1
.end method


# virtual methods
.method public final asTerminalOutput()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/minidns/edns/EdnsOption;->terminalOutputCache:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lorg/minidns/edns/EdnsOption;->asTerminalOutputInternal()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/edns/EdnsOption;->terminalOutputCache:Ljava/lang/String;

    .line 63
    :cond_0
    iget-object v0, p0, Lorg/minidns/edns/EdnsOption;->terminalOutputCache:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract asTerminalOutputInternal()Ljava/lang/CharSequence;
.end method

.method public abstract getOptionCode()Lorg/minidns/edns/Edns$OptionCode;
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/minidns/edns/EdnsOption;->toStringCache:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lorg/minidns/edns/EdnsOption;->toStringInternal()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/edns/EdnsOption;->toStringCache:Ljava/lang/String;

    .line 52
    :cond_0
    iget-object v0, p0, Lorg/minidns/edns/EdnsOption;->toStringCache:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract toStringInternal()Ljava/lang/CharSequence;
.end method

.method public final writeToDos(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    iget v0, p0, Lorg/minidns/edns/EdnsOption;->optionCode:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 39
    iget v0, p0, Lorg/minidns/edns/EdnsOption;->optionLength:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 40
    iget-object v0, p0, Lorg/minidns/edns/EdnsOption;->optionData:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 41
    return-void
.end method
