.class Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$VH;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
.source "OPCustomNotificationAnimVideoPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VH"
.end annotation


# instance fields
.field imageView:Landroid/widget/ImageView;

.field textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

.field viewBorder:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$VH;->this$0:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

    invoke-direct {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a014a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$VH;->imageView:Landroid/widget/ImageView;

    const v0, 0x7f0a0151

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$VH;->textView:Landroid/widget/TextView;

    const v0, 0x7f0a0148

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$VH;->viewBorder:Landroid/view/View;

    return-void
.end method
