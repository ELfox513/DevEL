.class public interface abstract Lcom/prineside/tdi2/managers/ResearchManager$ResearchManagerListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/ResearchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResearchManagerListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/ResearchManager$ResearchManagerListener$ResearchManagerListenerAdapter;
    }
.end annotation


# virtual methods
.method public abstract researchCompleted(Lcom/prineside/tdi2/Research;)V
.end method

.method public abstract researchStarted(Lcom/prineside/tdi2/Research;J)V
.end method

.method public abstract researchesUpdated()V
.end method
