.class Landroidx/leanback/widget/GuidedActionAdapter$ActionAutofillListener;
.super Ljava/lang/Object;
.source "GuidedActionAdapter.java"

# interfaces
.implements Landroidx/leanback/widget/GuidedActionAutofillSupport$OnAutofillListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/GuidedActionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionAutofillListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/widget/GuidedActionAdapter;


# direct methods
.method constructor <init>(Landroidx/leanback/widget/GuidedActionAdapter;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/GuidedActionAdapter$ActionAutofillListener;->this$0:Landroidx/leanback/widget/GuidedActionAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutofill(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Landroidx/leanback/widget/GuidedActionAdapter$ActionAutofillListener;->this$0:Landroidx/leanback/widget/GuidedActionAdapter;

    iget-object v0, v0, Landroidx/leanback/widget/GuidedActionAdapter;->mGroup:Landroidx/leanback/widget/GuidedActionAdapterGroup;

    iget-object v1, p0, Landroidx/leanback/widget/GuidedActionAdapter$ActionAutofillListener;->this$0:Landroidx/leanback/widget/GuidedActionAdapter;

    move-object v2, p1

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/widget/GuidedActionAdapterGroup;->fillAndGoNext(Landroidx/leanback/widget/GuidedActionAdapter;Landroid/widget/TextView;)V

    return-void
.end method
