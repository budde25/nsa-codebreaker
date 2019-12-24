.class public Landroidx/navigation/fragment/FragmentNavigator;
.super Landroidx/navigation/Navigator;
.source "FragmentNavigator.java"


# annotations
.annotation runtime Landroidx/navigation/Navigator$Name;
    value = "fragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/fragment/FragmentNavigator$Extras;,
        Landroidx/navigation/fragment/FragmentNavigator$Destination;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/navigation/Navigator<",
        "Landroidx/navigation/fragment/FragmentNavigator$Destination;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_BACK_STACK_IDS:Ljava/lang/String; = "androidx-nav-fragment:navigator:backStackIds"

.field private static final TAG:Ljava/lang/String; = "FragmentNavigator"


# instance fields
.field mBackStack:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mContainerId:I

.field private final mContext:Landroid/content/Context;

.field final mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field mIsPendingBackStackOperation:Z

.field private final mOnBackStackChangedListener:Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Landroid/support/v4/app/FragmentManager;
    .param p3, "containerId"    # I

    .line 114
    invoke-direct {p0}, Landroidx/navigation/Navigator;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/navigation/fragment/FragmentNavigator;->mBackStack:Ljava/util/ArrayDeque;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/navigation/fragment/FragmentNavigator;->mIsPendingBackStackOperation:Z

    .line 88
    new-instance v0, Landroidx/navigation/fragment/FragmentNavigator$1;

    invoke-direct {v0, p0}, Landroidx/navigation/fragment/FragmentNavigator$1;-><init>(Landroidx/navigation/fragment/FragmentNavigator;)V

    iput-object v0, p0, Landroidx/navigation/fragment/FragmentNavigator;->mOnBackStackChangedListener:Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    .line 115
    iput-object p1, p0, Landroidx/navigation/fragment/FragmentNavigator;->mContext:Landroid/content/Context;

    .line 116
    iput-object p2, p0, Landroidx/navigation/fragment/FragmentNavigator;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 117
    iput p3, p0, Landroidx/navigation/fragment/FragmentNavigator;->mContainerId:I

    .line 118
    return-void
.end method

.method private generateBackStackName(II)Ljava/lang/String;
    .locals 2
    .param p1, "backStackIndex"    # I
    .param p2, "destId"    # I

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDestId(Ljava/lang/String;)I
    .locals 5
    .param p1, "backStackName"    # Ljava/lang/String;

    .line 310
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-array v1, v0, [Ljava/lang/String;

    .line 311
    .local v1, "split":[Ljava/lang/String;
    :goto_0
    array-length v2, v1

    const/4 v3, 0x2

    const-string v4, "Invalid back stack entry on the NavHostFragment\'s back stack - use getChildFragmentManager() if you need to do custom FragmentTransactions from within Fragments created via your navigation graph."

    if-ne v2, v3, :cond_1

    .line 319
    :try_start_0
    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 320
    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 312
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic createDestination()Landroidx/navigation/NavDestination;
    .locals 1

    .line 58
    invoke-virtual {p0}, Landroidx/navigation/fragment/FragmentNavigator;->createDestination()Landroidx/navigation/fragment/FragmentNavigator$Destination;

    move-result-object v0

    return-object v0
.end method

.method public createDestination()Landroidx/navigation/fragment/FragmentNavigator$Destination;
    .locals 1

    .line 165
    new-instance v0, Landroidx/navigation/fragment/FragmentNavigator$Destination;

    invoke-direct {v0, p0}, Landroidx/navigation/fragment/FragmentNavigator$Destination;-><init>(Landroidx/navigation/Navigator;)V

    return-object v0
.end method

.method public instantiateFragment(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "args"    # Landroid/os/Bundle;

    .line 184
    invoke-static {p1, p3, p4}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method isBackStackEqual()Z
    .locals 7

    .line 334
    iget-object v0, p0, Landroidx/navigation/fragment/FragmentNavigator;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 336
    .local v0, "fragmentBackStackCount":I
    iget-object v1, p0, Landroidx/navigation/fragment/FragmentNavigator;->mBackStack:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 337
    return v3

    .line 341
    :cond_0
    iget-object v1, p0, Landroidx/navigation/fragment/FragmentNavigator;->mBackStack:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 342
    .local v1, "backStackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    add-int/lit8 v2, v0, -0x1

    .line 343
    .local v2, "fragmentBackStackIndex":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    if-ltz v2, :cond_2

    .line 344
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 346
    .local v4, "destId":I
    :try_start_0
    iget-object v5, p0, Landroidx/navigation/fragment/FragmentNavigator;->mFragmentManager:Landroid/support/v4/app/FragmentManager;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v6, v2, -0x1

    .line 347
    .end local v2    # "fragmentBackStackIndex":I
    .local v6, "fragmentBackStackIndex":I
    :try_start_1
    invoke-virtual {v5, v2}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v2

    .line 348
    invoke-interface {v2}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 346
    invoke-direct {p0, v2}, Landroidx/navigation/fragment/FragmentNavigator;->getDestId(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 349
    .local v2, "fragmentDestId":I
    if-eq v4, v2, :cond_1

    .line 350
    return v3

    .line 357
    .end local v2    # "fragmentDestId":I
    :cond_1
    nop

    .line 358
    .end local v4    # "destId":I
    move v2, v6

    goto :goto_0

    .line 352
    .restart local v4    # "destId":I
    :catch_0
    move-exception v2

    goto :goto_1

    .end local v6    # "fragmentBackStackIndex":I
    .local v2, "fragmentBackStackIndex":I
    :catch_1
    move-exception v3

    move v6, v2

    move-object v2, v3

    .line 353
    .local v2, "e":Ljava/lang/NumberFormatException;
    .restart local v6    # "fragmentBackStackIndex":I
    :goto_1
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "Invalid back stack entry on the NavHostFragment\'s back stack - use getChildFragmentManager() if you need to do custom FragmentTransactions from within Fragments created via your navigation graph."

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 360
    .end local v4    # "destId":I
    .end local v6    # "fragmentBackStackIndex":I
    .local v2, "fragmentBackStackIndex":I
    :cond_2
    const/4 v3, 0x1

    return v3
.end method

.method public bridge synthetic navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Landroidx/navigation/NavDestination;
    .locals 0

    .line 58
    check-cast p1, Landroidx/navigation/fragment/FragmentNavigator$Destination;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/navigation/fragment/FragmentNavigator;->navigate(Landroidx/navigation/fragment/FragmentNavigator$Destination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Landroidx/navigation/NavDestination;

    move-result-object p1

    return-object p1
.end method

.method public navigate(Landroidx/navigation/fragment/FragmentNavigator$Destination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Landroidx/navigation/NavDestination;
    .locals 18
    .param p1, "destination"    # Landroidx/navigation/fragment/FragmentNavigator$Destination;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "navOptions"    # Landroidx/navigation/NavOptions;
    .param p4, "navigatorExtras"    # Landroidx/navigation/Navigator$Extras;

    .line 203
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    iget-object v3, v0, Landroidx/navigation/fragment/FragmentNavigator;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->isStateSaved()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 204
    const-string v3, "FragmentNavigator"

    const-string v5, "Ignoring navigate() call: FragmentManager has already saved its state"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-object v4

    .line 208
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/navigation/fragment/FragmentNavigator$Destination;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, "className":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_1

    .line 210
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Landroidx/navigation/fragment/FragmentNavigator;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 212
    :cond_1
    iget-object v6, v0, Landroidx/navigation/fragment/FragmentNavigator;->mContext:Landroid/content/Context;

    iget-object v7, v0, Landroidx/navigation/fragment/FragmentNavigator;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, v6, v7, v3, v1}, Landroidx/navigation/fragment/FragmentNavigator;->instantiateFragment(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v6

    .line 214
    .local v6, "frag":Landroid/support/v4/app/Fragment;
    invoke-virtual {v6, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 215
    iget-object v7, v0, Landroidx/navigation/fragment/FragmentNavigator;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v7

    .line 217
    .local v7, "ft":Landroid/support/v4/app/FragmentTransaction;
    const/4 v8, -0x1

    if-eqz p3, :cond_2

    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/NavOptions;->getEnterAnim()I

    move-result v9

    goto :goto_0

    :cond_2
    move v9, v8

    .line 218
    .local v9, "enterAnim":I
    :goto_0
    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/NavOptions;->getExitAnim()I

    move-result v10

    goto :goto_1

    :cond_3
    move v10, v8

    .line 219
    .local v10, "exitAnim":I
    :goto_1
    if-eqz p3, :cond_4

    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/NavOptions;->getPopEnterAnim()I

    move-result v11

    goto :goto_2

    :cond_4
    move v11, v8

    .line 220
    .local v11, "popEnterAnim":I
    :goto_2
    if-eqz p3, :cond_5

    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/NavOptions;->getPopExitAnim()I

    move-result v12

    goto :goto_3

    :cond_5
    move v12, v8

    .line 221
    .local v12, "popExitAnim":I
    :goto_3
    if-ne v9, v8, :cond_6

    if-ne v10, v8, :cond_6

    if-ne v11, v8, :cond_6

    if-eq v12, v8, :cond_b

    .line 222
    :cond_6
    if-eq v9, v8, :cond_7

    move v13, v9

    goto :goto_4

    :cond_7
    move v13, v5

    :goto_4
    move v9, v13

    .line 223
    if-eq v10, v8, :cond_8

    move v13, v10

    goto :goto_5

    :cond_8
    move v13, v5

    :goto_5
    move v10, v13

    .line 224
    if-eq v11, v8, :cond_9

    move v13, v11

    goto :goto_6

    :cond_9
    move v13, v5

    :goto_6
    move v11, v13

    .line 225
    if-eq v12, v8, :cond_a

    move v8, v12

    goto :goto_7

    :cond_a
    move v8, v5

    :goto_7
    move v12, v8

    .line 226
    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 229
    :cond_b
    iget v8, v0, Landroidx/navigation/fragment/FragmentNavigator;->mContainerId:I

    invoke-virtual {v7, v8, v6}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 230
    invoke-virtual {v7, v6}, Landroid/support/v4/app/FragmentTransaction;->setPrimaryNavigationFragment(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 232
    invoke-virtual/range {p1 .. p1}, Landroidx/navigation/fragment/FragmentNavigator$Destination;->getId()I

    move-result v8

    .line 233
    .local v8, "destId":I
    iget-object v13, v0, Landroidx/navigation/fragment/FragmentNavigator;->mBackStack:Ljava/util/ArrayDeque;

    invoke-virtual {v13}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v13

    .line 235
    .local v13, "initialNavigation":Z
    const/4 v14, 0x1

    if-eqz p3, :cond_c

    if-nez v13, :cond_c

    .line 236
    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/NavOptions;->shouldLaunchSingleTop()Z

    move-result v15

    if-eqz v15, :cond_c

    iget-object v15, v0, Landroidx/navigation/fragment/FragmentNavigator;->mBackStack:Ljava/util/ArrayDeque;

    .line 237
    invoke-virtual {v15}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-ne v15, v8, :cond_c

    move v5, v14

    goto :goto_8

    :cond_c
    nop

    .line 240
    .local v5, "isSingleTopReplacement":Z
    :goto_8
    if-eqz v13, :cond_d

    .line 241
    const/4 v15, 0x1

    .local v15, "isAdded":Z
    goto :goto_9

    .line 242
    .end local v15    # "isAdded":Z
    :cond_d
    if-eqz v5, :cond_f

    .line 244
    iget-object v15, v0, Landroidx/navigation/fragment/FragmentNavigator;->mBackStack:Ljava/util/ArrayDeque;

    invoke-virtual {v15}, Ljava/util/ArrayDeque;->size()I

    move-result v15

    if-le v15, v14, :cond_e

    .line 249
    iget-object v15, v0, Landroidx/navigation/fragment/FragmentNavigator;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    iget-object v4, v0, Landroidx/navigation/fragment/FragmentNavigator;->mBackStack:Ljava/util/ArrayDeque;

    .line 250
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->size()I

    move-result v4

    iget-object v14, v0, Landroidx/navigation/fragment/FragmentNavigator;->mBackStack:Ljava/util/ArrayDeque;

    invoke-virtual {v14}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-direct {v0, v4, v14}, Landroidx/navigation/fragment/FragmentNavigator;->generateBackStackName(II)Ljava/lang/String;

    move-result-object v4

    .line 249
    const/4 v14, 0x1

    invoke-virtual {v15, v4, v14}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 252
    iget-object v4, v0, Landroidx/navigation/fragment/FragmentNavigator;->mBackStack:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->size()I

    move-result v4

    invoke-direct {v0, v4, v8}, Landroidx/navigation/fragment/FragmentNavigator;->generateBackStackName(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 253
    iput-boolean v14, v0, Landroidx/navigation/fragment/FragmentNavigator;->mIsPendingBackStackOperation:Z

    .line 255
    :cond_e
    const/4 v15, 0x0

    .restart local v15    # "isAdded":Z
    goto :goto_9

    .line 257
    .end local v15    # "isAdded":Z
    :cond_f
    iget-object v4, v0, Landroidx/navigation/fragment/FragmentNavigator;->mBackStack:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->size()I

    move-result v4

    add-int/2addr v4, v14

    invoke-direct {v0, v4, v8}, Landroidx/navigation/fragment/FragmentNavigator;->generateBackStackName(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 258
    iput-boolean v14, v0, Landroidx/navigation/fragment/FragmentNavigator;->mIsPendingBackStackOperation:Z

    .line 259
    const/4 v15, 0x1

    .line 261
    .restart local v15    # "isAdded":Z
    :goto_9
    instance-of v4, v2, Landroidx/navigation/fragment/FragmentNavigator$Extras;

    if-eqz v4, :cond_10

    .line 262
    move-object v4, v2

    check-cast v4, Landroidx/navigation/fragment/FragmentNavigator$Extras;

    .line 263
    .local v4, "extras":Landroidx/navigation/fragment/FragmentNavigator$Extras;
    invoke-virtual {v4}, Landroidx/navigation/fragment/FragmentNavigator$Extras;->getSharedElements()Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_10

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Map$Entry;

    .line 264
    .local v16, "sharedElement":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v1, v17

    check-cast v1, Landroid/view/View;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v2, v17

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 265
    .end local v16    # "sharedElement":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Ljava/lang/String;>;"
    move-object/from16 v1, p2

    move-object/from16 v2, p4

    goto :goto_a

    .line 267
    .end local v4    # "extras":Landroidx/navigation/fragment/FragmentNavigator$Extras;
    :cond_10
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/support/v4/app/FragmentTransaction;->setReorderingAllowed(Z)Landroid/support/v4/app/FragmentTransaction;

    .line 268
    invoke-virtual {v7}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 270
    if-eqz v15, :cond_11

    .line 271
    iget-object v1, v0, Landroidx/navigation/fragment/FragmentNavigator;->mBackStack:Ljava/util/ArrayDeque;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 272
    return-object p1

    .line 274
    :cond_11
    const/4 v1, 0x0

    return-object v1
.end method

.method protected onBackPressAdded()V
    .locals 2

    .line 122
    iget-object v0, p0, Landroidx/navigation/fragment/FragmentNavigator;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    iget-object v1, p0, Landroidx/navigation/fragment/FragmentNavigator;->mOnBackStackChangedListener:Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 123
    return-void
.end method

.method protected onBackPressRemoved()V
    .locals 2

    .line 127
    iget-object v0, p0, Landroidx/navigation/fragment/FragmentNavigator;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    iget-object v1, p0, Landroidx/navigation/fragment/FragmentNavigator;->mOnBackStackChangedListener:Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->removeOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 128
    return-void
.end method

.method public onRestoreState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedState"    # Landroid/os/Bundle;

    .line 293
    if-eqz p1, :cond_0

    .line 294
    const-string v0, "androidx-nav-fragment:navigator:backStackIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 295
    .local v0, "backStack":[I
    if-eqz v0, :cond_0

    .line 296
    iget-object v1, p0, Landroidx/navigation/fragment/FragmentNavigator;->mBackStack:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 297
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 298
    .local v3, "destId":I
    iget-object v4, p0, Landroidx/navigation/fragment/FragmentNavigator;->mBackStack:Ljava/util/ArrayDeque;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 297
    .end local v3    # "destId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 302
    .end local v0    # "backStack":[I
    :cond_0
    return-void
.end method

.method public onSaveState()Landroid/os/Bundle;
    .locals 7

    .line 281
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 282
    .local v0, "b":Landroid/os/Bundle;
    iget-object v1, p0, Landroidx/navigation/fragment/FragmentNavigator;->mBackStack:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 283
    .local v1, "backStack":[I
    const/4 v2, 0x0

    .line 284
    .local v2, "index":I
    iget-object v3, p0, Landroidx/navigation/fragment/FragmentNavigator;->mBackStack:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 285
    .local v4, "id":Ljava/lang/Integer;
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "index":I
    .local v5, "index":I
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v1, v2

    .line 286
    .end local v4    # "id":Ljava/lang/Integer;
    move v2, v5

    goto :goto_0

    .line 287
    .end local v5    # "index":I
    .restart local v2    # "index":I
    :cond_0
    const-string v3, "androidx-nav-fragment:navigator:backStackIds"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 288
    return-object v0
.end method

.method public popBackStack()Z
    .locals 4

    .line 144
    iget-object v0, p0, Landroidx/navigation/fragment/FragmentNavigator;->mBackStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 145
    return v1

    .line 147
    :cond_0
    iget-object v0, p0, Landroidx/navigation/fragment/FragmentNavigator;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    const-string v0, "FragmentNavigator"

    const-string v2, "Ignoring popBackStack() call: FragmentManager has already saved its state"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return v1

    .line 152
    :cond_1
    iget-object v0, p0, Landroidx/navigation/fragment/FragmentNavigator;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_2

    .line 153
    iget-object v0, p0, Landroidx/navigation/fragment/FragmentNavigator;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    iget-object v2, p0, Landroidx/navigation/fragment/FragmentNavigator;->mBackStack:Ljava/util/ArrayDeque;

    .line 154
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    iget-object v3, p0, Landroidx/navigation/fragment/FragmentNavigator;->mBackStack:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroidx/navigation/fragment/FragmentNavigator;->generateBackStackName(II)Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 156
    iput-boolean v1, p0, Landroidx/navigation/fragment/FragmentNavigator;->mIsPendingBackStackOperation:Z

    .line 158
    :cond_2
    iget-object v0, p0, Landroidx/navigation/fragment/FragmentNavigator;->mBackStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 159
    return v1
.end method
