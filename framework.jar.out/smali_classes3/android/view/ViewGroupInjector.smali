.class public Landroid/view/ViewGroupInjector;
.super Ljava/lang/Object;
.source "ViewGroupInjector.java"


# instance fields
.field private LONGSHOT_DEBUG:Z

.field private LONGSHOT_TAG:Ljava/lang/String;

.field private mLastItemTop:I

.field private mLastListItem:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Longshot.ViewGroup"

    iput-object v0, p0, Landroid/view/ViewGroupInjector;->LONGSHOT_TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/oneplus/injector/OpViewInjector$View;->isInjection:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/view/ViewGroupInjector;->LONGSHOT_DEBUG:Z

    iput v1, p0, Landroid/view/ViewGroupInjector;->mLastItemTop:I

    return-void
.end method


# virtual methods
.method protected onScrollChanged(Landroid/view/ViewGroup;IIIILcom/oneplus/longshot/LongshotUtil;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/ViewGroup;->onScrollChanged(IIII)V

    if-eqz p6, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isGeneralScrollView()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p6}, Landroid/view/ViewGroupInjector;->onScrolled(Landroid/view/ViewGroup;Lcom/oneplus/longshot/LongshotUtil;)V

    :cond_1
    return-void
.end method

.method public onScrolled(Landroid/view/ViewGroup;Lcom/oneplus/longshot/LongshotUtil;)V
    .locals 7

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroupInjector;->mLastListItem:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Landroid/view/ViewGroupInjector;->mLastListItem:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x1

    aget v2, v1, v2

    sub-int v2, v0, v2

    iget v3, p0, Landroid/view/ViewGroupInjector;->mLastItemTop:I

    sub-int/2addr v3, v2

    iget-boolean v4, p0, Landroid/view/ViewGroupInjector;->LONGSHOT_DEBUG:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/view/ViewGroupInjector;->LONGSHOT_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onScrolled swipe:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mLastItemTop:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/view/ViewGroupInjector;->mLastItemTop:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " top:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v4, p0, Landroid/view/ViewGroupInjector;->mLastItemTop:I

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v2, v5, v4}, Landroid/view/ViewGroup;->onScrollChangedForLongshot(IIII)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroupInjector;->updateLastTop(I)V

    :cond_1
    return-void
.end method

.method public updateLastItem(Landroid/view/ViewGroup;Lcom/oneplus/longshot/LongshotUtil;)V
    .locals 5

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput-object v1, p0, Landroid/view/ViewGroupInjector;->mLastListItem:Landroid/view/View;

    const/4 v3, 0x2

    new-array v3, v3, [I

    iget-object v4, p0, Landroid/view/ViewGroupInjector;->mLastListItem:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v4, 0x1

    aget v4, v3, v4

    sub-int v4, v2, v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroupInjector;->updateLastTop(I)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public updateLastTop(I)V
    .locals 3

    iget-boolean v0, p0, Landroid/view/ViewGroupInjector;->LONGSHOT_DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewGroupInjector;->LONGSHOT_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLastTop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/view/ViewGroupInjector;->mLastItemTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Landroid/view/ViewGroupInjector;->mLastItemTop:I

    return-void
.end method
