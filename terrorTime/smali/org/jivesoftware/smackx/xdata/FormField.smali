.class public Lorg/jivesoftware/smackx/xdata/FormField;
.super Ljava/lang/Object;
.source "FormField.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/NamedElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/xdata/FormField$Option;,
        Lorg/jivesoftware/smackx/xdata/FormField$Type;
    }
.end annotation


# static fields
.field public static final ELEMENT:Ljava/lang/String; = "field"

.field public static final FORM_TYPE:Ljava/lang/String; = "FORM_TYPE"


# instance fields
.field private description:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private final options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/xdata/FormField$Option;",
            ">;"
        }
    .end annotation
.end field

.field private required:Z

.field private type:Lorg/jivesoftware/smackx/xdata/FormField$Type;

.field private validateElement:Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement;

.field private final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final variable:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/xdata/FormField;->required:Z

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/xdata/FormField;->options:Ljava/util/List;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/xdata/FormField;->values:Ljava/util/List;

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smackx/xdata/FormField;->variable:Ljava/lang/String;

    .line 168
    sget-object v0, Lorg/jivesoftware/smackx/xdata/FormField$Type;->fixed:Lorg/jivesoftware/smackx/xdata/FormField$Type;

    iput-object v0, p0, Lorg/jivesoftware/smackx/xdata/FormField;->type:Lorg/jivesoftware/smackx/xdata/FormField$Type;

    .line 169
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "variable"    # Ljava/lang/String;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jivesoftware/smackx/xdata/FormField;->required:Z

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/xdata/FormField;->options:Ljava/util/List;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/xdata/FormField;->values:Ljava/util/List;

    .line 159
    const-string v0, "Variable must not be null or empty"

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/StringUtils;->requireNotNullOrEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/jivesoftware/smackx/xdata/FormField;->variable:Ljava/lang/String;

    .line 160
    return-void
.end method


# virtual methods
.method public addOption(Lorg/jivesoftware/smackx/xdata/FormField$Option;)V
    .locals 2
    .param p1, "option"    # Lorg/jivesoftware/smackx/xdata/FormField$Option;

    .line 425
    iget-object v0, p0, Lorg/jivesoftware/smackx/xdata/FormField;->options:Ljava/util/List;

    monitor-enter v0

    .line 426
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/xdata/FormField;->options:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    monitor-exit v0

    .line 428
    return-void

    .line 427
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addValue(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/CharSequence;

    .line 380
    iget-object v0, p0, Lorg/jivesoftware/smackx/xdata/FormField;->values:Ljava/util/List;

    monitor-enter v0

    .line 381
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/xdata/FormField;->values:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    monitor-exit v0

    .line 383
    return-void

    .line 382
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addValue(Ljava/util/Date;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .line 393
    invoke-static {p1}, Lorg/jxmpp/util/XmppDateTime;->formatXEP0082Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, "dateString":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/xdata/FormField;->addValue(Ljava/lang/CharSequence;)V

    .line 395
    return-void
.end method

.method public addValues(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 404
    .local p1, "newValues":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/CharSequence;>;"
    iget-object v0, p0, Lorg/jivesoftware/smackx/xdata/FormField;->values:Ljava/util/List;

    monitor-enter v0

    .line 405
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/xdata/FormField;->values:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 406
    monitor-exit v0

    .line 407
    return-void

    .line 406
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 461
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 462
    return v0

    .line 463
    :cond_0
    if-ne p1, p0, :cond_1

    .line 464
    const/4 v0, 0x1

    return v0

    .line 465
    :cond_1
    instance-of v1, p1, Lorg/jivesoftware/smackx/xdata/FormField;

    if-nez v1, :cond_2

    .line 466
    return v0

    .line 468
    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smackx/xdata/FormField;

    .line 470
    .local v0, "other":Lorg/jivesoftware/smackx/xdata/FormField;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smackx/xdata/FormField;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/xdata/FormField;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lorg/jivesoftware/smackx/xdata/FormField;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getElementName()Ljava/lang/String;
    .locals 1

    .line 432
    const-string v0, "field"

    return-object v0
.end method

.method public getFirstValue()Ljava/lang/String;
    .locals 3

    .line 265
    iget-object v0, p0, Lorg/jivesoftware/smackx/xdata/FormField;->values:Ljava/util/List;

    monitor-enter v0

    .line 266
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/xdata/FormField;->values:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 269
    :cond_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/xdata/FormField;->values:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 270
    .local v1, "firstValue":Ljava/lang/CharSequence;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 270
    .end local v1    # "firstValue":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getFirstValueAsDate()Ljava/util/Date;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 283
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/xdata/FormField;->getFirstValue()Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "valueString":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 285
    const/4 v1, 0x0

    return-object v1

    .line 287
    :cond_0
    invoke-static {v0}, Lorg/jxmpp/util/XmppDateTime;->parseXEP0082Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lorg/jivesoftware/smackx/xdata/FormField;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/xdata/FormField$Option;",
            ">;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lorg/jivesoftware/smackx/xdata/FormField;->options:Ljava/util/List;

    monitor-enter v0

    .line 203
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jivesoftware/smackx/xdata/FormField;->options:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 204
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getType()Lorg/jivesoftware/smackx/xdata/FormField$Type;
    .locals 1

    .line 223
    iget-object v0, p0, Lorg/jivesoftware/smackx/xdata/FormField;->type:Lorg/jivesoftware/smackx/xdata/FormField$Type;

    return-object v0
.end method

.method public getValidateElement()Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement;
    .locals 1

    .line 310
    iget-object v0, p0, Lorg/jivesoftware/smackx/xdata/FormField;->validateElement:Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement;

    return-object v0
.end method

.method public getValues()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lorg/jivesoftware/smackx/xdata/FormField;->values:Ljava/util/List;

    monitor-enter v0

    .line 235
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/jivesoftware/smackx/xdata/FormField;->values:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 236
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getValuesAsString()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 248
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/xdata/FormField;->getValues()Ljava/util/List;

    move-result-object v0

    .line 249
    .local v0, "valuesAsCharSequence":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 250
    .local v1, "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 251
    .local v3, "value":Ljava/lang/CharSequence;
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    .end local v3    # "value":Ljava/lang/CharSequence;
    goto :goto_0

    .line 253
    :cond_0
    return-object v1
.end method

.method public getVariable()Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Lorg/jivesoftware/smackx/xdata/FormField;->variable:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 475
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/xdata/FormField;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->hashCode()I

    move-result v0

    return v0
.end method

.method public isRequired()Z
    .locals 1

    .line 213
    iget-boolean v0, p0, Lorg/jivesoftware/smackx/xdata/FormField;->required:Z

    return v0
.end method

.method protected resetValues()V
    .locals 2

    .line 413
    iget-object v0, p0, Lorg/jivesoftware/smackx/xdata/FormField;->values:Ljava/util/List;

    monitor-enter v0

    .line 414
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smackx/xdata/FormField;->values:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 415
    monitor-exit v0

    .line 416
    return-void

    .line 415
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .line 324
    iput-object p1, p0, Lorg/jivesoftware/smackx/xdata/FormField;->description:Ljava/lang/String;

    .line 325
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .line 334
    iput-object p1, p0, Lorg/jivesoftware/smackx/xdata/FormField;->label:Ljava/lang/String;

    .line 335
    return-void
.end method

.method public setRequired(Z)V
    .locals 0
    .param p1, "required"    # Z

    .line 343
    iput-boolean p1, p0, Lorg/jivesoftware/smackx/xdata/FormField;->required:Z

    .line 344
    return-void
.end method

.method public setType(Lorg/jivesoftware/smackx/xdata/FormField$Type;)V
    .locals 2
    .param p1, "type"    # Lorg/jivesoftware/smackx/xdata/FormField$Type;

    .line 367
    sget-object v0, Lorg/jivesoftware/smackx/xdata/FormField$Type;->fixed:Lorg/jivesoftware/smackx/xdata/FormField$Type;

    if-eq p1, v0, :cond_0

    .line 370
    iput-object p1, p0, Lorg/jivesoftware/smackx/xdata/FormField;->type:Lorg/jivesoftware/smackx/xdata/FormField$Type;

    .line 371
    return-void

    .line 368
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not set type to fixed, use FormField constructor without arguments instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValidateElement(Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement;)V
    .locals 0
    .param p1, "validateElement"    # Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement;

    .line 351
    invoke-virtual {p1, p0}, Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement;->checkConsistency(Lorg/jivesoftware/smackx/xdata/FormField;)V

    .line 352
    iput-object p1, p0, Lorg/jivesoftware/smackx/xdata/FormField;->validateElement:Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement;

    .line 353
    return-void
.end method

.method public bridge synthetic toXML(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lorg/jivesoftware/smackx/xdata/FormField;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;
    .locals 4
    .param p1, "enclosingNamespace"    # Ljava/lang/String;

    .line 437
    new-instance v0, Lorg/jivesoftware/smack/util/XmlStringBuilder;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;-><init>(Lorg/jivesoftware/smack/packet/NamedElement;)V

    .line 439
    .local v0, "buf":Lorg/jivesoftware/smack/util/XmlStringBuilder;
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/xdata/FormField;->getLabel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "label"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 440
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/xdata/FormField;->getVariable()Ljava/lang/String;

    move-result-object v1

    const-string v2, "var"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 441
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/xdata/FormField;->getType()Lorg/jivesoftware/smackx/xdata/FormField$Type;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optAttribute(Ljava/lang/String;Ljava/lang/Enum;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 442
    invoke-virtual {v0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->rightAngleBracket()Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 444
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/xdata/FormField;->getDescription()Ljava/lang/String;

    move-result-object v1

    const-string v2, "desc"

    invoke-virtual {v0, v2, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 445
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/xdata/FormField;->isRequired()Z

    move-result v1

    const-string v2, "required"

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->condEmptyElement(ZLjava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 447
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/xdata/FormField;->getValues()Ljava/util/List;

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

    .line 448
    .local v2, "value":Ljava/lang/CharSequence;
    const-string v3, "value"

    invoke-virtual {v0, v3, v2}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->element(Ljava/lang/String;Ljava/lang/CharSequence;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 449
    .end local v2    # "value":Ljava/lang/CharSequence;
    goto :goto_0

    .line 451
    :cond_0
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/xdata/FormField;->getOptions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/xdata/FormField$Option;

    .line 452
    .local v2, "option":Lorg/jivesoftware/smackx/xdata/FormField$Option;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/xdata/FormField$Option;->toXML(Ljava/lang/String;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->append(Lorg/jivesoftware/smack/util/XmlStringBuilder;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 453
    .end local v2    # "option":Lorg/jivesoftware/smackx/xdata/FormField$Option;
    goto :goto_1

    .line 454
    :cond_1
    iget-object v1, p0, Lorg/jivesoftware/smackx/xdata/FormField;->validateElement:Lorg/jivesoftware/smackx/xdatavalidation/packet/ValidateElement;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->optElement(Lorg/jivesoftware/smack/packet/Element;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 455
    invoke-virtual {v0, p0}, Lorg/jivesoftware/smack/util/XmlStringBuilder;->closeElement(Lorg/jivesoftware/smack/packet/NamedElement;)Lorg/jivesoftware/smack/util/XmlStringBuilder;

    .line 456
    return-object v0
.end method
