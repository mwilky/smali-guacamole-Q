.class interface abstract Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Lcom/android/internal/app/ResolverActivity$TargetInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ChooserTargetInfo"
.end annotation


# virtual methods
.method public abstract getChooserTarget()Landroid/service/chooser/ChooserTarget;
.end method

.method public abstract getModifiedScore()F
.end method

.method public isSimilar(Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->getChooserTarget()Landroid/service/chooser/ChooserTarget;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->getChooserTarget()Landroid/service/chooser/ChooserTarget;

    move-result-object v2

    if-eqz v1, :cond_3

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v0
.end method
