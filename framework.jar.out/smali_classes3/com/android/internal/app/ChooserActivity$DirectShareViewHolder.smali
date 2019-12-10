.class Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;
.super Lcom/android/internal/app/ChooserActivity$RowViewHolder;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DirectShareViewHolder"
.end annotation


# instance fields
.field private mCellCountPerRow:I

.field private final mCellVisibility:[Z

.field private mDirectShareCurrHeight:I

.field private mDirectShareMaxHeight:I

.field private mDirectShareMinHeight:I

.field private mHideDirectShareExpansion:Z

.field private final mParent:Landroid/view/ViewGroup;

.field private final mRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/ViewGroup;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/ViewGroup;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    mul-int/2addr v0, p4

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/ChooserActivity$RowViewHolder;-><init>(Lcom/android/internal/app/ChooserActivity;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mHideDirectShareExpansion:Z

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareMinHeight:I

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareCurrHeight:I

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareMaxHeight:I

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mParent:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mRows:Ljava/util/List;

    iput p4, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mCellCountPerRow:I

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    mul-int/2addr v0, p4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mCellVisibility:[Z

    return-void
.end method


# virtual methods
.method public addView(ILandroid/view/View;)Landroid/view/ViewGroup;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->getRowByIndex(I)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mCells:[Landroid/view/View;

    aput-object p2, v1, p1

    return-object v0
.end method

.method public getMeasuredRowHeight()I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareCurrHeight:I

    return v0
.end method

.method public getMinRowHeight()I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareMinHeight:I

    return v0
.end method

.method public getRow(I)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mRows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getRowByIndex(I)Landroid/view/ViewGroup;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mRows:Ljava/util/List;

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mCellCountPerRow:I

    div-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getViewGroup()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public handleScroll(Landroid/widget/AbsListView;III)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareCurrHeight:I

    iget v3, v0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareMinHeight:I

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    iget-boolean v3, v0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mHideDirectShareExpansion:Z

    if-eqz v3, :cond_1

    return-void

    :cond_1
    iget-object v3, v0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity;->access$800(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getSelectableServiceTargetCount()I

    move-result v3

    move/from16 v5, p4

    if-gt v3, v5, :cond_3

    iput-boolean v4, v0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mHideDirectShareExpansion:Z

    return-void

    :cond_2
    move/from16 v5, p4

    :cond_3
    sub-int v3, p3, p2

    int-to-float v3, v3

    const v4, 0x3f47ae14    # 0.78f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, v0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareCurrHeight:I

    add-int v6, v4, v3

    iget v7, v0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareMaxHeight:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v7, v0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareMinHeight:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int v3, v6, v4

    if-eqz v1, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v7

    if-eqz v7, :cond_9

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v9

    if-ge v8, v9, :cond_7

    invoke-virtual {v1, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v7, :cond_5

    invoke-virtual {v9, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    if-eqz v10, :cond_6

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/view/View;->measure(II)V

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    iput v13, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v12

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v13

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v14

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v15, v15, v16

    invoke-virtual {v9, v12, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    const/4 v7, 0x1

    :cond_6
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_7
    if-eqz v7, :cond_8

    iput v6, v0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareCurrHeight:I

    :cond_8
    return-void

    :cond_9
    :goto_3
    return-void
.end method

.method public measure()V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->getRow(I)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Landroid/view/ViewGroup;->measure(II)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->getRow(I)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Landroid/view/ViewGroup;->measure(II)V

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->getRow(I)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareMinHeight:I

    iget v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareCurrHeight:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareMinHeight:I

    :goto_0
    iput v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareCurrHeight:I

    iget v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareMinHeight:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mDirectShareMaxHeight:I

    return-void
.end method

.method public setViewVisibility(II)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mCellVisibility:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, p1

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->mCellVisibility:[Z

    aget-boolean v3, v2, p1

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    aput-boolean v3, v2, p1

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder$1;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder$1;-><init>(Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;Landroid/view/View;)V

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
