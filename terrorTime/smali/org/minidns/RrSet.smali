.class public Lorg/minidns/RrSet;
.super Ljava/lang/Object;
.source "RrSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/minidns/RrSet$Builder;
    }
.end annotation


# instance fields
.field public final clazz:Lorg/minidns/record/Record$CLASS;

.field public final name:Lorg/minidns/dnsname/DnsName;

.field public final records:Ljava/util/Set;
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

.field public final type:Lorg/minidns/record/Record$TYPE;


# direct methods
.method private constructor <init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;Ljava/util/Set;)V
    .locals 1
    .param p1, "name"    # Lorg/minidns/dnsname/DnsName;
    .param p2, "type"    # Lorg/minidns/record/Record$TYPE;
    .param p3, "clazz"    # Lorg/minidns/record/Record$CLASS;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsname/DnsName;",
            "Lorg/minidns/record/Record$TYPE;",
            "Lorg/minidns/record/Record$CLASS;",
            "Ljava/util/Set<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/Data;",
            ">;>;)V"
        }
    .end annotation

    .line 30
    .local p4, "records":Ljava/util/Set;, "Ljava/util/Set<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/minidns/RrSet;->name:Lorg/minidns/dnsname/DnsName;

    .line 32
    iput-object p2, p0, Lorg/minidns/RrSet;->type:Lorg/minidns/record/Record$TYPE;

    .line 33
    iput-object p3, p0, Lorg/minidns/RrSet;->clazz:Lorg/minidns/record/Record$CLASS;

    .line 34
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/minidns/RrSet;->records:Ljava/util/Set;

    .line 35
    return-void
.end method

.method synthetic constructor <init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;Ljava/util/Set;Lorg/minidns/RrSet$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/minidns/dnsname/DnsName;
    .param p2, "x1"    # Lorg/minidns/record/Record$TYPE;
    .param p3, "x2"    # Lorg/minidns/record/Record$CLASS;
    .param p4, "x3"    # Ljava/util/Set;
    .param p5, "x4"    # Lorg/minidns/RrSet$1;

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/minidns/RrSet;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;Ljava/util/Set;)V

    return-void
.end method

.method public static builder()Lorg/minidns/RrSet$Builder;
    .locals 2

    .line 48
    new-instance v0, Lorg/minidns/RrSet$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/minidns/RrSet$Builder;-><init>(Lorg/minidns/RrSet$1;)V

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/minidns/RrSet;->name:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/minidns/RrSet;->clazz:Lorg/minidns/record/Record$CLASS;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/minidns/RrSet;->type:Lorg/minidns/record/Record$TYPE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    iget-object v2, p0, Lorg/minidns/RrSet;->records:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/minidns/record/Record;

    .line 42
    .local v3, "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<*>;"
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    .end local v3    # "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<*>;"
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
