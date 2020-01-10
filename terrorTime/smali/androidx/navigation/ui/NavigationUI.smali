.class public final Landroidx/navigation/ui/NavigationUI;
.super Ljava/lang/Object;
.source "NavigationUI.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method static findBottomSheetBehavior(Landroid/view/View;)Landroid/support/design/widget/BottomSheetBehavior;
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .line 465
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 466
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 467
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 468
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 469
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Landroidx/navigation/ui/NavigationUI;->findBottomSheetBehavior(Landroid/view/View;)Landroid/support/design/widget/BottomSheetBehavior;

    move-result-object v2

    return-object v2

    .line 471
    :cond_0
    return-object v2

    .line 473
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_1
    move-object v1, v0

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 474
    invoke-virtual {v1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    .line 475
    .local v1, "behavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    instance-of v3, v1, Landroid/support/design/widget/BottomSheetBehavior;

    if-nez v3, :cond_2

    .line 477
    return-object v2

    .line 479
    :cond_2
    move-object v2, v1

    check-cast v2, Landroid/support/design/widget/BottomSheetBehavior;

    return-object v2
.end method

.method static findStartDestination(Landroidx/navigation/NavGraph;)Landroidx/navigation/NavDestination;
    .locals 3
    .param p0, "graph"    # Landroidx/navigation/NavGraph;

    .line 566
    move-object v0, p0

    .line 567
    .local v0, "startDestination":Landroidx/navigation/NavDestination;
    :goto_0
    instance-of v1, v0, Landroidx/navigation/NavGraph;

    if-eqz v1, :cond_0

    .line 568
    move-object v1, v0

    check-cast v1, Landroidx/navigation/NavGraph;

    .line 569
    .local v1, "parent":Landroidx/navigation/NavGraph;
    invoke-virtual {v1}, Landroidx/navigation/NavGraph;->getStartDestination()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/NavDestination;

    move-result-object v0

    .line 570
    .end local v1    # "parent":Landroidx/navigation/NavGraph;
    goto :goto_0

    .line 571
    :cond_0
    return-object v0
.end method

.method static matchDestination(Landroidx/navigation/NavDestination;I)Z
    .locals 2
    .param p0, "destination"    # Landroidx/navigation/NavDestination;
    .param p1, "destId"    # I

    .line 535
    move-object v0, p0

    .line 536
    .local v0, "currentDestination":Landroidx/navigation/NavDestination;
    :goto_0
    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v1

    if-eq v1, p1, :cond_0

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 537
    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v0

    goto :goto_0

    .line 539
    :cond_0
    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v1

    if-ne v1, p1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method static matchDestinations(Landroidx/navigation/NavDestination;Ljava/util/Set;)Z
    .locals 2
    .param p0, "destination"    # Landroidx/navigation/NavDestination;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavDestination;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 550
    .local p1, "destinationIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    move-object v0, p0

    .line 552
    .local v0, "currentDestination":Landroidx/navigation/NavDestination;
    :goto_0
    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 553
    const/4 v1, 0x1

    return v1

    .line 555
    :cond_0
    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v0

    .line 556
    if-nez v0, :cond_1

    .line 557
    const/4 v1, 0x0

    return v1

    .line 556
    :cond_1
    goto :goto_0
.end method

.method public static navigateUp(Landroidx/navigation/NavController;Landroid/support/v4/widget/DrawerLayout;)Z
    .locals 2
    .param p0, "navController"    # Landroidx/navigation/NavController;
    .param p1, "drawerLayout"    # Landroid/support/v4/widget/DrawerLayout;

    .line 107
    new-instance v0, Landroidx/navigation/ui/AppBarConfiguration$Builder;

    invoke-virtual {p0}, Landroidx/navigation/NavController;->getGraph()Landroidx/navigation/NavGraph;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/navigation/ui/AppBarConfiguration$Builder;-><init>(Landroidx/navigation/NavGraph;)V

    .line 108
    invoke-virtual {v0, p1}, Landroidx/navigation/ui/AppBarConfiguration$Builder;->setDrawerLayout(Landroid/support/v4/widget/DrawerLayout;)Landroidx/navigation/ui/AppBarConfiguration$Builder;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroidx/navigation/ui/AppBarConfiguration$Builder;->build()Landroidx/navigation/ui/AppBarConfiguration;

    move-result-object v0

    .line 107
    invoke-static {p0, v0}, Landroidx/navigation/ui/NavigationUI;->navigateUp(Landroidx/navigation/NavController;Landroidx/navigation/ui/AppBarConfiguration;)Z

    move-result v0

    return v0
.end method

.method public static navigateUp(Landroidx/navigation/NavController;Landroidx/navigation/ui/AppBarConfiguration;)Z
    .locals 5
    .param p0, "navController"    # Landroidx/navigation/NavController;
    .param p1, "configuration"    # Landroidx/navigation/ui/AppBarConfiguration;

    .line 129
    invoke-virtual {p1}, Landroidx/navigation/ui/AppBarConfiguration;->getDrawerLayout()Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    .line 130
    .local v0, "drawerLayout":Landroid/support/v4/widget/DrawerLayout;
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v1

    .line 131
    .local v1, "currentDestination":Landroidx/navigation/NavDestination;
    invoke-virtual {p1}, Landroidx/navigation/ui/AppBarConfiguration;->getTopLevelDestinations()Ljava/util/Set;

    move-result-object v2

    .line 132
    .local v2, "topLevelDestinations":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v3, 0x1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 133
    invoke-static {v1, v2}, Landroidx/navigation/ui/NavigationUI;->matchDestinations(Landroidx/navigation/NavDestination;Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 134
    const v4, 0x800003

    invoke-virtual {v0, v4}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    .line 135
    return v3

    .line 137
    :cond_0
    invoke-virtual {p0}, Landroidx/navigation/NavController;->navigateUp()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 138
    return v3

    .line 139
    :cond_1
    invoke-virtual {p1}, Landroidx/navigation/ui/AppBarConfiguration;->getFallbackOnNavigateUpListener()Landroidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 140
    invoke-virtual {p1}, Landroidx/navigation/ui/AppBarConfiguration;->getFallbackOnNavigateUpListener()Landroidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener;

    move-result-object v3

    invoke-interface {v3}, Landroidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener;->onNavigateUp()Z

    move-result v3

    return v3

    .line 142
    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method public static onNavDestinationSelected(Landroid/view/MenuItem;Landroidx/navigation/NavController;)Z
    .locals 6
    .param p0, "item"    # Landroid/view/MenuItem;
    .param p1, "navController"    # Landroidx/navigation/NavController;

    .line 75
    new-instance v0, Landroidx/navigation/NavOptions$Builder;

    invoke-direct {v0}, Landroidx/navigation/NavOptions$Builder;-><init>()V

    .line 76
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/navigation/NavOptions$Builder;->setLaunchSingleTop(Z)Landroidx/navigation/NavOptions$Builder;

    move-result-object v0

    sget v2, Landroidx/navigation/ui/R$anim;->nav_default_enter_anim:I

    .line 77
    invoke-virtual {v0, v2}, Landroidx/navigation/NavOptions$Builder;->setEnterAnim(I)Landroidx/navigation/NavOptions$Builder;

    move-result-object v0

    sget v2, Landroidx/navigation/ui/R$anim;->nav_default_exit_anim:I

    .line 78
    invoke-virtual {v0, v2}, Landroidx/navigation/NavOptions$Builder;->setExitAnim(I)Landroidx/navigation/NavOptions$Builder;

    move-result-object v0

    sget v2, Landroidx/navigation/ui/R$anim;->nav_default_pop_enter_anim:I

    .line 79
    invoke-virtual {v0, v2}, Landroidx/navigation/NavOptions$Builder;->setPopEnterAnim(I)Landroidx/navigation/NavOptions$Builder;

    move-result-object v0

    sget v2, Landroidx/navigation/ui/R$anim;->nav_default_pop_exit_anim:I

    .line 80
    invoke-virtual {v0, v2}, Landroidx/navigation/NavOptions$Builder;->setPopExitAnim(I)Landroidx/navigation/NavOptions$Builder;

    move-result-object v0

    .line 81
    .local v0, "builder":Landroidx/navigation/NavOptions$Builder;
    invoke-interface {p0}, Landroid/view/MenuItem;->getOrder()I

    move-result v2

    const/high16 v3, 0x30000

    and-int/2addr v2, v3

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 82
    invoke-virtual {p1}, Landroidx/navigation/NavController;->getGraph()Landroidx/navigation/NavGraph;

    move-result-object v2

    invoke-static {v2}, Landroidx/navigation/ui/NavigationUI;->findStartDestination(Landroidx/navigation/NavGraph;)Landroidx/navigation/NavDestination;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/navigation/NavDestination;->getId()I

    move-result v2

    invoke-virtual {v0, v2, v3}, Landroidx/navigation/NavOptions$Builder;->setPopUpTo(IZ)Landroidx/navigation/NavOptions$Builder;

    .line 84
    :cond_0
    invoke-virtual {v0}, Landroidx/navigation/NavOptions$Builder;->build()Landroidx/navigation/NavOptions;

    move-result-object v2

    .line 87
    .local v2, "options":Landroidx/navigation/NavOptions;
    :try_start_0
    invoke-interface {p0}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, v2}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    return v1

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    return v3
.end method

.method public static setupActionBarWithNavController(Landroid/support/v7/app/AppCompatActivity;Landroidx/navigation/NavController;)V
    .locals 2
    .param p0, "activity"    # Landroid/support/v7/app/AppCompatActivity;
    .param p1, "navController"    # Landroidx/navigation/NavController;

    .line 166
    new-instance v0, Landroidx/navigation/ui/AppBarConfiguration$Builder;

    .line 167
    invoke-virtual {p1}, Landroidx/navigation/NavController;->getGraph()Landroidx/navigation/NavGraph;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/navigation/ui/AppBarConfiguration$Builder;-><init>(Landroidx/navigation/NavGraph;)V

    .line 168
    invoke-virtual {v0}, Landroidx/navigation/ui/AppBarConfiguration$Builder;->build()Landroidx/navigation/ui/AppBarConfiguration;

    move-result-object v0

    .line 166
    invoke-static {p0, p1, v0}, Landroidx/navigation/ui/NavigationUI;->setupActionBarWithNavController(Landroid/support/v7/app/AppCompatActivity;Landroidx/navigation/NavController;Landroidx/navigation/ui/AppBarConfiguration;)V

    .line 169
    return-void
.end method

.method public static setupActionBarWithNavController(Landroid/support/v7/app/AppCompatActivity;Landroidx/navigation/NavController;Landroid/support/v4/widget/DrawerLayout;)V
    .locals 2
    .param p0, "activity"    # Landroid/support/v7/app/AppCompatActivity;
    .param p1, "navController"    # Landroidx/navigation/NavController;
    .param p2, "drawerLayout"    # Landroid/support/v4/widget/DrawerLayout;

    .line 193
    new-instance v0, Landroidx/navigation/ui/AppBarConfiguration$Builder;

    .line 194
    invoke-virtual {p1}, Landroidx/navigation/NavController;->getGraph()Landroidx/navigation/NavGraph;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/navigation/ui/AppBarConfiguration$Builder;-><init>(Landroidx/navigation/NavGraph;)V

    .line 195
    invoke-virtual {v0, p2}, Landroidx/navigation/ui/AppBarConfiguration$Builder;->setDrawerLayout(Landroid/support/v4/widget/DrawerLayout;)Landroidx/navigation/ui/AppBarConfiguration$Builder;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Landroidx/navigation/ui/AppBarConfiguration$Builder;->build()Landroidx/navigation/ui/AppBarConfiguration;

    move-result-object v0

    .line 193
    invoke-static {p0, p1, v0}, Landroidx/navigation/ui/NavigationUI;->setupActionBarWithNavController(Landroid/support/v7/app/AppCompatActivity;Landroidx/navigation/NavController;Landroidx/navigation/ui/AppBarConfiguration;)V

    .line 197
    return-void
.end method

.method public static setupActionBarWithNavController(Landroid/support/v7/app/AppCompatActivity;Landroidx/navigation/NavController;Landroidx/navigation/ui/AppBarConfiguration;)V
    .locals 1
    .param p0, "activity"    # Landroid/support/v7/app/AppCompatActivity;
    .param p1, "navController"    # Landroidx/navigation/NavController;
    .param p2, "configuration"    # Landroidx/navigation/ui/AppBarConfiguration;

    .line 219
    new-instance v0, Landroidx/navigation/ui/ActionBarOnDestinationChangedListener;

    invoke-direct {v0, p0, p2}, Landroidx/navigation/ui/ActionBarOnDestinationChangedListener;-><init>(Landroid/support/v7/app/AppCompatActivity;Landroidx/navigation/ui/AppBarConfiguration;)V

    invoke-virtual {p1, v0}, Landroidx/navigation/NavController;->addOnDestinationChangedListener(Landroidx/navigation/NavController$OnDestinationChangedListener;)V

    .line 221
    return-void
.end method

.method public static setupWithNavController(Landroid/support/design/widget/BottomNavigationView;Landroidx/navigation/NavController;)V
    .locals 2
    .param p0, "bottomNavigationView"    # Landroid/support/design/widget/BottomNavigationView;
    .param p1, "navController"    # Landroidx/navigation/NavController;

    .line 497
    new-instance v0, Landroidx/navigation/ui/NavigationUI$5;

    invoke-direct {v0, p1}, Landroidx/navigation/ui/NavigationUI$5;-><init>(Landroidx/navigation/NavController;)V

    invoke-virtual {p0, v0}, Landroid/support/design/widget/BottomNavigationView;->setOnNavigationItemSelectedListener(Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;)V

    .line 504
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 506
    .local v0, "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/design/widget/BottomNavigationView;>;"
    new-instance v1, Landroidx/navigation/ui/NavigationUI$6;

    invoke-direct {v1, v0, p1}, Landroidx/navigation/ui/NavigationUI$6;-><init>(Ljava/lang/ref/WeakReference;Landroidx/navigation/NavController;)V

    invoke-virtual {p1, v1}, Landroidx/navigation/NavController;->addOnDestinationChangedListener(Landroidx/navigation/NavController$OnDestinationChangedListener;)V

    .line 525
    return-void
.end method

.method public static setupWithNavController(Landroid/support/design/widget/CollapsingToolbarLayout;Landroid/support/v7/widget/Toolbar;Landroidx/navigation/NavController;)V
    .locals 2
    .param p0, "collapsingToolbarLayout"    # Landroid/support/design/widget/CollapsingToolbarLayout;
    .param p1, "toolbar"    # Landroid/support/v7/widget/Toolbar;
    .param p2, "navController"    # Landroidx/navigation/NavController;

    .line 325
    new-instance v0, Landroidx/navigation/ui/AppBarConfiguration$Builder;

    .line 326
    invoke-virtual {p2}, Landroidx/navigation/NavController;->getGraph()Landroidx/navigation/NavGraph;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/navigation/ui/AppBarConfiguration$Builder;-><init>(Landroidx/navigation/NavGraph;)V

    invoke-virtual {v0}, Landroidx/navigation/ui/AppBarConfiguration$Builder;->build()Landroidx/navigation/ui/AppBarConfiguration;

    move-result-object v0

    .line 325
    invoke-static {p0, p1, p2, v0}, Landroidx/navigation/ui/NavigationUI;->setupWithNavController(Landroid/support/design/widget/CollapsingToolbarLayout;Landroid/support/v7/widget/Toolbar;Landroidx/navigation/NavController;Landroidx/navigation/ui/AppBarConfiguration;)V

    .line 327
    return-void
.end method

.method public static setupWithNavController(Landroid/support/design/widget/CollapsingToolbarLayout;Landroid/support/v7/widget/Toolbar;Landroidx/navigation/NavController;Landroid/support/v4/widget/DrawerLayout;)V
    .locals 2
    .param p0, "collapsingToolbarLayout"    # Landroid/support/design/widget/CollapsingToolbarLayout;
    .param p1, "toolbar"    # Landroid/support/v7/widget/Toolbar;
    .param p2, "navController"    # Landroidx/navigation/NavController;
    .param p3, "drawerLayout"    # Landroid/support/v4/widget/DrawerLayout;

    .line 355
    new-instance v0, Landroidx/navigation/ui/AppBarConfiguration$Builder;

    .line 356
    invoke-virtual {p2}, Landroidx/navigation/NavController;->getGraph()Landroidx/navigation/NavGraph;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/navigation/ui/AppBarConfiguration$Builder;-><init>(Landroidx/navigation/NavGraph;)V

    .line 357
    invoke-virtual {v0, p3}, Landroidx/navigation/ui/AppBarConfiguration$Builder;->setDrawerLayout(Landroid/support/v4/widget/DrawerLayout;)Landroidx/navigation/ui/AppBarConfiguration$Builder;

    move-result-object v0

    .line 358
    invoke-virtual {v0}, Landroidx/navigation/ui/AppBarConfiguration$Builder;->build()Landroidx/navigation/ui/AppBarConfiguration;

    move-result-object v0

    .line 355
    invoke-static {p0, p1, p2, v0}, Landroidx/navigation/ui/NavigationUI;->setupWithNavController(Landroid/support/design/widget/CollapsingToolbarLayout;Landroid/support/v7/widget/Toolbar;Landroidx/navigation/NavController;Landroidx/navigation/ui/AppBarConfiguration;)V

    .line 359
    return-void
.end method

.method public static setupWithNavController(Landroid/support/design/widget/CollapsingToolbarLayout;Landroid/support/v7/widget/Toolbar;Landroidx/navigation/NavController;Landroidx/navigation/ui/AppBarConfiguration;)V
    .locals 1
    .param p0, "collapsingToolbarLayout"    # Landroid/support/design/widget/CollapsingToolbarLayout;
    .param p1, "toolbar"    # Landroid/support/v7/widget/Toolbar;
    .param p2, "navController"    # Landroidx/navigation/NavController;
    .param p3, "configuration"    # Landroidx/navigation/ui/AppBarConfiguration;

    .line 387
    new-instance v0, Landroidx/navigation/ui/CollapsingToolbarOnDestinationChangedListener;

    invoke-direct {v0, p0, p1, p3}, Landroidx/navigation/ui/CollapsingToolbarOnDestinationChangedListener;-><init>(Landroid/support/design/widget/CollapsingToolbarLayout;Landroid/support/v7/widget/Toolbar;Landroidx/navigation/ui/AppBarConfiguration;)V

    invoke-virtual {p2, v0}, Landroidx/navigation/NavController;->addOnDestinationChangedListener(Landroidx/navigation/NavController$OnDestinationChangedListener;)V

    .line 390
    new-instance v0, Landroidx/navigation/ui/NavigationUI$2;

    invoke-direct {v0, p2, p3}, Landroidx/navigation/ui/NavigationUI$2;-><init>(Landroidx/navigation/NavController;Landroidx/navigation/ui/AppBarConfiguration;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    return-void
.end method

.method public static setupWithNavController(Landroid/support/design/widget/NavigationView;Landroidx/navigation/NavController;)V
    .locals 2
    .param p0, "navigationView"    # Landroid/support/design/widget/NavigationView;
    .param p1, "navController"    # Landroidx/navigation/NavController;

    .line 419
    new-instance v0, Landroidx/navigation/ui/NavigationUI$3;

    invoke-direct {v0, p1, p0}, Landroidx/navigation/ui/NavigationUI$3;-><init>(Landroidx/navigation/NavController;Landroid/support/design/widget/NavigationView;)V

    invoke-virtual {p0, v0}, Landroid/support/design/widget/NavigationView;->setNavigationItemSelectedListener(Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;)V

    .line 439
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 440
    .local v0, "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/design/widget/NavigationView;>;"
    new-instance v1, Landroidx/navigation/ui/NavigationUI$4;

    invoke-direct {v1, v0, p1}, Landroidx/navigation/ui/NavigationUI$4;-><init>(Ljava/lang/ref/WeakReference;Landroidx/navigation/NavController;)V

    invoke-virtual {p1, v1}, Landroidx/navigation/NavController;->addOnDestinationChangedListener(Landroidx/navigation/NavController$OnDestinationChangedListener;)V

    .line 457
    return-void
.end method

.method public static setupWithNavController(Landroid/support/v7/widget/Toolbar;Landroidx/navigation/NavController;)V
    .locals 2
    .param p0, "toolbar"    # Landroid/support/v7/widget/Toolbar;
    .param p1, "navController"    # Landroidx/navigation/NavController;

    .line 241
    new-instance v0, Landroidx/navigation/ui/AppBarConfiguration$Builder;

    .line 242
    invoke-virtual {p1}, Landroidx/navigation/NavController;->getGraph()Landroidx/navigation/NavGraph;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/navigation/ui/AppBarConfiguration$Builder;-><init>(Landroidx/navigation/NavGraph;)V

    invoke-virtual {v0}, Landroidx/navigation/ui/AppBarConfiguration$Builder;->build()Landroidx/navigation/ui/AppBarConfiguration;

    move-result-object v0

    .line 241
    invoke-static {p0, p1, v0}, Landroidx/navigation/ui/NavigationUI;->setupWithNavController(Landroid/support/v7/widget/Toolbar;Landroidx/navigation/NavController;Landroidx/navigation/ui/AppBarConfiguration;)V

    .line 243
    return-void
.end method

.method public static setupWithNavController(Landroid/support/v7/widget/Toolbar;Landroidx/navigation/NavController;Landroid/support/v4/widget/DrawerLayout;)V
    .locals 2
    .param p0, "toolbar"    # Landroid/support/v7/widget/Toolbar;
    .param p1, "navController"    # Landroidx/navigation/NavController;
    .param p2, "drawerLayout"    # Landroid/support/v4/widget/DrawerLayout;

    .line 266
    new-instance v0, Landroidx/navigation/ui/AppBarConfiguration$Builder;

    .line 267
    invoke-virtual {p1}, Landroidx/navigation/NavController;->getGraph()Landroidx/navigation/NavGraph;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/navigation/ui/AppBarConfiguration$Builder;-><init>(Landroidx/navigation/NavGraph;)V

    .line 268
    invoke-virtual {v0, p2}, Landroidx/navigation/ui/AppBarConfiguration$Builder;->setDrawerLayout(Landroid/support/v4/widget/DrawerLayout;)Landroidx/navigation/ui/AppBarConfiguration$Builder;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Landroidx/navigation/ui/AppBarConfiguration$Builder;->build()Landroidx/navigation/ui/AppBarConfiguration;

    move-result-object v0

    .line 266
    invoke-static {p0, p1, v0}, Landroidx/navigation/ui/NavigationUI;->setupWithNavController(Landroid/support/v7/widget/Toolbar;Landroidx/navigation/NavController;Landroidx/navigation/ui/AppBarConfiguration;)V

    .line 270
    return-void
.end method

.method public static setupWithNavController(Landroid/support/v7/widget/Toolbar;Landroidx/navigation/NavController;Landroidx/navigation/ui/AppBarConfiguration;)V
    .locals 1
    .param p0, "toolbar"    # Landroid/support/v7/widget/Toolbar;
    .param p1, "navController"    # Landroidx/navigation/NavController;
    .param p2, "configuration"    # Landroidx/navigation/ui/AppBarConfiguration;

    .line 292
    new-instance v0, Landroidx/navigation/ui/ToolbarOnDestinationChangedListener;

    invoke-direct {v0, p0, p2}, Landroidx/navigation/ui/ToolbarOnDestinationChangedListener;-><init>(Landroid/support/v7/widget/Toolbar;Landroidx/navigation/ui/AppBarConfiguration;)V

    invoke-virtual {p1, v0}, Landroidx/navigation/NavController;->addOnDestinationChangedListener(Landroidx/navigation/NavController$OnDestinationChangedListener;)V

    .line 294
    new-instance v0, Landroidx/navigation/ui/NavigationUI$1;

    invoke-direct {v0, p1, p2}, Landroidx/navigation/ui/NavigationUI$1;-><init>(Landroidx/navigation/NavController;Landroidx/navigation/ui/AppBarConfiguration;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    return-void
.end method
