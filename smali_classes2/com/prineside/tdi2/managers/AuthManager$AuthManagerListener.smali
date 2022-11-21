.class public interface abstract Lcom/prineside/tdi2/managers/AuthManager$AuthManagerListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/AuthManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AuthManagerListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/AuthManager$AuthManagerListener$AuthManagerListenerAdapter;
    }
.end annotation


# virtual methods
.method public abstract autoSaveModeChanged()V
.end method

.method public abstract signInStatusUpdated()V
.end method

.method public abstract stateUpdated()V
.end method
