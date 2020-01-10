.class public final Landroidx/navigation/Navigation;
.super Ljava/lang/Object;
.source "Navigation.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static createNavigateOnClickListener(I)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "resId"    # I

    .line 99
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/navigation/Navigation;->createNavigateOnClickListener(ILandroid/os/Bundle;)Landroid/view/View$OnClickListener;

    move-result-object v0

    return-object v0
.end method

.method public static createNavigateOnClickListener(ILandroid/os/Bundle;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "resId"    # I
    .param p1, "args"    # Landroid/os/Bundle;

    .line 115
    new-instance v0, Landroidx/navigation/Navigation$1;

    invoke-direct {v0, p0, p1}, Landroidx/navigation/Navigation$1;-><init>(ILandroid/os/Bundle;)V

    return-object v0
.end method

.method public static findNavController(Landroid/app/Activity;I)Landroidx/navigation/NavController;
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "viewId"    # I

    .line 57
    invoke-static {p0, p1}, Landroid/support/v4/app/ActivityCompat;->requireViewById(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, "view":Landroid/view/View;
    invoke-static {v0}, Landroidx/navigation/Navigation;->findViewNavController(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object v1

    .line 59
    .local v1, "navController":Landroidx/navigation/NavController;
    if-eqz v1, :cond_0

    .line 63
    return-object v1

    .line 60
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " does not have a NavController set on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static findNavController(Landroid/view/View;)Landroidx/navigation/NavController;
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .line 81
    invoke-static {p0}, Landroidx/navigation/Navigation;->findViewNavController(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object v0

    .line 82
    .local v0, "navController":Landroidx/navigation/NavController;
    if-eqz v0, :cond_0

    .line 85
    return-object v0

    .line 83
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " does not have a NavController set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static findViewNavController(Landroid/view/View;)Landroidx/navigation/NavController;
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .line 145
    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 146
    invoke-static {p0}, Landroidx/navigation/Navigation;->getViewNavController(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object v1

    .line 147
    .local v1, "controller":Landroidx/navigation/NavController;
    if-eqz v1, :cond_0

    .line 148
    return-object v1

    .line 150
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 151
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_1

    move-object v0, v2

    check-cast v0, Landroid/view/View;

    :cond_1
    move-object p0, v0

    .line 152
    .end local v1    # "controller":Landroidx/navigation/NavController;
    .end local v2    # "parent":Landroid/view/ViewParent;
    goto :goto_0

    .line 153
    :cond_2
    return-object v0
.end method

.method private static getViewNavController(Landroid/view/View;)Landroidx/navigation/NavController;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 159
    sget v0, Landroidx/navigation/R$id;->nav_controller_view_tag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 160
    .local v0, "tag":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 161
    .local v1, "controller":Landroidx/navigation/NavController;
    instance-of v2, v0, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 162
    move-object v2, v0

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroidx/navigation/NavController;

    goto :goto_0

    .line 163
    :cond_0
    instance-of v2, v0, Landroidx/navigation/NavController;

    if-eqz v2, :cond_1

    .line 164
    move-object v1, v0

    check-cast v1, Landroidx/navigation/NavController;

    .line 166
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static setViewNavController(Landroid/view/View;Landroidx/navigation/NavController;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "controller"    # Landroidx/navigation/NavController;

    .line 135
    sget v0, Landroidx/navigation/R$id;->nav_controller_view_tag:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 136
    return-void
.end method
