.class Lcom/oneplus/screenshot/SaveImageInBackgroundTask;
.super Landroid/os/AsyncTask;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final SCREENSHOTS_DIR_NAME:Ljava/lang/String;

.field private static final SCREENSHOT_FILE_NAME_TEMPLATE:Ljava/lang/String; = "Screenshot_%s.png"

.field private static final SCREENSHOT_SHARE_SUBJECT_TEMPLATE:Ljava/lang/String; = "Screenshot (%s)"

.field private static final TAG:Ljava/lang/String; = "Longshot.SaveImageInBackgroundTask"

.field private static mTickerAddSpace:Z


# instance fields
.field private deleteIntent:Landroid/app/PendingIntent;

.field private mImageFileName:Ljava/lang/String;

.field private mImageFilePath:Ljava/lang/String;

.field private final mImageHeight:I

.field private final mImageTime:J

.field private final mImageWidth:I

.field private final mNotificationBuilder:Landroid/app/Notification$Builder;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

.field private final mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

.field private final mPublicNotificationBuilder:Landroid/app/Notification$Builder;

.field private mRecycleBitmap:Z

.field private final mScreenshotDir:Ljava/io/File;

.field private uri:Landroid/net/Uri;

.field private viewIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/os/Environment;->DIRECTORY_SCREENSHOTS:Ljava/lang/String;

    sput-object v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->SCREENSHOTS_DIR_NAME:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/oneplus/screenshot/SaveImageInBackgroundData;Landroid/app/NotificationManager;Z)V
    .locals 23

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-direct/range {p0 .. p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v10, 0x0

    iput-object v10, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->viewIntent:Landroid/content/Intent;

    iput-object v10, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->deleteIntent:Landroid/app/PendingIntent;

    iput-object v10, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->uri:Landroid/net/Uri;

    const/4 v0, 0x0

    iput-boolean v0, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mRecycleBitmap:Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iput-object v9, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    sget-wide v1, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotBeginTime:J

    iput-wide v1, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    iget-wide v1, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    sput-wide v1, Lcom/oneplus/screenshot/GlobalScreenshot;->mLastImageTime:J

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMdd-HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v3, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "game_mode_status"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->peekTopActivity()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->peekTopActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v10

    :goto_0
    move-object v14, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "top Activity component info isNull :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, 0x1

    if-nez v14, :cond_1

    move v2, v15

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Longshot.SaveImageInBackgroundTask"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "1"

    invoke-virtual {v13, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v3, "Screenshot_%s.png"

    if-eqz v1, :cond_2

    if-eqz v14, :cond_2

    invoke-static {v14}, Lcom/oneplus/screenshot/util/Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v4, v15, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    goto :goto_2

    :cond_2
    new-array v1, v15, [Ljava/lang/Object;

    aput-object v12, v1, v0

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screenshot name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->SCREENSHOTS_DIR_NAME:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    iget-object v2, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    iget-object v0, v9, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    iget-object v0, v9, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    iget v6, v9, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->iconSize:I

    iget v5, v9, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->previewWidth:I

    iget v4, v9, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->previewheight:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    move-object v3, v0

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    move-object v2, v0

    const/high16 v0, 0x3e800000    # 0.25f

    invoke-virtual {v2, v0}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v0, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    move-object v1, v0

    const v16, 0x40ffffff    # 7.9999995f

    iget v0, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    sub-int v0, v5, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v10, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    sub-int v10, v4, v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {v1, v0, v10}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v10, v9, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    move-object/from16 v17, v1

    move-object v1, v10

    move-object v10, v2

    move v2, v5

    move-object/from16 v18, v3

    move v3, v4

    move/from16 v19, v4

    move-object/from16 v4, v17

    move/from16 v20, v5

    move-object/from16 v5, v18

    move v15, v6

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->generateAdjustedHwBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Matrix;Landroid/graphics/Paint;I)Landroid/graphics/Bitmap;

    move-result-object v21

    int-to-float v0, v15

    iget v1, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    iget v2, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    div-float v6, v0, v1

    move-object/from16 v5, v17

    invoke-virtual {v5, v6, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    int-to-float v0, v15

    iget v1, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v6

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    int-to-float v2, v15

    iget v3, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v6

    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v1, v9, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    move v2, v15

    move v3, v15

    move-object v4, v5

    move-object/from16 v5, v18

    move/from16 v22, v6

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->generateAdjustedHwBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Matrix;Landroid/graphics/Paint;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-boolean v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    sput-boolean v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    move-object/from16 v1, p3

    iput-object v1, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v4, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v4}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v4

    iput-object v4, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    new-instance v4, Landroid/app/Notification$Builder;

    const-string v5, "SCN"

    invoke-direct {v4, v8, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v6, 0x7f0d003c

    invoke-virtual {v11, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v4, 0x7f0d003a

    invoke-virtual {v11, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v6, 0x7f0801e1

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v6, "progress"

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const v6, 0x106001c

    invoke-virtual {v11, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iput-object v1, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, v8, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0d003b

    invoke-virtual {v11, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    if-eqz v5, :cond_3

    const-string v5, " "

    goto :goto_3

    :cond_3
    const-string v5, ""

    :goto_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v4, 0x7f0d003c

    invoke-virtual {v11, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v4, 0x7f0d003a

    invoke-virtual {v11, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v4, 0x7f0801e1

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v11, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v4, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v4, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v1

    iput-object v1, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    iget-object v1, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const/16 v4, 0x20

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    iget-object v1, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v4, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object v1, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    iget-object v1, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    const/4 v4, 0x0

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v4}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move/from16 v1, p4

    iput-boolean v1, v7, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mRecycleBitmap:Z

    return-void
.end method

.method private generateAdjustedHwBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Matrix;Landroid/graphics/Paint;I)Landroid/graphics/Bitmap;
    .locals 3

    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v1

    invoke-virtual {v1, p6}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {v1, p1, p4, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 24

    move-object/from16 v1, p0

    const-string v2, ".png"

    const-string v3, "\\."

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saving image, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p1

    array-length v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->isCancelled()Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", time:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "Longshot.SaveImageInBackgroundTask"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->isCancelled()Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    return-object v6

    :cond_0
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget-object v7, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    iget-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget-object v8, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-nez v8, :cond_1

    const-string v0, "image is null"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_1
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "image is recycled"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_2
    :try_start_0
    iget-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    iget-wide v10, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    iget-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/oneplus/screenshot/util/Utils;->getFileOutputStream(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v0

    move-object v12, v0

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v13, 0x64

    invoke-virtual {v8, v0, v13, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const-string v0, "compress end"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V

    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->isEncryptImage:Z

    move v13, v0

    const/4 v14, 0x0

    if-eqz v13, :cond_4

    iget-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    new-instance v0, Ljava/lang/StringBuffer;

    aget-object v6, v15, v14

    invoke-direct {v0, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    const-string v0, ".png"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    aget-object v4, v15, v14

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->sImeiNumber:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v0, "doencrypt s"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v17, v6

    move-object/from16 v6, v16

    invoke-static {v0, v6, v14}, Lcom/oneplus/screenshot/Native;->doencrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "doencrypt e"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, " delete file s"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    iget-object v14, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    move-object/from16 v16, v6

    iget-object v6, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    invoke-direct {v0, v14, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v6, v0

    :try_start_1
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string v0, " delete file e"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v14, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    invoke-virtual {v14, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v14, 0x0

    aget-object v3, v3, v14

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    :cond_4
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "_data"

    iget-object v4, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "title"

    iget-object v4, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "_display_name"

    iget-object v4, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "datetaken"

    iget-wide v14, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "date_added"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "date_modified"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v3, "image/png"

    const-string v4, "image/jpeg"

    const-string v6, "mime_type"

    if-eqz v13, :cond_5

    :try_start_3
    invoke-virtual {v0, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string v6, "width"

    iget v14, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v0, v6, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "height"

    iget v14, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v0, v6, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "_size"

    new-instance v14, Ljava/io/File;

    iget-object v15, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v0, v6, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v6, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "screenshot name = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v14

    new-instance v15, Ljava/util/Date;

    move-wide/from16 v17, v10

    iget-wide v10, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    invoke-direct {v15, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v14, v15}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "Screenshot (%s)"

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v10, v15, v16

    invoke-static {v11, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    new-instance v15, Landroid/content/Intent;

    const-string v14, "android.intent.action.SEND"

    invoke-direct {v15, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v14, v15

    if-eqz v13, :cond_6

    invoke-virtual {v14, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_6
    invoke-virtual {v14, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v14, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v14, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v3, -0x7fffff3d

    invoke-virtual {v14, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/oneplus/screenshot/GlobalScreenshot$TargetChosenReceiver;

    invoke-direct {v3, v7, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x50000000

    const/4 v15, 0x0

    invoke-static {v7, v15, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    nop

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v15

    const/4 v4, 0x0

    invoke-static {v14, v4, v15}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object v15

    const v4, 0x10008000

    invoke-virtual {v15, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    const/high16 v15, 0x10000000

    move-object/from16 v19, v2

    const/4 v2, 0x0

    invoke-static {v7, v2, v4, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    move-object v2, v15

    new-instance v15, Landroid/app/Notification$Action$Builder;

    move-object/from16 v20, v0

    const v0, 0x7f0d0028

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v22, v3

    const v3, 0x7f08011a

    invoke-direct {v15, v3, v0, v2}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    move-object v0, v15

    iget-object v3, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v15

    invoke-virtual {v3, v15}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    new-instance v3, Landroid/content/Intent;

    const-class v15, Lcom/oneplus/screenshot/GlobalScreenshot$DeleteScreenshotReceiver;

    invoke-direct {v3, v7, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v15, "android:screenshot_uri_id"

    move-object/from16 v21, v0

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v3, 0x50000000

    const/4 v15, 0x0

    invoke-static {v7, v15, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v3, Landroid/app/Notification$Action$Builder;

    const v15, 0x7f0d0027

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v23, v2

    const v2, 0x7f080119

    invoke-direct {v3, v2, v15, v0}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    move-object v2, v3

    iget-object v3, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v15

    invoke-virtual {v3, v15}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    iget-object v3, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iput-object v6, v3, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    iget-object v3, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    const/4 v15, 0x0

    iput-object v15, v3, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    iget-object v3, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    const/4 v15, 0x0

    iput v15, v3, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->errorMsgResId:I

    iput-object v4, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->viewIntent:Landroid/content/Intent;

    iput-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->deleteIntent:Landroid/app/PendingIntent;

    iget-object v3, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget-object v3, v3, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->handler:Landroid/os/Handler;

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    nop

    goto :goto_3

    :catch_1
    move-exception v0

    iget-object v2, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    invoke-virtual {v2}, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->clearImage()V

    iget-object v2, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    const v3, 0x7f0d0036

    iput v3, v2, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->errorMsgResId:I

    const-string v2, "save img error"

    invoke-static {v5, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    iget-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->finshRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->handler:Landroid/os/Handler;

    iget-object v2, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget-object v2, v2, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->finshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    iget-boolean v0, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mRecycleBitmap:Z

    if-eqz v0, :cond_8

    nop

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v8, 0x0

    :cond_8
    const-string v0, "saving image end "

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2
.end method

.method public getDeleteIntent()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->deleteIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getImageUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getViewIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->viewIntent:Landroid/content/Intent;

    return-object v0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->onCancelled(Ljava/lang/Void;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/Void;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->clearImage()V

    iget-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->clearContext()V

    iget-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save img done, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget v1, v1, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->errorMsgResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Longshot.SaveImageInBackgroundTask"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->errorMsgResId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v3, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget v3, v3, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->errorMsgResId:I

    invoke-static {v0, v2, v3}, Lcom/oneplus/screenshot/GlobalScreenshot;->notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;I)V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget-object v4, v4, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    const-string v5, "image/jpeg"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const v4, 0x10000001

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v4, 0x1

    const-string v5, "load_media_set"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    const v8, 0x7f0d0039

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    const v9, 0x7f0d0038

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v10, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget-object v10, v10, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-static {v10, v11, v3, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    const v10, 0x106001c

    invoke-virtual {v0, v10}, Landroid/content/Context;->getColor(I)I

    move-result v12

    invoke-virtual {v7, v12}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget-object v8, v8, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-static {v8, v11, v3, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v0, v10}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8, v11}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v8, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_0
    iget-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget-boolean v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->finishAfterSave:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    iget-object v0, v0, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const-string v0, "after save image run finisher"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/oneplus/screenshot/SaveImageInBackgroundData;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/SaveImageInBackgroundData;->clearContext()V

    return-void
.end method
