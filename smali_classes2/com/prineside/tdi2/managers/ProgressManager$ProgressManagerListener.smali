.class public interface abstract Lcom/prineside/tdi2/managers/ProgressManager$ProgressManagerListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/ProgressManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProgressManagerListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/ProgressManager$ProgressManagerListener$ProgressManagerListenerAdapter;
    }
.end annotation


# virtual methods
.method public abstract developerConsoleEnabled()V
.end method

.method public abstract doubleGainEnabled()V
.end method

.method public abstract itemsChanged(Lcom/prineside/tdi2/Item;II)V
.end method

.method public abstract saved()V
.end method
