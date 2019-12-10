.class public Landroid/net/ConnectivityManager$NetworkCallback;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkCallback"
.end annotation


# instance fields
.field private networkRequest:Landroid/net/NetworkRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$900(Landroid/net/ConnectivityManager$NetworkCallback;)Landroid/net/NetworkRequest;
    .locals 1

    iget-object v0, p0, Landroid/net/ConnectivityManager$NetworkCallback;->networkRequest:Landroid/net/NetworkRequest;

    return-object v0
.end method

.method static synthetic access$902(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/net/NetworkRequest;)Landroid/net/NetworkRequest;
    .locals 0

    iput-object p1, p0, Landroid/net/ConnectivityManager$NetworkCallback;->networkRequest:Landroid/net/NetworkRequest;

    return-object p1
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 0

    return-void
.end method

.method public onAvailable(Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Z)V
    .locals 3

    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    const/16 v0, 0x15

    :try_start_0
    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onNetworkSuspended(Landroid/net/Network;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    invoke-virtual {p0, p1, p3}, Landroid/net/ConnectivityManager$NetworkCallback;->onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "receive NullPointerException\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConnectivityManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0, p1, p4}, Landroid/net/ConnectivityManager$NetworkCallback;->onBlockedStatusChanged(Landroid/net/Network;Z)V

    return-void
.end method

.method public onBlockedStatusChanged(Landroid/net/Network;Z)V
    .locals 0

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 0

    return-void
.end method

.method public onLosing(Landroid/net/Network;I)V
    .locals 0

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    return-void
.end method

.method public onNetworkResumed(Landroid/net/Network;)V
    .locals 0

    return-void
.end method

.method public onNetworkSuspended(Landroid/net/Network;)V
    .locals 0

    return-void
.end method

.method public onPreCheck(Landroid/net/Network;)V
    .locals 0

    return-void
.end method

.method public onUnavailable()V
    .locals 0

    return-void
.end method
