.class Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;
.super Ljava/lang/Object;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentPreviewCoordinator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;
    }
.end annotation


# static fields
.field private static final IMAGE_FADE_IN_MILLIS:I = 0x96

.field private static final IMAGE_LOAD_INTO_VIEW:I = 0x2

.field private static final IMAGE_LOAD_TIMEOUT:I = 0x1


# instance fields
.field private mAtLeastOneLoaded:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHideParentOnFail:Z

.field private final mImageLoadTimeoutMillis:I

.field private final mParentView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;Z)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v0, 0x10e0000

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mImageLoadTimeoutMillis:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mAtLeastOneLoaded:Z

    new-instance p1, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;

    invoke-direct {p1, p0}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;-><init>(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;)V

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mParentView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mHideParentOnFail:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->maybeHideContentPreview()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->loadUriIntoView(ILandroid/net/Uri;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->cancelLoads()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mAtLeastOneLoaded:Z

    return p1
.end method

.method private cancelLoads()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private collapseParentView()V
    .locals 7

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private loadUriIntoView(ILandroid/net/Uri;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mImageLoadTimeoutMillis:I

    int-to-long v1, v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/internal/app/-$$Lambda$ChooserActivity$ContentPreviewCoordinator$4EA4-6wC7DBv77gLolqI2-lsDQI;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/internal/app/-$$Lambda$ChooserActivity$ContentPreviewCoordinator$4EA4-6wC7DBv77gLolqI2-lsDQI;-><init>(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;Landroid/net/Uri;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private maybeHideContentPreview()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mAtLeastOneLoaded:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mHideParentOnFail:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hiding image preview area. Timed out waiting for preview to load within "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mImageLoadTimeoutMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChooserActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->collapseParentView()V

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->access$300(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->access$300(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->hideContentPreview()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mHideParentOnFail:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public synthetic lambda$loadUriIntoView$0$ChooserActivity$ContentPreviewCoordinator(Landroid/net/Uri;II)V
    .locals 9

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    new-instance v1, Landroid/util/Size;

    const/16 v2, 0xc8

    invoke-direct {v1, v2, v2}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/app/ChooserActivity;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v2, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;

    move-object v3, v2

    move-object v4, p0

    move v5, p2

    move-object v6, p1

    move v7, p3

    move-object v8, v0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;-><init>(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;ILandroid/graphics/Bitmap;)V

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
