.class public interface abstract Lcom/prineside/tdi2/Manager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/Manager$ManagerWithListeners;,
        Lcom/prineside/tdi2/Manager$ManagerAdapter;
    }
.end annotation


# virtual methods
.method public abstract clearPools()V
.end method

.method public abstract postRender(F)V
.end method

.method public abstract preRender(F)V
.end method

.method public abstract setup()V
.end method

.method public abstract test()V
.end method
