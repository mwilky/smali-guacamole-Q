.class public Lcom/oneplus/longshot/LongshotUtil;
.super Ljava/lang/Object;
.source "LongshotUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/longshot/LongshotUtil$LongshotUtilCallback;
    }
.end annotation


# static fields
.field private static final MSG_SEARCH_COMPLETE:I = 0x3e8

.field static TAG:Ljava/lang/String;


# instance fields
.field private DEBUG:Z

.field private mCallback:Lcom/oneplus/longshot/LongshotUtil$LongshotUtilCallback;

.field private mContext:Landroid/content/Context;

.field private mDecordView:Landroid/view/ViewGroup;

.field private mLastPosition:I

.field private mLongshotScope:I

.field private mLongshotScopeBottom:I

.field private mLongshotScopeTop:I

.field private mMainScrollView:Landroid/view/View;

.field private mMainScrollViewlayer:I

.field private mScrollContainerType:I

.field private mWindowLayer:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "LongshotUtil"

    sput-object v0, Lcom/oneplus/longshot/LongshotUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/longshot/LongshotUtil;->DEBUG:Z

    iput v0, p0, Lcom/oneplus/longshot/LongshotUtil;->mMainScrollViewlayer:I

    iput v0, p0, Lcom/oneplus/longshot/LongshotUtil;->mScrollContainerType:I

    iput v0, p0, Lcom/oneplus/longshot/LongshotUtil;->mWindowLayer:I

    iput-object p2, p0, Lcom/oneplus/longshot/LongshotUtil;->mDecordView:Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/oneplus/longshot/LongshotUtil;->mContext:Landroid/content/Context;

    const/16 v0, 0x384

    const/16 v1, 0x2d0

    const/16 v2, 0x67c

    invoke-virtual {p0, v0, v1, v2}, Lcom/oneplus/longshot/LongshotUtil;->setLongshotScope(III)V

    return-void
.end method

.method private isInScrollScope(Landroid/view/View;)Z
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x1

    aget v2, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v2

    iget v4, p0, Lcom/oneplus/longshot/LongshotUtil;->mLongshotScopeTop:I

    if-ge v2, v4, :cond_0

    iget v4, p0, Lcom/oneplus/longshot/LongshotUtil;->mLongshotScopeBottom:I

    if-le v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isOverScroll()Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/longshot/LongshotUtil;->mMainScrollView:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    :cond_0
    return v1
.end method

.method private printViewState(Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x2

    new-array v3, v3, [I

    invoke-virtual {p0, p1}, Lcom/oneplus/longshot/LongshotUtil;->getScrollViewType(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v4, 0x1

    aget v0, v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int v1, v0, v4

    :cond_0
    iget-boolean v3, p0, Lcom/oneplus/longshot/LongshotUtil;->DEBUG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/oneplus/longshot/LongshotUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "end searchMainScrollView mScrollContainerType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " cotainerTop:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " cotainerBottom:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private searchMainScrollView(Landroid/view/ViewGroup;)Z
    .locals 13

    iget-boolean v0, p0, Lcom/oneplus/longshot/LongshotUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/longshot/LongshotUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start searchMainScrollView:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    const/4 v4, 0x0

    if-nez v3, :cond_a

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_8

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_7

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    instance-of v9, v9, Landroid/view/ViewGroup;

    if-eqz v9, :cond_6

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v10

    if-nez v10, :cond_4

    iget v10, p0, Lcom/oneplus/longshot/LongshotUtil;->mMainScrollViewlayer:I

    if-ge v0, v10, :cond_2

    if-nez v10, :cond_4

    :cond_2
    invoke-direct {p0, v6}, Lcom/oneplus/longshot/LongshotUtil;->isInScrollScope(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_3

    iput v0, p0, Lcom/oneplus/longshot/LongshotUtil;->mMainScrollViewlayer:I

    iput-object v9, p0, Lcom/oneplus/longshot/LongshotUtil;->mMainScrollView:Landroid/view/View;

    :cond_3
    invoke-direct {p0, v9}, Lcom/oneplus/longshot/LongshotUtil;->printViewState(Landroid/view/View;)V

    :cond_4
    invoke-virtual {v9}, Landroid/view/ViewGroup;->isScrollContainer()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v10

    if-nez v10, :cond_5

    iget-boolean v10, p0, Lcom/oneplus/longshot/LongshotUtil;->DEBUG:Z

    if-eqz v10, :cond_5

    sget-object v10, Lcom/oneplus/longshot/LongshotUtil;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "is scrollcontainer:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->isScrollContainer()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_3

    :cond_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    iget-boolean v4, p0, Lcom/oneplus/longshot/LongshotUtil;->DEBUG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/oneplus/longshot/LongshotUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " search level:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/oneplus/longshot/LongshotUtil;->mMainScrollView:Landroid/view/View;

    const/4 v8, 0x1

    if-eqz v7, :cond_b

    const/4 v9, 0x2

    new-array v9, v9, [I

    invoke-virtual {p0, v7}, Lcom/oneplus/longshot/LongshotUtil;->getScrollViewType(Landroid/view/View;)I

    move-result v7

    iput v7, p0, Lcom/oneplus/longshot/LongshotUtil;->mScrollContainerType:I

    iget-object v7, p0, Lcom/oneplus/longshot/LongshotUtil;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->getLocationInWindow([I)V

    aget v5, v9, v8

    iget-object v7, p0, Lcom/oneplus/longshot/LongshotUtil;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int v6, v5, v7

    iget-object v7, p0, Lcom/oneplus/longshot/LongshotUtil;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {p0, v5, v7, v6}, Lcom/oneplus/longshot/LongshotUtil;->setLongshotScope(III)V

    :cond_b
    iget-object v7, p0, Lcom/oneplus/longshot/LongshotUtil;->mMainScrollView:Landroid/view/View;

    invoke-direct {p0, v7}, Lcom/oneplus/longshot/LongshotUtil;->printViewState(Landroid/view/View;)V

    iget-object v7, p0, Lcom/oneplus/longshot/LongshotUtil;->mMainScrollView:Landroid/view/View;

    if-eqz v7, :cond_c

    move v4, v8

    :cond_c
    return v4
.end method

.method private searchScrollViewComplete()V
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/longshot/LongshotUtil;->setUtils()V

    sget-object v0, Lcom/oneplus/longshot/LongshotUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "searchScrollViewComplete:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/longshot/LongshotUtil;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mDecordView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/longshot/LongshotUtil;->mDecordView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/longshot/LongshotUtil;->mMainScrollView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/oneplus/longshot/LongshotUtil;->getScrollViewType(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setUtils()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/longshot/LongshotUtil;->mMainScrollView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/View;->setLongshotUtil(Lcom/oneplus/longshot/LongshotUtil;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getScrollViewType(Landroid/view/View;)I
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/widget/ScrollView;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    instance-of v1, p1, Landroid/webkit/WebView;

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    instance-of v1, p1, Landroid/widget/GridView;

    if-eqz v1, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/oneplus/longshot/LongshotUtil;->isRecyclerView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x4

    :cond_4
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_6

    iget-boolean v2, p0, Lcom/oneplus/longshot/LongshotUtil;->DEBUG:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/oneplus/longshot/LongshotUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMainScrollView tree:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    :cond_6
    return v0
.end method

.method public isRecyclerView(Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    instance-of v1, p1, Landroid/widget/AbsListView;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    instance-of v1, p1, Lcom/android/internal/widget/RecyclerView;

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.support.v7.widget.RecyclerView"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_4
    :goto_1
    return v0
.end method

.method public longshotStart()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/longshot/LongshotUtil;->mDecordView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/longshot/LongshotUtil;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oneplus/longshot/LongshotUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canScroll:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/longshot/LongshotUtil;->mMainScrollView:Landroid/view/View;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/longshot/LongshotUtil;->mDecordView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/oneplus/longshot/LongshotUtil;->searchMainScrollView(Landroid/view/ViewGroup;)Z

    invoke-direct {p0}, Lcom/oneplus/longshot/LongshotUtil;->searchScrollViewComplete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public longshotStop()V
    .locals 3

    sget-object v0, Lcom/oneplus/longshot/LongshotUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "longshotStop mMainScrollView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/longshot/LongshotUtil;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mDecordView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/longshot/LongshotUtil;->mDecordView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/longshot/LongshotUtil;->mMainScrollView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongshotUtil(Lcom/oneplus/longshot/LongshotUtil;)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/longshot/LongshotUtil;->mDecordView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLongshotUtil(Lcom/oneplus/longshot/LongshotUtil;)V

    :cond_1
    return-void
.end method

.method public onScrollChanged(Landroid/content/Context;IIII)V
    .locals 4

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_LONGSCREENSHOT:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/longshot/IOpLongScreenshotManager;

    iget-boolean v1, p0, Lcom/oneplus/longshot/LongshotUtil;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/oneplus/longshot/LongshotUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onScrollChanged t:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " oldt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/oneplus/longshot/IOpLongScreenshotManager;->isLongshotMoveState()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/oneplus/longshot/IOpLongScreenshotManager;->notifyLongshotScrollChanged(IIII)V

    :cond_1
    return-void
.end method

.method public registerLongshotUtilCallback(Lcom/oneplus/longshot/LongshotUtil$LongshotUtilCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/longshot/LongshotUtil;->mCallback:Lcom/oneplus/longshot/LongshotUtil$LongshotUtilCallback;

    return-void
.end method

.method public setLongshotScope(III)V
    .locals 0

    iput p1, p0, Lcom/oneplus/longshot/LongshotUtil;->mLongshotScopeTop:I

    iput p3, p0, Lcom/oneplus/longshot/LongshotUtil;->mLongshotScopeBottom:I

    iput p2, p0, Lcom/oneplus/longshot/LongshotUtil;->mLongshotScope:I

    return-void
.end method

.method public unRegisterLongshotUtilCallback(Lcom/oneplus/longshot/LongshotUtil$LongshotUtilCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/longshot/LongshotUtil;->mCallback:Lcom/oneplus/longshot/LongshotUtil$LongshotUtilCallback;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/longshot/LongshotUtil;->mCallback:Lcom/oneplus/longshot/LongshotUtil$LongshotUtilCallback;

    :cond_0
    return-void
.end method

.method public updateMainScrollView(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/longshot/LongshotUtil;->mMainScrollView:Landroid/view/View;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/oneplus/longshot/LongshotUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateMainScrollView:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/longshot/LongshotUtil;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/longshot/LongshotUtil;->mMainScrollView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/oneplus/longshot/LongshotUtil;->getScrollViewType(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    sget-object v1, Lcom/oneplus/longshot/LongshotUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change to:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/oneplus/longshot/LongshotUtil;->getScrollViewType(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oneplus/longshot/LongshotUtil;->mMainScrollView:Landroid/view/View;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setLongshotUtil(Lcom/oneplus/longshot/LongshotUtil;)V

    :cond_1
    iput-object p1, p0, Lcom/oneplus/longshot/LongshotUtil;->mMainScrollView:Landroid/view/View;

    iget-object v1, p0, Lcom/oneplus/longshot/LongshotUtil;->mMainScrollView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setLongshotUtil(Lcom/oneplus/longshot/LongshotUtil;)V

    :cond_2
    return-void
.end method
