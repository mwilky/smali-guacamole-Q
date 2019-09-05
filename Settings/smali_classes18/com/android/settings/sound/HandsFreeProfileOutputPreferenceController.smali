.class public Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;
.super Lcom/android/settings/sound/AudioSwitchPreferenceController;
.source "HandsFreeProfileOutputPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final INVALID_INDEX:I = -0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/sound/AudioSwitchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private getConnectedDeviceIndex(Ljava/lang/String;)I
    .locals 4

    iget-object v0, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mConnectedDevices:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public findActiveDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->findActiveHearingAidDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/settingslib/bluetooth/HeadsetProfile;

    move-result-object v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method getDefaultDeviceIndex()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    instance-of v1, p1, Landroidx/preference/ListPreference;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f120a03

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v3, p1

    check-cast v3, Landroidx/preference/ListPreference;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->getDefaultDeviceIndex()I

    move-result v2

    iput v2, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mSelectedIndex:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->setActiveBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v3, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->getConnectedDeviceIndex(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    return v2

    :cond_2
    iget-object v2, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    iput v4, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mSelectedIndex:I

    invoke-virtual {p0, v2}, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->setActiveBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 v2, 0x1

    return v2
.end method

.method public setActiveBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isAudioModeOngoingCall(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/settingslib/bluetooth/HeadsetProfile;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    invoke-virtual {v0, v2}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method setPreference([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroidx/preference/Preference;)V
    .locals 2

    move-object v0, p3

    check-cast v0, Landroidx/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mSelectedIndex:I

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setValueIndex(I)V

    iget v1, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mSelectedIndex:I

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mAudioSwitchPreferenceCallback:Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioSwitchCallback;

    invoke-interface {v1, v0}, Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioSwitchCallback;->onPreferenceDataChanged(Landroidx/preference/ListPreference;)V

    return-void
.end method

.method setupPreferenceEntries([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroid/bluetooth/BluetoothDevice;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->getDefaultDeviceIndex()I

    move-result v0

    iput v0, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mSelectedIndex:I

    iget-object v0, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120a03

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mSelectedIndex:I

    aput-object v0, p1, v1

    iget v1, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mSelectedIndex:I

    aput-object v0, p2, v1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p1, v1

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v1

    invoke-virtual {v3, p3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iput v1, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mSelectedIndex:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isAudioModeOngoingCall(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f120a03

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mConnectedDevices:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->getConnectedHfpDevices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mConnectedDevices:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->getConnectedHearingAidDevices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    iget-object v4, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v4, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v4, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/CharSequence;

    aput-object v1, v3, v2

    move-object v2, v3

    invoke-virtual {p0}, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->getDefaultDeviceIndex()I

    move-result v3

    iput v3, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mSelectedIndex:I

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2, v2, p1}, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->setPreference([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroidx/preference/Preference;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/lang/CharSequence;

    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->findActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->setupPreferenceEntries([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->setPreference([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroidx/preference/Preference;)V

    return-void
.end method
