.class public Lorg/minidns/dnsmessage/DnsMessage;
.super Ljava/lang/Object;
.source "DnsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/minidns/dnsmessage/DnsMessage$Builder;,
        Lorg/minidns/dnsmessage/DnsMessage$SectionName;,
        Lorg/minidns/dnsmessage/DnsMessage$OPCODE;,
        Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;
    }
.end annotation


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field public final additionalSection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/Data;",
            ">;>;"
        }
    .end annotation
.end field

.field public final answerSection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/Data;",
            ">;>;"
        }
    .end annotation
.end field

.field private answersMinTtlCache:J

.field public final authenticData:Z

.field public final authoritativeAnswer:Z

.field public final authoritySection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/Data;",
            ">;>;"
        }
    .end annotation
.end field

.field private byteCache:[B

.field public final checkingDisabled:Z

.field private edns:Lorg/minidns/edns/Edns;

.field private transient hashCodeCache:Ljava/lang/Integer;

.field public final id:I

.field private normalizedVersionCache:Lorg/minidns/dnsmessage/DnsMessage;

.field public final opcode:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

.field public final optRrPosition:I

.field public final qr:Z

.field public final questions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/minidns/dnsmessage/Question;",
            ">;"
        }
    .end annotation
.end field

.field public final receiveTimestamp:J

.field public final recursionAvailable:Z

.field public final recursionDesired:Z

.field public final responseCode:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

.field private terminalOutputCache:Ljava/lang/String;

.field private toStringCache:Ljava/lang/String;

.field public final truncated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lorg/minidns/dnsmessage/DnsMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/minidns/dnsmessage/DnsMessage;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Lorg/minidns/dnsmessage/DnsMessage$Builder;)V
    .locals 4
    .param p1, "builder"    # Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 763
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->answersMinTtlCache:J

    .line 311
    invoke-static {p1}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->access$000(Lorg/minidns/dnsmessage/DnsMessage$Builder;)I

    move-result v0

    iput v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->id:I

    .line 312
    invoke-static {p1}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->access$100(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->opcode:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 313
    invoke-static {p1}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->access$200(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->responseCode:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 314
    invoke-static {p1}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->access$300(Lorg/minidns/dnsmessage/DnsMessage$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->receiveTimestamp:J

    .line 315
    invoke-static {p1}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->access$400(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->qr:Z

    .line 316
    invoke-static {p1}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->access$500(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->authoritativeAnswer:Z

    .line 317
    invoke-static {p1}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->access$600(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->truncated:Z

    .line 318
    invoke-static {p1}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->access$700(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->recursionDesired:Z

    .line 319
    invoke-static {p1}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->access$800(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->recursionAvailable:Z

    .line 320
    invoke-static {p1}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->access$900(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->authenticData:Z

    .line 321
    invoke-static {p1}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->access$1000(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->checkingDisabled:Z

    .line 323
    invoke-static {p1}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->access$1100(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 324
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->questions:Ljava/util/List;

    goto :goto_0

    .line 326
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->access$1100(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 327
    .local v0, "q":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/dnsmessage/Question;>;"
    invoke-static {p1}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->access$1100(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 328
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->questions:Ljava/util/List;

    .line 331
    .end local v0    # "q":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/dnsmessage/Question;>;"
    :goto_0
    invoke-static {p1}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->access$1200(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 332
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->answerSection:Ljava/util/List;

    goto :goto_1

    .line 334
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->access$1200(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 335
    .local v0, "a":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;"
    invoke-static {p1}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->access$1200(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 336
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->answerSection:Ljava/util/List;

    .line 339
    .end local v0    # "a":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;"
    :goto_1
    invoke-static {p1}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->access$1300(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    .line 340
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->authoritySection:Ljava/util/List;

    goto :goto_2

    .line 342
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->access$1300(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 343
    .local v0, "n":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;"
    invoke-static {p1}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->access$1300(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 344
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->authoritySection:Ljava/util/List;

    .line 347
    .end local v0    # "n":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;"
    :goto_2
    invoke-static {p1}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->access$1400(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->access$1500(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/edns/Edns$Builder;

    move-result-object v0

    if-nez v0, :cond_3

    .line 348
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->additionalSection:Ljava/util/List;

    goto :goto_3

    .line 350
    :cond_3
    const/4 v0, 0x0

    .line 351
    .local v0, "size":I
    invoke-static {p1}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->access$1400(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 352
    invoke-static {p1}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->access$1400(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 354
    :cond_4
    invoke-static {p1}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->access$1500(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/edns/Edns$Builder;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 355
    add-int/lit8 v0, v0, 0x1

    .line 357
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 358
    .local v1, "a":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;"
    invoke-static {p1}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->access$1400(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 359
    invoke-static {p1}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->access$1400(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 361
    :cond_6
    invoke-static {p1}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->access$1500(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/edns/Edns$Builder;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 362
    invoke-static {p1}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->access$1500(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/edns/Edns$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/minidns/edns/Edns$Builder;->build()Lorg/minidns/edns/Edns;

    move-result-object v2

    .line 363
    .local v2, "edns":Lorg/minidns/edns/Edns;
    iput-object v2, p0, Lorg/minidns/dnsmessage/DnsMessage;->edns:Lorg/minidns/edns/Edns;

    .line 364
    invoke-virtual {v2}, Lorg/minidns/edns/Edns;->asRecord()Lorg/minidns/record/Record;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    .end local v2    # "edns":Lorg/minidns/edns/Edns;
    :cond_7
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/minidns/dnsmessage/DnsMessage;->additionalSection:Ljava/util/List;

    .line 369
    .end local v0    # "size":I
    .end local v1    # "a":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;"
    :goto_3
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->additionalSection:Ljava/util/List;

    invoke-static {v0}, Lorg/minidns/dnsmessage/DnsMessage;->getOptRrPosition(Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->optRrPosition:I

    .line 371
    iget v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->optRrPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 373
    add-int/lit8 v0, v0, 0x1

    .local v0, "i":I
    :goto_4
    iget-object v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->additionalSection:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 374
    iget-object v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->additionalSection:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/minidns/record/Record;

    iget-object v1, v1, Lorg/minidns/record/Record;->type:Lorg/minidns/record/Record$TYPE;

    sget-object v2, Lorg/minidns/record/Record$TYPE;->OPT:Lorg/minidns/record/Record$TYPE;

    if-eq v1, v2, :cond_8

    .line 373
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 375
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "There must be only one OPT pseudo RR in the additional section"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 381
    .end local v0    # "i":I
    :cond_9
    return-void
.end method

.method private constructor <init>(Lorg/minidns/dnsmessage/DnsMessage;)V
    .locals 2
    .param p1, "message"    # Lorg/minidns/dnsmessage/DnsMessage;

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 763
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->answersMinTtlCache:J

    .line 433
    const/4 v0, 0x0

    iput v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->id:I

    .line 434
    iget-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->qr:Z

    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->qr:Z

    .line 435
    iget-object v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->opcode:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->opcode:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 436
    iget-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->authoritativeAnswer:Z

    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->authoritativeAnswer:Z

    .line 437
    iget-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->truncated:Z

    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->truncated:Z

    .line 438
    iget-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->recursionDesired:Z

    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->recursionDesired:Z

    .line 439
    iget-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->recursionAvailable:Z

    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->recursionAvailable:Z

    .line 440
    iget-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->authenticData:Z

    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->authenticData:Z

    .line 441
    iget-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->checkingDisabled:Z

    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->checkingDisabled:Z

    .line 442
    iget-object v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->responseCode:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->responseCode:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 443
    iget-wide v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->receiveTimestamp:J

    iput-wide v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->receiveTimestamp:J

    .line 444
    iget-object v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->questions:Ljava/util/List;

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->questions:Ljava/util/List;

    .line 445
    iget-object v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->answerSection:Ljava/util/List;

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->answerSection:Ljava/util/List;

    .line 446
    iget-object v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->authoritySection:Ljava/util/List;

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->authoritySection:Ljava/util/List;

    .line 447
    iget-object v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->additionalSection:Ljava/util/List;

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->additionalSection:Ljava/util/List;

    .line 448
    iget v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->optRrPosition:I

    iput v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->optRrPosition:I

    .line 449
    return-void
.end method

.method public constructor <init>([B)V
    .locals 10
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 763
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->answersMinTtlCache:J

    .line 390
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 391
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 392
    .local v1, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    iput v2, p0, Lorg/minidns/dnsmessage/DnsMessage;->id:I

    .line 393
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    .line 394
    .local v2, "header":I
    shr-int/lit8 v3, v2, 0xf

    const/4 v4, 0x1

    and-int/2addr v3, v4

    const/4 v5, 0x0

    if-ne v3, v4, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    iput-boolean v3, p0, Lorg/minidns/dnsmessage/DnsMessage;->qr:Z

    .line 395
    shr-int/lit8 v3, v2, 0xb

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3}, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->getOpcode(I)Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    move-result-object v3

    iput-object v3, p0, Lorg/minidns/dnsmessage/DnsMessage;->opcode:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 396
    shr-int/lit8 v3, v2, 0xa

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move v3, v5

    :goto_1
    iput-boolean v3, p0, Lorg/minidns/dnsmessage/DnsMessage;->authoritativeAnswer:Z

    .line 397
    shr-int/lit8 v3, v2, 0x9

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    move v3, v5

    :goto_2
    iput-boolean v3, p0, Lorg/minidns/dnsmessage/DnsMessage;->truncated:Z

    .line 398
    shr-int/lit8 v3, v2, 0x8

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_3

    move v3, v4

    goto :goto_3

    :cond_3
    move v3, v5

    :goto_3
    iput-boolean v3, p0, Lorg/minidns/dnsmessage/DnsMessage;->recursionDesired:Z

    .line 399
    shr-int/lit8 v3, v2, 0x7

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_4

    move v3, v4

    goto :goto_4

    :cond_4
    move v3, v5

    :goto_4
    iput-boolean v3, p0, Lorg/minidns/dnsmessage/DnsMessage;->recursionAvailable:Z

    .line 400
    shr-int/lit8 v3, v2, 0x5

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_5

    move v3, v4

    goto :goto_5

    :cond_5
    move v3, v5

    :goto_5
    iput-boolean v3, p0, Lorg/minidns/dnsmessage/DnsMessage;->authenticData:Z

    .line 401
    shr-int/lit8 v3, v2, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_6

    goto :goto_6

    :cond_6
    move v4, v5

    :goto_6
    iput-boolean v4, p0, Lorg/minidns/dnsmessage/DnsMessage;->checkingDisabled:Z

    .line 402
    and-int/lit8 v3, v2, 0xf

    invoke-static {v3}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->getResponseCode(I)Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    move-result-object v3

    iput-object v3, p0, Lorg/minidns/dnsmessage/DnsMessage;->responseCode:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/minidns/dnsmessage/DnsMessage;->receiveTimestamp:J

    .line 404
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    .line 405
    .local v3, "questionCount":I
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    .line 406
    .local v4, "answerCount":I
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v5

    .line 407
    .local v5, "nameserverCount":I
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v6

    .line 408
    .local v6, "additionalResourceRecordCount":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lorg/minidns/dnsmessage/DnsMessage;->questions:Ljava/util/List;

    .line 409
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_7
    if-ge v7, v3, :cond_7

    .line 410
    iget-object v8, p0, Lorg/minidns/dnsmessage/DnsMessage;->questions:Ljava/util/List;

    new-instance v9, Lorg/minidns/dnsmessage/Question;

    invoke-direct {v9, v1, p1}, Lorg/minidns/dnsmessage/Question;-><init>(Ljava/io/DataInputStream;[B)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 412
    .end local v7    # "i":I
    :cond_7
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lorg/minidns/dnsmessage/DnsMessage;->answerSection:Ljava/util/List;

    .line 413
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_8
    if-ge v7, v4, :cond_8

    .line 414
    iget-object v8, p0, Lorg/minidns/dnsmessage/DnsMessage;->answerSection:Ljava/util/List;

    invoke-static {v1, p1}, Lorg/minidns/record/Record;->parse(Ljava/io/DataInputStream;[B)Lorg/minidns/record/Record;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 416
    .end local v7    # "i":I
    :cond_8
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lorg/minidns/dnsmessage/DnsMessage;->authoritySection:Ljava/util/List;

    .line 417
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_9
    if-ge v7, v5, :cond_9

    .line 418
    iget-object v8, p0, Lorg/minidns/dnsmessage/DnsMessage;->authoritySection:Ljava/util/List;

    invoke-static {v1, p1}, Lorg/minidns/record/Record;->parse(Ljava/io/DataInputStream;[B)Lorg/minidns/record/Record;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 420
    .end local v7    # "i":I
    :cond_9
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lorg/minidns/dnsmessage/DnsMessage;->additionalSection:Ljava/util/List;

    .line 421
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_a
    if-ge v7, v6, :cond_a

    .line 422
    iget-object v8, p0, Lorg/minidns/dnsmessage/DnsMessage;->additionalSection:Ljava/util/List;

    invoke-static {v1, p1}, Lorg/minidns/record/Record;->parse(Ljava/io/DataInputStream;[B)Lorg/minidns/record/Record;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 424
    .end local v7    # "i":I
    :cond_a
    iget-object v7, p0, Lorg/minidns/dnsmessage/DnsMessage;->additionalSection:Ljava/util/List;

    invoke-static {v7}, Lorg/minidns/dnsmessage/DnsMessage;->getOptRrPosition(Ljava/util/List;)I

    move-result v7

    iput v7, p0, Lorg/minidns/dnsmessage/DnsMessage;->optRrPosition:I

    .line 425
    return-void
.end method

.method public static builder()Lorg/minidns/dnsmessage/DnsMessage$Builder;
    .locals 2

    .line 909
    new-instance v0, Lorg/minidns/dnsmessage/DnsMessage$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/minidns/dnsmessage/DnsMessage$Builder;-><init>(Lorg/minidns/dnsmessage/DnsMessage$1;)V

    return-object v0
.end method

.method private filterSectionByType(Lorg/minidns/dnsmessage/DnsMessage$SectionName;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .param p1, "sectionName"    # Lorg/minidns/dnsmessage/DnsMessage$SectionName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lorg/minidns/record/Data;",
            ">(",
            "Lorg/minidns/dnsmessage/DnsMessage$SectionName;",
            "Ljava/lang/Class<",
            "TD;>;)",
            "Ljava/util/List<",
            "Lorg/minidns/record/Record<",
            "TD;>;>;"
        }
    .end annotation

    .line 858
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TD;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/minidns/dnsmessage/DnsMessage;->filterSectionByType(ZLorg/minidns/dnsmessage/DnsMessage$SectionName;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private filterSectionByType(ZLorg/minidns/dnsmessage/DnsMessage$SectionName;Ljava/lang/Class;)Ljava/util/List;
    .locals 5
    .param p1, "stopOnFirst"    # Z
    .param p2, "sectionName"    # Lorg/minidns/dnsmessage/DnsMessage$SectionName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lorg/minidns/record/Data;",
            ">(Z",
            "Lorg/minidns/dnsmessage/DnsMessage$SectionName;",
            "Ljava/lang/Class<",
            "TD;>;)",
            "Ljava/util/List<",
            "Lorg/minidns/record/Record<",
            "TD;>;>;"
        }
    .end annotation

    .line 828
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TD;>;"
    sget-object v0, Lorg/minidns/dnsmessage/DnsMessage$1;->$SwitchMap$org$minidns$dnsmessage$DnsMessage$SectionName:[I

    invoke-virtual {p2}, Lorg/minidns/dnsmessage/DnsMessage$SectionName;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 836
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->additionalSection:Ljava/util/List;

    .line 837
    .local v0, "sectionToFilter":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<*>;>;"
    goto :goto_0

    .line 839
    .end local v0    # "sectionToFilter":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<*>;>;"
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown section name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 833
    :cond_1
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->authoritySection:Ljava/util/List;

    .line 834
    .restart local v0    # "sectionToFilter":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<*>;>;"
    goto :goto_0

    .line 830
    .end local v0    # "sectionToFilter":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<*>;>;"
    :cond_2
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->answerSection:Ljava/util/List;

    .line 831
    .restart local v0    # "sectionToFilter":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<*>;>;"
    nop

    .line 842
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v2

    .line 844
    .local v1, "res":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<TD;>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/minidns/record/Record;

    .line 845
    .local v3, "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<*>;"
    invoke-virtual {v3, p3}, Lorg/minidns/record/Record;->ifPossibleAs(Ljava/lang/Class;)Lorg/minidns/record/Record;

    move-result-object v4

    .line 846
    .local v4, "target":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<TD;>;"
    if-eqz v4, :cond_4

    .line 847
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 848
    if-eqz p1, :cond_4

    .line 849
    return-object v1

    .line 852
    .end local v3    # "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<*>;"
    .end local v4    # "target":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<TD;>;"
    :cond_4
    goto :goto_2

    .line 854
    :cond_5
    return-object v1
.end method

.method private getFirstOfType(Lorg/minidns/dnsmessage/DnsMessage$SectionName;Ljava/lang/Class;)Lorg/minidns/record/Record;
    .locals 2
    .param p1, "sectionName"    # Lorg/minidns/dnsmessage/DnsMessage$SectionName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lorg/minidns/record/Data;",
            ">(",
            "Lorg/minidns/dnsmessage/DnsMessage$SectionName;",
            "Ljava/lang/Class<",
            "TD;>;)",
            "Lorg/minidns/record/Record<",
            "TD;>;"
        }
    .end annotation

    .line 862
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TD;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/minidns/dnsmessage/DnsMessage;->filterSectionByType(ZLorg/minidns/dnsmessage/DnsMessage$SectionName;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 863
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<TD;>;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 864
    const/4 v1, 0x0

    return-object v1

    .line 867
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/minidns/record/Record;

    return-object v1
.end method

.method private static getOptRrPosition(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/Data;",
            ">;>;)I"
        }
    .end annotation

    .line 452
    .local p0, "additionalSection":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;"
    const/4 v0, -0x1

    .line 453
    .local v0, "optRrPosition":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 454
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/minidns/record/Record;

    .line 455
    .local v2, "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    iget-object v3, v2, Lorg/minidns/record/Record;->type:Lorg/minidns/record/Record$TYPE;

    sget-object v4, Lorg/minidns/record/Record$TYPE;->OPT:Lorg/minidns/record/Record$TYPE;

    if-ne v3, v4, :cond_0

    .line 456
    move v0, v1

    .line 457
    goto :goto_1

    .line 453
    .end local v2    # "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 460
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

.method private serialize()[B
    .locals 6

    .line 498
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->byteCache:[B

    if-eqz v0, :cond_0

    .line 499
    return-object v0

    .line 502
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 503
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 504
    .local v1, "dos":Ljava/io/DataOutputStream;
    invoke-virtual {p0}, Lorg/minidns/dnsmessage/DnsMessage;->calculateHeaderBitmap()I

    move-result v2

    .line 506
    .local v2, "header":I
    :try_start_0
    iget v3, p0, Lorg/minidns/dnsmessage/DnsMessage;->id:I

    int-to-short v3, v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 507
    int-to-short v3, v2

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 508
    iget-object v3, p0, Lorg/minidns/dnsmessage/DnsMessage;->questions:Ljava/util/List;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 509
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_0

    .line 511
    :cond_1
    iget-object v3, p0, Lorg/minidns/dnsmessage/DnsMessage;->questions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-short v3, v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 513
    :goto_0
    iget-object v3, p0, Lorg/minidns/dnsmessage/DnsMessage;->answerSection:Ljava/util/List;

    if-nez v3, :cond_2

    .line 514
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_1

    .line 516
    :cond_2
    iget-object v3, p0, Lorg/minidns/dnsmessage/DnsMessage;->answerSection:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-short v3, v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 518
    :goto_1
    iget-object v3, p0, Lorg/minidns/dnsmessage/DnsMessage;->authoritySection:Ljava/util/List;

    if-nez v3, :cond_3

    .line 519
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_2

    .line 521
    :cond_3
    iget-object v3, p0, Lorg/minidns/dnsmessage/DnsMessage;->authoritySection:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-short v3, v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 523
    :goto_2
    iget-object v3, p0, Lorg/minidns/dnsmessage/DnsMessage;->additionalSection:Ljava/util/List;

    if-nez v3, :cond_4

    .line 524
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    goto :goto_3

    .line 526
    :cond_4
    iget-object v3, p0, Lorg/minidns/dnsmessage/DnsMessage;->additionalSection:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-short v3, v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 528
    :goto_3
    iget-object v3, p0, Lorg/minidns/dnsmessage/DnsMessage;->questions:Ljava/util/List;

    if-eqz v3, :cond_5

    .line 529
    iget-object v3, p0, Lorg/minidns/dnsmessage/DnsMessage;->questions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/minidns/dnsmessage/Question;

    .line 530
    .local v4, "question":Lorg/minidns/dnsmessage/Question;
    invoke-virtual {v4}, Lorg/minidns/dnsmessage/Question;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 531
    .end local v4    # "question":Lorg/minidns/dnsmessage/Question;
    goto :goto_4

    .line 533
    :cond_5
    iget-object v3, p0, Lorg/minidns/dnsmessage/DnsMessage;->answerSection:Ljava/util/List;

    if-eqz v3, :cond_6

    .line 534
    iget-object v3, p0, Lorg/minidns/dnsmessage/DnsMessage;->answerSection:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/minidns/record/Record;

    .line 535
    .local v4, "answer":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    invoke-virtual {v4}, Lorg/minidns/record/Record;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 536
    .end local v4    # "answer":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    goto :goto_5

    .line 538
    :cond_6
    iget-object v3, p0, Lorg/minidns/dnsmessage/DnsMessage;->authoritySection:Ljava/util/List;

    if-eqz v3, :cond_7

    .line 539
    iget-object v3, p0, Lorg/minidns/dnsmessage/DnsMessage;->authoritySection:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/minidns/record/Record;

    .line 540
    .local v4, "nameserverRecord":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    invoke-virtual {v4}, Lorg/minidns/record/Record;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 541
    .end local v4    # "nameserverRecord":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    goto :goto_6

    .line 543
    :cond_7
    iget-object v3, p0, Lorg/minidns/dnsmessage/DnsMessage;->additionalSection:Ljava/util/List;

    if-eqz v3, :cond_8

    .line 544
    iget-object v3, p0, Lorg/minidns/dnsmessage/DnsMessage;->additionalSection:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/minidns/record/Record;

    .line 545
    .local v4, "additionalResourceRecord":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    invoke-virtual {v4}, Lorg/minidns/record/Record;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 546
    .end local v4    # "additionalResourceRecord":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    goto :goto_7

    .line 548
    :cond_8
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    nop

    .line 553
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lorg/minidns/dnsmessage/DnsMessage;->byteCache:[B

    .line 554
    iget-object v3, p0, Lorg/minidns/dnsmessage/DnsMessage;->byteCache:[B

    return-object v3

    .line 549
    :catch_0
    move-exception v3

    .line 551
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method


# virtual methods
.method public asBuilder()Lorg/minidns/dnsmessage/DnsMessage$Builder;
    .locals 2

    .line 783
    new-instance v0, Lorg/minidns/dnsmessage/DnsMessage$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/minidns/dnsmessage/DnsMessage$Builder;-><init>(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsmessage/DnsMessage$1;)V

    return-object v0
.end method

.method public asDatagram(Ljava/net/InetAddress;I)Ljava/net/DatagramPacket;
    .locals 3
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .line 473
    invoke-direct {p0}, Lorg/minidns/dnsmessage/DnsMessage;->serialize()[B

    move-result-object v0

    .line 474
    .local v0, "bytes":[B
    new-instance v1, Ljava/net/DatagramPacket;

    array-length v2, v0

    invoke-direct {v1, v0, v2, p1, p2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    return-object v1
.end method

.method public asNormalizedVersion()Lorg/minidns/dnsmessage/DnsMessage;
    .locals 1

    .line 789
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->normalizedVersionCache:Lorg/minidns/dnsmessage/DnsMessage;

    if-nez v0, :cond_0

    .line 790
    new-instance v0, Lorg/minidns/dnsmessage/DnsMessage;

    invoke-direct {v0, p0}, Lorg/minidns/dnsmessage/DnsMessage;-><init>(Lorg/minidns/dnsmessage/DnsMessage;)V

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->normalizedVersionCache:Lorg/minidns/dnsmessage/DnsMessage;

    .line 792
    :cond_0
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->normalizedVersionCache:Lorg/minidns/dnsmessage/DnsMessage;

    return-object v0
.end method

.method public asTerminalOutput()Ljava/lang/String;
    .locals 7

    .line 679
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->terminalOutputCache:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 681
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ";; ->>HEADER<<-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 682
    const-string v1, " opcode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->opcode:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 683
    const-string v1, ", status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->responseCode:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 684
    const-string v1, ", id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    const-string v1, ";; flags:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 686
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->qr:Z

    if-nez v1, :cond_1

    const-string v1, " qr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    :cond_1
    iget-boolean v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->authoritativeAnswer:Z

    if-eqz v1, :cond_2

    const-string v1, " aa"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    :cond_2
    iget-boolean v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->truncated:Z

    if-eqz v1, :cond_3

    const-string v1, " tr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    :cond_3
    iget-boolean v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->recursionDesired:Z

    if-eqz v1, :cond_4

    const-string v1, " rd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    :cond_4
    iget-boolean v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->recursionAvailable:Z

    if-eqz v1, :cond_5

    const-string v1, " ra"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    :cond_5
    iget-boolean v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->authenticData:Z

    if-eqz v1, :cond_6

    const-string v1, " ad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    :cond_6
    iget-boolean v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->checkingDisabled:Z

    if-eqz v1, :cond_7

    const-string v1, " cd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    :cond_7
    const-string v1, "; QUERY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->questions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 694
    const-string v1, ", ANSWER: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->answerSection:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 695
    const-string v1, ", AUTHORITY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->authoritySection:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 696
    const-string v1, ", ADDITIONAL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->additionalSection:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 697
    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    iget-object v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->additionalSection:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/minidns/record/Record;

    .line 699
    .local v2, "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    invoke-static {v2}, Lorg/minidns/edns/Edns;->fromRecord(Lorg/minidns/record/Record;)Lorg/minidns/edns/Edns;

    move-result-object v3

    .line 700
    .local v3, "edns":Lorg/minidns/edns/Edns;
    if-eqz v3, :cond_8

    .line 701
    const-string v1, ";; OPT PSEUDOSECTION:\n; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/minidns/edns/Edns;->asTerminalOutput()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    goto :goto_1

    .line 704
    .end local v2    # "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    .end local v3    # "edns":Lorg/minidns/edns/Edns;
    :cond_8
    goto :goto_0

    .line 705
    :cond_9
    :goto_1
    iget-object v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->questions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xa

    if-eqz v1, :cond_a

    .line 706
    const-string v1, ";; QUESTION SECTION:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    iget-object v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->questions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/minidns/dnsmessage/Question;

    .line 708
    .local v3, "question":Lorg/minidns/dnsmessage/Question;
    const/16 v4, 0x3b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/minidns/dnsmessage/Question;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 709
    .end local v3    # "question":Lorg/minidns/dnsmessage/Question;
    goto :goto_2

    .line 711
    :cond_a
    iget-object v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->authoritySection:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_b

    .line 712
    const-string v1, "\n;; AUTHORITY SECTION:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    iget-object v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->authoritySection:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/minidns/record/Record;

    .line 714
    .local v3, "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    invoke-virtual {v3}, Lorg/minidns/record/Record;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 715
    .end local v3    # "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    goto :goto_3

    .line 717
    :cond_b
    iget-object v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->answerSection:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_c

    .line 718
    const-string v1, "\n;; ANSWER SECTION:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    iget-object v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->answerSection:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/minidns/record/Record;

    .line 720
    .restart local v3    # "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    invoke-virtual {v3}, Lorg/minidns/record/Record;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 721
    .end local v3    # "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    goto :goto_4

    .line 723
    :cond_c
    iget-object v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->additionalSection:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_f

    .line 724
    const/4 v1, 0x0

    .line 725
    .local v1, "hasNonOptArr":Z
    iget-object v3, p0, Lorg/minidns/dnsmessage/DnsMessage;->additionalSection:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/minidns/record/Record;

    .line 726
    .local v4, "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    iget-object v5, v4, Lorg/minidns/record/Record;->type:Lorg/minidns/record/Record$TYPE;

    sget-object v6, Lorg/minidns/record/Record$TYPE;->OPT:Lorg/minidns/record/Record$TYPE;

    if-eq v5, v6, :cond_e

    .line 727
    if-nez v1, :cond_d

    .line 728
    const/4 v1, 0x1

    .line 729
    const-string v5, "\n;; ADDITIONAL SECTION:\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    :cond_d
    invoke-virtual {v4}, Lorg/minidns/record/Record;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 733
    .end local v4    # "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    :cond_e
    goto :goto_5

    .line 735
    .end local v1    # "hasNonOptArr":Z
    :cond_f
    iget-wide v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->receiveTimestamp:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_10

    .line 736
    const-string v1, "\n;; WHEN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lorg/minidns/dnsmessage/DnsMessage;->receiveTimestamp:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    :cond_10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->terminalOutputCache:Ljava/lang/String;

    .line 739
    iget-object v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->terminalOutputCache:Ljava/lang/String;

    return-object v1
.end method

.method calculateHeaderBitmap()I
    .locals 2

    .line 558
    const/4 v0, 0x0

    .line 559
    .local v0, "header":I
    iget-boolean v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->qr:Z

    if-eqz v1, :cond_0

    .line 560
    const v1, 0x8000

    add-int/2addr v0, v1

    .line 562
    :cond_0
    iget-object v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->opcode:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    if-eqz v1, :cond_1

    .line 563
    invoke-virtual {v1}, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->getValue()B

    move-result v1

    shl-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    .line 565
    :cond_1
    iget-boolean v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->authoritativeAnswer:Z

    if-eqz v1, :cond_2

    .line 566
    add-int/lit16 v0, v0, 0x400

    .line 568
    :cond_2
    iget-boolean v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->truncated:Z

    if-eqz v1, :cond_3

    .line 569
    add-int/lit16 v0, v0, 0x200

    .line 571
    :cond_3
    iget-boolean v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->recursionDesired:Z

    if-eqz v1, :cond_4

    .line 572
    add-int/lit16 v0, v0, 0x100

    .line 574
    :cond_4
    iget-boolean v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->recursionAvailable:Z

    if-eqz v1, :cond_5

    .line 575
    add-int/lit16 v0, v0, 0x80

    .line 577
    :cond_5
    iget-boolean v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->authenticData:Z

    if-eqz v1, :cond_6

    .line 578
    add-int/lit8 v0, v0, 0x20

    .line 580
    :cond_6
    iget-boolean v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->checkingDisabled:Z

    if-eqz v1, :cond_7

    .line 581
    add-int/lit8 v0, v0, 0x10

    .line 583
    :cond_7
    iget-object v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->responseCode:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    if-eqz v1, :cond_8

    .line 584
    invoke-virtual {v1}, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->getValue()B

    move-result v1

    add-int/2addr v0, v1

    .line 586
    :cond_8
    return v0
.end method

.method public copyAnswers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/Data;",
            ">;>;"
        }
    .end annotation

    .line 612
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->answerSection:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 613
    .local v0, "res":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;"
    iget-object v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->answerSection:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 614
    return-object v0
.end method

.method public copyAuthority()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/Data;",
            ">;>;"
        }
    .end annotation

    .line 624
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->authoritySection:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 625
    .local v0, "res":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;"
    iget-object v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->authoritySection:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 626
    return-object v0
.end method

.method public copyQuestions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/minidns/dnsmessage/Question;",
            ">;"
        }
    .end annotation

    .line 600
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->questions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 601
    .local v0, "copy":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/dnsmessage/Question;>;"
    iget-object v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->questions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 602
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 896
    instance-of v0, p1, Lorg/minidns/dnsmessage/DnsMessage;

    if-nez v0, :cond_0

    .line 897
    const/4 v0, 0x0

    return v0

    .line 899
    :cond_0
    if-ne p1, p0, :cond_1

    .line 900
    const/4 v0, 0x1

    return v0

    .line 902
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/minidns/dnsmessage/DnsMessage;

    .line 903
    .local v0, "otherDnsMessage":Lorg/minidns/dnsmessage/DnsMessage;
    invoke-direct {v0}, Lorg/minidns/dnsmessage/DnsMessage;->serialize()[B

    move-result-object v1

    .line 904
    .local v1, "otherBytes":[B
    invoke-direct {p0}, Lorg/minidns/dnsmessage/DnsMessage;->serialize()[B

    move-result-object v2

    .line 905
    .local v2, "myBytes":[B
    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    return v3
.end method

.method public filterAdditionalSectionBy(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lorg/minidns/record/Data;",
            ">(",
            "Ljava/lang/Class<",
            "TD;>;)",
            "Ljava/util/List<",
            "Lorg/minidns/record/Record<",
            "TD;>;>;"
        }
    .end annotation

    .line 879
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TD;>;"
    sget-object v0, Lorg/minidns/dnsmessage/DnsMessage$SectionName;->additional:Lorg/minidns/dnsmessage/DnsMessage$SectionName;

    invoke-direct {p0, v0, p1}, Lorg/minidns/dnsmessage/DnsMessage;->filterSectionByType(Lorg/minidns/dnsmessage/DnsMessage$SectionName;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public filterAnswerSectionBy(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lorg/minidns/record/Data;",
            ">(",
            "Ljava/lang/Class<",
            "TD;>;)",
            "Ljava/util/List<",
            "Lorg/minidns/record/Record<",
            "TD;>;>;"
        }
    .end annotation

    .line 871
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TD;>;"
    sget-object v0, Lorg/minidns/dnsmessage/DnsMessage$SectionName;->answer:Lorg/minidns/dnsmessage/DnsMessage$SectionName;

    invoke-direct {p0, v0, p1}, Lorg/minidns/dnsmessage/DnsMessage;->filterSectionByType(Lorg/minidns/dnsmessage/DnsMessage$SectionName;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public filterAuthoritySectionBy(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lorg/minidns/record/Data;",
            ">(",
            "Ljava/lang/Class<",
            "TD;>;)",
            "Ljava/util/List<",
            "Lorg/minidns/record/Record<",
            "TD;>;>;"
        }
    .end annotation

    .line 875
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TD;>;"
    sget-object v0, Lorg/minidns/dnsmessage/DnsMessage$SectionName;->authority:Lorg/minidns/dnsmessage/DnsMessage$SectionName;

    invoke-direct {p0, v0, p1}, Lorg/minidns/dnsmessage/DnsMessage;->filterSectionByType(Lorg/minidns/dnsmessage/DnsMessage$SectionName;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAnswersFor(Lorg/minidns/dnsmessage/Question;)Ljava/util/Set;
    .locals 10
    .param p1, "q"    # Lorg/minidns/dnsmessage/Question;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lorg/minidns/record/Data;",
            ">(",
            "Lorg/minidns/dnsmessage/Question;",
            ")",
            "Ljava/util/Set<",
            "TD;>;"
        }
    .end annotation

    .line 743
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->responseCode:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    sget-object v1, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->NO_ERROR:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 748
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->answerSection:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 749
    .local v0, "res":Ljava/util/Set;, "Ljava/util/Set<TD;>;"
    iget-object v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->answerSection:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/minidns/record/Record;

    .line 750
    .local v2, "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    invoke-virtual {v2, p1}, Lorg/minidns/record/Record;->isAnswer(Lorg/minidns/dnsmessage/Question;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 752
    :cond_1
    invoke-virtual {v2}, Lorg/minidns/record/Record;->getPayload()Lorg/minidns/record/Data;

    move-result-object v3

    .line 754
    .local v3, "data":Lorg/minidns/record/Data;
    move-object v4, v3

    .line 755
    .local v4, "d":Lorg/minidns/record/Data;, "TD;"
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 756
    .local v5, "isNew":Z
    if-nez v5, :cond_2

    .line 757
    sget-object v6, Lorg/minidns/dnsmessage/DnsMessage;->LOGGER:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DnsMessage contains duplicate answers. Record: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "; DnsMessage: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 759
    .end local v2    # "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    .end local v3    # "data":Lorg/minidns/record/Data;
    .end local v4    # "d":Lorg/minidns/record/Data;, "TD;"
    .end local v5    # "isNew":Z
    :cond_2
    goto :goto_0

    .line 760
    :cond_3
    return-object v0
.end method

.method public getAnswersMinTtl()J
    .locals 6

    .line 771
    iget-wide v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->answersMinTtlCache:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 772
    return-wide v0

    .line 775
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->answersMinTtlCache:J

    .line 776
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->answerSection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/minidns/record/Record;

    .line 777
    .local v1, "r":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    iget-wide v2, p0, Lorg/minidns/dnsmessage/DnsMessage;->answersMinTtlCache:J

    iget-wide v4, v1, Lorg/minidns/record/Record;->ttl:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/minidns/dnsmessage/DnsMessage;->answersMinTtlCache:J

    .line 778
    .end local v1    # "r":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    goto :goto_0

    .line 779
    :cond_1
    iget-wide v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->answersMinTtlCache:J

    return-wide v0
.end method

.method public getEdns()Lorg/minidns/edns/Edns;
    .locals 2

    .line 630
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->edns:Lorg/minidns/edns/Edns;

    if-eqz v0, :cond_0

    return-object v0

    .line 632
    :cond_0
    invoke-virtual {p0}, Lorg/minidns/dnsmessage/DnsMessage;->getOptPseudoRecord()Lorg/minidns/record/Record;

    move-result-object v0

    .line 633
    .local v0, "optRecord":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<Lorg/minidns/record/OPT;>;"
    if-nez v0, :cond_1

    const/4 v1, 0x0

    return-object v1

    .line 634
    :cond_1
    new-instance v1, Lorg/minidns/edns/Edns;

    invoke-direct {v1, v0}, Lorg/minidns/edns/Edns;-><init>(Lorg/minidns/record/Record;)V

    iput-object v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->edns:Lorg/minidns/edns/Edns;

    .line 635
    iget-object v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->edns:Lorg/minidns/edns/Edns;

    return-object v1
.end method

.method public getFirstOfTypeFromAdditionalSection(Ljava/lang/Class;)Lorg/minidns/record/Record;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lorg/minidns/record/Data;",
            ">(",
            "Ljava/lang/Class<",
            "TD;>;)",
            "Lorg/minidns/record/Record<",
            "TD;>;"
        }
    .end annotation

    .line 891
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TD;>;"
    sget-object v0, Lorg/minidns/dnsmessage/DnsMessage$SectionName;->additional:Lorg/minidns/dnsmessage/DnsMessage$SectionName;

    invoke-direct {p0, v0, p1}, Lorg/minidns/dnsmessage/DnsMessage;->getFirstOfType(Lorg/minidns/dnsmessage/DnsMessage$SectionName;Ljava/lang/Class;)Lorg/minidns/record/Record;

    move-result-object v0

    return-object v0
.end method

.method public getFirstOfTypeFromAnswerSection(Ljava/lang/Class;)Lorg/minidns/record/Record;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lorg/minidns/record/Data;",
            ">(",
            "Ljava/lang/Class<",
            "TD;>;)",
            "Lorg/minidns/record/Record<",
            "TD;>;"
        }
    .end annotation

    .line 883
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TD;>;"
    sget-object v0, Lorg/minidns/dnsmessage/DnsMessage$SectionName;->answer:Lorg/minidns/dnsmessage/DnsMessage$SectionName;

    invoke-direct {p0, v0, p1}, Lorg/minidns/dnsmessage/DnsMessage;->getFirstOfType(Lorg/minidns/dnsmessage/DnsMessage$SectionName;Ljava/lang/Class;)Lorg/minidns/record/Record;

    move-result-object v0

    return-object v0
.end method

.method public getFirstOfTypeFromAuthoritySection(Ljava/lang/Class;)Lorg/minidns/record/Record;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lorg/minidns/record/Data;",
            ">(",
            "Ljava/lang/Class<",
            "TD;>;)",
            "Lorg/minidns/record/Record<",
            "TD;>;"
        }
    .end annotation

    .line 887
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TD;>;"
    sget-object v0, Lorg/minidns/dnsmessage/DnsMessage$SectionName;->authority:Lorg/minidns/dnsmessage/DnsMessage$SectionName;

    invoke-direct {p0, v0, p1}, Lorg/minidns/dnsmessage/DnsMessage;->getFirstOfType(Lorg/minidns/dnsmessage/DnsMessage$SectionName;Ljava/lang/Class;)Lorg/minidns/record/Record;

    move-result-object v0

    return-object v0
.end method

.method public getInByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 491
    invoke-direct {p0}, Lorg/minidns/dnsmessage/DnsMessage;->serialize()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 492
    .local v0, "bytes":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public getOptPseudoRecord()Lorg/minidns/record/Record;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/minidns/record/Record<",
            "Lorg/minidns/record/OPT;",
            ">;"
        }
    .end annotation

    .line 640
    iget v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->optRrPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 641
    :cond_0
    iget-object v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->additionalSection:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/minidns/record/Record;

    return-object v0
.end method

.method public getQuestion()Lorg/minidns/dnsmessage/Question;
    .locals 2

    .line 590
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->questions:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/minidns/dnsmessage/Question;

    return-object v0
.end method

.method public getResponseBuilder(Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;)Lorg/minidns/dnsmessage/DnsMessage$Builder;
    .locals 2
    .param p1, "responseCode"    # Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 796
    iget-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->qr:Z

    if-nez v0, :cond_0

    .line 799
    invoke-static {}, Lorg/minidns/dnsmessage/DnsMessage;->builder()Lorg/minidns/dnsmessage/DnsMessage$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 800
    invoke-virtual {v0, v1}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->setQrFlag(Z)Lorg/minidns/dnsmessage/DnsMessage$Builder;

    move-result-object v0

    .line 801
    invoke-virtual {v0, p1}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->setResponseCode(Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;)Lorg/minidns/dnsmessage/DnsMessage$Builder;

    move-result-object v0

    iget v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->id:I

    .line 802
    invoke-virtual {v0, v1}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->setId(I)Lorg/minidns/dnsmessage/DnsMessage$Builder;

    move-result-object v0

    .line 803
    invoke-virtual {p0}, Lorg/minidns/dnsmessage/DnsMessage;->getQuestion()Lorg/minidns/dnsmessage/Question;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->setQuestion(Lorg/minidns/dnsmessage/Question;)Lorg/minidns/dnsmessage/DnsMessage$Builder;

    move-result-object v0

    .line 805
    .local v0, "responseBuilder":Lorg/minidns/dnsmessage/DnsMessage$Builder;
    return-object v0

    .line 797
    .end local v0    # "responseBuilder":Lorg/minidns/dnsmessage/DnsMessage$Builder;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public hashCode()I
    .locals 2

    .line 812
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->hashCodeCache:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 813
    invoke-direct {p0}, Lorg/minidns/dnsmessage/DnsMessage;->serialize()[B

    move-result-object v0

    .line 814
    .local v0, "bytes":[B
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->hashCodeCache:Ljava/lang/Integer;

    .line 816
    .end local v0    # "bytes":[B
    :cond_0
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->hashCodeCache:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isDnssecOk()Z
    .locals 2

    .line 650
    invoke-virtual {p0}, Lorg/minidns/dnsmessage/DnsMessage;->getEdns()Lorg/minidns/edns/Edns;

    move-result-object v0

    .line 651
    .local v0, "edns":Lorg/minidns/edns/Edns;
    if-nez v0, :cond_0

    .line 652
    const/4 v1, 0x0

    return v1

    .line 654
    :cond_0
    iget-boolean v1, v0, Lorg/minidns/edns/Edns;->dnssecOk:Z

    return v1
.end method

.method public toArray()[B
    .locals 1

    .line 469
    invoke-direct {p0}, Lorg/minidns/dnsmessage/DnsMessage;->serialize()[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 661
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage;->toStringCache:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 663
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DnsMessage"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 664
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/minidns/dnsmessage/DnsMessage;->asBuilder()Lorg/minidns/dnsmessage/DnsMessage$Builder;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->access$1600(Lorg/minidns/dnsmessage/DnsMessage$Builder;Ljava/lang/StringBuilder;)V

    .line 666
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->toStringCache:Ljava/lang/String;

    .line 667
    iget-object v1, p0, Lorg/minidns/dnsmessage/DnsMessage;->toStringCache:Ljava/lang/String;

    return-object v1
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 478
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/minidns/dnsmessage/DnsMessage;->writeTo(Ljava/io/OutputStream;Z)V

    .line 479
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;Z)V
    .locals 3
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "writeLength"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    invoke-direct {p0}, Lorg/minidns/dnsmessage/DnsMessage;->serialize()[B

    move-result-object v0

    .line 483
    .local v0, "bytes":[B
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 484
    .local v1, "dataOutputStream":Ljava/io/DataOutputStream;
    if-eqz p2, :cond_0

    .line 485
    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 487
    :cond_0
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 488
    return-void
.end method
