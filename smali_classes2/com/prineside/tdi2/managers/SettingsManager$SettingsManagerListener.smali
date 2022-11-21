.class public interface abstract Lcom/prineside/tdi2/managers/SettingsManager$SettingsManagerListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/SettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SettingsManagerListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/SettingsManager$SettingsManagerListener$SettingsManagerListenerAdapter;
    }
.end annotation


# virtual methods
.method public abstract customValueChanged(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;D)V
.end method

.method public abstract settingsChanged()V
.end method
