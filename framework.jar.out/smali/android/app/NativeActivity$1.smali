.class Landroid/app/NativeActivity$1;
.super Ljava/lang/Object;
.source "NativeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/NativeActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/NativeActivity;


# direct methods
.method constructor <init>(Landroid/app/NativeActivity;)V
    .locals 0

    iput-object p1, p0, Landroid/app/NativeActivity$1;->this$0:Landroid/app/NativeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/app/NativeActivity$1;->this$0:Landroid/app/NativeActivity;

    invoke-virtual {v0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/android/screenmode/OpScreenModeInjector;->setRefreshRate(Landroid/os/IBinder;I)V

    return-void
.end method
