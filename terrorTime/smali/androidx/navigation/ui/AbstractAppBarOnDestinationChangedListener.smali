.class abstract Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;
.super Ljava/lang/Object;
.source "AbstractAppBarOnDestinationChangedListener.java"

# interfaces
.implements Landroidx/navigation/NavController$OnDestinationChangedListener;


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mArrowDrawable:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

.field private final mContext:Landroid/content/Context;

.field private final mDrawerLayoutWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v4/widget/DrawerLayout;",
            ">;"
        }
    .end annotation
.end field

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
.method constructor <init>(Landroid/content/Context;Landroidx/navigation/ui/AppBarConfiguration;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configuration"    # Landroidx/navigation/ui/AppBarConfiguration;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;->mContext:Landroid/content/Context;

    .line 59
    invoke-virtual {p2}, Landroidx/navigation/ui/AppBarConfiguration;->getTopLevelDestinations()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;->mTopLevelDestinations:Ljava/util/Set;

    .line 60
    invoke-virtual {p2}, Landroidx/navigation/ui/AppBarConfiguration;->getDrawerLayout()Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    .line 61
    .local v0, "drawerLayout":Landroid/support/v4/widget/DrawerLayout;
    if-eqz v0, :cond_0

    .line 62
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;->mDrawerLayoutWeakReference:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 64
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;->mDrawerLayoutWeakReference:Ljava/lang/ref/WeakReference;

    .line 66
    :goto_0
    return-void
.end method

.method private setActionBarUpIndicator(Z)V
    .locals 6
    .param p1, "showAsDrawerIndicator"    # Z

    .line 112
    const/4 v0, 0x1

    .line 113
    .local v0, "animate":Z
    iget-object v1, p0, Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;->mArrowDrawable:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    if-nez v1, :cond_0

    .line 114
    new-instance v1, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    iget-object v2, p0, Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;->mArrowDrawable:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    .line 116
    const/4 v0, 0x0

    .line 118
    :cond_0
    iget-object v1, p0, Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;->mArrowDrawable:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    if-eqz p1, :cond_1

    sget v2, Landroidx/navigation/ui/R$string;->nav_app_bar_open_drawer_description:I

    goto :goto_0

    :cond_1
    sget v2, Landroidx/navigation/ui/R$string;->nav_app_bar_navigate_up_description:I

    :goto_0
    invoke-virtual {p0, v1, v2}, Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;->setNavigationIcon(Landroid/graphics/drawable/Drawable;I)V

    .line 121
    if-eqz p1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 122
    .local v1, "endValue":F
    :goto_1
    if-eqz v0, :cond_4

    .line 123
    iget-object v2, p0, Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;->mArrowDrawable:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    invoke-virtual {v2}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->getProgress()F

    move-result v2

    .line 124
    .local v2, "startValue":F
    iget-object v3, p0, Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_3

    .line 125
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 127
    :cond_3
    iget-object v3, p0, Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;->mArrowDrawable:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v5, 0x1

    aput v1, v4, v5

    const-string v5, "progress"

    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;->mAnimator:Landroid/animation/ValueAnimator;

    .line 129
    iget-object v3, p0, Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 130
    .end local v2    # "startValue":F
    goto :goto_2

    .line 131
    :cond_4
    iget-object v2, p0, Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;->mArrowDrawable:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;

    invoke-virtual {v2, v1}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V

    .line 133
    :goto_2
    return-void
.end method


# virtual methods
.method public onDestinationChanged(Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "controller"    # Landroidx/navigation/NavController;
    .param p2, "destination"    # Landroidx/navigation/NavDestination;
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 75
    iget-object v0, p0, Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;->mDrawerLayoutWeakReference:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 78
    .local v0, "drawerLayout":Landroid/support/v4/widget/DrawerLayout;
    :goto_0
    iget-object v2, p0, Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;->mDrawerLayoutWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    .line 79
    invoke-virtual {p1, p0}, Landroidx/navigation/NavController;->removeOnDestinationChangedListener(Landroidx/navigation/NavController$OnDestinationChangedListener;)V

    .line 80
    return-void

    .line 82
    :cond_1
    invoke-virtual {p2}, Landroidx/navigation/NavDestination;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    .line 83
    .local v2, "label":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_4

    .line 85
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 86
    .local v3, "title":Ljava/lang/StringBuffer;
    const-string v5, "\\{(.+?)\\}"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 87
    .local v5, "fillInPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 88
    .local v6, "matcher":Ljava/util/regex/Matcher;
    :goto_1
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 89
    invoke-virtual {v6, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 90
    .local v7, "argName":Ljava/lang/String;
    if-eqz p3, :cond_2

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 91
    const-string v8, ""

    invoke-virtual {v6, v3, v8}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 93
    invoke-virtual {p3, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    .end local v7    # "argName":Ljava/lang/String;
    goto :goto_1

    .line 95
    .restart local v7    # "argName":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not find "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " in "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " to fill label "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    .end local v7    # "argName":Ljava/lang/String;
    :cond_3
    invoke-virtual {v6, v3}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 100
    invoke-virtual {p0, v3}, Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;->setTitle(Ljava/lang/CharSequence;)V

    .line 102
    .end local v3    # "title":Ljava/lang/StringBuffer;
    .end local v5    # "fillInPattern":Ljava/util/regex/Pattern;
    .end local v6    # "matcher":Ljava/util/regex/Matcher;
    :cond_4
    iget-object v3, p0, Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;->mTopLevelDestinations:Ljava/util/Set;

    invoke-static {p2, v3}, Landroidx/navigation/ui/NavigationUI;->matchDestinations(Landroidx/navigation/NavDestination;Ljava/util/Set;)Z

    move-result v3

    .line 104
    .local v3, "isTopLevelDestination":Z
    const/4 v5, 0x0

    if-nez v0, :cond_5

    if-eqz v3, :cond_5

    .line 105
    invoke-virtual {p0, v1, v5}, Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;->setNavigationIcon(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_3

    .line 107
    :cond_5
    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    move v4, v5

    :goto_2
    invoke-direct {p0, v4}, Landroidx/navigation/ui/AbstractAppBarOnDestinationChangedListener;->setActionBarUpIndicator(Z)V

    .line 109
    :goto_3
    return-void
.end method

.method protected abstract setNavigationIcon(Landroid/graphics/drawable/Drawable;I)V
.end method

.method protected abstract setTitle(Ljava/lang/CharSequence;)V
.end method
