.class public Lorg/jivesoftware/smackx/search/ReportedData$Row;
.super Ljava/lang/Object;
.source "ReportedData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/search/ReportedData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Row"
.end annotation


# instance fields
.field private fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/search/ReportedData$Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/search/ReportedData$Field;",
            ">;)V"
        }
    .end annotation

    .line 198
    .local p1, "fields":Ljava/util/List;, "Ljava/util/List<Lorg/jivesoftware/smackx/search/ReportedData$Field;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/search/ReportedData$Row;->fields:Ljava/util/List;

    .line 199
    iput-object p1, p0, Lorg/jivesoftware/smackx/search/ReportedData$Row;->fields:Ljava/util/List;

    .line 200
    return-void
.end method

.method private getFields()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jivesoftware/smackx/search/ReportedData$Field;",
            ">;"
        }
    .end annotation

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jivesoftware/smackx/search/ReportedData$Row;->fields:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getValues(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "variable"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 209
    invoke-direct {p0}, Lorg/jivesoftware/smackx/search/ReportedData$Row;->getFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/search/ReportedData$Field;

    .line 210
    .local v1, "field":Lorg/jivesoftware/smackx/search/ReportedData$Field;
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/search/ReportedData$Field;->getVariable()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    invoke-virtual {v1}, Lorg/jivesoftware/smackx/search/ReportedData$Field;->getValues()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 213
    .end local v1    # "field":Lorg/jivesoftware/smackx/search/ReportedData$Field;
    :cond_0
    goto :goto_0

    .line 214
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
