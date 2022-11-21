.class public Lcom/prineside/tdi2/systems/LootSystem$_EnemySystemListener;
.super Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener$EnemySystemListenerAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/LootSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "_EnemySystemListener"
.end annotation


# instance fields
.field public a:Lcom/prineside/tdi2/GameSystemProvider;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener$EnemySystemListenerAdapter;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/EnemySystem$EnemySystemListener$EnemySystemListenerAdapter;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/systems/LootSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/systems/LootSystem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/systems/LootSystem$_EnemySystemListener;-><init>(Lcom/prineside/tdi2/GameSystemProvider;)V

    return-void
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public enemyDie(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;Lcom/prineside/tdi2/Projectile;)V
    .locals 4

    iget-object p2, p1, Lcom/prineside/tdi2/Enemy;->loot:Lcom/badlogic/gdx/utils/Array;

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/prineside/tdi2/systems/LootSystem;->a()Lcom/badlogic/gdx/math/Vector2;

    move-result-object p2

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object p2, p0, Lcom/prineside/tdi2/systems/LootSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->_input:Lcom/prineside/tdi2/systems/InputSystem;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/prineside/tdi2/systems/InputSystem;->cameraController:Lcom/prineside/tdi2/CameraController;

    invoke-static {}, Lcom/prineside/tdi2/systems/LootSystem;->a()Lcom/badlogic/gdx/math/Vector2;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/prineside/tdi2/CameraController;->mapToStage(Lcom/badlogic/gdx/math/Vector2;)V

    :cond_0
    iget-object p2, p1, Lcom/prineside/tdi2/Enemy;->loot:Lcom/badlogic/gdx/utils/Array;

    iget p2, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    neg-int p2, p2

    int-to-float p2, p2

    const/high16 p3, 0x42c00000    # 96.0f

    mul-float p2, p2, p3

    const/high16 p4, 0x3f000000    # 0.5f

    mul-float p2, p2, p4

    const/high16 p4, 0x42400000    # 48.0f

    add-float/2addr p2, p4

    const/4 p4, 0x0

    :goto_0
    iget-object p5, p1, Lcom/prineside/tdi2/Enemy;->loot:Lcom/badlogic/gdx/utils/Array;

    iget v0, p5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p4, v0, :cond_2

    iget-object p5, p5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object v0, p5

    check-cast v0, [Lcom/prineside/tdi2/ItemStack;

    aget-object v0, v0, p4

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/LootSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    check-cast p5, [Lcom/prineside/tdi2/ItemStack;

    aget-object p5, p5, p4

    invoke-static {}, Lcom/prineside/tdi2/systems/LootSystem;->a()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v1, p2

    int-to-float v2, p4

    mul-float v2, v2, p3

    add-float/2addr v1, v2

    invoke-static {}, Lcom/prineside/tdi2/systems/LootSystem;->a()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v3, 0x2

    invoke-virtual {v0, p5, v1, v2, v3}, Lcom/prineside/tdi2/systems/GameStateSystem;->addLootIssuedPrizes(Lcom/prineside/tdi2/ItemStack;FFI)V

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getConstantId()I
    .locals 1

    const v0, 0x1870b

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/GameSystemProvider;

    iput-object p1, p0, Lcom/prineside/tdi2/systems/LootSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/LootSystem$_EnemySystemListener;->a:Lcom/prineside/tdi2/GameSystemProvider;

    const-class v1, Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
