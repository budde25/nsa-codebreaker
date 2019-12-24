.class Landroidx/navigation/ui/CollapsingToolbarOnDestinationChangedListener;
.super Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;
.source "CollapsingToolbarOnDestinationChangedListener.java"


# instance fields
.field private final mCollapsingToolbarLayoutWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/design/widget/CollapsingToolbarLayout;",
            ">;"
        }
    .end annotation
.end field

.field private final mToolbarWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v7/widget/Toolbar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/design/widget/CollapsingToolbarLayout;Landroid/support/v7/widget/Toolbar;Landroidx/navigation/ui/AppBarConfiguration;)V
    .locals 1
    .param p1, "collapsingToolbarLayout"    # Landroid/support/design/widget/CollapsingToolbarLayout;
    .param p2, "toolbar"    # Landroid/support/v7/widget/Toolbar;
    .param p3, "configuration"    # Landroidx/navigation/ui/AppBarConfiguration;

    .line 49
    invoke-virtual {p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;-><init>(Landroid/content/Context;Landroidx/navigation/ui/AppBarConfiguration;)V

    .line 50
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/navigation/ui/CollapsingToolbarOnDestinationChangedListener;->mCollapsingToolbarLayoutWeakReference:Ljava/lang/ref/WeakReference;

    .line 51
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/navigation/ui/CollapsingToolbarOnDestinationChangedListener;->mToolbarWeakReference:Ljava/lang/ref/WeakReference;

    .line 52
    return-void
.end method


# virtual methods
.method public onDestinationChanged(Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "controller"    # Landroidx/navigation/NavController;
    .param p2, "destination"    # Landroidx/navigation/NavDestination;
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 57
    iget-object v0, p0, Landroidx/navigation/ui/CollapsingToolbarOnDestinationChangedListener;->mCollapsingToolbarLayoutWeakReference:Ljava/lang/ref/WeakReference;

    .line 58
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CollapsingToolbarLayout;

    .line 59
    .local v0, "collapsingToolbarLayout":Landroid/support/design/widget/CollapsingToolbarLayout;
    iget-object v1, p0, Landroidx/navigation/ui/CollapsingToolbarOnDestinationChangedListener;->mToolbarWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    .line 60
    .local v1, "toolbar":Landroid/support/v7/widget/Toolbar;
    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;->onDestinationChanged(Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V

    .line 65
    return-void

    .line 61
    :cond_1
    :goto_0
    invoke-virtual {p1, p0}, Landroidx/navigation/NavController;->removeOnDestinationChangedListener(Landroidx/navigation/NavController$OnDestinationChangedListener;)V

    .line 62
    return-void
.end method

.method protected setNavigationIcon(Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "contentDescription"    # I

    .line 79
    iget-object v0, p0, Landroidx/navigation/ui/CollapsingToolbarOnDestinationChangedListener;->mToolbarWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 80
    .local v0, "toolbar":Landroid/support/v7/widget/Toolbar;
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 82
    invoke-virtual {v0, p2}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(I)V

    .line 84
    :cond_0
    return-void
.end method

.method protected setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 69
    iget-object v0, p0, Landroidx/navigation/ui/CollapsingToolbarOnDestinationChangedListener;->mCollapsingToolbarLayoutWeakReference:Ljava/lang/ref/WeakReference;

    .line 70
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CollapsingToolbarLayout;

    .line 71
    .local v0, "collapsingToolbarLayout":Landroid/support/design/widget/CollapsingToolbarLayout;
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0, p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 74
    :cond_0
    return-void
.end method
