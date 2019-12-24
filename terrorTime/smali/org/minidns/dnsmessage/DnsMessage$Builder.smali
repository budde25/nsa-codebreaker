.class public Lorg/minidns/dnsmessage/DnsMessage$Builder;
.super Ljava/lang/Object;
.source "DnsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/dnsmessage/DnsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private additionalSection:Ljava/util/List;
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

.field private answerSection:Ljava/util/List;
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

.field private authenticData:Z

.field private authoritativeAnswer:Z

.field private authoritySection:Ljava/util/List;
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

.field private checkingDisabled:Z

.field private ednsBuilder:Lorg/minidns/edns/Edns$Builder;

.field private id:I

.field private opcode:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

.field private query:Z

.field private questions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/minidns/dnsmessage/Question;",
            ">;"
        }
    .end annotation
.end field

.field private receiveTimestamp:J

.field private recursionAvailable:Z

.field private recursionDesired:Z

.field private responseCode:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

.field private truncated:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 914
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 942
    sget-object v0, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->QUERY:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->opcode:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 943
    sget-object v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->NO_ERROR:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->responseCode:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 952
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->receiveTimestamp:J

    .line 915
    return-void
.end method

.method synthetic constructor <init>(Lorg/minidns/dnsmessage/DnsMessage$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/minidns/dnsmessage/DnsMessage$1;

    .line 912
    invoke-direct {p0}, Lorg/minidns/dnsmessage/DnsMessage$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lorg/minidns/dnsmessage/DnsMessage;)V
    .locals 2
    .param p1, "message"    # Lorg/minidns/dnsmessage/DnsMessage;

    .line 917
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 942
    sget-object v0, Lorg/minidns/dnsmessage/DnsMessage$OPCODE;->QUERY:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->opcode:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 943
    sget-object v0, Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;->NO_ERROR:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->responseCode:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 952
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->receiveTimestamp:J

    .line 918
    iget v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->id:I

    iput v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->id:I

    .line 919
    iget-object v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->opcode:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->opcode:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 920
    iget-object v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->responseCode:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->responseCode:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 921
    iget-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->qr:Z

    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->query:Z

    .line 922
    iget-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->authoritativeAnswer:Z

    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->authoritativeAnswer:Z

    .line 923
    iget-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->truncated:Z

    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->truncated:Z

    .line 924
    iget-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->recursionDesired:Z

    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->recursionDesired:Z

    .line 925
    iget-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->recursionAvailable:Z

    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->recursionAvailable:Z

    .line 926
    iget-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->authenticData:Z

    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->authenticData:Z

    .line 927
    iget-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->checkingDisabled:Z

    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->checkingDisabled:Z

    .line 928
    iget-wide v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->receiveTimestamp:J

    iput-wide v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->receiveTimestamp:J

    .line 931
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/minidns/dnsmessage/DnsMessage;->questions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->questions:Ljava/util/List;

    .line 932
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->questions:Ljava/util/List;

    iget-object v1, p1, Lorg/minidns/dnsmessage/DnsMessage;->questions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 933
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/minidns/dnsmessage/DnsMessage;->answerSection:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->answerSection:Ljava/util/List;

    .line 934
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->answerSection:Ljava/util/List;

    iget-object v1, p1, Lorg/minidns/dnsmessage/DnsMessage;->answerSection:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 935
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/minidns/dnsmessage/DnsMessage;->authoritySection:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->authoritySection:Ljava/util/List;

    .line 936
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->authoritySection:Ljava/util/List;

    iget-object v1, p1, Lorg/minidns/dnsmessage/DnsMessage;->authoritySection:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 937
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/minidns/dnsmessage/DnsMessage;->additionalSection:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->additionalSection:Ljava/util/List;

    .line 938
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->additionalSection:Ljava/util/List;

    iget-object v1, p1, Lorg/minidns/dnsmessage/DnsMessage;->additionalSection:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 939
    return-void
.end method

.method synthetic constructor <init>(Lorg/minidns/dnsmessage/DnsMessage;Lorg/minidns/dnsmessage/DnsMessage$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/minidns/dnsmessage/DnsMessage;
    .param p2, "x1"    # Lorg/minidns/dnsmessage/DnsMessage$1;

    .line 912
    invoke-direct {p0, p1}, Lorg/minidns/dnsmessage/DnsMessage$Builder;-><init>(Lorg/minidns/dnsmessage/DnsMessage;)V

    return-void
.end method

.method static synthetic access$000(Lorg/minidns/dnsmessage/DnsMessage$Builder;)I
    .locals 1
    .param p0, "x0"    # Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 912
    iget v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->id:I

    return v0
.end method

.method static synthetic access$100(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/dnsmessage/DnsMessage$OPCODE;
    .locals 1
    .param p0, "x0"    # Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 912
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->opcode:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 912
    iget-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->checkingDisabled:Z

    return v0
.end method

.method static synthetic access$1100(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 912
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->questions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 912
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->answerSection:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 912
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->authoritySection:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 912
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->additionalSection:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/edns/Edns$Builder;
    .locals 1
    .param p0, "x0"    # Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 912
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->ednsBuilder:Lorg/minidns/edns/Edns$Builder;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/minidns/dnsmessage/DnsMessage$Builder;Ljava/lang/StringBuilder;)V
    .locals 0
    .param p0, "x0"    # Lorg/minidns/dnsmessage/DnsMessage$Builder;
    .param p1, "x1"    # Ljava/lang/StringBuilder;

    .line 912
    invoke-direct {p0, p1}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->writeToStringBuilder(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method static synthetic access$200(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;
    .locals 1
    .param p0, "x0"    # Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 912
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->responseCode:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    return-object v0
.end method

.method static synthetic access$300(Lorg/minidns/dnsmessage/DnsMessage$Builder;)J
    .locals 2
    .param p0, "x0"    # Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 912
    iget-wide v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->receiveTimestamp:J

    return-wide v0
.end method

.method static synthetic access$400(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 912
    iget-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->query:Z

    return v0
.end method

.method static synthetic access$500(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 912
    iget-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->authoritativeAnswer:Z

    return v0
.end method

.method static synthetic access$600(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 912
    iget-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->truncated:Z

    return v0
.end method

.method static synthetic access$700(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 912
    iget-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->recursionDesired:Z

    return v0
.end method

.method static synthetic access$800(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 912
    iget-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->recursionAvailable:Z

    return v0
.end method

.method static synthetic access$900(Lorg/minidns/dnsmessage/DnsMessage$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/minidns/dnsmessage/DnsMessage$Builder;

    .line 912
    iget-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->authenticData:Z

    return v0
.end method

.method private writeToStringBuilder(Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 1213
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->id:I

    .line 1214
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1215
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->opcode:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 1216
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1217
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->responseCode:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 1218
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1219
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1220
    iget-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->query:Z

    if-eqz v0, :cond_0

    .line 1221
    const-string v0, "resp[qr=1]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1223
    :cond_0
    const-string v0, "query[qr=0]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1225
    :goto_0
    iget-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->authoritativeAnswer:Z

    if-eqz v0, :cond_1

    .line 1226
    const-string v0, " aa"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    :cond_1
    iget-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->truncated:Z

    if-eqz v0, :cond_2

    .line 1228
    const-string v0, " tr"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1229
    :cond_2
    iget-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->recursionDesired:Z

    if-eqz v0, :cond_3

    .line 1230
    const-string v0, " rd"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1231
    :cond_3
    iget-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->recursionAvailable:Z

    if-eqz v0, :cond_4

    .line 1232
    const-string v0, " ra"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1233
    :cond_4
    iget-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->authenticData:Z

    if-eqz v0, :cond_5

    .line 1234
    const-string v0, " ad"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1235
    :cond_5
    iget-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->checkingDisabled:Z

    if-eqz v0, :cond_6

    .line 1236
    const-string v0, " cd"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1237
    :cond_6
    const-string v0, ")\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1238
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->questions:Ljava/util/List;

    const-string v1, "]\n"

    if-eqz v0, :cond_7

    .line 1239
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/minidns/dnsmessage/Question;

    .line 1240
    .local v2, "question":Lorg/minidns/dnsmessage/Question;
    const-string v3, "[Q: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    .end local v2    # "question":Lorg/minidns/dnsmessage/Question;
    goto :goto_1

    .line 1243
    :cond_7
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->answerSection:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 1244
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/minidns/record/Record;

    .line 1245
    .local v2, "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    const-string v3, "[A: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1246
    .end local v2    # "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    goto :goto_2

    .line 1248
    :cond_8
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->authoritySection:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 1249
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/minidns/record/Record;

    .line 1250
    .restart local v2    # "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    const-string v3, "[N: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1251
    .end local v2    # "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    goto :goto_3

    .line 1253
    :cond_9
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->additionalSection:Ljava/util/List;

    if-eqz v0, :cond_b

    .line 1254
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/minidns/record/Record;

    .line 1255
    .restart local v2    # "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    const-string v3, "[X: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    invoke-static {v2}, Lorg/minidns/edns/Edns;->fromRecord(Lorg/minidns/record/Record;)Lorg/minidns/edns/Edns;

    move-result-object v3

    .line 1257
    .local v3, "edns":Lorg/minidns/edns/Edns;
    if-eqz v3, :cond_a

    .line 1258
    invoke-virtual {v3}, Lorg/minidns/edns/Edns;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1260
    :cond_a
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1262
    :goto_5
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1263
    .end local v2    # "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    .end local v3    # "edns":Lorg/minidns/edns/Edns;
    goto :goto_4

    .line 1267
    :cond_b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_c

    .line 1268
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1270
    :cond_c
    return-void
.end method


# virtual methods
.method public addAdditionalResourceRecord(Lorg/minidns/record/Record;)Lorg/minidns/dnsmessage/DnsMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/Data;",
            ">;)",
            "Lorg/minidns/dnsmessage/DnsMessage$Builder;"
        }
    .end annotation

    .line 1167
    .local p1, "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->additionalSection:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->additionalSection:Ljava/util/List;

    .line 1170
    :cond_0
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->additionalSection:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1171
    return-object p0
.end method

.method public addAdditionalResourceRecords(Ljava/util/List;)Lorg/minidns/dnsmessage/DnsMessage$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/Data;",
            ">;>;)",
            "Lorg/minidns/dnsmessage/DnsMessage$Builder;"
        }
    .end annotation

    .line 1175
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;"
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->additionalSection:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1176
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->additionalSection:Ljava/util/List;

    .line 1178
    :cond_0
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->additionalSection:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1179
    return-object p0
.end method

.method public addAnswer(Lorg/minidns/record/Record;)Lorg/minidns/dnsmessage/DnsMessage$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/Data;",
            ">;)",
            "Lorg/minidns/dnsmessage/DnsMessage$Builder;"
        }
    .end annotation

    .line 1118
    .local p1, "answer":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->answerSection:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1119
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->answerSection:Ljava/util/List;

    .line 1121
    :cond_0
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->answerSection:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1122
    return-object p0
.end method

.method public addAnswers(Ljava/util/Collection;)Lorg/minidns/dnsmessage/DnsMessage$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/Data;",
            ">;>;)",
            "Lorg/minidns/dnsmessage/DnsMessage$Builder;"
        }
    .end annotation

    .line 1126
    .local p1, "records":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;"
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->answerSection:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1127
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->answerSection:Ljava/util/List;

    .line 1129
    :cond_0
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->answerSection:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1130
    return-object p0
.end method

.method public addNameserverRecords(Lorg/minidns/record/Record;)Lorg/minidns/dnsmessage/DnsMessage$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/Data;",
            ">;)",
            "Lorg/minidns/dnsmessage/DnsMessage$Builder;"
        }
    .end annotation

    .line 1147
    .local p1, "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->authoritySection:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1148
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->authoritySection:Ljava/util/List;

    .line 1150
    :cond_0
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->authoritySection:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1151
    return-object p0
.end method

.method public addQuestion(Lorg/minidns/dnsmessage/Question;)Lorg/minidns/dnsmessage/DnsMessage$Builder;
    .locals 2
    .param p1, "question"    # Lorg/minidns/dnsmessage/Question;

    .line 1087
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->questions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1088
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->questions:Ljava/util/List;

    .line 1090
    :cond_0
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->questions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1091
    return-object p0
.end method

.method public build()Lorg/minidns/dnsmessage/DnsMessage;
    .locals 1

    .line 1209
    new-instance v0, Lorg/minidns/dnsmessage/DnsMessage;

    invoke-direct {v0, p0}, Lorg/minidns/dnsmessage/DnsMessage;-><init>(Lorg/minidns/dnsmessage/DnsMessage$Builder;)V

    return-object v0
.end method

.method public copyFlagsFrom(Lorg/minidns/dnsmessage/DnsMessage;)V
    .locals 1
    .param p1, "dnsMessage"    # Lorg/minidns/dnsmessage/DnsMessage;

    .line 1072
    iget-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->qr:Z

    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->query:Z

    .line 1073
    iget-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->authenticData:Z

    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->authoritativeAnswer:Z

    .line 1074
    iget-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->truncated:Z

    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->truncated:Z

    .line 1075
    iget-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->recursionDesired:Z

    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->recursionDesired:Z

    .line 1076
    iget-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->recursionAvailable:Z

    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->recursionAvailable:Z

    .line 1077
    iget-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->authenticData:Z

    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->authenticData:Z

    .line 1078
    iget-boolean v0, p1, Lorg/minidns/dnsmessage/DnsMessage;->checkingDisabled:Z

    iput-boolean v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->checkingDisabled:Z

    .line 1079
    return-void
.end method

.method public getAdditionalResourceRecords()Ljava/util/List;
    .locals 1
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

    .line 1183
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->additionalSection:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1184
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1186
    :cond_0
    return-object v0
.end method

.method public getAnswers()Ljava/util/List;
    .locals 1
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

    .line 1140
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->answerSection:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1141
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1143
    :cond_0
    return-object v0
.end method

.method public getEdnsBuilder()Lorg/minidns/edns/Edns$Builder;
    .locals 1

    .line 1202
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->ednsBuilder:Lorg/minidns/edns/Edns$Builder;

    if-nez v0, :cond_0

    .line 1203
    invoke-static {}, Lorg/minidns/edns/Edns;->builder()Lorg/minidns/edns/Edns$Builder;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->ednsBuilder:Lorg/minidns/edns/Edns$Builder;

    .line 1205
    :cond_0
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->ednsBuilder:Lorg/minidns/edns/Edns$Builder;

    return-object v0
.end method

.method public setAdditionalResourceRecords(Ljava/util/Collection;)Lorg/minidns/dnsmessage/DnsMessage$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/Data;",
            ">;>;)",
            "Lorg/minidns/dnsmessage/DnsMessage$Builder;"
        }
    .end annotation

    .line 1161
    .local p1, "records":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->additionalSection:Ljava/util/List;

    .line 1162
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->additionalSection:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1163
    return-object p0
.end method

.method public setAnswers(Ljava/util/Collection;)Lorg/minidns/dnsmessage/DnsMessage$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/Data;",
            ">;>;)",
            "Lorg/minidns/dnsmessage/DnsMessage$Builder;"
        }
    .end annotation

    .line 1134
    .local p1, "records":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->answerSection:Ljava/util/List;

    .line 1135
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->answerSection:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1136
    return-object p0
.end method

.method public setAuthenticData(Z)Lorg/minidns/dnsmessage/DnsMessage$Builder;
    .locals 0
    .param p1, "authenticData"    # Z

    .line 1044
    iput-boolean p1, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->authenticData:Z

    .line 1045
    return-object p0
.end method

.method public setAuthoritativeAnswer(Z)Lorg/minidns/dnsmessage/DnsMessage$Builder;
    .locals 0
    .param p1, "authoritativeAnswer"    # Z

    .line 1000
    iput-boolean p1, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->authoritativeAnswer:Z

    .line 1001
    return-object p0
.end method

.method public setCheckDisabled(Z)Lorg/minidns/dnsmessage/DnsMessage$Builder;
    .locals 0
    .param p1, "checkingDisabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1056
    iput-boolean p1, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->checkingDisabled:Z

    .line 1057
    return-object p0
.end method

.method public setCheckingDisabled(Z)Lorg/minidns/dnsmessage/DnsMessage$Builder;
    .locals 0
    .param p1, "checkingDisabled"    # Z

    .line 1067
    iput-boolean p1, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->checkingDisabled:Z

    .line 1068
    return-object p0
.end method

.method public setId(I)Lorg/minidns/dnsmessage/DnsMessage$Builder;
    .locals 1
    .param p1, "id"    # I

    .line 967
    const v0, 0xffff

    and-int/2addr v0, p1

    iput v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->id:I

    .line 968
    return-object p0
.end method

.method public setNameserverRecords(Ljava/util/Collection;)Lorg/minidns/dnsmessage/DnsMessage$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/Data;",
            ">;>;)",
            "Lorg/minidns/dnsmessage/DnsMessage$Builder;"
        }
    .end annotation

    .line 1155
    .local p1, "records":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->authoritySection:Ljava/util/List;

    .line 1156
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->authoritySection:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1157
    return-object p0
.end method

.method public setOpcode(Lorg/minidns/dnsmessage/DnsMessage$OPCODE;)Lorg/minidns/dnsmessage/DnsMessage$Builder;
    .locals 0
    .param p1, "opcode"    # Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 972
    iput-object p1, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->opcode:Lorg/minidns/dnsmessage/DnsMessage$OPCODE;

    .line 973
    return-object p0
.end method

.method public setQrFlag(Z)Lorg/minidns/dnsmessage/DnsMessage$Builder;
    .locals 0
    .param p1, "query"    # Z

    .line 989
    iput-boolean p1, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->query:Z

    .line 990
    return-object p0
.end method

.method public setQuestion(Lorg/minidns/dnsmessage/Question;)Lorg/minidns/dnsmessage/DnsMessage$Builder;
    .locals 2
    .param p1, "question"    # Lorg/minidns/dnsmessage/Question;

    .line 1112
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->questions:Ljava/util/List;

    .line 1113
    iget-object v0, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->questions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1114
    return-object p0
.end method

.method public setQuestions(Ljava/util/List;)Lorg/minidns/dnsmessage/DnsMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/minidns/dnsmessage/Question;",
            ">;)",
            "Lorg/minidns/dnsmessage/DnsMessage$Builder;"
        }
    .end annotation

    .line 1101
    .local p1, "questions":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/dnsmessage/Question;>;"
    iput-object p1, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->questions:Ljava/util/List;

    .line 1102
    return-object p0
.end method

.method public setReceiveTimestamp(J)Lorg/minidns/dnsmessage/DnsMessage$Builder;
    .locals 0
    .param p1, "receiveTimestamp"    # J

    .line 1082
    iput-wide p1, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->receiveTimestamp:J

    .line 1083
    return-object p0
.end method

.method public setRecursionAvailable(Z)Lorg/minidns/dnsmessage/DnsMessage$Builder;
    .locals 0
    .param p1, "recursionAvailable"    # Z

    .line 1033
    iput-boolean p1, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->recursionAvailable:Z

    .line 1034
    return-object p0
.end method

.method public setRecursionDesired(Z)Lorg/minidns/dnsmessage/DnsMessage$Builder;
    .locals 0
    .param p1, "recursionDesired"    # Z

    .line 1022
    iput-boolean p1, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->recursionDesired:Z

    .line 1023
    return-object p0
.end method

.method public setResponseCode(Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;)Lorg/minidns/dnsmessage/DnsMessage$Builder;
    .locals 0
    .param p1, "responseCode"    # Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 977
    iput-object p1, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->responseCode:Lorg/minidns/dnsmessage/DnsMessage$RESPONSE_CODE;

    .line 978
    return-object p0
.end method

.method public setTruncated(Z)Lorg/minidns/dnsmessage/DnsMessage$Builder;
    .locals 0
    .param p1, "truncated"    # Z

    .line 1011
    iput-boolean p1, p0, Lorg/minidns/dnsmessage/DnsMessage$Builder;->truncated:Z

    .line 1012
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1274
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Builder of DnsMessage"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1275
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Lorg/minidns/dnsmessage/DnsMessage$Builder;->writeToStringBuilder(Ljava/lang/StringBuilder;)V

    .line 1276
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
