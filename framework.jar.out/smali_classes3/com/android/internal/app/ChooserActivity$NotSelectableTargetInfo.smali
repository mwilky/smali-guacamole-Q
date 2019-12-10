.class abstract Lcom/android/internal/app/ChooserActivity$NotSelectableTargetInfo;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "NotSelectableTargetInfo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$NotSelectableTargetInfo;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cloneFilledIn(Landroid/content/Intent;I)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllSourceIntents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getChooserTarget()Landroid/service/chooser/ChooserTarget;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayLabel()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtendedInfo()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getModifiedScore()F
    .locals 1

    const v0, -0x42333333    # -0.1f

    return v0
.end method

.method public getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getResolvedComponentName()Landroid/content/ComponentName;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getResolvedIntent()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isSuspended()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public start(Landroid/app/Activity;Landroid/os/Bundle;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public startAsCaller(Lcom/android/internal/app/ResolverActivity;Landroid/os/Bundle;I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
