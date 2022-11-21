.class public interface abstract Lcom/prineside/tdi2/systems/UnitSystem$UnitSystemListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/GameListener;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    classOnly = true
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/UnitSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UnitSystemListener"
.end annotation


# virtual methods
.method public abstract unitDie(Lcom/prineside/tdi2/Unit;Lcom/prineside/tdi2/Enemy;)V
.end method
