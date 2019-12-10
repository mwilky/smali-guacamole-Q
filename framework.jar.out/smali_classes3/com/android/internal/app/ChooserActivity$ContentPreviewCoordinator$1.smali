.class Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;
.super Landroid/os/Handler;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->access$100(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;)Landroid/view/View;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mImageResourceId:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;

    iget-object v4, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mBmp:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-static {v4, v1}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->access$202(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;Z)Z

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->setAlpha(F)V

    iget-object v1, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v1}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-array v1, v2, [F

    fill-array-data v1, :array_0

    const-string v2, "alpha"

    invoke-static {v3, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x96

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iget v2, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mExtraCount:I

    if-lez v2, :cond_5

    iget v2, v0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;->mExtraCount:I

    invoke-virtual {v3, v2}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->setExtraImageCount(I)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->removeMessages(I)V

    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->setVisibility(I)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;->this$1:Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->access$000(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;)V

    nop

    :cond_5
    :goto_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
