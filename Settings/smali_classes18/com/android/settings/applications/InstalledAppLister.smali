.class public abstract Lcom/android/settings/applications/InstalledAppLister;
.super Lcom/android/settings/applications/AppLister;
.source "InstalledAppLister.java"


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/os/UserManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/AppLister;-><init>(Landroid/content/pm/PackageManager;Landroid/os/UserManager;)V

    return-void
.end method


# virtual methods
.method protected includeInCount(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppLister;->mPm:Landroid/content/pm/PackageManager;

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/android/settings/applications/InstalledAppCounter;->includeInCount(ILandroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method
