.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$dM4FH74RPFFuHWqzdwMz4odvhec;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/pm/PackageManagerService;

.field private final synthetic f$1:Landroid/os/storage/VolumeInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/storage/VolumeInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$dM4FH74RPFFuHWqzdwMz4odvhec;->f$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$dM4FH74RPFFuHWqzdwMz4odvhec;->f$1:Landroid/os/storage/VolumeInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$dM4FH74RPFFuHWqzdwMz4odvhec;->f$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$dM4FH74RPFFuHWqzdwMz4odvhec;->f$1:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->lambda$loadPrivatePackages$30$PackageManagerService(Landroid/os/storage/VolumeInfo;)V

    return-void
.end method
