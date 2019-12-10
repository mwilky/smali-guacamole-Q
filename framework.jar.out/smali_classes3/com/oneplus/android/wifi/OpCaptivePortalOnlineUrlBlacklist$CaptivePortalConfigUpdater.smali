.class Lcom/oneplus/android/wifi/OpCaptivePortalOnlineUrlBlacklist$CaptivePortalConfigUpdater;
.super Ljava/lang/Object;
.source "OpCaptivePortalOnlineUrlBlacklist.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/wifi/OpCaptivePortalOnlineUrlBlacklist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CaptivePortalConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/wifi/OpCaptivePortalOnlineUrlBlacklist;


# direct methods
.method constructor <init>(Lcom/oneplus/android/wifi/OpCaptivePortalOnlineUrlBlacklist;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/wifi/OpCaptivePortalOnlineUrlBlacklist$CaptivePortalConfigUpdater;->this$0:Lcom/oneplus/android/wifi/OpCaptivePortalOnlineUrlBlacklist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/wifi/OpCaptivePortalOnlineUrlBlacklist$CaptivePortalConfigUpdater;->this$0:Lcom/oneplus/android/wifi/OpCaptivePortalOnlineUrlBlacklist;

    invoke-static {v0, p1}, Lcom/oneplus/android/wifi/OpCaptivePortalOnlineUrlBlacklist;->access$200(Lcom/oneplus/android/wifi/OpCaptivePortalOnlineUrlBlacklist;Lorg/json/JSONArray;)V

    return-void
.end method
