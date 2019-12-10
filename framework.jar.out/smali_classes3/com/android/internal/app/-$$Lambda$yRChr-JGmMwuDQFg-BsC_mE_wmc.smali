.class public final synthetic Lcom/android/internal/app/-$$Lambda$yRChr-JGmMwuDQFg-BsC_mE_wmc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field private final synthetic f$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/-$$Lambda$yRChr-JGmMwuDQFg-BsC_mE_wmc;->f$0:Lcom/android/internal/app/ResolverActivity;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/-$$Lambda$yRChr-JGmMwuDQFg-BsC_mE_wmc;->f$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ResolverActivity;->onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
