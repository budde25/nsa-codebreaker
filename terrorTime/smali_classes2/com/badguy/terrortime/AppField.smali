.class abstract Lcom/badguy/terrortime/AppField;
.super Ljava/lang/Object;
.source "AppField.java"


# instance fields
.field private type:Lcom/badguy/terrortime/AppFieldTypes;


# direct methods
.method public constructor <init>(Lcom/badguy/terrortime/AppFieldTypes;)V
    .locals 0
    .param p1, "aType"    # Lcom/badguy/terrortime/AppFieldTypes;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/badguy/terrortime/AppField;->type:Lcom/badguy/terrortime/AppFieldTypes;

    .line 27
    return-void
.end method


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract getValue()Ljava/lang/Object;
.end method

.method public abstract isDefaultValue()Z
.end method

.method public abstract isValid()Z
.end method

.method public abstract setValueToDefault()V
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract typeAsString()Ljava/lang/String;
.end method
