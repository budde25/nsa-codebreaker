.class Landroidx/navigation/ui/ActionBarOnDestinationChangedListener;
.super Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;
.source "ActionBarOnDestinationChangedListener.java"


# instance fields
.field private final mActivity:Landroid/support/v7/app/AppCompatActivity;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatActivity;Landroidx/navigation/ui/AppBarConfiguration;)V
    .locals 1
    .param p1, "activity"    # Landroid/support/v7/app/AppCompatActivity;
    .param p2, "configuration"    # Landroidx/navigation/ui/AppBarConfiguration;

    .line 40
    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->getDrawerToggleDelegate()Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;-><init>(Landroid/content/Context;Landroidx/navigation/ui/AppBarConfiguration;)V

    .line 41
    iput-object p1, p0, Landroidx/navigation/ui/ActionBarOnDestinationChangedListener;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    .line 42
    return-void
.end method


# virtual methods
.method protected setNavigationIcon(Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "contentDescription"    # I

    .line 53
    iget-object v0, p0, Landroidx/navigation/ui/ActionBarOnDestinationChangedListener;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 54
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-nez p1, :cond_0

    .line 55
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_0

    .line 57
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 58
    iget-object v1, p0, Landroidx/navigation/ui/ActionBarOnDestinationChangedListener;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getDrawerToggleDelegate()Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;

    move-result-object v1

    .line 59
    .local v1, "delegate":Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;
    invoke-interface {v1, p1, p2}, Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 61
    .end local v1    # "delegate":Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;
    :goto_0
    return-void
.end method

.method protected setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 46
    iget-object v0, p0, Landroidx/navigation/ui/ActionBarOnDestinationChangedListener;->mActivity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 47
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method
