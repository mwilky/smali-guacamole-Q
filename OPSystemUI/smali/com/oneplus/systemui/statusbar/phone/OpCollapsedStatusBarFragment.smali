.class public Lcom/oneplus/systemui/statusbar/phone/OpCollapsedStatusBarFragment;
.super Landroid/app/Fragment;
.source "OpCollapsedStatusBarFragment.java"


# instance fields
.field private mOpSceneModeObserver:Lcom/oneplus/scene/OpSceneModeObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected adjustSystemIconAreaLayoutParams(Landroid/widget/LinearLayout;)V
    .locals 1

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportCustomStatusBar()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method protected onCreateInternal()V
    .locals 1

    const-class v0, Lcom/oneplus/scene/OpSceneModeObserver;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/scene/OpSceneModeObserver;

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpCollapsedStatusBarFragment;->mOpSceneModeObserver:Lcom/oneplus/scene/OpSceneModeObserver;

    return-void
.end method

.method protected shouldHideNotificationIconsInternal()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpCollapsedStatusBarFragment;->mOpSceneModeObserver:Lcom/oneplus/scene/OpSceneModeObserver;

    invoke-virtual {p0}, Lcom/oneplus/scene/OpSceneModeObserver;->isInBrickMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
