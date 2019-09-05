.class public Landroidx/slice/widget/RowStyle;
.super Ljava/lang/Object;
.source "RowStyle.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mActionDividerHeight:I

.field private mBottomDividerEndPadding:I

.field private mBottomDividerStartPadding:I

.field private mContentEndPadding:I

.field private mContentStartPadding:I

.field private mEndItemEndPadding:I

.field private mEndItemStartPadding:I

.field private mTitleItemEndPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Landroidx/slice/view/R$styleable;->RowStyle:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    :try_start_0
    sget v1, Landroidx/slice/view/R$styleable;->RowStyle_titleItemEndPadding:I

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroidx/slice/widget/RowStyle;->mTitleItemEndPadding:I

    sget v1, Landroidx/slice/view/R$styleable;->RowStyle_contentStartPadding:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroidx/slice/widget/RowStyle;->mContentStartPadding:I

    sget v1, Landroidx/slice/view/R$styleable;->RowStyle_contentEndPadding:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroidx/slice/widget/RowStyle;->mContentEndPadding:I

    sget v1, Landroidx/slice/view/R$styleable;->RowStyle_endItemStartPadding:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroidx/slice/widget/RowStyle;->mEndItemStartPadding:I

    sget v1, Landroidx/slice/view/R$styleable;->RowStyle_endItemEndPadding:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroidx/slice/widget/RowStyle;->mEndItemEndPadding:I

    sget v1, Landroidx/slice/view/R$styleable;->RowStyle_bottomDividerStartPadding:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroidx/slice/widget/RowStyle;->mBottomDividerStartPadding:I

    sget v1, Landroidx/slice/view/R$styleable;->RowStyle_bottomDividerEndPadding:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroidx/slice/widget/RowStyle;->mBottomDividerEndPadding:I

    sget v1, Landroidx/slice/view/R$styleable;->RowStyle_actionDividerHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroidx/slice/widget/RowStyle;->mActionDividerHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    nop

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method


# virtual methods
.method public getActionDividerHeight()I
    .locals 1

    iget v0, p0, Landroidx/slice/widget/RowStyle;->mActionDividerHeight:I

    return v0
.end method

.method public getBottomDividerEndPadding()I
    .locals 1

    iget v0, p0, Landroidx/slice/widget/RowStyle;->mBottomDividerEndPadding:I

    return v0
.end method

.method public getBottomDividerStartPadding()I
    .locals 1

    iget v0, p0, Landroidx/slice/widget/RowStyle;->mBottomDividerStartPadding:I

    return v0
.end method

.method public getContentEndPadding()I
    .locals 1

    iget v0, p0, Landroidx/slice/widget/RowStyle;->mContentEndPadding:I

    return v0
.end method

.method public getContentStartPadding()I
    .locals 1

    iget v0, p0, Landroidx/slice/widget/RowStyle;->mContentStartPadding:I

    return v0
.end method

.method public getEndItemEndPadding()I
    .locals 1

    iget v0, p0, Landroidx/slice/widget/RowStyle;->mEndItemEndPadding:I

    return v0
.end method

.method public getEndItemStartPadding()I
    .locals 1

    iget v0, p0, Landroidx/slice/widget/RowStyle;->mEndItemStartPadding:I

    return v0
.end method

.method public getTitleItemEndPadding()I
    .locals 1

    iget v0, p0, Landroidx/slice/widget/RowStyle;->mTitleItemEndPadding:I

    return v0
.end method
