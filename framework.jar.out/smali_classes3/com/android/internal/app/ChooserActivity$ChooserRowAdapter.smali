.class Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChooserRowAdapter"
.end annotation


# static fields
.field private static final MAX_TARGETS_PER_ROW_LANDSCAPE:I = 0x8

.field private static final MAX_TARGETS_PER_ROW_PORTRAIT:I = 0x4

.field private static final NUM_EXPANSIONS_TO_HIDE_AZ_LABEL:I = 0x14

.field private static final VIEW_TYPE_AZ_LABEL:I = 0x4

.field private static final VIEW_TYPE_CONTENT_PREVIEW:I = 0x2

.field private static final VIEW_TYPE_DIRECT_SHARE:I = 0x0

.field private static final VIEW_TYPE_NORMAL:I = 0x1

.field private static final VIEW_TYPE_PROFILE:I = 0x3


# instance fields
.field private mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

.field private mChooserTargetWidth:I

.field private mDirectShareViewHolder:Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

.field private mHideContentPreview:Z

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLayoutRequested:Z

.field private mShowAzLabelIfPoss:Z

.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)V
    .locals 2

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserTargetWidth:I

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mHideContentPreview:Z

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mLayoutRequested:Z

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mShowAzLabelIfPoss:Z

    new-instance v0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;Lcom/android/internal/app/ChooserActivity;)V

    invoke-virtual {p2, v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getMaxTargetsPerRow()I

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    return-object v0
.end method

.method private createAzLabelView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090050

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private createContentPreviewView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 8

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/internal/app/ChooserActivity;->access$2900(Lcom/android/internal/app/ChooserActivity;Landroid/content/Intent;Landroid/content/ContentResolver;)I

    move-result v7

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v1

    new-instance v2, Landroid/metrics/LogMaker;

    const/16 v3, 0x674

    invoke-direct {v2, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    invoke-virtual {v2, v7}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object v5, p1

    check-cast v5, Landroid/view/ViewGroup;

    move v2, v7

    move-object v3, v0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lcom/android/internal/app/ChooserActivity;->access$3000(Lcom/android/internal/app/ChooserActivity;ILandroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v1

    return-object v1
.end method

.method private createProfileView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090055

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x108025b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const v2, 0x10203ca

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/ChooserActivity;->mProfileView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity;->mProfileView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    new-instance v3, Lcom/android/internal/app/-$$Lambda$KV7a09lZoRu37HsBE4cW2uLB7o8;

    invoke-direct {v3, v2}, Lcom/android/internal/app/-$$Lambda$KV7a09lZoRu37HsBE4cW2uLB7o8;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->bindProfileView()V

    return-object v0
.end method

.method private getMaxTargetsPerRow()I
    .locals 3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v1, v2}, Lcom/android/internal/app/ChooserActivity;->access$2800(Lcom/android/internal/app/ChooserActivity;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    :cond_0
    return v0
.end method

.method private loadViewsIntoRow(Lcom/android/internal/app/ChooserActivity$RowViewHolder;)Lcom/android/internal/app/ChooserActivity$RowViewHolder;
    .locals 12

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserTargetWidth:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->getColumnCount()I

    move-result v3

    instance-of v4, p1, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {p1, v5}, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->getRowByIndex(I)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    move v7, v5

    new-instance v8, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$2;

    invoke-direct {v8, p0, p1, v7}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$2;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;Lcom/android/internal/app/ChooserActivity$RowViewHolder;I)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;

    invoke-direct {v8, p0, p1, v7}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;Lcom/android/internal/app/ChooserActivity$RowViewHolder;I)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p1, v5, v6}, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->addView(ILandroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v8

    if-eqz v4, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/app/ResolverActivity$ViewHolder;

    iget-object v10, v9, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text:Landroid/widget/TextView;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setLines(I)V

    iget-object v10, v9, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    iget-object v10, v9, Lcom/android/internal/app/ResolverActivity$ViewHolder;->text2:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    invoke-virtual {v6, v2, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-direct {p0, v6, v9, v10}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->setViewBounds(Landroid/view/View;II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->measure()V

    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->getMeasuredRowHeight()I

    move-result v6

    const/4 v7, -0x1

    invoke-direct {p0, v5, v7, v6}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->setViewBounds(Landroid/view/View;II)V

    if-eqz v4, :cond_2

    move-object v6, p1

    check-cast v6, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    invoke-virtual {v6, v0}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->getRow(I)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->getMinRowHeight()I

    move-result v8

    invoke-direct {p0, v0, v7, v8}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->setViewBounds(Landroid/view/View;II)V

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->getRow(I)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->getMinRowHeight()I

    move-result v8

    invoke-direct {p0, v0, v7, v8}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->setViewBounds(Landroid/view/View;II)V

    :cond_2
    invoke-virtual {v5, p1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    return-object p1
.end method

.method private setViewBounds(Landroid/view/View;II)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, p2, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method bindViewHolder(ILcom/android/internal/app/ChooserActivity$RowViewHolder;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getFirstRowPosition(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getRowType(I)I

    move-result v4

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v0, v5}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getFirstRowPosition(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getRowType(I)I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v1, :cond_0

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_0
    if-ne v4, v5, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getContentPreviewRowCount()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getProfileRowCount()I

    move-result v9

    add-int/2addr v8, v9

    if-ne v1, v8, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v8, v0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v8}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x108025b

    invoke-virtual {v8, v9, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->getColumnCount()I

    move-result v7

    add-int v8, v3, v7

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    :goto_2
    invoke-virtual {v0, v8}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getRowType(I)I

    move-result v10

    if-eq v10, v4, :cond_3

    if-lt v8, v3, :cond_3

    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    if-ne v8, v3, :cond_5

    iget-object v11, v0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v11, v3}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v11

    instance-of v11, v11, Lcom/android/internal/app/ChooserActivity$EmptyTargetInfo;

    if-eqz v11, :cond_5

    const v11, 0x1020207

    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getVisibility()I

    move-result v12

    if-eqz v12, :cond_4

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setVisibility(I)V

    const v13, 0x1040128

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(I)V

    const/4 v13, 0x2

    new-array v14, v13, [F

    fill-array-data v14, :array_0

    const-string v15, "alpha"

    invoke-static {v11, v15, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    new-instance v15, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v15, v13}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v14, v15}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v15, v0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v15}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v13, 0x1050092

    invoke-virtual {v15, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setTranslationY(F)V

    new-array v15, v9, [F

    aput v12, v15, v10

    const-string/jumbo v12, "translationY"

    invoke-static {v11, v12, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    new-instance v15, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v15, v9}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v12, v15}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v16, v11

    const-wide/16 v10, 0xc8

    invoke-virtual {v9, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v9, v10, v11}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const/4 v10, 0x2

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v14, v10, v11

    const/4 v11, 0x1

    aput-object v12, v10, v11

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_3

    :cond_4
    move-object/from16 v16, v11

    :cond_5
    :goto_3
    const/4 v9, 0x0

    :goto_4
    if-ge v9, v7, :cond_7

    invoke-virtual {v2, v9}, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->getView(I)Landroid/view/View;

    move-result-object v10

    add-int v11, v3, v9

    if-gt v11, v8, :cond_6

    const/4 v11, 0x0

    invoke-virtual {v2, v9, v11}, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->setViewVisibility(II)V

    add-int v12, v3, v9

    invoke-virtual {v2, v9, v12}, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->setItemIndex(II)V

    iget-object v12, v0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v2, v9}, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->getItemIndex(I)I

    move-result v13

    invoke-virtual {v12, v13, v10}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->bindView(ILandroid/view/View;)V

    goto :goto_5

    :cond_6
    const/4 v11, 0x0

    const/4 v12, 0x4

    invoke-virtual {v2, v9, v12}, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->setViewVisibility(II)V

    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_7
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public calculateChooserTargetWidth(I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getMaxTargetsPerRow()I

    move-result v1

    div-int v1, p1, v1

    iget v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserTargetWidth:I

    if-eq v1, v2, :cond_1

    iput v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserTargetWidth:I

    const/4 v0, 0x1

    return v0

    :cond_1
    return v0
.end method

.method public consumeLayoutRequest()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mLayoutRequested:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mLayoutRequested:Z

    return v0
.end method

.method createViewHolder(ILandroid/view/ViewGroup;)Lcom/android/internal/app/ChooserActivity$RowViewHolder;
    .locals 7

    const v0, 0x1090056

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x1090057

    invoke-virtual {v2, v3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v4, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/view/ViewGroup;

    aput-object v3, v6, v1

    const/4 v1, 0x1

    aput-object v0, v6, v1

    invoke-static {v6}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getMaxTargetsPerRow()I

    move-result v6

    invoke-direct {v4, v5, v2, v1, v6}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/ViewGroup;Ljava/util/List;I)V

    iput-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mDirectShareViewHolder:Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mDirectShareViewHolder:Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    invoke-direct {p0, v1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->loadViewsIntoRow(Lcom/android/internal/app/ChooserActivity$RowViewHolder;)Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mDirectShareViewHolder:Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getMaxTargetsPerRow()I

    move-result v3

    invoke-direct {v1, v2, v0, v3}, Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/ViewGroup;I)V

    invoke-direct {p0, v1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->loadViewsIntoRow(Lcom/android/internal/app/ChooserActivity$RowViewHolder;)Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    return-object v1
.end method

.method public getAzLabelRowCount()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mShowAzLabelIfPoss:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getAlphaTargetCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCallerAndRankedTargetRowCount()I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getRankedTargetCount()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getMaxTargetsPerRow()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getContentPreviewRowCount()I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->access$2400(Lcom/android/internal/app/ChooserActivity;Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mHideContentPreview:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getCount()I
    .locals 4

    nop

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getContentPreviewRowCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getProfileRowCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getServiceTargetRowCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getCallerAndRankedTargetRowCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getAzLabelRowCount()I

    move-result v1

    add-int/2addr v0, v1

    int-to-double v0, v0

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getAlphaTargetCount()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getMaxTargetsPerRow()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method getFirstRowPosition(I)I
    .locals 7

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getContentPreviewRowCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getProfileRowCount()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v0

    int-to-float v1, v0

    const/high16 v2, 0x41000000    # 8.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    if-ge p1, v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getMaxTargetsPerRow()I

    move-result v2

    mul-int/2addr v2, p1

    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getRankedTargetCount()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getCallerAndRankedTargetRowCount()I

    move-result v3

    add-int v4, v3, v1

    if-ge p1, v4, :cond_1

    sub-int v4, p1, v1

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getMaxTargetsPerRow()I

    move-result v5

    mul-int/2addr v4, v5

    add-int/2addr v4, v0

    return v4

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getAzLabelRowCount()I

    move-result v4

    sub-int/2addr p1, v4

    add-int v4, v2, v0

    sub-int v5, p1, v3

    sub-int/2addr v5, v1

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getMaxTargetsPerRow()I

    move-result v6

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    return v4
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getContentPreviewRowCount()I

    move-result v0

    move v1, v0

    if-lez v1, :cond_0

    if-ge p1, v0, :cond_0

    const/4 v2, 0x2

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getProfileRowCount()I

    move-result v2

    move v1, v2

    add-int/2addr v0, v2

    if-lez v1, :cond_1

    if-ge p1, v0, :cond_1

    const/4 v2, 0x3

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getServiceTargetRowCount()I

    move-result v2

    move v1, v2

    add-int/2addr v0, v2

    if-lez v1, :cond_2

    if-ge p1, v0, :cond_2

    const/4 v2, 0x0

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getCallerAndRankedTargetRowCount()I

    move-result v2

    move v1, v2

    add-int/2addr v0, v2

    const/4 v2, 0x1

    if-lez v1, :cond_3

    if-ge p1, v0, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getAzLabelRowCount()I

    move-result v3

    move v1, v3

    add-int/2addr v0, v3

    if-lez v1, :cond_4

    if-ge p1, v0, :cond_4

    const/4 v2, 0x4

    return v2

    :cond_4
    return v2
.end method

.method public getProfileRowCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method getRowType(I)I
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getPositionTargetType(I)I

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getAzLabelRowCount()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public getServiceTargetRowCount()I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->access$2400(Lcom/android/internal/app/ChooserActivity;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->createContentPreviewView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p2, p3}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->createProfileView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p3}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->createAzLabelView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1

    :cond_2
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    goto :goto_1

    :cond_4
    :goto_0
    invoke-virtual {p0, v0, p3}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->createViewHolder(ILandroid/view/ViewGroup;)Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    move-result-object v1

    :goto_1
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->bindViewHolder(ILcom/android/internal/app/ChooserActivity$RowViewHolder;)V

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v2

    return-object v2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public handleScroll(Landroid/view/View;II)V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->access$3200(Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)I

    move-result v1

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getMaxTargetsPerRow()I

    move-result v2

    const/4 v3, 0x1

    if-le v1, v2, :cond_0

    if-ne v0, v3, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->isInMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v1, v3

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mDirectShareViewHolder:Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v3, v3, Lcom/android/internal/app/ChooserActivity;->mAdapterView:Landroid/widget/AbsListView;

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getMaxTargetsPerRow()I

    move-result v4

    invoke-virtual {v2, v3, p2, p3, v4}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->handleScroll(Landroid/widget/AbsListView;III)V

    :cond_1
    return-void
.end method

.method public hideContentPreview()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mHideContentPreview:Z

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mLayoutRequested:Z

    invoke-static {}, Lcom/android/internal/app/ChooserActivity;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ChooserActivity"

    const-string v1, "hideContentPreview notifyDataSetChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public isEnabled(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method
