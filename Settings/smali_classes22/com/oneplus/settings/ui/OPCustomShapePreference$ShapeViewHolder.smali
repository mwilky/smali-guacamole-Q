.class Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
.source "OPCustomShapePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ui/OPCustomShapePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShapeViewHolder"
.end annotation


# instance fields
.field border:Landroid/view/View;

.field imageView:Landroid/widget/ImageView;

.field textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/ui/OPCustomShapePreference;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;->this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    invoke-direct {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a014a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;->imageView:Landroid/widget/ImageView;

    const v0, 0x7f0a0151

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;->textView:Landroid/widget/TextView;

    const v0, 0x7f0a0148

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;->border:Landroid/view/View;

    return-void
.end method
