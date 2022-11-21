.class public Lcom/prineside/tdi2/enemies/HealerEnemy;
.super Lcom/prineside/tdi2/Enemy;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/enemies/HealerEnemy$HealerEnemyFactory;
    }
.end annotation


# static fields
.field public static final w:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public v:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P500:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/enemies/HealerEnemy;->w:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/EnemyType;->HEALER:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Enemy;-><init>(Lcom/prineside/tdi2/enums/EnemyType;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/enemies/HealerEnemy$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/enemies/HealerEnemy;-><init>()V

    return-void
.end method


# virtual methods
.method public drawBatchAdditive(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 6

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Enemy;->drawBatchAdditive(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    sget-object p2, Lcom/prineside/tdi2/enemies/HealerEnemy;->w:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/EnemyManager;->F:Lcom/prineside/tdi2/managers/EnemyManager$Factories;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/EnemyManager$Factories;->HEALER:Lcom/prineside/tdi2/enemies/HealerEnemy$HealerEnemyFactory;

    iget-object v1, p2, Lcom/prineside/tdi2/enemies/HealerEnemy$HealerEnemyFactory;->s:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object p2, p0, Lcom/prineside/tdi2/Enemy;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v2, 0x43000000    # 128.0f

    sub-float v3, v0, v2

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr p2, v2

    const/high16 v4, 0x43800000    # 256.0f

    const/high16 v5, 0x43800000    # 256.0f

    move-object v0, p1

    move v2, v3

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    sget-object p2, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public getBaseDamage()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public hasDrawPriority()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Enemy;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/enemies/HealerEnemy;->v:F

    return-void
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/prineside/tdi2/Enemy;->reset()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/enemies/HealerEnemy;->v:F

    return-void
.end method

.method public update(F)V
    .locals 10

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Enemy;->update(F)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/Enemy;->getCurrentTile()Lcom/prineside/tdi2/Tile;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/prineside/tdi2/enemies/HealerEnemy;->v:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/enemies/HealerEnemy;->v:F

    const p1, 0x3e19999a    # 0.15f

    cmpl-float p1, v0, p1

    if-lez p1, :cond_3

    const/4 p1, 0x0

    iput p1, p0, Lcom/prineside/tdi2/enemies/HealerEnemy;->v:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/Enemy;->getCurrentTile()Lcom/prineside/tdi2/Tile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Tile;->getNeighbourTilesAndThis()Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_3

    iget-object v2, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/Tile;

    aget-object v2, v2, v1

    iget-object v3, v2, Lcom/prineside/tdi2/Tile;->enemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v3, 0x0

    :goto_1
    iget-object v4, v2, Lcom/prineside/tdi2/Tile;->enemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v5, :cond_2

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-eqz v4, :cond_1

    iget-object v5, v4, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    sget-object v6, Lcom/prineside/tdi2/enums/EnemyType;->HEALER:Lcom/prineside/tdi2/enums/EnemyType;

    if-ne v5, v6, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v5

    invoke-virtual {v4}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/math/Vector2;->dst2(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v5

    const/high16 v6, 0x46800000    # 16384.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->buffManager:Lcom/prineside/tdi2/managers/BuffManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/BuffManager;->F:Lcom/prineside/tdi2/managers/BuffManager$Factories;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/BuffManager$Factories;->REGENERATION:Lcom/prineside/tdi2/buffs/RegenerationBuff$RegenerationBuffFactory;

    invoke-virtual {v5}, Lcom/prineside/tdi2/Buff$Factory;->obtain()Lcom/prineside/tdi2/Buff;

    move-result-object v5

    check-cast v5, Lcom/prineside/tdi2/buffs/RegenerationBuff;

    const v6, 0x3e4ccccd    # 0.2f

    const/high16 v7, 0x40000000    # 2.0f

    iget v8, v4, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    iget v9, p0, Lcom/prineside/tdi2/Enemy;->maxHealth:F

    invoke-static {v8, v9}, Ljava/lang/StrictMath;->min(FF)F

    move-result v8

    const v9, 0x3d4ccccd    # 0.05f

    mul-float v8, v8, v9

    iget-object v9, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v9, v9, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {v9, p0}, Lcom/prineside/tdi2/systems/EnemySystem;->getReference(Lcom/prineside/tdi2/Enemy;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    move-result-object v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/prineside/tdi2/buffs/RegenerationBuff;->setup(FFFLcom/prineside/tdi2/Enemy$EnemyReference;)V

    iget-object v6, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v6, v6, Lcom/prineside/tdi2/GameSystemProvider;->buff:Lcom/prineside/tdi2/systems/BuffSystem;

    iget-object v6, v6, Lcom/prineside/tdi2/systems/BuffSystem;->P_REGENERATION:Lcom/prineside/tdi2/buffs/processors/RegenerationBuffProcessor;

    invoke-virtual {v6, v4, v5}, Lcom/prineside/tdi2/buffs/processors/RegenerationBuffProcessor;->addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/buffs/RegenerationBuff;)Z

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Enemy;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget p1, p0, Lcom/prineside/tdi2/enemies/HealerEnemy;->v:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    return-void
.end method
