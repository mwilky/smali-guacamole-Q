.class public final synthetic Lcom/android/internal/app/-$$Lambda$ChooserActivity$XR1YdxuJecnZUtHspyjpRELkDj8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/internal/app/ChooserActivity;

.field private final synthetic f$1:Landroid/content/IntentFilter;

.field private final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/app/ChooserActivity;Landroid/content/IntentFilter;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivity$XR1YdxuJecnZUtHspyjpRELkDj8;->f$0:Lcom/android/internal/app/ChooserActivity;

    iput-object p2, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivity$XR1YdxuJecnZUtHspyjpRELkDj8;->f$1:Landroid/content/IntentFilter;

    iput-object p3, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivity$XR1YdxuJecnZUtHspyjpRELkDj8;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivity$XR1YdxuJecnZUtHspyjpRELkDj8;->f$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivity$XR1YdxuJecnZUtHspyjpRELkDj8;->f$1:Landroid/content/IntentFilter;

    iget-object v2, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivity$XR1YdxuJecnZUtHspyjpRELkDj8;->f$2:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ChooserActivity;->lambda$queryDirectShareTargets$1$ChooserActivity(Landroid/content/IntentFilter;Ljava/util/List;)V

    return-void
.end method
