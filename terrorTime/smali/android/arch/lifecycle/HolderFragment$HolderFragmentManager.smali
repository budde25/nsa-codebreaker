.class Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;
.super Ljava/lang/Object;
.source "HolderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/HolderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HolderFragmentManager"
.end annotation


# instance fields
.field private mActivityCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private mActivityCallbacksIsAdded:Z

.field private mNotCommittedActivityHolders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Landroid/arch/lifecycle/HolderFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mNotCommittedFragmentHolders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/support/v4/app/Fragment;",
            "Landroid/arch/lifecycle/HolderFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mParentDestroyedCallback:Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->mNotCommittedActivityHolders:Ljava/util/Map;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->mNotCommittedFragmentHolders:Ljava/util/Map;

    .line 100
    new-instance v0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager$1;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager$1;-><init>(Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;)V

    iput-object v0, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->mActivityCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->mActivityCallbacksIsAdded:Z

    .line 113
    new-instance v0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager$2;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager$2;-><init>(Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;)V

    iput-object v0, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->mParentDestroyedCallback:Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    return-void
.end method

.method static synthetic access$000(Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;

    .line 96
    iget-object v0, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->mNotCommittedActivityHolders:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;

    .line 96
    iget-object v0, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->mNotCommittedFragmentHolders:Ljava/util/Map;

    return-object v0
.end method

.method private static createHolderFragment(Landroid/support/v4/app/FragmentManager;)Landroid/arch/lifecycle/HolderFragment;
    .locals 3
    .param p0, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;

    .line 151
    new-instance v0, Landroid/arch/lifecycle/HolderFragment;

    invoke-direct {v0}, Landroid/arch/lifecycle/HolderFragment;-><init>()V

    .line 152
    .local v0, "holder":Landroid/arch/lifecycle/HolderFragment;
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "android.arch.lifecycle.state.StateProviderHolderFragment"

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 153
    return-object v0
.end method

.method private static findHolderFragment(Landroid/support/v4/app/FragmentManager;)Landroid/arch/lifecycle/HolderFragment;
    .locals 3
    .param p0, "manager"    # Landroid/support/v4/app/FragmentManager;

    .line 138
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManager;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 142
    const-string v0, "android.arch.lifecycle.state.StateProviderHolderFragment"

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 143
    .local v0, "fragmentByTag":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/arch/lifecycle/HolderFragment;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected fragment instance was returned by HOLDER_TAG"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    :cond_1
    :goto_0
    move-object v1, v0

    check-cast v1, Landroid/arch/lifecycle/HolderFragment;

    return-object v1

    .line 139
    .end local v0    # "fragmentByTag":Landroid/support/v4/app/Fragment;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t access ViewModels from onDestroy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method holderFragmentCreated(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "holderFragment"    # Landroid/support/v4/app/Fragment;

    .line 127
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 128
    .local v0, "parentFragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 129
    iget-object v1, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->mNotCommittedFragmentHolders:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->mParentDestroyedCallback:Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->unregisterFragmentLifecycleCallbacks(Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;)V

    goto :goto_0

    .line 133
    :cond_0
    iget-object v1, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->mNotCommittedActivityHolders:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :goto_0
    return-void
.end method

.method holderFragmentFor(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/HolderFragment;
    .locals 5
    .param p1, "parentFragment"    # Landroid/support/v4/app/Fragment;

    .line 177
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 178
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-static {v0}, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->findHolderFragment(Landroid/support/v4/app/FragmentManager;)Landroid/arch/lifecycle/HolderFragment;

    move-result-object v1

    .line 179
    .local v1, "holder":Landroid/arch/lifecycle/HolderFragment;
    if-eqz v1, :cond_0

    .line 180
    return-object v1

    .line 182
    :cond_0
    iget-object v2, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->mNotCommittedFragmentHolders:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/arch/lifecycle/HolderFragment;

    .line 183
    if-eqz v1, :cond_1

    .line 184
    return-object v1

    .line 187
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->mParentDestroyedCallback:Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    const/4 v4, 0x0

    .line 188
    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentManager;->registerFragmentLifecycleCallbacks(Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    .line 189
    invoke-static {v0}, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->createHolderFragment(Landroid/support/v4/app/FragmentManager;)Landroid/arch/lifecycle/HolderFragment;

    move-result-object v1

    .line 190
    iget-object v2, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->mNotCommittedFragmentHolders:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    return-object v1
.end method

.method holderFragmentFor(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/HolderFragment;
    .locals 4
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;

    .line 157
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 158
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-static {v0}, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->findHolderFragment(Landroid/support/v4/app/FragmentManager;)Landroid/arch/lifecycle/HolderFragment;

    move-result-object v1

    .line 159
    .local v1, "holder":Landroid/arch/lifecycle/HolderFragment;
    if-eqz v1, :cond_0

    .line 160
    return-object v1

    .line 162
    :cond_0
    iget-object v2, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->mNotCommittedActivityHolders:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/arch/lifecycle/HolderFragment;

    .line 163
    if-eqz v1, :cond_1

    .line 164
    return-object v1

    .line 167
    :cond_1
    iget-boolean v2, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->mActivityCallbacksIsAdded:Z

    if-nez v2, :cond_2

    .line 168
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->mActivityCallbacksIsAdded:Z

    .line 169
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    iget-object v3, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->mActivityCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v2, v3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 171
    :cond_2
    invoke-static {v0}, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->createHolderFragment(Landroid/support/v4/app/FragmentManager;)Landroid/arch/lifecycle/HolderFragment;

    move-result-object v1

    .line 172
    iget-object v2, p0, Landroid/arch/lifecycle/HolderFragment$HolderFragmentManager;->mNotCommittedActivityHolders:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    return-object v1
.end method
