.class public Lorg/jivesoftware/smackx/xdata/Form;
.super Ljava/lang/Object;
.source "Form.java"


# instance fields
.field private dataForm:Lorg/jivesoftware/smackx/xdata/packet/DataForm;


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;)V
    .locals 1
    .param p1, "type"    # Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;-><init>(Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/xdata/Form;->dataForm:Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    .line 85
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/xdata/packet/DataForm;)V
    .locals 0
    .param p1, "dataForm"    # Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lorg/jivesoftware/smackx/xdata/Form;->dataForm:Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    .line 76
    return-void
.end method

.method public static getFormFrom(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/xdata/Form;
    .locals 2
    .param p0, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 59
    invoke-static {p0}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->from(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    move-result-object v0

    .line 60
    .local v0, "dataForm":Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->getReportedData()Lorg/jivesoftware/smackx/xdata/packet/DataForm$ReportedData;

    move-result-object v1

    if-nez v1, :cond_0

    .line 62
    new-instance v1, Lorg/jivesoftware/smackx/xdata/Form;

    invoke-direct {v1, v0}, Lorg/jivesoftware/smackx/xdata/Form;-><init>(Lorg/jivesoftware/smackx/xdata/packet/DataForm;)V

    return-object v1

    .line 65
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private isFormType()Z
    .locals 2

    .line 464
    sget-object v0, Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;->form:Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;

    iget-object v1, p0, Lorg/jivesoftware/smackx/xdata/Form;->dataForm:Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->getType()Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSubmitType()Z
    .locals 2

    .line 473
    sget-object v0, Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;->submit:Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;

    iget-object v1, p0, Lorg/jivesoftware/smackx/xdata/Form;->dataForm:Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->getType()Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setAnswer(Lorg/jivesoftware/smackx/xdata/FormField;Ljava/lang/Object;)V
    .locals 2
    .param p1, "field"    # Lorg/jivesoftware/smackx/xdata/FormField;
    .param p2, "value"    # Ljava/lang/Object;

    .line 259
    invoke-direct {p0}, Lorg/jivesoftware/smackx/xdata/Form;->isSubmitType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/xdata/FormField;->resetValues()V

    .line 264
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smackx/xdata/FormField;->addValue(Ljava/lang/CharSequence;)V

    .line 265
    return-void

    .line 260
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set an answer if the form is not of type \"submit\""

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateThatFieldIsText(Lorg/jivesoftware/smackx/xdata/FormField;)V
    .locals 2
    .param p0, "field"    # Lorg/jivesoftware/smackx/xdata/FormField;

    .line 209
    sget-object v0, Lorg/jivesoftware/smackx/xdata/Form$1;->$SwitchMap$org$jivesoftware$smackx$xdata$FormField$Type:[I

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/xdata/FormField;->getType()Lorg/jivesoftware/smackx/xdata/FormField$Type;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/xdata/FormField$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This field is not of type text (multi, private or single)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_1
    :goto_0
    nop

    .line 217
    return-void
.end method


# virtual methods
.method public addField(Lorg/jivesoftware/smackx/xdata/FormField;)V
    .locals 1
    .param p1, "field"    # Lorg/jivesoftware/smackx/xdata/FormField;

    .line 93
    iget-object v0, p0, Lorg/jivesoftware/smackx/xdata/Form;->dataForm:Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->addField(Lorg/jivesoftware/smackx/xdata/FormField;)V

    .line 94
    return-void
.end method

.method public createAnswerForm()Lorg/jivesoftware/smackx/xdata/Form;
    .locals 6

    .line 491
    invoke-direct {p0}, Lorg/jivesoftware/smackx/xdata/Form;->isFormType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 495
    new-instance v0, Lorg/jivesoftware/smackx/xdata/Form;

    sget-object v1, Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;->submit:Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/xdata/Form;-><init>(Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;)V

    .line 496
    .local v0, "form":Lorg/jivesoftware/smackx/xdata/Form;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/xdata/Form;->getFields()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/xdata/FormField;

    .line 499
    .local v2, "field":Lorg/jivesoftware/smackx/xdata/FormField;
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/xdata/FormField;->getVariable()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 500
    new-instance v3, Lorg/jivesoftware/smackx/xdata/FormField;

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/xdata/FormField;->getVariable()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jivesoftware/smackx/xdata/FormField;-><init>(Ljava/lang/String;)V

    .line 501
    .local v3, "newField":Lorg/jivesoftware/smackx/xdata/FormField;
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/xdata/FormField;->getType()Lorg/jivesoftware/smackx/xdata/FormField$Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jivesoftware/smackx/xdata/FormField;->setType(Lorg/jivesoftware/smackx/xdata/FormField$Type;)V

    .line 502
    invoke-virtual {v0, v3}, Lorg/jivesoftware/smackx/xdata/Form;->addField(Lorg/jivesoftware/smackx/xdata/FormField;)V

    .line 504
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/xdata/FormField;->getType()Lorg/jivesoftware/smackx/xdata/FormField$Type;

    move-result-object v4

    sget-object v5, Lorg/jivesoftware/smackx/xdata/FormField$Type;->hidden:Lorg/jivesoftware/smackx/xdata/FormField$Type;

    if-ne v4, v5, :cond_0

    .line 507
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 508
    .local v4, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/xdata/FormField;->getValues()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 509
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/xdata/FormField;->getVariable()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Lorg/jivesoftware/smackx/xdata/Form;->setAnswer(Ljava/lang/String;Ljava/util/List;)V

    .line 512
    .end local v2    # "field":Lorg/jivesoftware/smackx/xdata/FormField;
    .end local v3    # "newField":Lorg/jivesoftware/smackx/xdata/FormField;
    .end local v4    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_0
    goto :goto_0

    .line 513
    :cond_1
    return-object v0

    .line 492
    .end local v0    # "form":Lorg/jivesoftware/smackx/xdata/Form;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only forms of type \"form\" could be answered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDataFormToSend()Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    .locals 4

    .line 445
    invoke-direct {p0}, Lorg/jivesoftware/smackx/xdata/Form;->isSubmitType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 447
    new-instance v0, Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    invoke-virtual {p0}, Lorg/jivesoftware/smackx/xdata/Form;->getType()Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;-><init>(Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;)V

    .line 448
    .local v0, "dataFormToSend":Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/xdata/Form;->getFields()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/xdata/FormField;

    .line 449
    .local v2, "field":Lorg/jivesoftware/smackx/xdata/FormField;
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/xdata/FormField;->getValues()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 450
    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->addField(Lorg/jivesoftware/smackx/xdata/FormField;)V

    .line 452
    .end local v2    # "field":Lorg/jivesoftware/smackx/xdata/FormField;
    :cond_0
    goto :goto_0

    .line 453
    :cond_1
    return-object v0

    .line 455
    .end local v0    # "dataFormToSend":Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    :cond_2
    iget-object v0, p0, Lorg/jivesoftware/smackx/xdata/Form;->dataForm:Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    return-object v0
.end method

.method public getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/xdata/FormField;
    .locals 1
    .param p1, "variable"    # Ljava/lang/String;

    .line 354
    iget-object v0, p0, Lorg/jivesoftware/smackx/xdata/Form;->dataForm:Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/xdata/FormField;

    move-result-object v0

    return-object v0
.end method

.method public getFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/xdata/FormField;",
            ">;"
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lorg/jivesoftware/smackx/xdata/Form;->dataForm:Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->getFields()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstructions()Ljava/lang/String;
    .locals 3

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 376
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/jivesoftware/smackx/xdata/Form;->dataForm:Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->getInstructions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 377
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 380
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 383
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 394
    iget-object v0, p0, Lorg/jivesoftware/smackx/xdata/Form;->dataForm:Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;
    .locals 1

    .line 405
    iget-object v0, p0, Lorg/jivesoftware/smackx/xdata/Form;->dataForm:Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->getType()Lorg/jivesoftware/smackx/xdata/packet/DataForm$Type;

    move-result-object v0

    return-object v0
.end method

.method public hasField(Ljava/lang/String;)Z
    .locals 1
    .param p1, "variable"    # Ljava/lang/String;

    .line 365
    iget-object v0, p0, Lorg/jivesoftware/smackx/xdata/Form;->dataForm:Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->hasField(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setAnswer(Ljava/lang/String;D)V
    .locals 3
    .param p1, "variable"    # Ljava/lang/String;
    .param p2, "value"    # D

    .line 200
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/xdata/Form;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/xdata/FormField;

    move-result-object v0

    .line 201
    .local v0, "field":Lorg/jivesoftware/smackx/xdata/FormField;
    if-eqz v0, :cond_0

    .line 204
    invoke-static {v0}, Lorg/jivesoftware/smackx/xdata/Form;->validateThatFieldIsText(Lorg/jivesoftware/smackx/xdata/FormField;)V

    .line 205
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/xdata/Form;->setAnswer(Lorg/jivesoftware/smackx/xdata/FormField;Ljava/lang/Object;)V

    .line 206
    return-void

    .line 202
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Field not found for the specified variable name."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setAnswer(Ljava/lang/String;F)V
    .locals 3
    .param p1, "variable"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 180
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/xdata/Form;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/xdata/FormField;

    move-result-object v0

    .line 181
    .local v0, "field":Lorg/jivesoftware/smackx/xdata/FormField;
    if-eqz v0, :cond_0

    .line 184
    invoke-static {v0}, Lorg/jivesoftware/smackx/xdata/Form;->validateThatFieldIsText(Lorg/jivesoftware/smackx/xdata/FormField;)V

    .line 185
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/xdata/Form;->setAnswer(Lorg/jivesoftware/smackx/xdata/FormField;Ljava/lang/Object;)V

    .line 186
    return-void

    .line 182
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Field not found for the specified variable name."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setAnswer(Ljava/lang/String;I)V
    .locals 3
    .param p1, "variable"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 140
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/xdata/Form;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/xdata/FormField;

    move-result-object v0

    .line 141
    .local v0, "field":Lorg/jivesoftware/smackx/xdata/FormField;
    if-eqz v0, :cond_0

    .line 144
    invoke-static {v0}, Lorg/jivesoftware/smackx/xdata/Form;->validateThatFieldIsText(Lorg/jivesoftware/smackx/xdata/FormField;)V

    .line 145
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/xdata/Form;->setAnswer(Lorg/jivesoftware/smackx/xdata/FormField;Ljava/lang/Object;)V

    .line 146
    return-void

    .line 142
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Field not found for the specified variable name."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setAnswer(Ljava/lang/String;J)V
    .locals 3
    .param p1, "variable"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 160
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/xdata/Form;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/xdata/FormField;

    move-result-object v0

    .line 161
    .local v0, "field":Lorg/jivesoftware/smackx/xdata/FormField;
    if-eqz v0, :cond_0

    .line 164
    invoke-static {v0}, Lorg/jivesoftware/smackx/xdata/Form;->validateThatFieldIsText(Lorg/jivesoftware/smackx/xdata/FormField;)V

    .line 165
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/xdata/Form;->setAnswer(Lorg/jivesoftware/smackx/xdata/FormField;Ljava/lang/Object;)V

    .line 166
    return-void

    .line 162
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Field not found for the specified variable name."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setAnswer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "variable"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 111
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/xdata/Form;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/xdata/FormField;

    move-result-object v0

    .line 112
    .local v0, "field":Lorg/jivesoftware/smackx/xdata/FormField;
    if-eqz v0, :cond_2

    .line 115
    sget-object v1, Lorg/jivesoftware/smackx/xdata/Form$1;->$SwitchMap$org$jivesoftware$smackx$xdata$FormField$Type:[I

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/xdata/FormField;->getType()Lorg/jivesoftware/smackx/xdata/FormField$Type;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/xdata/FormField$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This field is not of type String."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    :cond_1
    :goto_0
    nop

    .line 125
    invoke-direct {p0, v0, p2}, Lorg/jivesoftware/smackx/xdata/Form;->setAnswer(Lorg/jivesoftware/smackx/xdata/FormField;Ljava/lang/Object;)V

    .line 126
    return-void

    .line 113
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Field not found for the specified variable name."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setAnswer(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "variable"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 281
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/CharSequence;>;"
    invoke-direct {p0}, Lorg/jivesoftware/smackx/xdata/Form;->isSubmitType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 285
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/xdata/Form;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/xdata/FormField;

    move-result-object v0

    .line 286
    .local v0, "field":Lorg/jivesoftware/smackx/xdata/FormField;
    if-eqz v0, :cond_2

    .line 288
    sget-object v1, Lorg/jivesoftware/smackx/xdata/Form$1;->$SwitchMap$org$jivesoftware$smackx$xdata$FormField$Type:[I

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/xdata/FormField;->getType()Lorg/jivesoftware/smackx/xdata/FormField$Type;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/xdata/FormField$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 296
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This field only accept list of values."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 294
    :cond_1
    :goto_0
    nop

    .line 299
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/xdata/FormField;->resetValues()V

    .line 301
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/xdata/FormField;->addValues(Ljava/util/List;)V

    .line 306
    return-void

    .line 304
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Couldn\'t find a field for the specified variable."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 282
    .end local v0    # "field":Lorg/jivesoftware/smackx/xdata/FormField;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set an answer if the form is not of type \"submit\""

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAnswer(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "variable"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 231
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/xdata/Form;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/xdata/FormField;

    move-result-object v0

    .line 232
    .local v0, "field":Lorg/jivesoftware/smackx/xdata/FormField;
    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/xdata/FormField;->getType()Lorg/jivesoftware/smackx/xdata/FormField$Type;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smackx/xdata/FormField$Type;->bool:Lorg/jivesoftware/smackx/xdata/FormField$Type;

    if-ne v1, v2, :cond_0

    .line 238
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/jivesoftware/smackx/xdata/Form;->setAnswer(Lorg/jivesoftware/smackx/xdata/FormField;Ljava/lang/Object;)V

    .line 239
    return-void

    .line 236
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This field is not of type boolean."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 233
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Field not found for the specified variable name."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setDefaultAnswer(Ljava/lang/String;)V
    .locals 3
    .param p1, "variable"    # Ljava/lang/String;

    .line 318
    invoke-direct {p0}, Lorg/jivesoftware/smackx/xdata/Form;->isSubmitType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 322
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/xdata/Form;->getField(Ljava/lang/String;)Lorg/jivesoftware/smackx/xdata/FormField;

    move-result-object v0

    .line 323
    .local v0, "field":Lorg/jivesoftware/smackx/xdata/FormField;
    if-eqz v0, :cond_1

    .line 325
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/xdata/FormField;->resetValues()V

    .line 327
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/xdata/FormField;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 328
    .local v2, "value":Ljava/lang/CharSequence;
    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/xdata/FormField;->addValue(Ljava/lang/CharSequence;)V

    .line 329
    .end local v2    # "value":Ljava/lang/CharSequence;
    goto :goto_0

    :cond_0
    nop

    .line 334
    return-void

    .line 332
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Couldn\'t find a field for the specified variable."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 319
    .end local v0    # "field":Lorg/jivesoftware/smackx/xdata/FormField;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set an answer if the form is not of type \"submit\""

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInstructions(Ljava/lang/String;)V
    .locals 3
    .param p1, "instructions"    # Ljava/lang/String;

    .line 416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 417
    .local v0, "instructionsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "\n"

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    .local v1, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 419
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 422
    :cond_0
    iget-object v2, p0, Lorg/jivesoftware/smackx/xdata/Form;->dataForm:Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->setInstructions(Ljava/util/List;)V

    .line 424
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .line 434
    iget-object v0, p0, Lorg/jivesoftware/smackx/xdata/Form;->dataForm:Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->setTitle(Ljava/lang/String;)V

    .line 435
    return-void
.end method
