.class public interface abstract Lcom/prineside/tdi2/systems/ProjectileSystem$ProjectileSystemListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/GameListener;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    classOnly = true
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/ProjectileSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProjectileSystemListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/systems/ProjectileSystem$ProjectileSystemListener$ProjectileSystemListenerAdapter;
    }
.end annotation


# virtual methods
.method public abstract projectileUnregistered(Lcom/prineside/tdi2/Projectile;)V
.end method
