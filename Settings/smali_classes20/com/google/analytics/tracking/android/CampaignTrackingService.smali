.class public Lcom/google/analytics/tracking/android/CampaignTrackingService;
.super Landroid/app/IntentService;
.source "CampaignTrackingService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "CampaignIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p0, p1}, Lcom/google/analytics/tracking/android/CampaignTrackingService;->processIntent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public processIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "referrer"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, "gaInstallData"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Error storing install campaign."

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
