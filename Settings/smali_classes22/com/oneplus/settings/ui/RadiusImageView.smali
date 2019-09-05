.class public Lcom/oneplus/settings/ui/RadiusImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "RadiusImageView.java"


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mPathPaint:Landroid/graphics/Paint;

.field private mRadius:F

.field private mShape:Landroid/graphics/drawable/shapes/Shape;

.field private mShapeBitmap:Landroid/graphics/Bitmap;

.field private mShapeChanged:Z

.field private mStrokeBitmap:Landroid/graphics/Bitmap;

.field private mStrokeColor:I

.field private mStrokePaint:Landroid/graphics/Paint;

.field private mStrokeShape:Landroid/graphics/drawable/shapes/Shape;

.field private mStrokeWidth:F

.field private mXfermodeIn:Landroid/graphics/PorterDuffXfermode;

.field private mXfermodeOut:Landroid/graphics/PorterDuffXfermode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/ui/RadiusImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/settings/ui/RadiusImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mRadius:F

    const/high16 v1, 0x26000000

    iput v1, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mStrokeColor:I

    iput v0, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mStrokeWidth:F

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mXfermodeIn:Landroid/graphics/PorterDuffXfermode;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mXfermodeOut:Landroid/graphics/PorterDuffXfermode;

    invoke-direct {p0, p2}, Lcom/oneplus/settings/ui/RadiusImageView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/ui/RadiusImageView;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/RadiusImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/settings/R$styleable;->RadiusImageView:[I

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mRadius:F

    invoke-virtual {v2, v0, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mStrokeWidth:F

    iget v0, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mStrokeColor:I

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mStrokeColor:I

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mXfermodeIn:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mStrokePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mPathPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mPathPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mXfermodeOut:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mPath:Landroid/graphics/Path;

    return-void
.end method

.method private makeShapeBitmap()V
    .locals 5

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/RadiusImageView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/RadiusImageView;->getMeasuredHeight()I

    move-result v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mShapeBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2}, Lcom/oneplus/settings/ui/RadiusImageView;->releaseBitmap(Landroid/graphics/Bitmap;)V

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mShapeBitmap:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mShapeBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mShape:Landroid/graphics/drawable/shapes/Shape;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/drawable/shapes/Shape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private makeStrokeBitmap()V
    .locals 8

    iget v0, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mStrokeWidth:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/RadiusImageView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/RadiusImageView;->getMeasuredHeight()I

    move-result v2

    if-eqz v0, :cond_2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mStrokeBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v3}, Lcom/oneplus/settings/ui/RadiusImageView;->releaseBitmap(Landroid/graphics/Bitmap;)V

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mStrokeBitmap:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mStrokeBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    iget v5, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mStrokeColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v5, Landroid/graphics/RectF;

    int-to-float v6, v0

    int-to-float v7, v2

    invoke-direct {v5, v1, v1, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private releaseBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mShapeBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/ui/RadiusImageView;->releaseBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mStrokeBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/ui/RadiusImageView;->releaseBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mStrokeWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mStrokeShape:Landroid/graphics/drawable/shapes/Shape;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mStrokeBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/ui/RadiusImageView;->makeStrokeBitmap()V

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/RadiusImageView;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/RadiusImageView;->getMeasuredHeight()I

    move-result v0

    int-to-float v6, v0

    const/4 v7, 0x0

    const/16 v8, 0x1f

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mStrokePaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v2, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mStrokeBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget v2, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mStrokeWidth:F

    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mStrokePaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mXfermodeIn:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v2, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mStrokeShape:Landroid/graphics/drawable/shapes/Shape;

    iget-object v3, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p1, v3}, Landroid/graphics/drawable/shapes/Shape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mShapeBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/oneplus/settings/ui/RadiusImageView;->makeShapeBitmap()V

    :cond_4
    iget-object v0, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mShapeBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/AppCompatImageView;->onLayout(ZIIII)V

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mShapeChanged:Z

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mShapeChanged:Z

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/RadiusImageView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/RadiusImageView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mShape:Landroid/graphics/drawable/shapes/Shape;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mRadius:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    :cond_1
    const/16 v2, 0x8

    new-array v2, v2, [F

    iget v3, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mRadius:F

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([FF)V

    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, v4}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    iput-object v3, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mShape:Landroid/graphics/drawable/shapes/Shape;

    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v3, v2, v4, v4}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    iput-object v3, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mStrokeShape:Landroid/graphics/drawable/shapes/Shape;

    :cond_2
    iget-object v2, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mShape:Landroid/graphics/drawable/shapes/Shape;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/shapes/Shape;->resize(FF)V

    iget-object v2, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mStrokeShape:Landroid/graphics/drawable/shapes/Shape;

    int-to-float v3, v0

    iget v4, p0, Lcom/oneplus/settings/ui/RadiusImageView;->mStrokeWidth:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v6, v4, v5

    sub-float/2addr v3, v6

    int-to-float v6, v1

    mul-float/2addr v4, v5

    sub-float/2addr v6, v4

    invoke-virtual {v2, v3, v6}, Landroid/graphics/drawable/shapes/Shape;->resize(FF)V

    invoke-direct {p0}, Lcom/oneplus/settings/ui/RadiusImageView;->makeStrokeBitmap()V

    invoke-direct {p0}, Lcom/oneplus/settings/ui/RadiusImageView;->makeShapeBitmap()V

    :cond_3
    return-void
.end method
