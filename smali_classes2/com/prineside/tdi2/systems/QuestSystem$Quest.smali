.class public interface abstract Lcom/prineside/tdi2/systems/QuestSystem$Quest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/QuestSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Quest"
.end annotation


# virtual methods
.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract isCompleted()Z
.end method

.method public abstract onCompletion()V
.end method

.method public abstract update()V
.end method
