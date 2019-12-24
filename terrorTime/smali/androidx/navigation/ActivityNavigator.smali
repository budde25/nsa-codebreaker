.class public Landroidx/navigation/ActivityNavigator;
.super Landroidx/navigation/Navigator;
.source "ActivityNavigator.java"


# annotations
.annotation runtime Landroidx/navigation/Navigator$Name;
    value = "activity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/ActivityNavigator$Extras;,
        Landroidx/navigation/ActivityNavigator$Destination;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/navigation/Navigator<",
        "Landroidx/navigation/ActivityNavigator$Destination;",
        ">;"
    }
.end annotation


# static fields
.field private static final EXTRA_NAV_CURRENT:Ljava/lang/String; = "android-support-navigation:ActivityNavigator:current"

.field private static final EXTRA_NAV_SOURCE:Ljava/lang/String; = "android-support-navigation:ActivityNavigator:source"

.field private static final EXTRA_POP_ENTER_ANIM:Ljava/lang/String; = "android-support-navigation:ActivityNavigator:popEnterAnim"

.field private static final EXTRA_POP_EXIT_ANIM:Ljava/lang/String; = "android-support-navigation:ActivityNavigator:popExitAnim"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHostActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Landroidx/navigation/Navigator;-><init>()V

    .line 56
    iput-object p1, p0, Landroidx/navigation/ActivityNavigator;->mContext:Landroid/content/Context;

    .line 57
    :goto_0
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 58
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 59
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Landroidx/navigation/ActivityNavigator;->mHostActivity:Landroid/app/Activity;

    .line 60
    goto :goto_1

    .line 62
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    .line 64
    :cond_1
    :goto_1
    return-void
.end method

.method public static applyPopAnimationsToPendingTransition(Landroid/app/Activity;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;

    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 76
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 77
    return-void

    .line 79
    :cond_0
    const/4 v1, -0x1

    const-string v2, "android-support-navigation:ActivityNavigator:popEnterAnim"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 80
    .local v2, "popEnterAnim":I
    const-string v3, "android-support-navigation:ActivityNavigator:popExitAnim"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 81
    .local v3, "popExitAnim":I
    if-ne v2, v1, :cond_1

    if-eq v3, v1, :cond_4

    .line 82
    :cond_1
    const/4 v4, 0x0

    if-eq v2, v1, :cond_2

    move v5, v2

    goto :goto_0

    :cond_2
    move v5, v4

    :goto_0
    move v2, v5

    .line 83
    if-eq v3, v1, :cond_3

    move v4, v3

    :cond_3
    move v3, v4

    .line 84
    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 86
    :cond_4
    return-void
.end method


# virtual methods
.method public createDestination()Landroidx/navigation/ActivityNavigator$Destination;
    .locals 1

    .line 96
    new-instance v0, Landroidx/navigation/ActivityNavigator$Destination;

    invoke-direct {v0, p0}, Landroidx/navigation/ActivityNavigator$Destination;-><init>(Landroidx/navigation/Navigator;)V

    return-object v0
.end method

.method public bridge synthetic createDestination()Landroidx/navigation/NavDestination;
    .locals 1

    .line 41
    invoke-virtual {p0}, Landroidx/navigation/ActivityNavigator;->createDestination()Landroidx/navigation/ActivityNavigator$Destination;

    move-result-object v0

    return-object v0
.end method

.method final getContext()Landroid/content/Context;
    .locals 1

    .line 90
    iget-object v0, p0, Landroidx/navigation/ActivityNavigator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public navigate(Landroidx/navigation/ActivityNavigator$Destination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Landroidx/navigation/NavDestination;
    .locals 9
    .param p1, "destination"    # Landroidx/navigation/ActivityNavigator$Destination;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "navOptions"    # Landroidx/navigation/NavOptions;
    .param p4, "navigatorExtras"    # Landroidx/navigation/Navigator$Extras;

    .line 112
    invoke-virtual {p1}, Landroidx/navigation/ActivityNavigator$Destination;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 116
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroidx/navigation/ActivityNavigator$Destination;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 117
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_2

    .line 118
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 119
    invoke-virtual {p1}, Landroidx/navigation/ActivityNavigator$Destination;->getDataPattern()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "dataPattern":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 122
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 123
    .local v2, "data":Ljava/lang/StringBuffer;
    const-string v3, "\\{(.+?)\\}"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 124
    .local v3, "fillInPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 125
    .local v4, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 126
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 127
    .local v5, "argName":Ljava/lang/String;
    invoke-virtual {p2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 128
    const-string v6, ""

    invoke-virtual {v4, v2, v6}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    .line 130
    invoke-virtual {p2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    .end local v5    # "argName":Ljava/lang/String;
    goto :goto_0

    .line 132
    .restart local v5    # "argName":Ljava/lang/String;
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not find "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " to fill data pattern "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 136
    .end local v5    # "argName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 137
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 140
    .end local v1    # "dataPattern":Ljava/lang/String;
    .end local v2    # "data":Ljava/lang/StringBuffer;
    .end local v3    # "fillInPattern":Ljava/util/regex/Pattern;
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    :cond_2
    instance-of v1, p4, Landroidx/navigation/ActivityNavigator$Extras;

    if-eqz v1, :cond_3

    .line 141
    move-object v1, p4

    check-cast v1, Landroidx/navigation/ActivityNavigator$Extras;

    .line 142
    .local v1, "extras":Landroidx/navigation/ActivityNavigator$Extras;
    invoke-virtual {v1}, Landroidx/navigation/ActivityNavigator$Extras;->getFlags()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 144
    .end local v1    # "extras":Landroidx/navigation/ActivityNavigator$Extras;
    :cond_3
    iget-object v1, p0, Landroidx/navigation/ActivityNavigator;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_4

    .line 146
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 148
    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Landroidx/navigation/NavOptions;->shouldLaunchSingleTop()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 149
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 151
    :cond_5
    iget-object v1, p0, Landroidx/navigation/ActivityNavigator;->mHostActivity:Landroid/app/Activity;

    const-string v2, "android-support-navigation:ActivityNavigator:current"

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    .line 152
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 153
    .local v1, "hostIntent":Landroid/content/Intent;
    if-eqz v1, :cond_6

    .line 154
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 155
    .local v4, "hostCurrentId":I
    if-eqz v4, :cond_6

    .line 156
    const-string v5, "android-support-navigation:ActivityNavigator:source"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    .end local v1    # "hostIntent":Landroid/content/Intent;
    .end local v4    # "hostCurrentId":I
    :cond_6
    invoke-virtual {p1}, Landroidx/navigation/ActivityNavigator$Destination;->getId()I

    move-result v1

    .line 161
    .local v1, "destId":I
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    if-eqz p3, :cond_7

    .line 164
    invoke-virtual {p3}, Landroidx/navigation/NavOptions;->getPopEnterAnim()I

    move-result v2

    const-string v4, "android-support-navigation:ActivityNavigator:popEnterAnim"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    invoke-virtual {p3}, Landroidx/navigation/NavOptions;->getPopExitAnim()I

    move-result v2

    const-string v4, "android-support-navigation:ActivityNavigator:popExitAnim"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 167
    :cond_7
    instance-of v2, p4, Landroidx/navigation/ActivityNavigator$Extras;

    if-eqz v2, :cond_9

    .line 168
    move-object v2, p4

    check-cast v2, Landroidx/navigation/ActivityNavigator$Extras;

    .line 169
    .local v2, "extras":Landroidx/navigation/ActivityNavigator$Extras;
    invoke-virtual {v2}, Landroidx/navigation/ActivityNavigator$Extras;->getActivityOptions()Landroid/support/v4/app/ActivityOptionsCompat;

    move-result-object v4

    .line 170
    .local v4, "activityOptions":Landroid/support/v4/app/ActivityOptionsCompat;
    if-eqz v4, :cond_8

    .line 171
    iget-object v5, p0, Landroidx/navigation/ActivityNavigator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/support/v4/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v5, v0, v6}, Landroid/support/v4/app/ActivityCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_1

    .line 173
    :cond_8
    iget-object v5, p0, Landroidx/navigation/ActivityNavigator;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 175
    .end local v2    # "extras":Landroidx/navigation/ActivityNavigator$Extras;
    .end local v4    # "activityOptions":Landroid/support/v4/app/ActivityOptionsCompat;
    :goto_1
    goto :goto_2

    .line 176
    :cond_9
    iget-object v2, p0, Landroidx/navigation/ActivityNavigator;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 178
    :goto_2
    if-eqz p3, :cond_d

    iget-object v2, p0, Landroidx/navigation/ActivityNavigator;->mHostActivity:Landroid/app/Activity;

    if-eqz v2, :cond_d

    .line 179
    invoke-virtual {p3}, Landroidx/navigation/NavOptions;->getEnterAnim()I

    move-result v2

    .line 180
    .local v2, "enterAnim":I
    invoke-virtual {p3}, Landroidx/navigation/NavOptions;->getExitAnim()I

    move-result v4

    .line 181
    .local v4, "exitAnim":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_a

    if-eq v4, v5, :cond_d

    .line 182
    :cond_a
    if-eq v2, v5, :cond_b

    move v6, v2

    goto :goto_3

    :cond_b
    move v6, v3

    :goto_3
    move v2, v6

    .line 183
    if-eq v4, v5, :cond_c

    move v3, v4

    .line 184
    .end local v4    # "exitAnim":I
    .local v3, "exitAnim":I
    :cond_c
    iget-object v4, p0, Landroidx/navigation/ActivityNavigator;->mHostActivity:Landroid/app/Activity;

    invoke-virtual {v4, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 190
    .end local v2    # "enterAnim":I
    .end local v3    # "exitAnim":I
    :cond_d
    const/4 v2, 0x0

    return-object v2

    .line 113
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "destId":I
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destination "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/navigation/ActivityNavigator$Destination;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not have an Intent set."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Landroidx/navigation/NavDestination;
    .locals 0

    .line 41
    check-cast p1, Landroidx/navigation/ActivityNavigator$Destination;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/navigation/ActivityNavigator;->navigate(Landroidx/navigation/ActivityNavigator$Destination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Landroidx/navigation/NavDestination;

    move-result-object p1

    return-object p1
.end method

.method public popBackStack()Z
    .locals 1

    .line 101
    iget-object v0, p0, Landroidx/navigation/ActivityNavigator;->mHostActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 103
    const/4 v0, 0x1

    return v0

    .line 105
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
