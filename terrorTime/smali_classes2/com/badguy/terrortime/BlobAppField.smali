.class public Lcom/badguy/terrortime/BlobAppField;
.super Lcom/badguy/terrortime/AppField;
.source "BlobAppField.java"


# static fields
.field private static DEFAULTVALUE:[B


# instance fields
.field private value:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/badguy/terrortime/BlobAppField;->DEFAULTVALUE:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    sget-object v0, Lcom/badguy/terrortime/AppFieldTypes;->BIN:Lcom/badguy/terrortime/AppFieldTypes;

    invoke-direct {p0, v0}, Lcom/badguy/terrortime/AppField;-><init>(Lcom/badguy/terrortime/AppFieldTypes;)V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badguy/terrortime/BlobAppField;->value:[B

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/badguy/terrortime/BlobAppField;)V
    .locals 1
    .param p1, "bField"    # Lcom/badguy/terrortime/BlobAppField;

    .line 27
    sget-object v0, Lcom/badguy/terrortime/AppFieldTypes;->BIN:Lcom/badguy/terrortime/AppFieldTypes;

    invoke-direct {p0, v0}, Lcom/badguy/terrortime/AppField;-><init>(Lcom/badguy/terrortime/AppFieldTypes;)V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badguy/terrortime/BlobAppField;->value:[B

    .line 28
    invoke-virtual {p1}, Lcom/badguy/terrortime/BlobAppField;->getValue()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/BlobAppField;->setValue([B)V

    .line 29
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "blobBytes"    # [B

    .line 22
    sget-object v0, Lcom/badguy/terrortime/AppFieldTypes;->BIN:Lcom/badguy/terrortime/AppFieldTypes;

    invoke-direct {p0, v0}, Lcom/badguy/terrortime/AppField;-><init>(Lcom/badguy/terrortime/AppFieldTypes;)V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badguy/terrortime/BlobAppField;->value:[B

    .line 23
    invoke-virtual {p0, p1}, Lcom/badguy/terrortime/BlobAppField;->setValue([B)V

    .line 24
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 83
    const-class v0, Lcom/badguy/terrortime/BlobAppField;

    if-ne p0, p1, :cond_0

    .line 84
    const/4 v0, 0x1

    return v0

    .line 87
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/badguy/terrortime/BlobAppField;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/badguy/terrortime/BlobAppField;->isDefaultValue()Z

    move-result v2

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badguy/terrortime/BlobAppField;

    invoke-virtual {v3}, Lcom/badguy/terrortime/BlobAppField;->isDefaultValue()Z

    move-result v3

    if-eq v2, v3, :cond_2

    .line 91
    return v1

    .line 93
    :cond_2
    iget-object v1, p0, Lcom/badguy/terrortime/BlobAppField;->value:[B

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badguy/terrortime/BlobAppField;

    invoke-virtual {v0}, Lcom/badguy/terrortime/BlobAppField;->getValue()[B

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0

    .line 88
    :cond_3
    :goto_0
    return v1
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/badguy/terrortime/BlobAppField;->getValue()[B

    move-result-object v0

    return-object v0
.end method

.method public final getValue()[B
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/badguy/terrortime/BlobAppField;->value:[B

    if-nez v0, :cond_0

    .line 42
    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_0
    sget-object v1, Lcom/badguy/terrortime/BlobAppField;->DEFAULTVALUE:[B

    if-ne v0, v1, :cond_1

    .line 45
    return-object v1

    .line 47
    :cond_1
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public final isDefaultValue()Z
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/badguy/terrortime/BlobAppField;->value:[B

    sget-object v1, Lcom/badguy/terrortime/BlobAppField;->DEFAULTVALUE:[B

    if-ne v0, v1, :cond_0

    .line 68
    const/4 v0, 0x1

    return v0

    .line 70
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isValid()Z
    .locals 1

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public final setValue([B)V
    .locals 1
    .param p1, "newValue"    # [B

    .line 32
    if-eqz p1, :cond_0

    sget-object v0, Lcom/badguy/terrortime/BlobAppField;->DEFAULTVALUE:[B

    if-eq p1, v0, :cond_0

    .line 33
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/badguy/terrortime/BlobAppField;->value:[B

    goto :goto_0

    .line 36
    :cond_0
    sget-object v0, Lcom/badguy/terrortime/BlobAppField;->DEFAULTVALUE:[B

    iput-object v0, p0, Lcom/badguy/terrortime/BlobAppField;->value:[B

    .line 37
    :goto_0
    return-void
.end method

.method public final setValueToDefault()V
    .locals 1

    .line 57
    sget-object v0, Lcom/badguy/terrortime/BlobAppField;->DEFAULTVALUE:[B

    iput-object v0, p0, Lcom/badguy/terrortime/BlobAppField;->value:[B

    .line 58
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/badguy/terrortime/BlobAppField;->value:[B

    if-nez v0, :cond_0

    .line 76
    const-string v0, "null"

    return-object v0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/badguy/terrortime/BlobAppField;->getValue()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final typeAsString()Ljava/lang/String;
    .locals 1

    .line 62
    const-string v0, "BLOB"

    return-object v0
.end method
