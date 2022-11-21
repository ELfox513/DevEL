.class public interface abstract Lcom/prineside/tdi2/BuffProcessor$BuffProcessorListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/GameListener;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    classOnly = true
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/BuffProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BuffProcessorListener"
.end annotation


# virtual methods
.method public abstract buffAdded(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Buff;)V
.end method

.method public abstract buffRemoved(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Buff;)V
.end method
