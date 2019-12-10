.class Lcom/android/internal/app/ChooserActivity$1;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;

.field final synthetic val$chooserHeader:Landroid/view/View;

.field final synthetic val$chooserHeaderScrollElevation:F

.field final synthetic val$defaultElevation:F


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;FF)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$1;->this$0:Lcom/android/internal/app/ChooserActivity;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$1;->val$chooserHeader:Landroid/view/View;

    iput p3, p0, Lcom/android/internal/app/ChooserActivity$1;->val$chooserHeaderScrollElevation:F

    iput p4, p0, Lcom/android/internal/app/ChooserActivity$1;->val$defaultElevation:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    if-gtz p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-gez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$1;->val$chooserHeader:Landroid/view/View;

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$1;->val$chooserHeaderScrollElevation:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$1;->val$chooserHeader:Landroid/view/View;

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$1;->val$defaultElevation:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
