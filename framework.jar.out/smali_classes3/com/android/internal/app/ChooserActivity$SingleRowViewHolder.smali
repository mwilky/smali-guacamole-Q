.class Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;
.super Lcom/android/internal/app/ChooserActivity$RowViewHolder;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SingleRowViewHolder"
.end annotation


# instance fields
.field private final mRow:Landroid/view/ViewGroup;

.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/ViewGroup;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0, p1, p3}, Lcom/android/internal/app/ChooserActivity$RowViewHolder;-><init>(Lcom/android/internal/app/ChooserActivity;I)V

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;->mRow:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public addView(ILandroid/view/View;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;->mRow:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;->mCells:[Landroid/view/View;

    aput-object p2, v0, p1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;->mRow:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getRow(I)Landroid/view/ViewGroup;
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;->mRow:Landroid/view/ViewGroup;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRowByIndex(I)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;->mRow:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getViewGroup()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;->mRow:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public setViewVisibility(II)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
