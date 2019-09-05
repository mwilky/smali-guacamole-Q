.class public Lcom/android/settings/sim/SimPreferenceDialog;
.super Landroid/app/Activity;
.source "SimPreferenceDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;
    }
.end annotation


# instance fields
.field private final SIM_NAME:Ljava/lang/String;

.field private final TINT_POS:Ljava/lang/String;

.field mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

.field private mColorStrings:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mDialogLayout:Landroid/view/View;

.field private mSlotId:I

.field private mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTintArr:[I

.field private mTintSelectorPos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "sim_name"

    iput-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->SIM_NAME:Ljava/lang/String;

    const-string v0, "tint_pos"

    iput-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->TINT_POS:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/sim/SimPreferenceDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mTintSelectorPos:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/sim/SimPreferenceDialog;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mTintSelectorPos:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/sim/SimPreferenceDialog;)Landroid/telephony/SubscriptionInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/sim/SimPreferenceDialog;)Landroid/telephony/SubscriptionManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/sim/SimPreferenceDialog;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mTintArr:[I

    return-object v0
.end method

.method private createEditDialog(Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    const v3, 0x7f0a0622

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iget-object v3, v0, Lcom/android/settings/sim/SimPreferenceDialog;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Lcom/android/settings/Utils;->setEditTextCursorPosition(Landroid/widget/EditText;)V

    iget-object v3, v0, Lcom/android/settings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    const v4, 0x7f0a0644

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    new-instance v4, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;

    iget-object v5, v0, Lcom/android/settings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/android/settings/sim/SimPreferenceDialog;->mColorStrings:[Ljava/lang/String;

    const v7, 0x7f0d02b0

    invoke-direct {v4, v0, v5, v7, v6}, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;-><init>(Lcom/android/settings/sim/SimPreferenceDialog;Landroid/content/Context;I[Ljava/lang/String;)V

    const v5, 0x1090009

    invoke-virtual {v4, v5}, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const/4 v5, 0x0

    :goto_0
    iget-object v6, v0, Lcom/android/settings/sim/SimPreferenceDialog;->mTintArr:[I

    array-length v7, v6

    if-ge v5, v7, :cond_1

    aget v6, v6, v5

    iget-object v7, v0, Lcom/android/settings/sim/SimPreferenceDialog;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v7

    if-ne v6, v7, :cond_0

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setSelection(I)V

    iput v5, v0, Lcom/android/settings/sim/SimPreferenceDialog;->mTintSelectorPos:I

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v5, Lcom/android/settings/sim/SimPreferenceDialog$1;

    invoke-direct {v5, v0, v3}, Lcom/android/settings/sim/SimPreferenceDialog$1;-><init>(Lcom/android/settings/sim/SimPreferenceDialog;Landroid/widget/Spinner;)V

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v5, v0, Lcom/android/settings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iget-object v6, v0, Lcom/android/settings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    const v7, 0x7f0a0448

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, v0, Lcom/android/settings/sim/SimPreferenceDialog;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const v9, 0x104000e

    if-eqz v8, :cond_2

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v8, v0, Lcom/android/settings/sim/SimPreferenceDialog;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v8

    iget-object v10, v0, Lcom/android/settings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    const v11, 0x7f0a0122

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    move-object v9, v8

    goto :goto_3

    :cond_3
    iget-object v11, v0, Lcom/android/settings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_3
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, v0, Lcom/android/settings/sim/SimPreferenceDialog;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    const v11, 0x7f121398

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget-object v15, v0, Lcom/android/settings/sim/SimPreferenceDialog;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v15}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v15

    add-int/2addr v15, v12

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v13, v14

    invoke-static {v11, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v9, v0, Lcom/android/settings/sim/SimPreferenceDialog;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    const v11, 0x7f120b98

    new-instance v12, Lcom/android/settings/sim/SimPreferenceDialog$2;

    invoke-direct {v12, v0, v3}, Lcom/android/settings/sim/SimPreferenceDialog$2;-><init>(Lcom/android/settings/sim/SimPreferenceDialog;Landroid/widget/Spinner;)V

    invoke-virtual {v9, v11, v12}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v9, v0, Lcom/android/settings/sim/SimPreferenceDialog;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    const v11, 0x7f1203d8

    new-instance v12, Lcom/android/settings/sim/SimPreferenceDialog$3;

    invoke-direct {v12, v0}, Lcom/android/settings/sim/SimPreferenceDialog$3;-><init>(Lcom/android/settings/sim/SimPreferenceDialog;)V

    invoke-virtual {v9, v11, v12}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v9, v0, Lcom/android/settings/sim/SimPreferenceDialog;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v11, Lcom/android/settings/sim/SimPreferenceDialog$4;

    invoke-direct {v11, v0}, Lcom/android/settings/sim/SimPreferenceDialog$4;-><init>(Lcom/android/settings/sim/SimPreferenceDialog;)V

    invoke-virtual {v9, v11}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v9, v0, Lcom/android/settings/sim/SimPreferenceDialog;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v9}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/sim/SimPreferenceDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "slot_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mSlotId:I

    iget-object v1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget v2, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mSlotId:I

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    iget-object v1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10700bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mTintArr:[I

    iget-object v1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mColorStrings:[Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mTintSelectorPos:I

    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f0d0129

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimPreferenceDialog;->createEditDialog(Landroid/os/Bundle;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "tint_pos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    const v2, 0x7f0a0644

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    iput v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mTintSelectorPos:I

    iget-object v2, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    const v3, 0x7f0a0622

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const-string v3, "sim_name"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Lcom/android/settings/Utils;->setEditTextCursorPosition(Landroid/widget/EditText;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    iget v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mTintSelectorPos:I

    const-string v1, "tint_pos"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    const v1, 0x7f0a0622

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sim_name"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
