.class final Landroidx/navigation/ui/NavigationUI$3;
.super Ljava/lang/Object;
.source "NavigationUI.java"

# interfaces
.implements Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/navigation/ui/NavigationUI;->setupWithNavController(Landroid/support/design/widget/NavigationView;Landroidx/navigation/NavController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$navController:Landroidx/navigation/NavController;

.field final synthetic val$navigationView:Landroid/support/design/widget/NavigationView;


# direct methods
.method constructor <init>(Landroidx/navigation/NavController;Landroid/support/design/widget/NavigationView;)V
    .locals 0

    .line 420
    iput-object p1, p0, Landroidx/navigation/ui/NavigationUI$3;->val$navController:Landroidx/navigation/NavController;

    iput-object p2, p0, Landroidx/navigation/ui/NavigationUI$3;->val$navigationView:Landroid/support/design/widget/NavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 423
    iget-object v0, p0, Landroidx/navigation/ui/NavigationUI$3;->val$navController:Landroidx/navigation/NavController;

    invoke-static {p1, v0}, Landroidx/navigation/ui/NavigationUI;->onNavDestinationSelected(Landroid/view/MenuItem;Landroidx/navigation/NavController;)Z

    move-result v0

    .line 424
    .local v0, "handled":Z
    if-eqz v0, :cond_1

    .line 425
    iget-object v1, p0, Landroidx/navigation/ui/NavigationUI$3;->val$navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v1}, Landroid/support/design/widget/NavigationView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 426
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/support/v4/widget/DrawerLayout;

    if-eqz v2, :cond_0

    .line 427
    move-object v2, v1

    check-cast v2, Landroid/support/v4/widget/DrawerLayout;

    iget-object v3, p0, Landroidx/navigation/ui/NavigationUI$3;->val$navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    goto :goto_0

    .line 429
    :cond_0
    iget-object v2, p0, Landroidx/navigation/ui/NavigationUI$3;->val$navigationView:Landroid/support/design/widget/NavigationView;

    .line 430
    invoke-static {v2}, Landroidx/navigation/ui/NavigationUI;->findBottomSheetBehavior(Landroid/view/View;)Landroid/support/design/widget/BottomSheetBehavior;

    move-result-object v2

    .line 431
    .local v2, "bottomSheetBehavior":Landroid/support/design/widget/BottomSheetBehavior;
    if-eqz v2, :cond_1

    .line 432
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/support/design/widget/BottomSheetBehavior;->setState(I)V

    .line 436
    .end local v1    # "parent":Landroid/view/ViewParent;
    .end local v2    # "bottomSheetBehavior":Landroid/support/design/widget/BottomSheetBehavior;
    :cond_1
    :goto_0
    return v0
.end method
