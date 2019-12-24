.class public Lorg/minidns/RrSet$Builder;
.super Ljava/lang/Object;
.source "RrSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/minidns/RrSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private clazz:Lorg/minidns/record/Record$CLASS;

.field private name:Lorg/minidns/dnsname/DnsName;

.field records:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/Data;",
            ">;>;"
        }
    .end annotation
.end field

.field private type:Lorg/minidns/record/Record$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lorg/minidns/RrSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/LinkedHashSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Lorg/minidns/RrSet$Builder;->records:Ljava/util/Set;

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Lorg/minidns/RrSet$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/minidns/RrSet$1;

    .line 51
    invoke-direct {p0}, Lorg/minidns/RrSet$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addIfPossible(Lorg/minidns/record/Record;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/Data;",
            ">;)Z"
        }
    .end annotation

    .line 84
    .local p1, "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    invoke-virtual {p0, p1}, Lorg/minidns/RrSet$Builder;->couldContain(Lorg/minidns/record/Record;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    const/4 v0, 0x0

    return v0

    .line 87
    :cond_0
    invoke-virtual {p0, p1}, Lorg/minidns/RrSet$Builder;->addRecord(Lorg/minidns/record/Record;)Lorg/minidns/RrSet$Builder;

    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public addRecord(Lorg/minidns/record/Record;)Lorg/minidns/RrSet$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/Data;",
            ">;)",
            "Lorg/minidns/RrSet$Builder;"
        }
    .end annotation

    .line 61
    .local p1, "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    iget-object v0, p0, Lorg/minidns/RrSet$Builder;->name:Lorg/minidns/dnsname/DnsName;

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p1, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    iput-object v0, p0, Lorg/minidns/RrSet$Builder;->name:Lorg/minidns/dnsname/DnsName;

    .line 63
    iget-object v0, p1, Lorg/minidns/record/Record;->type:Lorg/minidns/record/Record$TYPE;

    iput-object v0, p0, Lorg/minidns/RrSet$Builder;->type:Lorg/minidns/record/Record$TYPE;

    .line 64
    iget-object v0, p1, Lorg/minidns/record/Record;->clazz:Lorg/minidns/record/Record$CLASS;

    iput-object v0, p0, Lorg/minidns/RrSet$Builder;->clazz:Lorg/minidns/record/Record$CLASS;

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p0, p1}, Lorg/minidns/RrSet$Builder;->couldContain(Lorg/minidns/record/Record;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    :goto_0
    iget-object v0, p0, Lorg/minidns/RrSet$Builder;->records:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 71
    .local v0, "didNotExist":Z
    nop

    .line 73
    return-object p0

    .line 66
    .end local v0    # "didNotExist":Z
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not add "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to RRSet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/minidns/RrSet$Builder;->name:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/minidns/RrSet$Builder;->type:Lorg/minidns/record/Record$TYPE;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/minidns/RrSet$Builder;->clazz:Lorg/minidns/record/Record$CLASS;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Lorg/minidns/RrSet;
    .locals 7

    .line 92
    iget-object v1, p0, Lorg/minidns/RrSet$Builder;->name:Lorg/minidns/dnsname/DnsName;

    if-eqz v1, :cond_0

    .line 96
    new-instance v6, Lorg/minidns/RrSet;

    iget-object v2, p0, Lorg/minidns/RrSet$Builder;->type:Lorg/minidns/record/Record$TYPE;

    iget-object v3, p0, Lorg/minidns/RrSet$Builder;->clazz:Lorg/minidns/record/Record$CLASS;

    iget-object v4, p0, Lorg/minidns/RrSet$Builder;->records:Ljava/util/Set;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/minidns/RrSet;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;Ljava/util/Set;Lorg/minidns/RrSet$1;)V

    return-object v6

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public couldContain(Lorg/minidns/record/Record;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/Data;",
            ">;)Z"
        }
    .end annotation

    .line 77
    .local p1, "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    iget-object v0, p0, Lorg/minidns/RrSet$Builder;->name:Lorg/minidns/dnsname/DnsName;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 78
    return v1

    .line 80
    :cond_0
    iget-object v2, p1, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v0, v2}, Lorg/minidns/dnsname/DnsName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/minidns/RrSet$Builder;->type:Lorg/minidns/record/Record$TYPE;

    iget-object v2, p1, Lorg/minidns/record/Record;->type:Lorg/minidns/record/Record$TYPE;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/minidns/RrSet$Builder;->clazz:Lorg/minidns/record/Record$CLASS;

    iget-object v2, p1, Lorg/minidns/record/Record;->clazz:Lorg/minidns/record/Record$CLASS;

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
