.class public abstract Landroidx/navigation/Navigator;
.super Ljava/lang/Object;
.source "Navigator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/Navigator$Extras;,
        Landroidx/navigation/Navigator$OnNavigatorBackPressListener;,
        Landroidx/navigation/Navigator$Name;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Landroidx/navigation/NavDestination;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mOnBackPressListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/navigation/Navigator$OnNavigatorBackPressListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    .local p0, "this":Landroidx/navigation/Navigator;, "Landroidx/navigation/Navigator<TD;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/navigation/Navigator;->mOnBackPressListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public final addOnNavigatorBackPressListener(Landroidx/navigation/Navigator$OnNavigatorBackPressListener;)V
    .locals 3
    .param p1, "listener"    # Landroidx/navigation/Navigator$OnNavigatorBackPressListener;

    .line 154
    .local p0, "this":Landroidx/navigation/Navigator;, "Landroidx/navigation/Navigator<TD;>;"
    iget-object v0, p0, Landroidx/navigation/Navigator;->mOnBackPressListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 155
    .local v0, "added":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/navigation/Navigator;->mOnBackPressListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 156
    invoke-virtual {p0}, Landroidx/navigation/Navigator;->onBackPressAdded()V

    .line 158
    :cond_0
    return-void
.end method

.method public abstract createDestination()Landroidx/navigation/NavDestination;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method public final dispatchOnNavigatorBackPress()V
    .locals 2

    .line 177
    .local p0, "this":Landroidx/navigation/Navigator;, "Landroidx/navigation/Navigator<TD;>;"
    iget-object v0, p0, Landroidx/navigation/Navigator;->mOnBackPressListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/Navigator$OnNavigatorBackPressListener;

    .line 178
    .local v1, "listener":Landroidx/navigation/Navigator$OnNavigatorBackPressListener;
    invoke-interface {v1, p0}, Landroidx/navigation/Navigator$OnNavigatorBackPressListener;->onPopBackStack(Landroidx/navigation/Navigator;)V

    .line 179
    .end local v1    # "listener":Landroidx/navigation/Navigator$OnNavigatorBackPressListener;
    goto :goto_0

    .line 180
    :cond_0
    return-void
.end method

.method public abstract navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Landroidx/navigation/NavDestination;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Landroid/os/Bundle;",
            "Landroidx/navigation/NavOptions;",
            "Landroidx/navigation/Navigator$Extras;",
            ")",
            "Landroidx/navigation/NavDestination;"
        }
    .end annotation
.end method

.method protected onBackPressAdded()V
    .locals 0

    .line 139
    .local p0, "this":Landroidx/navigation/Navigator;, "Landroidx/navigation/Navigator<TD;>;"
    return-void
.end method

.method protected onBackPressRemoved()V
    .locals 0

    .line 146
    .local p0, "this":Landroidx/navigation/Navigator;, "Landroidx/navigation/Navigator<TD;>;"
    return-void
.end method

.method public onRestoreState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedState"    # Landroid/os/Bundle;

    .line 132
    .local p0, "this":Landroidx/navigation/Navigator;, "Landroidx/navigation/Navigator<TD;>;"
    return-void
.end method

.method public onSaveState()Landroid/os/Bundle;
    .locals 1

    .line 118
    .local p0, "this":Landroidx/navigation/Navigator;, "Landroidx/navigation/Navigator<TD;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract popBackStack()Z
.end method

.method public final removeOnNavigatorBackPressListener(Landroidx/navigation/Navigator$OnNavigatorBackPressListener;)V
    .locals 2
    .param p1, "listener"    # Landroidx/navigation/Navigator$OnNavigatorBackPressListener;

    .line 166
    .local p0, "this":Landroidx/navigation/Navigator;, "Landroidx/navigation/Navigator<TD;>;"
    iget-object v0, p0, Landroidx/navigation/Navigator;->mOnBackPressListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 167
    .local v0, "removed":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/navigation/Navigator;->mOnBackPressListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {p0}, Landroidx/navigation/Navigator;->onBackPressRemoved()V

    .line 170
    :cond_0
    return-void
.end method
