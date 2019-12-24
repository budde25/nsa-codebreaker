.class final Landroidx/navigation/ui/NavigationUI$5;
.super Ljava/lang/Object;
.source "NavigationUI.java"

# interfaces
.implements Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/navigation/ui/NavigationUI;->setupWithNavController(Landroid/support/design/widget/BottomNavigationView;Landroidx/navigation/NavController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$navController:Landroidx/navigation/NavController;


# direct methods
.method constructor <init>(Landroidx/navigation/NavController;)V
    .locals 0

    .line 498
    iput-object p1, p0, Landroidx/navigation/ui/NavigationUI$5;->val$navController:Landroidx/navigation/NavController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 501
    iget-object v0, p0, Landroidx/navigation/ui/NavigationUI$5;->val$navController:Landroidx/navigation/NavController;

    invoke-static {p1, v0}, Landroidx/navigation/ui/NavigationUI;->onNavDestinationSelected(Landroid/view/MenuItem;Landroidx/navigation/NavController;)Z

    move-result v0

    return v0
.end method
