.class public abstract Lcom/prineside/tdi2/systems/ProjectileSystem$ProjectileSystemListener$ProjectileSystemListenerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/systems/ProjectileSystem$ProjectileSystemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/ProjectileSystem$ProjectileSystemListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ProjectileSystemListenerAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public projectileUnregistered(Lcom/prineside/tdi2/Projectile;)V
    .locals 0

    return-void
.end method
