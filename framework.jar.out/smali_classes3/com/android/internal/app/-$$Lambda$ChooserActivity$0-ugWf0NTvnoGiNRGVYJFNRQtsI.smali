.class public final synthetic Lcom/android/internal/app/-$$Lambda$ChooserActivity$0-ugWf0NTvnoGiNRGVYJFNRQtsI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/internal/app/ChooserActivity;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/app/ChooserActivity;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivity$0-ugWf0NTvnoGiNRGVYJFNRQtsI;->f$0:Lcom/android/internal/app/ChooserActivity;

    iput p2, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivity$0-ugWf0NTvnoGiNRGVYJFNRQtsI;->f$1:I

    iput p3, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivity$0-ugWf0NTvnoGiNRGVYJFNRQtsI;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivity$0-ugWf0NTvnoGiNRGVYJFNRQtsI;->f$0:Lcom/android/internal/app/ChooserActivity;

    iget v1, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivity$0-ugWf0NTvnoGiNRGVYJFNRQtsI;->f$1:I

    iget v2, p0, Lcom/android/internal/app/-$$Lambda$ChooserActivity$0-ugWf0NTvnoGiNRGVYJFNRQtsI;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ChooserActivity;->lambda$handleLayoutChange$2$ChooserActivity(II)V

    return-void
.end method
