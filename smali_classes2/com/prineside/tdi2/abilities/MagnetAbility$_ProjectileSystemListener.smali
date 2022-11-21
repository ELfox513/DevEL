.class public Lcom/prineside/tdi2/abilities/MagnetAbility$_ProjectileSystemListener;
.super Lcom/prineside/tdi2/systems/ProjectileSystem$ProjectileSystemListener$ProjectileSystemListenerAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/abilities/MagnetAbility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "_ProjectileSystemListener"
.end annotation


# instance fields
.field public a:Lcom/prineside/tdi2/abilities/MagnetAbility;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/ProjectileSystem$ProjectileSystemListener$ProjectileSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/abilities/MagnetAbility;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/ProjectileSystem$ProjectileSystemListener$ProjectileSystemListenerAdapter;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/abilities/MagnetAbility$_ProjectileSystemListener;->a:Lcom/prineside/tdi2/abilities/MagnetAbility;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/abilities/MagnetAbility;Lcom/prineside/tdi2/abilities/MagnetAbility$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/abilities/MagnetAbility$_ProjectileSystemListener;-><init>(Lcom/prineside/tdi2/abilities/MagnetAbility;)V

    return-void
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getConstantId()I
    .locals 1

    const v0, 0x56c4168

    return v0
.end method

.method public projectileUnregistered(Lcom/prineside/tdi2/Projectile;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/abilities/MagnetAbility$_ProjectileSystemListener;->a:Lcom/prineside/tdi2/abilities/MagnetAbility;

    invoke-static {v0}, Lcom/prineside/tdi2/abilities/MagnetAbility;->d(Lcom/prineside/tdi2/abilities/MagnetAbility;)Lcom/badlogic/gdx/utils/IntSet;

    move-result-object v0

    iget p1, p1, Lcom/prineside/tdi2/Projectile;->id:I

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntSet;->remove(I)Z

    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/tdi2/abilities/MagnetAbility;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/abilities/MagnetAbility;

    iput-object p1, p0, Lcom/prineside/tdi2/abilities/MagnetAbility$_ProjectileSystemListener;->a:Lcom/prineside/tdi2/abilities/MagnetAbility;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/abilities/MagnetAbility$_ProjectileSystemListener;->a:Lcom/prineside/tdi2/abilities/MagnetAbility;

    const-class v1, Lcom/prineside/tdi2/abilities/MagnetAbility;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
