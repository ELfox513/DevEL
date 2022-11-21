.class public interface abstract Lcom/prineside/tdi2/Unit$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/Unit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/Unit$Factory$BasicAbstractFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/prineside/tdi2/Unit;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/utils/Disposable;"
    }
.end annotation


# virtual methods
.method public abstract create()Lcom/prineside/tdi2/Unit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract dispose()V
.end method

.method public abstract getBreakParticle()Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;
.end method

.method public abstract getColor()Lcom/badlogic/gdx/graphics/Color;
.end method

.method public abstract setup()V
.end method
