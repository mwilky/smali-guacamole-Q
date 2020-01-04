.class public Landroid/os/OPDiagnoseManager;
.super Ljava/lang/Object;
.source "OPDiagnoseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/OPDiagnoseManager$RefreshTask;
    }
.end annotation


# static fields
.field private static final ACTION_OPDIAGNOSE_GET_IMEI:Ljava/lang/String; = "android.os.OPDIAGNOSE_GET_INFO"

.field private static final DEBUG:Z

.field public static ISSUE_ANSWER_FAIL_NET:I = 0x0

.field public static ISSUE_APK_INSTALL_FAIL:I = 0x0

.field public static ISSUE_AUDIOTRACK_CREATE_FAIL:I = 0x0

.field public static ISSUE_AUDIO_ADSP_FAIL:I = 0x0

.field public static ISSUE_AUDIO_STREAM_MISUSE:I = 0x0

.field public static ISSUE_AUDIO_STREAM_MISUSE2:I = 0x0

.field public static ISSUE_AUDIO_STREAM_MISUSE3:I = 0x0

.field public static ISSUE_AUDIO_STREAM_MISUSE4:I = 0x0

.field public static ISSUE_BATTER_ERROR:I = 0x0

.field public static ISSUE_BLOCK_SYSTEM_SERVER:I = 0x0

.field public static ISSUE_BT_PAIR_FAILED:I = 0x0

.field public static ISSUE_CANNOT_USE_4G_NETWORK:I = 0x0

.field public static ISSUE_CANNOT_USE_4G_SIM:I = 0x0

.field public static ISSUE_CHARGER_INSERT:I = 0x0

.field public static ISSUE_CHARGER_REMOVE:I = 0x0

.field public static ISSUE_CHARGE_ABNORMAL_STOP:I = 0x0

.field public static ISSUE_CHARGE_CURRENT_LOW:I = 0x0

.field public static ISSUE_CHARGE_CYCLE:I = 0x0

.field public static ISSUE_CHARGE_STOP:I = 0x0

.field public static ISSUE_CRASH_APP:I = 0x0

.field public static ISSUE_CRASH_MODEM:I = 0x0

.field public static ISSUE_CRASH_SYSTEM_SERVER:I = 0x0

.field public static ISSUE_CURRENT_STANDBY:I = 0x0

.field public static ISSUE_DASH_CHARGE_ERROR:I = 0x0

.field public static ISSUE_DASH_FAIL:I = 0x0

.field public static ISSUE_DISPLAY_ELECTROSTATIC_DETECTION:I = 0x0

.field public static ISSUE_DROP_CALL_MO:I = 0x0

.field public static ISSUE_DROP_CALL_MT_CSFB:I = 0x0

.field public static ISSUE_DROP_CALL_MT_DISCONNECT:I = 0x0

.field public static ISSUE_DROP_CALL_MT_NW_REJECT:I = 0x0

.field public static ISSUE_DROP_CALL_MT_PAGING:I = 0x0

.field public static ISSUE_DROP_CALL_MT_RACH:I = 0x0

.field public static ISSUE_DROP_CALL_MT_RLF:I = 0x0

.field public static ISSUE_DROP_CALL_MT_RRC:I = 0x0

.field public static ISSUE_DROP_CALL_WEAK_SIGNAL:I = 0x0

.field public static ISSUE_FAKE_BS:I = 0x0

.field public static ISSUE_FP_DIE:I = 0x0

.field public static ISSUE_FP_HW_ERROR:I = 0x0

.field public static ISSUE_FP_RESET_BYHM:I = 0x0

.field public static ISSUE_GPS_LOCATION_FAILED:I = 0x0

.field public static ISSUE_GPS_SIGNAL_LOW:I = 0x0

.field public static ISSUE_HEAT_CAMERA:I = 0x0

.field public static ISSUE_HEAT_CAMERA_WHEN_CHARGE:I = 0x0

.field public static ISSUE_HEAT_CPU_LOAD:I = 0x0

.field public static ISSUE_HEAT_PLAY_WHEN_CHARGE:I = 0x0

.field public static ISSUE_HEAT_PLAY_WHEN_DASH:I = 0x0

.field public static ISSUE_HEAT_UNKNOWN_REASON:I = 0x0

.field public static ISSUE_KERNEL_PANIC:I = 0x0

.field public static ISSUE_LAG:I = 0x0

.field public static ISSUE_LAG_SOUND:I = 0x0

.field public static ISSUE_LOSE_SIMCARD:I = 0x0

.field public static ISSUE_NETWORK_DATA_DISCONNECT:I = 0x0

.field public static ISSUE_NETWORK_DISCONNECT:I = 0x0

.field public static ISSUE_NFC_ESE_LOCKED:I = 0x0

.field public static ISSUE_NFC_POWER_CONSUMPTION:I = 0x0

.field public static ISSUE_NO_DATA_APN:I = 0x0

.field public static ISSUE_NO_SERVICE_DENIED:I = 0x0

.field public static ISSUE_NO_SERVICE_ERR_LOGIN_FAILED:I = 0x0

.field public static ISSUE_NO_SIGNAL:I = 0x0

.field public static ISSUE_OTA_FAIL:I = 0x0

.field public static ISSUE_POWER_ALARM_WAKEUP:I = 0x0

.field public static ISSUE_POWER_DOWNLOAD:I = 0x0

.field public static ISSUE_POWER_HW_SUBSYSTEM:I = 0x0

.field public static ISSUE_POWER_MODEM_WAKEUP:I = 0x0

.field public static ISSUE_POWER_MUSIC:I = 0x0

.field public static ISSUE_POWER_NETWORK_WAKEUP:I = 0x0

.field public static ISSUE_POWER_NO_SIGNAL:I = 0x0

.field public static ISSUE_POWER_OTHER:I = 0x0

.field public static ISSUE_POWER_TELECOM_SHORT_MESSAGE:I = 0x0

.field public static ISSUE_POWER_WIFI_WAKEUP:I = 0x0

.field public static ISSUE_POWRE_NO_SIGNAL_INTERSECTION:I = 0x0

.field public static ISSUE_RECORD_AUDIO:I = 0x0

.field public static ISSUE_RECORD_INPUT_BE_OPENED:I = 0x0

.field public static ISSUE_RECORD_VIDEO:I = 0x0

.field public static ISSUE_REGISTER_SOUND:I = 0x0

.field public static ISSUE_RESTART_UNKNOWN_REASON:I = 0x0

.field public static ISSUE_ROOT:I = 0x0

.field public static ISSUE_RTC:I = 0x0

.field public static ISSUE_RTC_UPLOAD:I = 0x0

.field public static ISSUE_SUBSYSTEM_ERROR:I = 0x0

.field public static ISSUE_TOTAL_RESTART:I = 0x0

.field public static ISSUE_WIFI_CONN_FAIL:I = 0x0

.field public static ISSUE_WIFI_DISCONNECT:I = 0x0

.field public static ISSUE_WIFI_OPEN_CLOSE_FAIL:I = 0x0

.field public static ISSUE_WIFI_OPEN_FAIL:I = 0x0

.field public static ISSUE_WIFI_SUSPEND_FAILED:I = 0x0

.field public static ISSUE_WIFI_SYMBOL_ERROR:I = 0x0

.field public static ISSUS_ONLY_FAKE_BS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OPDiagnoseManager"

.field private static mImei:Ljava/lang/String;

.field private static mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private static final sLock:Ljava/lang/Object;

.field private static sNativeClassInited:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sLock"
        }
    .end annotation
.end field

.field private static sOnePlusDiagnoseUtils:Landroid/os/IOnePlusDiagnoseUtils;

.field private static timer:Ljava/util/Timer;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMainLooper:Landroid/os/Looper;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sLock"
        }
    .end annotation
.end field

.field private final mNativeInstance:J

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Landroid/os/OPDiagnoseManager;->DEBUG:Z

    const/4 v0, 0x1

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_TOTAL_RESTART:I

    const/4 v0, 0x2

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_CRASH_SYSTEM_SERVER:I

    const/4 v0, 0x3

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_CRASH_MODEM:I

    const/4 v0, 0x4

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_BLOCK_SYSTEM_SERVER:I

    const/4 v0, 0x5

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_CURRENT_STANDBY:I

    const/4 v0, 0x6

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_APK_INSTALL_FAIL:I

    const/4 v0, 0x7

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_OTA_FAIL:I

    const/16 v0, 0x8

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_RESTART_UNKNOWN_REASON:I

    const/16 v0, 0x9

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_SUBSYSTEM_ERROR:I

    const/16 v0, 0xa

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_FP_DIE:I

    const/16 v0, 0xb

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_FP_RESET_BYHM:I

    const/16 v0, 0xc

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_FP_HW_ERROR:I

    const/16 v0, 0xd

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_NETWORK_DISCONNECT:I

    const/16 v0, 0xe

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_NO_SIGNAL:I

    const/16 v0, 0xf

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_MUSIC:I

    const/16 v0, 0x10

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_DOWNLOAD:I

    const/16 v0, 0x11

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_WIFI_WAKEUP:I

    const/16 v0, 0x12

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_MODEM_WAKEUP:I

    const/16 v0, 0x13

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_ALARM_WAKEUP:I

    const/16 v0, 0x14

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_HW_SUBSYSTEM:I

    const/16 v0, 0x15

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_OTHER:I

    const/16 v0, 0x16

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_KERNEL_PANIC:I

    const/16 v0, 0x17

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_HEAT_PLAY_WHEN_DASH:I

    const/16 v0, 0x18

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_HEAT_PLAY_WHEN_CHARGE:I

    const/16 v0, 0x19

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_HEAT_CPU_LOAD:I

    const/16 v0, 0x1a

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_HEAT_UNKNOWN_REASON:I

    const/16 v0, 0x1b

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_HEAT_CAMERA_WHEN_CHARGE:I

    const/16 v0, 0x1c

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_HEAT_CAMERA:I

    const/16 v0, 0x1d

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_LOSE_SIMCARD:I

    const/16 v0, 0x1e

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_LAG:I

    const/16 v0, 0x1f

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_CRASH_APP:I

    const/16 v0, 0x20

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_ROOT:I

    const/16 v0, 0x21

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_LAG_SOUND:I

    const/16 v0, 0x22

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_RECORD_VIDEO:I

    const/16 v0, 0x23

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_RECORD_AUDIO:I

    const/16 v0, 0x24

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_REGISTER_SOUND:I

    const/16 v0, 0x25

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_DASH_FAIL:I

    const/16 v0, 0x26

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_WIFI_CONN_FAIL:I

    const/16 v0, 0x27

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_WIFI_OPEN_FAIL:I

    const/16 v0, 0x28

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_WIFI_DISCONNECT:I

    const/16 v0, 0x29

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_WIFI_SUSPEND_FAILED:I

    const/16 v0, 0x2a

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_GPS_LOCATION_FAILED:I

    const/16 v0, 0x2b

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_NFC_ESE_LOCKED:I

    const/16 v0, 0x2c

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_NFC_POWER_CONSUMPTION:I

    const/16 v0, 0x2d

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_BT_PAIR_FAILED:I

    const/16 v0, 0x2e

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_WIFI_OPEN_CLOSE_FAIL:I

    const/16 v0, 0x2f

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_AUDIOTRACK_CREATE_FAIL:I

    const/16 v0, 0x30

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_RECORD_INPUT_BE_OPENED:I

    const/16 v0, 0x31

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_AUDIO_STREAM_MISUSE:I

    const/16 v0, 0x32

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_AUDIO_STREAM_MISUSE2:I

    const/16 v0, 0x33

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_AUDIO_STREAM_MISUSE3:I

    const/16 v0, 0x34

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_AUDIO_ADSP_FAIL:I

    const/16 v0, 0x35

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_WIFI_SYMBOL_ERROR:I

    const/16 v0, 0x36

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_NETWORK_WAKEUP:I

    const/16 v0, 0x37

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_NO_SIGNAL:I

    const/16 v0, 0x38

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_TELECOM_SHORT_MESSAGE:I

    const/16 v0, 0x39

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_BATTER_ERROR:I

    const/16 v0, 0x3a

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_CHARGE_STOP:I

    const/16 v0, 0x3b

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_CHARGE_CYCLE:I

    const/16 v0, 0x3c

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_CHARGE_CURRENT_LOW:I

    const/16 v0, 0x3d

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_CHARGE_ABNORMAL_STOP:I

    const/16 v0, 0x3e

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_DASH_CHARGE_ERROR:I

    const/16 v0, 0x3f

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_CHARGER_INSERT:I

    const/16 v0, 0x40

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_CHARGER_REMOVE:I

    const/16 v0, 0x41

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_DROP_CALL_MO:I

    const/16 v0, 0x42

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_DROP_CALL_MT_CSFB:I

    const/16 v0, 0x43

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_DROP_CALL_MT_NW_REJECT:I

    const/16 v0, 0x44

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_DROP_CALL_MT_RRC:I

    const/16 v0, 0x45

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_DROP_CALL_MT_RACH:I

    const/16 v0, 0x46

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_DROP_CALL_MT_RLF:I

    const/16 v0, 0x47

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_DROP_CALL_MT_PAGING:I

    const/16 v0, 0x48

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_DROP_CALL_MT_DISCONNECT:I

    const/16 v0, 0x49

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_CANNOT_USE_4G_NETWORK:I

    const/16 v0, 0x4a

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_NO_SERVICE_DENIED:I

    const/16 v0, 0x4b

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_NO_SERVICE_ERR_LOGIN_FAILED:I

    const/16 v0, 0x4c

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_CANNOT_USE_4G_SIM:I

    const/16 v0, 0x4d

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_NO_DATA_APN:I

    const/16 v0, 0x4e

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_NETWORK_DATA_DISCONNECT:I

    const/16 v0, 0x4f

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_FAKE_BS:I

    const/16 v0, 0x50

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUS_ONLY_FAKE_BS:I

    const/16 v0, 0x51

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_DROP_CALL_WEAK_SIGNAL:I

    const/16 v0, 0x52

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_ANSWER_FAIL_NET:I

    const/16 v0, 0x53

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_POWRE_NO_SIGNAL_INTERSECTION:I

    const/16 v0, 0x54

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_AUDIO_STREAM_MISUSE4:I

    const/16 v0, 0x55

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_DISPLAY_ELECTROSTATIC_DETECTION:I

    const/16 v0, 0x56

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_GPS_SIGNAL_LOW:I

    const/16 v0, 0x57

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_RTC:I

    const/16 v0, 0x58

    sput v0, Landroid/os/OPDiagnoseManager;->ISSUE_RTC_UPLOAD:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/OPDiagnoseManager;->sLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/OPDiagnoseManager;->sNativeClassInited:Z

    const-string v0, "***************"

    sput-object v0, Landroid/os/OPDiagnoseManager;->mImei:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/os/OPDiagnoseManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Landroid/os/OPDiagnoseManager;->sNativeClassInited:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    sput-boolean v2, Landroid/os/OPDiagnoseManager;->sNativeClassInited:Z

    invoke-static {}, Landroid/os/OPDiagnoseManager;->nativeClassInit()V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p2, p0, Landroid/os/OPDiagnoseManager;->mMainLooper:Landroid/os/Looper;

    iput-object p1, p0, Landroid/os/OPDiagnoseManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/OPDiagnoseManager;->nativeCreate(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/OPDiagnoseManager;->mNativeInstance:J

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v3, Landroid/os/OPDiagnoseManager;->DEBUG:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check reason = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/OPDiagnoseManager;->mImei:Ljava/lang/String;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/OPDiagnoseManager;->mImei:Ljava/lang/String;

    const-string v6, "***************"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/OPDiagnoseManager;->timer:Ljava/util/Timer;

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    move v2, v5

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OPDiagnoseManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OPDiagnoseManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v2, "android.uid.system"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Landroid/os/OPDiagnoseManager;->mImei:Ljava/lang/String;

    const-string v3, "***************"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Landroid/os/OPDiagnoseManager;->timer:Ljava/util/Timer;

    if-nez v2, :cond_6

    :cond_4
    sget-boolean v2, Landroid/os/OPDiagnoseManager;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "OPDiagnoseManager"

    const-string/jumbo v3, "start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-object v2, Landroid/os/OPDiagnoseManager;->timer:Ljava/util/Timer;

    if-nez v2, :cond_6

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    sput-object v2, Landroid/os/OPDiagnoseManager;->timer:Ljava/util/Timer;

    sget-object v3, Landroid/os/OPDiagnoseManager;->timer:Ljava/util/Timer;

    new-instance v4, Landroid/os/OPDiagnoseManager$RefreshTask;

    invoke-direct {v4, p0}, Landroid/os/OPDiagnoseManager$RefreshTask;-><init>(Landroid/os/OPDiagnoseManager;)V

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x2710

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    :cond_6
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/OPDiagnoseManager;->mImei:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Landroid/os/OPDiagnoseManager;->mImei:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Landroid/os/OPDiagnoseManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/os/OPDiagnoseManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Timer;
    .locals 1

    sget-object v0, Landroid/os/OPDiagnoseManager;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$202(Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    sput-object p0, Landroid/os/OPDiagnoseManager;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Landroid/os/OPDiagnoseManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$400(Landroid/os/OPDiagnoseManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/OPDiagnoseManager;->registerClientReceiver()V

    return-void
.end method

.method private static getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1

    sget-object v0, Landroid/os/OPDiagnoseManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Landroid/os/OPDiagnoseManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_0
    sget-object v0, Landroid/os/OPDiagnoseManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private static initInstance()V
    .locals 1

    sget-object v0, Landroid/os/OPDiagnoseManager;->sOnePlusDiagnoseUtils:Landroid/os/IOnePlusDiagnoseUtils;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_OPDIAGNOSEUTILS:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IOnePlusDiagnoseUtils;

    sput-object v0, Landroid/os/OPDiagnoseManager;->sOnePlusDiagnoseUtils:Landroid/os/IOnePlusDiagnoseUtils;

    :cond_0
    return-void
.end method

.method private static native nativeAddIssueCount(JII)I
.end method

.method private static native nativeClassInit()V
.end method

.method private static native nativeCreate(Ljava/lang/String;)J
.end method

.method private static native nativeReadDiagData(JI)I
.end method

.method private static native nativeSaveDiagLog(JI)I
.end method

.method private static native nativeSetDiagData(JILjava/lang/String;I)I
.end method

.method private static native nativeSetIssueNumber(JII)I
.end method

.method private static native nativeWriteDiagData(JILjava/lang/String;)I
.end method

.method private registerClientReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.os.OPDIAGNOSE_GET_INFO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Landroid/os/OPDiagnoseManager$1;

    invoke-direct {v1, p0}, Landroid/os/OPDiagnoseManager$1;-><init>(Landroid/os/OPDiagnoseManager;)V

    iput-object v1, p0, Landroid/os/OPDiagnoseManager;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-boolean v1, Landroid/os/OPDiagnoseManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "OPDiagnoseManager"

    const-string/jumbo v2, "register receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroid/os/OPDiagnoseManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/os/OPDiagnoseManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unRegisterClientReceiver()V
    .locals 2

    iget-object v0, p0, Landroid/os/OPDiagnoseManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/os/OPDiagnoseManager;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/OPDiagnoseManager;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static verify(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Landroid/os/OPDiagnoseManager;->initInstance()V

    sget-object v0, Landroid/os/OPDiagnoseManager;->sOnePlusDiagnoseUtils:Landroid/os/IOnePlusDiagnoseUtils;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Landroid/os/IOnePlusDiagnoseUtils;->verify(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addIssueCount(II)Z
    .locals 2

    iget-wide v0, p0, Landroid/os/OPDiagnoseManager;->mNativeInstance:J

    invoke-static {v0, v1, p1, p2}, Landroid/os/OPDiagnoseManager;->nativeAddIssueCount(JII)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getImei1(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const-string v0, "OPDiagnoseManager"

    invoke-static {p1}, Landroid/os/OPDiagnoseManager;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "***************"

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_1
    return-object v3
.end method

.method public getImeiAll(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const-string v0, "OPDiagnoseManager"

    invoke-static {p1}, Landroid/os/OPDiagnoseManager;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    const-string v2, "***************"

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    add-int/lit8 v5, v4, 0x1

    if-ge v5, v3, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_1
    nop

    :goto_1
    return-object v2
.end method

.method public readDiagData(I)Z
    .locals 2

    iget-wide v0, p0, Landroid/os/OPDiagnoseManager;->mNativeInstance:J

    invoke-static {v0, v1, p1}, Landroid/os/OPDiagnoseManager;->nativeReadDiagData(JI)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public saveDiagLog(I)Z
    .locals 2

    iget-wide v0, p0, Landroid/os/OPDiagnoseManager;->mNativeInstance:J

    invoke-static {v0, v1, p1}, Landroid/os/OPDiagnoseManager;->nativeSaveDiagLog(JI)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDiagData(ILjava/lang/String;I)Z
    .locals 2

    iget-wide v0, p0, Landroid/os/OPDiagnoseManager;->mNativeInstance:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/os/OPDiagnoseManager;->nativeSetDiagData(JILjava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setIssueNumber(II)Z
    .locals 2

    iget-wide v0, p0, Landroid/os/OPDiagnoseManager;->mNativeInstance:J

    invoke-static {v0, v1, p1, p2}, Landroid/os/OPDiagnoseManager;->nativeSetIssueNumber(JII)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeDiagData(ILjava/lang/String;)Z
    .locals 2

    iget-wide v0, p0, Landroid/os/OPDiagnoseManager;->mNativeInstance:J

    invoke-static {v0, v1, p1, p2}, Landroid/os/OPDiagnoseManager;->nativeWriteDiagData(JILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
