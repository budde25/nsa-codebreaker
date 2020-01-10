.class public Lcom/badguy/terrortime/IntAppField;
.super Lcom/badguy/terrortime/AppField;
.source "IntAppField.java"


# static fields
.field private static DEFAULTVALUE:Ljava/lang/Integer;


# instance fields
.field private value:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/badguy/terrortime/IntAppField;->DEFAULTVALUE:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 8
    sget-object v0, Lcom/badguy/terrortime/AppFieldTypes;->INT:Lcom/badguy/terrortime/AppFieldTypes;

    invoke-direct {p0, v0}, Lcom/badguy/terrortime/AppField;-><init>(Lcom/badguy/terrortime/AppFieldTypes;)V

    .line 9
    invoke-virtual {p0}, Lcom/badguy/terrortime/IntAppField;->setValueToDefault()V

    .line 10
    return-void
.end method

.method public constructor <init>(Lcom/badguy/terrortime/IntAppField;)V
    .locals 1
    .param p1, "iField"    # Lcom/badguy/terrortime/IntAppField;

    .line 18
    sget-object v0, Lcom/badguy/terrortime/AppFieldTypes;->INT:Lcom/badguy/terrortime/AppFieldTypes;

    invoke-direct {p0, v0}, Lcom/badguy/terrortime/AppField;-><init>(Lcom/badguy/terrortime/AppFieldTypes;)V

    .line 19
    if-eqz p1, :cond_0

    .line 20
    invoke-virtual {p1}, Lcom/badguy/terrortime/IntAppField;->getValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/badguy/terrortime/IntAppField;->value:Ljava/lang/Integer;

    goto :goto_0

    .line 22
    :cond_0
    sget-object v0, Lcom/badguy/terrortime/IntAppField;->DEFAULTVALUE:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badguy/terrortime/IntAppField;->value:Ljava/lang/Integer;

    .line 23
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "i"    # Ljava/lang/Integer;

    .line 13
    sget-object v0, Lcom/badguy/terrortime/AppFieldTypes;->INT:Lcom/badguy/terrortime/AppFieldTypes;

    invoke-direct {p0, v0}, Lcom/badguy/terrortime/AppField;-><init>(Lcom/badguy/terrortime/AppFieldTypes;)V

    .line 14
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badguy/terrortime/IntAppField;->setValue(Ljava/lang/Integer;)V

    .line 15
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 75
    const-class v0, Lcom/badguy/terrortime/IntAppField;

    if-ne p0, p1, :cond_0

    .line 76
    const/4 v0, 0x1

    return v0

    .line 79
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/badguy/terrortime/IntAppField;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badguy/terrortime/IntAppField;

    invoke-virtual {v2}, Lcom/badguy/terrortime/IntAppField;->isDefaultValue()Z

    move-result v2

    invoke-virtual {p0}, Lcom/badguy/terrortime/IntAppField;->isDefaultValue()Z

    move-result v3

    if-eq v2, v3, :cond_2

    .line 83
    return v1

    .line 85
    :cond_2
    iget-object v1, p0, Lcom/badguy/terrortime/IntAppField;->value:Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badguy/terrortime/IntAppField;

    invoke-virtual {v0}, Lcom/badguy/terrortime/IntAppField;->getValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 80
    :cond_3
    :goto_0
    return v1
.end method

.method public final getValue()Ljava/lang/Integer;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/badguy/terrortime/IntAppField;->value:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 36
    const/4 v0, 0x0

    return-object v0

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/badguy/terrortime/IntAppField;->isDefaultValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    sget-object v0, Lcom/badguy/terrortime/IntAppField;->DEFAULTVALUE:Ljava/lang/Integer;

    return-object v0

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/badguy/terrortime/IntAppField;->value:Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/badguy/terrortime/IntAppField;->getValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final isDefaultValue()Z
    .locals 2

    .line 62
    invoke-virtual {p0}, Lcom/badguy/terrortime/IntAppField;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badguy/terrortime/IntAppField;->value:Ljava/lang/Integer;

    sget-object v1, Lcom/badguy/terrortime/IntAppField;->DEFAULTVALUE:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x1

    return v0

    .line 65
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isValid()Z
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/badguy/terrortime/IntAppField;->value:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 45
    const/4 v0, 0x1

    return v0

    .line 47
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final setValue(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Integer;

    .line 26
    if-eqz p1, :cond_0

    .line 27
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/badguy/terrortime/IntAppField;->value:Ljava/lang/Integer;

    goto :goto_0

    .line 30
    :cond_0
    sget-object v0, Lcom/badguy/terrortime/IntAppField;->DEFAULTVALUE:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badguy/terrortime/IntAppField;->value:Ljava/lang/Integer;

    .line 31
    :goto_0
    return-void
.end method

.method public final setValueToDefault()V
    .locals 1

    .line 52
    sget-object v0, Lcom/badguy/terrortime/IntAppField;->DEFAULTVALUE:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/badguy/terrortime/IntAppField;->value:Ljava/lang/Integer;

    .line 53
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/badguy/terrortime/IntAppField;->getValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final typeAsString()Ljava/lang/String;
    .locals 1

    .line 57
    const-string v0, "INTEGER"

    return-object v0
.end method
