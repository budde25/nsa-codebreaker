.class public Lcom/badguy/terrortime/TextAppField;
.super Lcom/badguy/terrortime/AppField;
.source "TextAppField.java"


# static fields
.field private static DEFAULTVALUE:Ljava/lang/String;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    const-string v0, ""

    sput-object v0, Lcom/badguy/terrortime/TextAppField;->DEFAULTVALUE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 8
    sget-object v0, Lcom/badguy/terrortime/AppFieldTypes;->TEXT:Lcom/badguy/terrortime/AppFieldTypes;

    invoke-direct {p0, v0}, Lcom/badguy/terrortime/AppField;-><init>(Lcom/badguy/terrortime/AppFieldTypes;)V

    .line 9
    invoke-virtual {p0}, Lcom/badguy/terrortime/TextAppField;->setValueToDefault()V

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .line 13
    sget-object v0, Lcom/badguy/terrortime/AppFieldTypes;->TEXT:Lcom/badguy/terrortime/AppFieldTypes;

    invoke-direct {p0, v0}, Lcom/badguy/terrortime/AppField;-><init>(Lcom/badguy/terrortime/AppFieldTypes;)V

    .line 14
    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/badguy/terrortime/TextAppField;->value:Ljava/lang/String;

    goto :goto_0

    .line 15
    :cond_0
    sget-object v0, Lcom/badguy/terrortime/TextAppField;->DEFAULTVALUE:Ljava/lang/String;

    iput-object v0, p0, Lcom/badguy/terrortime/TextAppField;->value:Ljava/lang/String;

    .line 16
    :goto_0
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 71
    const-class v0, Lcom/badguy/terrortime/TextAppField;

    if-ne p0, p1, :cond_0

    .line 72
    const/4 v0, 0x1

    return v0

    .line 75
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/badguy/terrortime/TextAppField;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badguy/terrortime/TextAppField;

    invoke-virtual {v2}, Lcom/badguy/terrortime/TextAppField;->isDefaultValue()Z

    move-result v2

    invoke-virtual {p0}, Lcom/badguy/terrortime/TextAppField;->isDefaultValue()Z

    move-result v3

    if-eq v2, v3, :cond_2

    .line 79
    return v1

    .line 81
    :cond_2
    iget-object v1, p0, Lcom/badguy/terrortime/TextAppField;->value:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badguy/terrortime/TextAppField;

    invoke-virtual {v0}, Lcom/badguy/terrortime/TextAppField;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 76
    :cond_3
    :goto_0
    return v1
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/badguy/terrortime/TextAppField;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/badguy/terrortime/TextAppField;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/badguy/terrortime/TextAppField;->isDefaultValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    sget-object v0, Lcom/badguy/terrortime/TextAppField;->DEFAULTVALUE:Ljava/lang/String;

    return-object v0

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/badguy/terrortime/TextAppField;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isDefaultValue()Z
    .locals 2

    .line 57
    invoke-virtual {p0}, Lcom/badguy/terrortime/TextAppField;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badguy/terrortime/TextAppField;->value:Ljava/lang/String;

    sget-object v1, Lcom/badguy/terrortime/TextAppField;->DEFAULTVALUE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x1

    return v0

    .line 60
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isValid()Z
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/badguy/terrortime/TextAppField;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 40
    const/4 v0, 0x1

    return v0

    .line 42
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "newValue"    # Ljava/lang/String;

    .line 19
    if-eqz p1, :cond_0

    .line 20
    iput-object p1, p0, Lcom/badguy/terrortime/TextAppField;->value:Ljava/lang/String;

    goto :goto_0

    .line 23
    :cond_0
    sget-object v0, Lcom/badguy/terrortime/TextAppField;->DEFAULTVALUE:Ljava/lang/String;

    iput-object v0, p0, Lcom/badguy/terrortime/TextAppField;->value:Ljava/lang/String;

    .line 24
    :goto_0
    return-void
.end method

.method public final setValueToDefault()V
    .locals 1

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/badguy/terrortime/TextAppField;->value:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/badguy/terrortime/TextAppField;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final typeAsString()Ljava/lang/String;
    .locals 1

    .line 52
    const-string v0, "TEXT"

    return-object v0
.end method
