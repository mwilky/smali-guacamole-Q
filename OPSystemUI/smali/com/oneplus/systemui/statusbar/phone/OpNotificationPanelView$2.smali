.class Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView$2;
.super Ljava/lang/Object;
.source "OpNotificationPanelView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->createHeightAnimatorForBiometricUnlock()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;

.field final synthetic val$endHeight:F

.field final synthetic val$startHeight:F


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;FF)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;

    iput p2, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView$2;->val$endHeight:F

    iput p3, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView$2;->val$startHeight:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeightInternal(F)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView$2;->val$endHeight:F

    sub-float/2addr p1, v0

    iget v1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView$2;->val$startHeight:F

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView$2;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method
