.class Lcom/android/internal/app/ChooserActivity$2;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Lcom/android/internal/widget/ResolverDrawerLayout$OnCollapsedChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mWrittenOnce:Z

.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$2;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$2;->mWrittenOnce:Z

    return-void
.end method


# virtual methods
.method public onCollapsedChanged(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$2;->mWrittenOnce:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$2;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->access$1000(Lcom/android/internal/app/ChooserActivity;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$2;->mWrittenOnce:Z

    :cond_0
    return-void
.end method
