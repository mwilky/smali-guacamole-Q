.class public interface abstract Lcom/oneplus/longshot/IOpLongScreenshotManager;
.super Ljava/lang/Object;
.source "IOpLongScreenshotManager.java"


# static fields
.field public static final NAVIGATIONBAR_VISIBLE:Ljava/lang/String; = "navigationbar_visible"

.field public static final STATUSBAR_VISIBLE:Ljava/lang/String; = "statusbar_visible"


# virtual methods
.method public abstract isLongshotHandleState()Z
.end method

.method public abstract isLongshotMode()Z
.end method

.method public abstract isLongshotMoveState()Z
.end method

.method public abstract notifyLongshotScroll(Z)V
.end method

.method public abstract notifyLongshotScrollChanged(IIII)V
.end method

.method public abstract notifyScrollViewSearchComplete(III)V
.end method

.method public abstract notifyScrollViewTop(I)V
.end method

.method public abstract notifyWindowLayerChange(Landroid/os/IBinder;)V
.end method

.method public abstract onUnscrollableView()V
.end method

.method public abstract registerLongshotListener(Lcom/oneplus/longshot/ILongScreenshotListener;)V
.end method

.method public abstract stopLongshot(I)V
.end method

.method public abstract takeLongshot(ZZ)V
.end method

.method public abstract unregisterLongshotListener(Lcom/oneplus/longshot/ILongScreenshotListener;)V
.end method
