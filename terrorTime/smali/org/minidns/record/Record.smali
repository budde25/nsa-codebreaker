.class public final Lorg/minidns/record/Record;
.super Ljava/lang/Object;
.source "Record.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/minidns/record/Record$CLASS;,
        Lorg/minidns/record/Record$TYPE;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lorg/minidns/record/Data;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private transient bytes:[B

.field public final clazz:Lorg/minidns/record/Record$CLASS;

.field public final clazzValue:I

.field private transient hashCodeCache:Ljava/lang/Integer;

.field public final name:Lorg/minidns/dnsname/DnsName;

.field public final payloadData:Lorg/minidns/record/Data;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field public final ttl:J

.field public final type:Lorg/minidns/record/Record$TYPE;

.field public final unicastQuery:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/minidns/record/Record$TYPE;IJLorg/minidns/record/Data;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lorg/minidns/record/Record$TYPE;
    .param p3, "clazzValue"    # I
    .param p4, "ttl"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/minidns/record/Record$TYPE;",
            "IJTD;)V"
        }
    .end annotation

    .line 419
    .local p0, "this":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<TD;>;"
    .local p6, "payloadData":Lorg/minidns/record/Data;, "TD;"
    invoke-static {p1}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    move-result-object v1

    sget-object v3, Lorg/minidns/record/Record$CLASS;->NONE:Lorg/minidns/record/Record$CLASS;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lorg/minidns/record/Record;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;IJLorg/minidns/record/Data;Z)V

    .line 420
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;JLorg/minidns/record/Data;Z)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lorg/minidns/record/Record$TYPE;
    .param p3, "clazz"    # Lorg/minidns/record/Record$CLASS;
    .param p4, "ttl"    # J
    .param p7, "unicastQuery"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/minidns/record/Record$TYPE;",
            "Lorg/minidns/record/Record$CLASS;",
            "JTD;Z)V"
        }
    .end annotation

    .line 415
    .local p0, "this":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<TD;>;"
    .local p6, "payloadData":Lorg/minidns/record/Data;, "TD;"
    invoke-static {p1}, Lorg/minidns/dnsname/DnsName;->from(Ljava/lang/String;)Lorg/minidns/dnsname/DnsName;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/minidns/record/Record;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;JLorg/minidns/record/Data;Z)V

    .line 416
    return-void
.end method

.method public constructor <init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;IJLorg/minidns/record/Data;)V
    .locals 9
    .param p1, "name"    # Lorg/minidns/dnsname/DnsName;
    .param p2, "type"    # Lorg/minidns/record/Record$TYPE;
    .param p3, "clazzValue"    # I
    .param p4, "ttl"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsname/DnsName;",
            "Lorg/minidns/record/Record$TYPE;",
            "IJTD;)V"
        }
    .end annotation

    .line 423
    .local p0, "this":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<TD;>;"
    .local p6, "payloadData":Lorg/minidns/record/Data;, "TD;"
    sget-object v3, Lorg/minidns/record/Record$CLASS;->NONE:Lorg/minidns/record/Record$CLASS;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lorg/minidns/record/Record;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;IJLorg/minidns/record/Data;Z)V

    .line 424
    return-void
.end method

.method private constructor <init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;IJLorg/minidns/record/Data;Z)V
    .locals 0
    .param p1, "name"    # Lorg/minidns/dnsname/DnsName;
    .param p2, "type"    # Lorg/minidns/record/Record$TYPE;
    .param p3, "clazz"    # Lorg/minidns/record/Record$CLASS;
    .param p4, "clazzValue"    # I
    .param p5, "ttl"    # J
    .param p8, "unicastQuery"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsname/DnsName;",
            "Lorg/minidns/record/Record$TYPE;",
            "Lorg/minidns/record/Record$CLASS;",
            "IJTD;Z)V"
        }
    .end annotation

    .line 426
    .local p0, "this":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<TD;>;"
    .local p7, "payloadData":Lorg/minidns/record/Data;, "TD;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    iput-object p1, p0, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    .line 428
    iput-object p2, p0, Lorg/minidns/record/Record;->type:Lorg/minidns/record/Record$TYPE;

    .line 429
    iput-object p3, p0, Lorg/minidns/record/Record;->clazz:Lorg/minidns/record/Record$CLASS;

    .line 430
    iput p4, p0, Lorg/minidns/record/Record;->clazzValue:I

    .line 431
    iput-wide p5, p0, Lorg/minidns/record/Record;->ttl:J

    .line 432
    iput-object p7, p0, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    .line 433
    iput-boolean p8, p0, Lorg/minidns/record/Record;->unicastQuery:Z

    .line 434
    return-void
.end method

.method public constructor <init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;JLorg/minidns/record/Data;Z)V
    .locals 10
    .param p1, "name"    # Lorg/minidns/dnsname/DnsName;
    .param p2, "type"    # Lorg/minidns/record/Record$TYPE;
    .param p3, "clazz"    # Lorg/minidns/record/Record$CLASS;
    .param p4, "ttl"    # J
    .param p7, "unicastQuery"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/minidns/dnsname/DnsName;",
            "Lorg/minidns/record/Record$TYPE;",
            "Lorg/minidns/record/Record$CLASS;",
            "JTD;Z)V"
        }
    .end annotation

    .line 411
    .local p0, "this":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<TD;>;"
    .local p6, "payloadData":Lorg/minidns/record/Data;, "TD;"
    invoke-virtual {p3}, Lorg/minidns/record/Record$CLASS;->getValue()I

    move-result v0

    if-eqz p7, :cond_0

    const v1, 0x8000

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int v5, v0, v1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v6, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lorg/minidns/record/Record;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;IJLorg/minidns/record/Data;Z)V

    .line 412
    return-void
.end method

.method public static filter(Ljava/lang/Class;Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lorg/minidns/record/Data;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/util/Collection<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/Data;",
            ">;>;)",
            "Ljava/util/List<",
            "Lorg/minidns/record/Record<",
            "TE;>;>;"
        }
    .end annotation

    .line 624
    .local p0, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p1, "input":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 625
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lorg/minidns/record/Record<TE;>;>;"
    invoke-static {v0, p0, p1}, Lorg/minidns/record/Record;->filter(Ljava/util/Collection;Ljava/lang/Class;Ljava/util/Collection;)V

    .line 626
    return-object v0
.end method

.method public static filter(Ljava/util/Collection;Ljava/lang/Class;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lorg/minidns/record/Data;",
            ">(",
            "Ljava/util/Collection<",
            "Lorg/minidns/record/Record<",
            "TE;>;>;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/util/Collection<",
            "Lorg/minidns/record/Record<",
            "+",
            "Lorg/minidns/record/Data;",
            ">;>;)V"
        }
    .end annotation

    .line 613
    .local p0, "result":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/minidns/record/Record<TE;>;>;"
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    .local p2, "input":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/minidns/record/Record;

    .line 614
    .local v1, "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    invoke-virtual {v1, p1}, Lorg/minidns/record/Record;->ifPossibleAs(Ljava/lang/Class;)Lorg/minidns/record/Record;

    move-result-object v2

    .line 615
    .local v2, "filteredRecord":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<TE;>;"
    if-nez v2, :cond_0

    .line 616
    goto :goto_0

    .line 618
    :cond_0
    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 619
    .end local v1    # "record":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<+Lorg/minidns/record/Data;>;"
    .end local v2    # "filteredRecord":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<TE;>;"
    goto :goto_0

    .line 620
    :cond_1
    return-void
.end method

.method public static parse(Ljava/io/DataInputStream;[B)Lorg/minidns/record/Record;
    .locals 21
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataInputStream;",
            "[B)",
            "Lorg/minidns/record/Record<",
            "Lorg/minidns/record/Data;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {p0 .. p1}, Lorg/minidns/dnsname/DnsName;->parse(Ljava/io/DataInputStream;[B)Lorg/minidns/dnsname/DnsName;

    move-result-object v11

    .line 332
    .local v11, "name":Lorg/minidns/dnsname/DnsName;
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v12

    .line 333
    .local v12, "typeValue":I
    invoke-static {v12}, Lorg/minidns/record/Record$TYPE;->getType(I)Lorg/minidns/record/Record$TYPE;

    move-result-object v13

    .line 334
    .local v13, "type":Lorg/minidns/record/Record$TYPE;
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v14

    .line 335
    .local v14, "clazzValue":I
    and-int/lit16 v2, v14, 0x7fff

    invoke-static {v2}, Lorg/minidns/record/Record$CLASS;->getClass(I)Lorg/minidns/record/Record$CLASS;

    move-result-object v15

    .line 336
    .local v15, "clazz":Lorg/minidns/record/Record$CLASS;
    const v2, 0x8000

    and-int/2addr v2, v14

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v10, v2

    .line 337
    .local v10, "unicastQuery":Z
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    .line 338
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    int-to-long v4, v4

    add-long v16, v2, v4

    .line 339
    .local v16, "ttl":J
    invoke-virtual/range {p0 .. p0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v9

    .line 341
    .local v9, "payloadLength":I
    sget-object v2, Lorg/minidns/record/Record$1;->$SwitchMap$org$minidns$record$Record$TYPE:[I

    invoke-virtual {v13}, Lorg/minidns/record/Record$TYPE;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 404
    invoke-static {v0, v9, v13}, Lorg/minidns/record/UNKNOWN;->parse(Ljava/io/DataInputStream;ILorg/minidns/record/Record$TYPE;)Lorg/minidns/record/UNKNOWN;

    move-result-object v2

    move-object/from16 v18, v2

    .local v2, "payloadData":Lorg/minidns/record/Data;
    goto/16 :goto_1

    .line 400
    .end local v2    # "payloadData":Lorg/minidns/record/Data;
    :pswitch_0
    invoke-static {v0, v9}, Lorg/minidns/record/DLV;->parse(Ljava/io/DataInputStream;I)Lorg/minidns/record/DLV;

    move-result-object v2

    .line 401
    .restart local v2    # "payloadData":Lorg/minidns/record/Data;
    move-object/from16 v18, v2

    goto/16 :goto_1

    .line 397
    .end local v2    # "payloadData":Lorg/minidns/record/Data;
    :pswitch_1
    invoke-static {v0, v9}, Lorg/minidns/record/OPENPGPKEY;->parse(Ljava/io/DataInputStream;I)Lorg/minidns/record/OPENPGPKEY;

    move-result-object v2

    .line 398
    .restart local v2    # "payloadData":Lorg/minidns/record/Data;
    move-object/from16 v18, v2

    goto/16 :goto_1

    .line 394
    .end local v2    # "payloadData":Lorg/minidns/record/Data;
    :pswitch_2
    invoke-static {v0, v9}, Lorg/minidns/record/TLSA;->parse(Ljava/io/DataInputStream;I)Lorg/minidns/record/TLSA;

    move-result-object v2

    .line 395
    .restart local v2    # "payloadData":Lorg/minidns/record/Data;
    move-object/from16 v18, v2

    goto/16 :goto_1

    .line 391
    .end local v2    # "payloadData":Lorg/minidns/record/Data;
    :pswitch_3
    invoke-static/range {p0 .. p0}, Lorg/minidns/record/NSEC3PARAM;->parse(Ljava/io/DataInputStream;)Lorg/minidns/record/NSEC3PARAM;

    move-result-object v2

    .line 392
    .restart local v2    # "payloadData":Lorg/minidns/record/Data;
    move-object/from16 v18, v2

    goto/16 :goto_1

    .line 388
    .end local v2    # "payloadData":Lorg/minidns/record/Data;
    :pswitch_4
    invoke-static {v0, v9}, Lorg/minidns/record/NSEC3;->parse(Ljava/io/DataInputStream;I)Lorg/minidns/record/NSEC3;

    move-result-object v2

    .line 389
    .restart local v2    # "payloadData":Lorg/minidns/record/Data;
    move-object/from16 v18, v2

    goto/16 :goto_1

    .line 385
    .end local v2    # "payloadData":Lorg/minidns/record/Data;
    :pswitch_5
    invoke-static {v0, v1, v9}, Lorg/minidns/record/NSEC;->parse(Ljava/io/DataInputStream;[BI)Lorg/minidns/record/NSEC;

    move-result-object v2

    .line 386
    .restart local v2    # "payloadData":Lorg/minidns/record/Data;
    move-object/from16 v18, v2

    goto/16 :goto_1

    .line 382
    .end local v2    # "payloadData":Lorg/minidns/record/Data;
    :pswitch_6
    invoke-static {v0, v9}, Lorg/minidns/record/DS;->parse(Ljava/io/DataInputStream;I)Lorg/minidns/record/DS;

    move-result-object v2

    .line 383
    .restart local v2    # "payloadData":Lorg/minidns/record/Data;
    move-object/from16 v18, v2

    goto/16 :goto_1

    .line 379
    .end local v2    # "payloadData":Lorg/minidns/record/Data;
    :pswitch_7
    invoke-static {v0, v1, v9}, Lorg/minidns/record/RRSIG;->parse(Ljava/io/DataInputStream;[BI)Lorg/minidns/record/RRSIG;

    move-result-object v2

    .line 380
    .restart local v2    # "payloadData":Lorg/minidns/record/Data;
    move-object/from16 v18, v2

    goto :goto_1

    .line 376
    .end local v2    # "payloadData":Lorg/minidns/record/Data;
    :pswitch_8
    invoke-static {v0, v9}, Lorg/minidns/record/DNSKEY;->parse(Ljava/io/DataInputStream;I)Lorg/minidns/record/DNSKEY;

    move-result-object v2

    .line 377
    .restart local v2    # "payloadData":Lorg/minidns/record/Data;
    move-object/from16 v18, v2

    goto :goto_1

    .line 373
    .end local v2    # "payloadData":Lorg/minidns/record/Data;
    :pswitch_9
    invoke-static {v0, v9}, Lorg/minidns/record/OPT;->parse(Ljava/io/DataInputStream;I)Lorg/minidns/record/OPT;

    move-result-object v2

    .line 374
    .restart local v2    # "payloadData":Lorg/minidns/record/Data;
    move-object/from16 v18, v2

    goto :goto_1

    .line 370
    .end local v2    # "payloadData":Lorg/minidns/record/Data;
    :pswitch_a
    invoke-static {v0, v9}, Lorg/minidns/record/TXT;->parse(Ljava/io/DataInputStream;I)Lorg/minidns/record/TXT;

    move-result-object v2

    .line 371
    .restart local v2    # "payloadData":Lorg/minidns/record/Data;
    move-object/from16 v18, v2

    goto :goto_1

    .line 367
    .end local v2    # "payloadData":Lorg/minidns/record/Data;
    :pswitch_b
    invoke-static/range {p0 .. p1}, Lorg/minidns/record/PTR;->parse(Ljava/io/DataInputStream;[B)Lorg/minidns/record/PTR;

    move-result-object v2

    .line 368
    .restart local v2    # "payloadData":Lorg/minidns/record/Data;
    move-object/from16 v18, v2

    goto :goto_1

    .line 364
    .end local v2    # "payloadData":Lorg/minidns/record/Data;
    :pswitch_c
    invoke-static/range {p0 .. p1}, Lorg/minidns/record/DNAME;->parse(Ljava/io/DataInputStream;[B)Lorg/minidns/record/DNAME;

    move-result-object v2

    .line 365
    .restart local v2    # "payloadData":Lorg/minidns/record/Data;
    move-object/from16 v18, v2

    goto :goto_1

    .line 361
    .end local v2    # "payloadData":Lorg/minidns/record/Data;
    :pswitch_d
    invoke-static/range {p0 .. p1}, Lorg/minidns/record/CNAME;->parse(Ljava/io/DataInputStream;[B)Lorg/minidns/record/CNAME;

    move-result-object v2

    .line 362
    .restart local v2    # "payloadData":Lorg/minidns/record/Data;
    move-object/from16 v18, v2

    goto :goto_1

    .line 358
    .end local v2    # "payloadData":Lorg/minidns/record/Data;
    :pswitch_e
    invoke-static/range {p0 .. p1}, Lorg/minidns/record/NS;->parse(Ljava/io/DataInputStream;[B)Lorg/minidns/record/NS;

    move-result-object v2

    .line 359
    .restart local v2    # "payloadData":Lorg/minidns/record/Data;
    move-object/from16 v18, v2

    goto :goto_1

    .line 355
    .end local v2    # "payloadData":Lorg/minidns/record/Data;
    :pswitch_f
    invoke-static/range {p0 .. p0}, Lorg/minidns/record/A;->parse(Ljava/io/DataInputStream;)Lorg/minidns/record/A;

    move-result-object v2

    .line 356
    .restart local v2    # "payloadData":Lorg/minidns/record/Data;
    move-object/from16 v18, v2

    goto :goto_1

    .line 352
    .end local v2    # "payloadData":Lorg/minidns/record/Data;
    :pswitch_10
    invoke-static/range {p0 .. p0}, Lorg/minidns/record/AAAA;->parse(Ljava/io/DataInputStream;)Lorg/minidns/record/AAAA;

    move-result-object v2

    .line 353
    .restart local v2    # "payloadData":Lorg/minidns/record/Data;
    move-object/from16 v18, v2

    goto :goto_1

    .line 349
    .end local v2    # "payloadData":Lorg/minidns/record/Data;
    :pswitch_11
    invoke-static/range {p0 .. p1}, Lorg/minidns/record/MX;->parse(Ljava/io/DataInputStream;[B)Lorg/minidns/record/MX;

    move-result-object v2

    .line 350
    .restart local v2    # "payloadData":Lorg/minidns/record/Data;
    move-object/from16 v18, v2

    goto :goto_1

    .line 346
    .end local v2    # "payloadData":Lorg/minidns/record/Data;
    :pswitch_12
    invoke-static/range {p0 .. p1}, Lorg/minidns/record/SRV;->parse(Ljava/io/DataInputStream;[B)Lorg/minidns/record/SRV;

    move-result-object v2

    .line 347
    .restart local v2    # "payloadData":Lorg/minidns/record/Data;
    move-object/from16 v18, v2

    goto :goto_1

    .line 343
    .end local v2    # "payloadData":Lorg/minidns/record/Data;
    :pswitch_13
    invoke-static/range {p0 .. p1}, Lorg/minidns/record/SOA;->parse(Ljava/io/DataInputStream;[B)Lorg/minidns/record/SOA;

    move-result-object v2

    .line 344
    .restart local v2    # "payloadData":Lorg/minidns/record/Data;
    move-object/from16 v18, v2

    .line 407
    .end local v2    # "payloadData":Lorg/minidns/record/Data;
    .local v18, "payloadData":Lorg/minidns/record/Data;
    :goto_1
    new-instance v19, Lorg/minidns/record/Record;

    move-object/from16 v2, v19

    move-object v3, v11

    move-object v4, v13

    move-object v5, v15

    move v6, v14

    move-wide/from16 v7, v16

    move/from16 v20, v9

    .end local v9    # "payloadLength":I
    .local v20, "payloadLength":I
    move-object/from16 v9, v18

    invoke-direct/range {v2 .. v10}, Lorg/minidns/record/Record;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;IJLorg/minidns/record/Data;Z)V

    return-object v19

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public as(Ljava/lang/Class;)Lorg/minidns/record/Record;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lorg/minidns/record/Data;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lorg/minidns/record/Record<",
            "TE;>;"
        }
    .end annotation

    .line 604
    .local p0, "this":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<TD;>;"
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-virtual {p0, p1}, Lorg/minidns/record/Record;->ifPossibleAs(Ljava/lang/Class;)Lorg/minidns/record/Record;

    move-result-object v0

    .line 605
    .local v0, "eRecord":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<TE;>;"
    if-eqz v0, :cond_0

    .line 608
    return-object v0

    .line 606
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The instance "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " can not be cast to a Record with"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 560
    .local p0, "this":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<TD;>;"
    instance-of v0, p1, Lorg/minidns/record/Record;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 561
    return v1

    .line 563
    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    .line 564
    return v0

    .line 566
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/minidns/record/Record;

    .line 567
    .local v2, "otherRecord":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<*>;"
    iget-object v3, p0, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    iget-object v4, v2, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v3, v4}, Lorg/minidns/dnsname/DnsName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    .line 568
    :cond_2
    iget-object v3, p0, Lorg/minidns/record/Record;->type:Lorg/minidns/record/Record$TYPE;

    iget-object v4, v2, Lorg/minidns/record/Record;->type:Lorg/minidns/record/Record$TYPE;

    if-eq v3, v4, :cond_3

    return v1

    .line 569
    :cond_3
    iget-object v3, p0, Lorg/minidns/record/Record;->clazz:Lorg/minidns/record/Record$CLASS;

    iget-object v4, v2, Lorg/minidns/record/Record;->clazz:Lorg/minidns/record/Record$CLASS;

    if-eq v3, v4, :cond_4

    return v1

    .line 572
    :cond_4
    iget-object v3, p0, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    iget-object v4, v2, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    invoke-virtual {v3, v4}, Lorg/minidns/record/Data;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v1

    .line 574
    :cond_5
    return v0
.end method

.method public getPayload()Lorg/minidns/record/Data;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 505
    .local p0, "this":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<TD;>;"
    iget-object v0, p0, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    return-object v0
.end method

.method public getQuestion()Lorg/minidns/dnsmessage/Question;
    .locals 5

    .line 523
    .local p0, "this":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<TD;>;"
    sget-object v0, Lorg/minidns/record/Record$1;->$SwitchMap$org$minidns$record$Record$TYPE:[I

    iget-object v1, p0, Lorg/minidns/record/Record;->type:Lorg/minidns/record/Record$TYPE;

    invoke-virtual {v1}, Lorg/minidns/record/Record$TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    .line 531
    new-instance v0, Lorg/minidns/dnsmessage/Question;

    iget-object v1, p0, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    iget-object v2, p0, Lorg/minidns/record/Record;->type:Lorg/minidns/record/Record$TYPE;

    iget-object v3, p0, Lorg/minidns/record/Record;->clazz:Lorg/minidns/record/Record$CLASS;

    invoke-direct {v0, v1, v2, v3}, Lorg/minidns/dnsmessage/Question;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;)V

    return-object v0

    .line 528
    :cond_0
    iget-object v0, p0, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    check-cast v0, Lorg/minidns/record/RRSIG;

    .line 529
    .local v0, "rrsig":Lorg/minidns/record/RRSIG;
    new-instance v1, Lorg/minidns/dnsmessage/Question;

    iget-object v2, p0, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    iget-object v3, v0, Lorg/minidns/record/RRSIG;->typeCovered:Lorg/minidns/record/Record$TYPE;

    iget-object v4, p0, Lorg/minidns/record/Record;->clazz:Lorg/minidns/record/Record$CLASS;

    invoke-direct {v1, v2, v3, v4}, Lorg/minidns/dnsmessage/Question;-><init>(Lorg/minidns/dnsname/DnsName;Lorg/minidns/record/Record$TYPE;Lorg/minidns/record/Record$CLASS;)V

    return-object v1

    .line 526
    .end local v0    # "rrsig":Lorg/minidns/record/RRSIG;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getQuestionMessage()Lorg/minidns/dnsmessage/DnsMessage$Builder;
    .locals 2

    .line 536
    .local p0, "this":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<TD;>;"
    invoke-virtual {p0}, Lorg/minidns/record/Record;->getQuestion()Lorg/minidns/dnsmessage/Question;

    move-result-object v0

    .line 537
    .local v0, "question":Lorg/minidns/dnsmessage/Question;
    if-nez v0, :cond_0

    .line 538
    const/4 v1, 0x0

    return-object v1

    .line 540
    :cond_0
    invoke-virtual {v0}, Lorg/minidns/dnsmessage/Question;->asMessageBuilder()Lorg/minidns/dnsmessage/DnsMessage$Builder;

    move-result-object v1

    return-object v1
.end method

.method public getTtl()J
    .locals 2

    .line 513
    .local p0, "this":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<TD;>;"
    iget-wide v0, p0, Lorg/minidns/record/Record;->ttl:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 547
    .local p0, "this":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<TD;>;"
    iget-object v0, p0, Lorg/minidns/record/Record;->hashCodeCache:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 548
    const/4 v0, 0x1

    .line 549
    .local v0, "hashCode":I
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v2}, Lorg/minidns/dnsname/DnsName;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 550
    .end local v0    # "hashCode":I
    .local v1, "hashCode":I
    mul-int/lit8 v0, v1, 0x25

    iget-object v2, p0, Lorg/minidns/record/Record;->type:Lorg/minidns/record/Record$TYPE;

    invoke-virtual {v2}, Lorg/minidns/record/Record$TYPE;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 551
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lorg/minidns/record/Record;->clazz:Lorg/minidns/record/Record$CLASS;

    invoke-virtual {v2}, Lorg/minidns/record/Record$CLASS;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 552
    .end local v0    # "hashCode":I
    .restart local v1    # "hashCode":I
    mul-int/lit8 v0, v1, 0x25

    iget-object v2, p0, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    invoke-virtual {v2}, Lorg/minidns/record/Data;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 553
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/minidns/record/Record;->hashCodeCache:Ljava/lang/Integer;

    .line 555
    .end local v0    # "hashCode":I
    :cond_0
    iget-object v0, p0, Lorg/minidns/record/Record;->hashCodeCache:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public ifPossibleAs(Ljava/lang/Class;)Lorg/minidns/record/Record;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lorg/minidns/record/Data;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lorg/minidns/record/Record<",
            "TE;>;"
        }
    .end annotation

    .line 588
    .local p0, "this":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<TD;>;"
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    iget-object v0, p0, Lorg/minidns/record/Record;->type:Lorg/minidns/record/Record$TYPE;

    invoke-static {v0}, Lorg/minidns/record/Record$TYPE;->access$000(Lorg/minidns/record/Record$TYPE;)Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 589
    return-object p0

    .line 591
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAnswer(Lorg/minidns/dnsmessage/Question;)Z
    .locals 2
    .param p1, "q"    # Lorg/minidns/dnsmessage/Question;

    .line 487
    .local p0, "this":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<TD;>;"
    iget-object v0, p1, Lorg/minidns/dnsmessage/Question;->type:Lorg/minidns/record/Record$TYPE;

    iget-object v1, p0, Lorg/minidns/record/Record;->type:Lorg/minidns/record/Record$TYPE;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lorg/minidns/dnsmessage/Question;->type:Lorg/minidns/record/Record$TYPE;

    sget-object v1, Lorg/minidns/record/Record$TYPE;->ANY:Lorg/minidns/record/Record$TYPE;

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p1, Lorg/minidns/dnsmessage/Question;->clazz:Lorg/minidns/record/Record$CLASS;

    iget-object v1, p0, Lorg/minidns/record/Record;->clazz:Lorg/minidns/record/Record$CLASS;

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Lorg/minidns/dnsmessage/Question;->clazz:Lorg/minidns/record/Record$CLASS;

    sget-object v1, Lorg/minidns/record/Record$CLASS;->ANY:Lorg/minidns/record/Record$CLASS;

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p1, Lorg/minidns/dnsmessage/Question;->name:Lorg/minidns/dnsname/DnsName;

    iget-object v1, p0, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    .line 489
    invoke-virtual {v0, v1}, Lorg/minidns/dnsname/DnsName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 487
    :goto_0
    return v0
.end method

.method public isUnicastQuery()Z
    .locals 1

    .line 497
    .local p0, "this":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<TD;>;"
    iget-boolean v0, p0, Lorg/minidns/record/Record;->unicastQuery:Z

    return v0
.end method

.method public toByteArray()[B
    .locals 5

    .line 455
    .local p0, "this":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<TD;>;"
    iget-object v0, p0, Lorg/minidns/record/Record;->bytes:[B

    if-nez v0, :cond_0

    .line 456
    iget-object v0, p0, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v0}, Lorg/minidns/dnsname/DnsName;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    .line 458
    invoke-virtual {v1}, Lorg/minidns/record/Data;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 459
    .local v0, "totalSize":I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 460
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 462
    .local v2, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/minidns/record/Record;->toOutputStream(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    nop

    .line 467
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lorg/minidns/record/Record;->bytes:[B

    goto :goto_0

    .line 463
    :catch_0
    move-exception v3

    .line 465
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 469
    .end local v0    # "totalSize":I
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/minidns/record/Record;->bytes:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public toOutputStream(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 437
    .local p0, "this":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<TD;>;"
    iget-object v0, p0, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    if-eqz v0, :cond_0

    .line 441
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 443
    .local v0, "dos":Ljava/io/DataOutputStream;
    iget-object v1, p0, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v1, v0}, Lorg/minidns/dnsname/DnsName;->writeToStream(Ljava/io/OutputStream;)V

    .line 444
    iget-object v1, p0, Lorg/minidns/record/Record;->type:Lorg/minidns/record/Record$TYPE;

    invoke-virtual {v1}, Lorg/minidns/record/Record$TYPE;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 445
    iget v1, p0, Lorg/minidns/record/Record;->clazzValue:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 446
    iget-wide v1, p0, Lorg/minidns/record/Record;->ttl:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 448
    iget-object v1, p0, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    invoke-virtual {v1}, Lorg/minidns/record/Data;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 449
    iget-object v1, p0, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    invoke-virtual {v1, v0}, Lorg/minidns/record/Data;->toOutputStream(Ljava/io/DataOutputStream;)V

    .line 450
    return-void

    .line 438
    .end local v0    # "dos":Ljava/io/DataOutputStream;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Empty Record has no byte representation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 478
    .local p0, "this":Lorg/minidns/record/Record;, "Lorg/minidns/record/Record<TD;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/minidns/record/Record;->name:Lorg/minidns/dnsname/DnsName;

    invoke-virtual {v1}, Lorg/minidns/dnsname/DnsName;->getRawAce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/minidns/record/Record;->ttl:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/minidns/record/Record;->clazz:Lorg/minidns/record/Record$CLASS;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/minidns/record/Record;->type:Lorg/minidns/record/Record$TYPE;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/minidns/record/Record;->payloadData:Lorg/minidns/record/Data;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
