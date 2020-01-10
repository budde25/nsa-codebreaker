.class Landroidx/navigation/NavController$2;
.super Ljava/lang/Object;
.source "NavController.java"

# interfaces
.implements Landroidx/navigation/Navigator$OnNavigatorBackPressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/NavController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/navigation/NavController;


# direct methods
.method constructor <init>(Landroidx/navigation/NavController;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/navigation/NavController;

    .line 102
    iput-object p1, p0, Landroidx/navigation/NavController$2;->this$0:Landroidx/navigation/NavController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPopBackStack(Landroidx/navigation/Navigator;)V
    .locals 5
    .param p1, "navigator"    # Landroidx/navigation/Navigator;

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "lastFromNavigator":Landroidx/navigation/NavDestination;
    iget-object v1, p0, Landroidx/navigation/NavController$2;->this$0:Landroidx/navigation/NavController;

    iget-object v1, v1, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 108
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroidx/navigation/NavBackStackEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v2}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v2

    .line 110
    .local v2, "destination":Landroidx/navigation/NavDestination;
    iget-object v3, p0, Landroidx/navigation/NavController$2;->this$0:Landroidx/navigation/NavController;

    invoke-virtual {v3}, Landroidx/navigation/NavController;->getNavigatorProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v3

    .line 111
    invoke-virtual {v2}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v4

    .line 110
    invoke-virtual {v3, v4}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v3

    .line 112
    .local v3, "currentNavigator":Landroidx/navigation/Navigator;
    if-ne v3, p1, :cond_0

    .line 113
    move-object v0, v2

    .line 114
    goto :goto_1

    .line 116
    .end local v2    # "destination":Landroidx/navigation/NavDestination;
    .end local v3    # "currentNavigator":Landroidx/navigation/Navigator;
    :cond_0
    goto :goto_0

    .line 117
    :cond_1
    :goto_1
    if-eqz v0, :cond_3

    .line 124
    iget-object v2, p0, Landroidx/navigation/NavController$2;->this$0:Landroidx/navigation/NavController;

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/navigation/NavController;->popBackStackInternal(IZ)Z

    .line 126
    iget-object v2, p0, Landroidx/navigation/NavController$2;->this$0:Landroidx/navigation/NavController;

    iget-object v2, v2, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 127
    iget-object v2, p0, Landroidx/navigation/NavController$2;->this$0:Landroidx/navigation/NavController;

    iget-object v2, v2, Landroidx/navigation/NavController;->mBackStack:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    .line 129
    :cond_2
    iget-object v2, p0, Landroidx/navigation/NavController$2;->this$0:Landroidx/navigation/NavController;

    invoke-virtual {v2}, Landroidx/navigation/NavController;->dispatchOnDestinationChanged()Z

    .line 130
    return-void

    .line 118
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Navigator "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " reported pop but did not have any destinations on the NavController back stack"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
