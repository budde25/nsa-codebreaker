.class public final Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;
.super Ljava/lang/Object;
.source "MamManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private afterUid:Ljava/lang/String;

.field private beforeUid:Ljava/lang/String;

.field private final formFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/xdata/FormField;",
            ">;"
        }
    .end annotation
.end field

.field private maxResults:I

.field private node:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;->formFields:Ljava/util/Map;

    .line 302
    const/4 v0, -0x1

    iput v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;->maxResults:I

    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;

    .line 297
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;->node:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;

    .line 297
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;->formFields:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;)I
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;

    .line 297
    iget v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;->maxResults:I

    return v0
.end method

.method static synthetic access$300(Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;

    .line 297
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;->afterUid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;

    .line 297
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;->beforeUid:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public afterUid(Ljava/lang/String;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;
    .locals 1
    .param p1, "afterUid"    # Ljava/lang/String;

    .line 422
    const-string v0, "afterUid must not be empty"

    invoke-static {p1, v0}, Lorg/jivesoftware/smack/util/StringUtils;->requireNullOrNotEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;->afterUid:Ljava/lang/String;

    .line 423
    return-object p0
.end method

.method public beforeUid(Ljava/lang/String;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;
    .locals 0
    .param p1, "beforeUid"    # Ljava/lang/String;

    .line 436
    iput-object p1, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;->beforeUid:Ljava/lang/String;

    .line 437
    return-object p0
.end method

.method public build()Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;
    .locals 2

    .line 453
    new-instance v0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs;-><init>(Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;Lorg/jivesoftware/smackx/mam/MamManager$1;)V

    return-object v0
.end method

.method public limitResultsBefore(Ljava/util/Date;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;
    .locals 7
    .param p1, "end"    # Ljava/util/Date;

    .line 357
    if-nez p1, :cond_0

    .line 358
    return-object p0

    .line 361
    :cond_0
    new-instance v0, Lorg/jivesoftware/smackx/xdata/FormField;

    const-string v1, "end"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/xdata/FormField;-><init>(Ljava/lang/String;)V

    .line 362
    .local v0, "formField":Lorg/jivesoftware/smackx/xdata/FormField;
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/xdata/FormField;->addValue(Ljava/util/Date;)V

    .line 363
    iget-object v1, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;->formFields:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/xdata/FormField;->getVariable()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object v1, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;->formFields:Ljava/util/Map;

    const-string v2, "start"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/xdata/FormField;

    .line 366
    .local v1, "startFormField":Lorg/jivesoftware/smackx/xdata/FormField;
    if-eqz v1, :cond_2

    .line 369
    :try_start_0
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/xdata/FormField;->getFirstValueAsDate()Ljava/util/Date;

    move-result-object v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    .local v2, "start":Ljava/util/Date;
    nop

    .line 373
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    goto :goto_0

    .line 374
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Given end date ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ") is before the existing start date ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 370
    .end local v2    # "start":Ljava/util/Date;
    :catch_0
    move-exception v2

    .line 371
    .local v2, "e":Ljava/text/ParseException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 379
    .end local v2    # "e":Ljava/text/ParseException;
    :cond_2
    :goto_0
    return-object p0
.end method

.method public limitResultsSince(Ljava/util/Date;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;
    .locals 7
    .param p1, "start"    # Ljava/util/Date;

    .line 330
    if-nez p1, :cond_0

    .line 331
    return-object p0

    .line 334
    :cond_0
    new-instance v0, Lorg/jivesoftware/smackx/xdata/FormField;

    const-string v1, "start"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/xdata/FormField;-><init>(Ljava/lang/String;)V

    .line 335
    .local v0, "formField":Lorg/jivesoftware/smackx/xdata/FormField;
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/xdata/FormField;->addValue(Ljava/util/Date;)V

    .line 336
    iget-object v1, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;->formFields:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/xdata/FormField;->getVariable()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    iget-object v1, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;->formFields:Ljava/util/Map;

    const-string v2, "end"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/xdata/FormField;

    .line 339
    .local v1, "endFormField":Lorg/jivesoftware/smackx/xdata/FormField;
    if-eqz v1, :cond_2

    .line 342
    :try_start_0
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/xdata/FormField;->getFirstValueAsDate()Ljava/util/Date;

    move-result-object v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    .local v2, "end":Ljava/util/Date;
    nop

    .line 347
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    goto :goto_0

    .line 348
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Given start date ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ") is after the existing end date ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 344
    .end local v2    # "end":Ljava/util/Date;
    :catch_0
    move-exception v2

    .line 345
    .local v2, "e":Ljava/text/ParseException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 353
    .end local v2    # "e":Ljava/text/ParseException;
    :cond_2
    :goto_0
    return-object p0
.end method

.method public limitResultsToJid(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;
    .locals 3
    .param p1, "withJid"    # Lorg/jxmpp/jid/Jid;

    .line 319
    if-nez p1, :cond_0

    .line 320
    return-object p0

    .line 323
    :cond_0
    invoke-static {p1}, Lorg/jivesoftware/smackx/mam/MamManager;->access$600(Lorg/jxmpp/jid/Jid;)Lorg/jivesoftware/smackx/xdata/FormField;

    move-result-object v0

    .line 324
    .local v0, "formField":Lorg/jivesoftware/smackx/xdata/FormField;
    iget-object v1, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;->formFields:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/xdata/FormField;->getVariable()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    return-object p0
.end method

.method public onlyReturnMessageCount()Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;
    .locals 1

    .line 406
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;->setResultPageSizeTo(I)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public queryLastPage()Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;
    .locals 1

    .line 449
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;->beforeUid(Ljava/lang/String;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public queryNode(Ljava/lang/String;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;
    .locals 0
    .param p1, "node"    # Ljava/lang/String;

    .line 309
    if-nez p1, :cond_0

    .line 310
    return-object p0

    .line 313
    :cond_0
    iput-object p1, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;->node:Ljava/lang/String;

    .line 315
    return-object p0
.end method

.method public setResultPageSize(Ljava/lang/Integer;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;
    .locals 1
    .param p1, "max"    # Ljava/lang/Integer;

    .line 383
    if-nez p1, :cond_0

    .line 384
    const/4 v0, -0x1

    iput v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;->maxResults:I

    .line 385
    return-object p0

    .line 387
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;->setResultPageSizeTo(I)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setResultPageSizeTo(I)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;
    .locals 1
    .param p1, "max"    # I

    .line 391
    if-ltz p1, :cond_0

    .line 394
    iput p1, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;->maxResults:I

    .line 395
    return-object p0

    .line 392
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public withAdditionalFormField(Lorg/jivesoftware/smackx/xdata/FormField;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;
    .locals 2
    .param p1, "formField"    # Lorg/jivesoftware/smackx/xdata/FormField;

    .line 410
    iget-object v0, p0, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;->formFields:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/jivesoftware/smackx/xdata/FormField;->getVariable()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    return-object p0
.end method

.method public withAdditionalFormFields(Ljava/util/List;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/xdata/FormField;",
            ">;)",
            "Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;"
        }
    .end annotation

    .line 415
    .local p1, "additionalFields":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/xdata/FormField;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/xdata/FormField;

    .line 416
    .local v1, "formField":Lorg/jivesoftware/smackx/xdata/FormField;
    invoke-virtual {p0, v1}, Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;->withAdditionalFormField(Lorg/jivesoftware/smackx/xdata/FormField;)Lorg/jivesoftware/smackx/mam/MamManager$MamQueryArgs$Builder;

    .line 417
    .end local v1    # "formField":Lorg/jivesoftware/smackx/xdata/FormField;
    goto :goto_0

    .line 418
    :cond_0
    return-object p0
.end method
