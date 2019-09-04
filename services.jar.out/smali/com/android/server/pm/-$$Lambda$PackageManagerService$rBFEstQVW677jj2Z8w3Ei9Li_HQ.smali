.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$rBFEstQVW677jj2Z8w3Ei9Li_HQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$rBFEstQVW677jj2Z8w3Ei9Li_HQ;->f$0:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$rBFEstQVW677jj2Z8w3Ei9Li_HQ;->f$0:I

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->lambda$postPreferredActivityChangedBroadcast$23(I)V

    return-void
.end method
