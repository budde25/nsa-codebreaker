.class public final Landroidx/navigation/ui/AppBarConfiguration;
.super Ljava/lang/Object;
.source "AppBarConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/ui/AppBarConfiguration$Builder;,
        Landroidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener;
    }
.end annotation


# instance fields
.field private final mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private final mFallbackOnNavigateUpListener:Landroidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener;

.field private final mTopLevelDestinations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Set;Landroid/support/v4/widget/DrawerLayout;Landroidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener;)V
    .locals 0
    .param p2, "drawerLayout"    # Landroid/support/v4/widget/DrawerLayout;
    .param p3, "fallbackOnNavigateUpListener"    # Landroidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/support/v4/widget/DrawerLayout;",
            "Landroidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener;",
            ")V"
        }
    .end annotation

    .line 63
    .local p1, "topLevelDestinations":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Landroidx/navigation/ui/AppBarConfiguration;->mTopLevelDestinations:Ljava/util/Set;

    .line 65
    iput-object p2, p0, Landroidx/navigation/ui/AppBarConfiguration;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 66
    iput-object p3, p0, Landroidx/navigation/ui/AppBarConfiguration;->mFallbackOnNavigateUpListener:Landroidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener;

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Set;Landroid/support/v4/widget/DrawerLayout;Landroidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener;Landroidx/navigation/ui/AppBarConfiguration$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Set;
    .param p2, "x1"    # Landroid/support/v4/widget/DrawerLayout;
    .param p3, "x2"    # Landroidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener;
    .param p4, "x3"    # Landroidx/navigation/ui/AppBarConfiguration$1;

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroidx/navigation/ui/AppBarConfiguration;-><init>(Ljava/util/Set;Landroid/support/v4/widget/DrawerLayout;Landroidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener;)V

    return-void
.end method


# virtual methods
.method public getDrawerLayout()Landroid/support/v4/widget/DrawerLayout;
    .locals 1

    .line 87
    iget-object v0, p0, Landroidx/navigation/ui/AppBarConfiguration;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    return-object v0
.end method

.method public getFallbackOnNavigateUpListener()Landroidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener;
    .locals 1

    .line 98
    iget-object v0, p0, Landroidx/navigation/ui/AppBarConfiguration;->mFallbackOnNavigateUpListener:Landroidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener;

    return-object v0
.end method

.method public getTopLevelDestinations()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Landroidx/navigation/ui/AppBarConfiguration;->mTopLevelDestinations:Ljava/util/Set;

    return-object v0
.end method
