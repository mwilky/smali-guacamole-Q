.class final Lcom/android/internal/app/ChooserActivity$PlaceHolderTargetInfo;
.super Lcom/android/internal/app/ChooserActivity$NotSelectableTargetInfo;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PlaceHolderTargetInfo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$PlaceHolderTargetInfo;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity$NotSelectableTargetInfo;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    return-void
.end method


# virtual methods
.method public getDisplayIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$PlaceHolderTargetInfo;->this$0:Lcom/android/internal/app/ChooserActivity;

    const v1, 0x1080258

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-object v0
.end method
