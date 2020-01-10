.class Landroidx/navigation/NavGraph$1;
.super Ljava/lang/Object;
.source "NavGraph.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/navigation/NavGraph;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroidx/navigation/NavDestination;",
        ">;"
    }
.end annotation


# instance fields
.field private mIndex:I

.field private mWentToNext:Z

.field final synthetic this$0:Landroidx/navigation/NavGraph;


# direct methods
.method constructor <init>(Landroidx/navigation/NavGraph;)V
    .locals 1
    .param p1, "this$0"    # Landroidx/navigation/NavGraph;

    .line 182
    iput-object p1, p0, Landroidx/navigation/NavGraph$1;->this$0:Landroidx/navigation/NavGraph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    const/4 v0, -0x1

    iput v0, p0, Landroidx/navigation/NavGraph$1;->mIndex:I

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/navigation/NavGraph$1;->mWentToNext:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .line 188
    iget v0, p0, Landroidx/navigation/NavGraph$1;->mIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Landroidx/navigation/NavGraph$1;->this$0:Landroidx/navigation/NavGraph;

    iget-object v2, v2, Landroidx/navigation/NavGraph;->mNodes:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2}, Landroid/support/v4/util/SparseArrayCompat;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public next()Landroidx/navigation/NavDestination;
    .locals 3

    .line 193
    invoke-virtual {p0}, Landroidx/navigation/NavGraph$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/navigation/NavGraph$1;->mWentToNext:Z

    .line 197
    iget-object v1, p0, Landroidx/navigation/NavGraph$1;->this$0:Landroidx/navigation/NavGraph;

    iget-object v1, v1, Landroidx/navigation/NavGraph;->mNodes:Landroid/support/v4/util/SparseArrayCompat;

    iget v2, p0, Landroidx/navigation/NavGraph$1;->mIndex:I

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/navigation/NavGraph$1;->mIndex:I

    invoke-virtual {v1, v2}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavDestination;

    return-object v0

    .line 194
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 182
    invoke-virtual {p0}, Landroidx/navigation/NavGraph$1;->next()Landroidx/navigation/NavDestination;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 202
    iget-boolean v0, p0, Landroidx/navigation/NavGraph$1;->mWentToNext:Z

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Landroidx/navigation/NavGraph$1;->this$0:Landroidx/navigation/NavGraph;

    iget-object v0, v0, Landroidx/navigation/NavGraph;->mNodes:Landroid/support/v4/util/SparseArrayCompat;

    iget v1, p0, Landroidx/navigation/NavGraph$1;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavDestination;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/navigation/NavDestination;->setParent(Landroidx/navigation/NavGraph;)V

    .line 207
    iget-object v0, p0, Landroidx/navigation/NavGraph$1;->this$0:Landroidx/navigation/NavGraph;

    iget-object v0, v0, Landroidx/navigation/NavGraph;->mNodes:Landroid/support/v4/util/SparseArrayCompat;

    iget v1, p0, Landroidx/navigation/NavGraph$1;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/support/v4/util/SparseArrayCompat;->removeAt(I)V

    .line 208
    iget v0, p0, Landroidx/navigation/NavGraph$1;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/navigation/NavGraph$1;->mIndex:I

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/navigation/NavGraph$1;->mWentToNext:Z

    .line 210
    return-void

    .line 203
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call next() before you can remove an element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
