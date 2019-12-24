.class public Lorg/jivesoftware/smackx/search/ReportedData;
.super Ljava/lang/Object;
.source "ReportedData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/search/ReportedData$Field;,
        Lorg/jivesoftware/smackx/search/ReportedData$Row;,
        Lorg/jivesoftware/smackx/search/ReportedData$Column;
    }
.end annotation


# instance fields
.field private final columns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/search/ReportedData$Column;",
            ">;"
        }
    .end annotation
.end field

.field private final rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/search/ReportedData$Row;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/search/ReportedData;->columns:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/search/ReportedData;->rows:Ljava/util/List;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lorg/jivesoftware/smackx/search/ReportedData;->title:Ljava/lang/String;

    .line 91
    return-void
.end method

.method private constructor <init>(Lorg/jivesoftware/smackx/xdata/packet/DataForm;)V
    .locals 8
    .param p1, "dataForm"    # Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/search/ReportedData;->columns:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/search/ReportedData;->rows:Ljava/util/List;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lorg/jivesoftware/smackx/search/ReportedData;->title:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->getReportedData()Lorg/jivesoftware/smackx/xdata/packet/DataForm$ReportedData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/xdata/packet/DataForm$ReportedData;->getFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/xdata/FormField;

    .line 69
    .local v1, "field":Lorg/jivesoftware/smackx/xdata/FormField;
    iget-object v2, p0, Lorg/jivesoftware/smackx/search/ReportedData;->columns:Ljava/util/List;

    new-instance v3, Lorg/jivesoftware/smackx/search/ReportedData$Column;

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/xdata/FormField;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/xdata/FormField;->getVariable()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/xdata/FormField;->getType()Lorg/jivesoftware/smackx/xdata/FormField$Type;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lorg/jivesoftware/smackx/search/ReportedData$Column;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smackx/xdata/FormField$Type;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    .end local v1    # "field":Lorg/jivesoftware/smackx/xdata/FormField;
    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/xdata/packet/DataForm$Item;

    .line 74
    .local v1, "item":Lorg/jivesoftware/smackx/xdata/packet/DataForm$Item;
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/jivesoftware/smackx/search/ReportedData;->columns:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    .local v2, "fieldList":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/search/ReportedData$Field;>;"
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/xdata/packet/DataForm$Item;->getFields()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jivesoftware/smackx/xdata/FormField;

    .line 77
    .local v4, "field":Lorg/jivesoftware/smackx/xdata/FormField;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v5, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-virtual {v4}, Lorg/jivesoftware/smackx/xdata/FormField;->getValues()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 79
    new-instance v6, Lorg/jivesoftware/smackx/search/ReportedData$Field;

    invoke-virtual {v4}, Lorg/jivesoftware/smackx/xdata/FormField;->getVariable()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Lorg/jivesoftware/smackx/search/ReportedData$Field;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .end local v4    # "field":Lorg/jivesoftware/smackx/xdata/FormField;
    .end local v5    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    goto :goto_2

    .line 81
    :cond_1
    iget-object v3, p0, Lorg/jivesoftware/smackx/search/ReportedData;->rows:Ljava/util/List;

    new-instance v4, Lorg/jivesoftware/smackx/search/ReportedData$Row;

    invoke-direct {v4, v2}, Lorg/jivesoftware/smackx/search/ReportedData$Row;-><init>(Ljava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .end local v1    # "item":Lorg/jivesoftware/smackx/xdata/packet/DataForm$Item;
    .end local v2    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/search/ReportedData$Field;>;"
    goto :goto_1

    .line 85
    :cond_2
    invoke-virtual {p1}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/search/ReportedData;->title:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public static getReportedDataFrom(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/search/ReportedData;
    .locals 2
    .param p0, "packet"    # Lorg/jivesoftware/smack/packet/Stanza;

    .line 50
    invoke-static {p0}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->from(Lorg/jivesoftware/smack/packet/Stanza;)Lorg/jivesoftware/smackx/xdata/packet/DataForm;

    move-result-object v0

    .line 51
    .local v0, "dataForm":Lorg/jivesoftware/smackx/xdata/packet/DataForm;
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/xdata/packet/DataForm;->getReportedData()Lorg/jivesoftware/smackx/xdata/packet/DataForm$ReportedData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 53
    new-instance v1, Lorg/jivesoftware/smackx/search/ReportedData;

    invoke-direct {v1, v0}, Lorg/jivesoftware/smackx/search/ReportedData;-><init>(Lorg/jivesoftware/smackx/xdata/packet/DataForm;)V

    return-object v1

    .line 56
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public addColumn(Lorg/jivesoftware/smackx/search/ReportedData$Column;)V
    .locals 1
    .param p1, "column"    # Lorg/jivesoftware/smackx/search/ReportedData$Column;

    .line 106
    iget-object v0, p0, Lorg/jivesoftware/smackx/search/ReportedData;->columns:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method public addRow(Lorg/jivesoftware/smackx/search/ReportedData$Row;)V
    .locals 1
    .param p1, "row"    # Lorg/jivesoftware/smackx/search/ReportedData$Row;

    .line 98
    iget-object v0, p0, Lorg/jivesoftware/smackx/search/ReportedData;->rows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method public getColumns()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/search/ReportedData$Column;",
            ">;"
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jivesoftware/smackx/search/ReportedData;->columns:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRows()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/search/ReportedData$Row;",
            ">;"
        }
    .end annotation

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jivesoftware/smackx/search/ReportedData;->rows:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/jivesoftware/smackx/search/ReportedData;->title:Ljava/lang/String;

    return-object v0
.end method
