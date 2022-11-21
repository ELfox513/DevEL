.class public abstract Lcom/prineside/tdi2/Projectile;
.super Lcom/prineside/tdi2/Registrable;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Pool$Poolable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    classOnly = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/Projectile$Factory;
    }
.end annotation


# static fields
.field public static final RAYCAST_INTERVAL_MAX:F = 69.12f

.field public static final RAYCAST_INTERVAL_MIN:F = 32.0f

.field public static final b:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Enemy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:F

.field public affectedByAbility:Lcom/prineside/tdi2/Ability;

.field public id:I

.field public position:Lcom/badlogic/gdx/math/Vector2;

.field public type:Lcom/prineside/tdi2/enums/ProjectileType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/Enemy;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    sput-object v0, Lcom/prineside/tdi2/Projectile;->b:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/enums/ProjectileType;)V
    .locals 1

    invoke-direct {p0}, Lcom/prineside/tdi2/Registrable;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/Projectile;->id:I

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/Projectile;->position:Lcom/badlogic/gdx/math/Vector2;

    iput-object p1, p0, Lcom/prineside/tdi2/Projectile;->type:Lcom/prineside/tdi2/enums/ProjectileType;

    return-void
.end method


# virtual methods
.method public abstract applyDrawInterpolation(F)V
.end method

.method public abstract draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
.end method

.method public flyOnEnemy(Lcom/prineside/tdi2/Enemy;)V
    .locals 0

    return-void
.end method

.method public getPosition()Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Projectile;->position:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public abstract hasReachedTarget()Z
.end method

.method public hit()V
    .locals 0

    return-void
.end method

.method public abstract isDone()Z
.end method

.method public multiplyDamage(FLcom/prineside/tdi2/Ability;)V
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/Projectile;->a:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/prineside/tdi2/Projectile;->a:F

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/prineside/tdi2/Projectile;->affectedByAbility:Lcom/prineside/tdi2/Ability;

    :cond_0
    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const-class v0, Lcom/prineside/tdi2/enums/ProjectileType;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/enums/ProjectileType;

    iput-object v0, p0, Lcom/prineside/tdi2/Projectile;->type:Lcom/prineside/tdi2/enums/ProjectileType;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/Projectile;->id:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/Projectile;->a:F

    const-class v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iput-object v0, p0, Lcom/prineside/tdi2/Projectile;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/Ability;

    iput-object p1, p0, Lcom/prineside/tdi2/Projectile;->affectedByAbility:Lcom/prineside/tdi2/Ability;

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/Projectile;->a:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/Projectile;->affectedByAbility:Lcom/prineside/tdi2/Ability;

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/Projectile;->id:I

    iget-object v0, p0, Lcom/prineside/tdi2/Projectile;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector2;->setZero()Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public setup()V
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/tdi2/Registrable;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Projectile must be registered by ProjectileSystem before it can be set up"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract update(F)V
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Projectile;->type:Lcom/prineside/tdi2/enums/ProjectileType;

    const-class v1, Lcom/prineside/tdi2/enums/ProjectileType;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget v0, p0, Lcom/prineside/tdi2/Projectile;->id:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget v0, p0, Lcom/prineside/tdi2/Projectile;->a:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/Projectile;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Projectile;->affectedByAbility:Lcom/prineside/tdi2/Ability;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
