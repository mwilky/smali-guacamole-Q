.class final Lcom/android/internal/app/ChooserActivity$EmptyTargetInfo;
.super Lcom/android/internal/app/ChooserActivity$NotSelectableTargetInfo;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EmptyTargetInfo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$EmptyTargetInfo;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity$NotSelectableTargetInfo;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    return-void
.end method


# virtual methods
.method public getDisplayIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
