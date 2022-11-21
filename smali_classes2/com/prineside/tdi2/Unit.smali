.class public abstract Lcom/prineside/tdi2/Unit;
.super Lcom/prineside/tdi2/Registrable;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    classOnly = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/Unit$Factory;
    }
.end annotation


# instance fields
.field public angle:F

.field public currentTile:Lcom/prineside/tdi2/Tile;

.field public drawAngle:F
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public drawOverEnemies:Z

.field public drawPosition:Lcom/badlogic/gdx/math/Vector2;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public graphPath:Lcom/prineside/tdi2/Path;

.field public id:I

.field public passedTiles:F

.field public position:Lcom/badlogic/gdx/math/Vector2;

.field public setUpByUnitSystem:Z

.field public sideShiftIndex:I

.field public spawned:Z

.field public speed:F

.field public startingTile:Lcom/prineside/tdi2/Tile;

.field public staticPosition:Z

.field public targetTile:Lcom/prineside/tdi2/Tile;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/prineside/tdi2/Registrable;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/Unit;->position:Lcom/badlogic/gdx/math/Vector2;

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/Unit;->angle:F

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/Unit;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/prineside/tdi2/Unit;->speed:F

    new-instance v0, Lcom/prineside/tdi2/Path;

    invoke-direct {v0}, Lcom/prineside/tdi2/Path;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/Unit;->graphPath:Lcom/prineside/tdi2/Path;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/prineside/tdi2/Registrable;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/Unit;->position:Lcom/badlogic/gdx/math/Vector2;

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/Unit;->angle:F

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/Unit;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/prineside/tdi2/Unit;->speed:F

    new-instance v0, Lcom/prineside/tdi2/Path;

    invoke-direct {v0}, Lcom/prineside/tdi2/Path;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/Unit;->graphPath:Lcom/prineside/tdi2/Path;

    iput p1, p0, Lcom/prineside/tdi2/Unit;->type:I

    return-void
.end method


# virtual methods
.method public applyDrawInterpolation(F)V
    .locals 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/prineside/tdi2/Unit;->staticPosition:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/Unit;->passedTiles:F

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/Unit;->getPassedTilesDelta(F)F

    move-result p1

    add-float/2addr v0, p1

    iget-object p1, p0, Lcom/prineside/tdi2/Unit;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/prineside/tdi2/Unit;->graphPath:Lcom/prineside/tdi2/Path;

    iget v2, p0, Lcom/prineside/tdi2/Unit;->sideShiftIndex:I

    invoke-virtual {v1, v0, v2}, Lcom/prineside/tdi2/Path;->getPosition(FI)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object p1, p0, Lcom/prineside/tdi2/Unit;->graphPath:Lcom/prineside/tdi2/Path;

    iget v1, p0, Lcom/prineside/tdi2/Unit;->sideShiftIndex:I

    invoke-virtual {p1, v0, v1}, Lcom/prineside/tdi2/Path;->getRotation(FI)F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/Unit;->drawAngle:F

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/prineside/tdi2/Unit;->angle:F

    iput p1, p0, Lcom/prineside/tdi2/Unit;->drawAngle:F

    iget-object p1, p0, Lcom/prineside/tdi2/Unit;->drawPosition:Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/prineside/tdi2/Unit;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    :goto_0
    return-void
.end method

.method public abstract drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
.end method

.method public getPassedTilesDelta(F)F
    .locals 4

    iget-boolean v0, p0, Lcom/prineside/tdi2/Unit;->staticPosition:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/Unit;->graphPath:Lcom/prineside/tdi2/Path;

    iget v1, p0, Lcom/prineside/tdi2/Unit;->passedTiles:F

    iget v2, p0, Lcom/prineside/tdi2/Unit;->sideShiftIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/Path;->getSpeedMultiplier(FI)F

    move-result v0

    iget-object v1, p0, Lcom/prineside/tdi2/Unit;->graphPath:Lcom/prineside/tdi2/Path;

    iget v2, p0, Lcom/prineside/tdi2/Unit;->passedTiles:F

    iget v3, p0, Lcom/prineside/tdi2/Unit;->speed:F

    mul-float v3, v3, p1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/prineside/tdi2/Unit;->sideShiftIndex:I

    invoke-virtual {v1, v2, v3}, Lcom/prineside/tdi2/Path;->getSpeedMultiplier(FI)F

    move-result v1

    iget v2, p0, Lcom/prineside/tdi2/Unit;->speed:F

    mul-float v2, v2, p1

    invoke-static {v0, v1}, Ljava/lang/StrictMath;->min(FF)F

    move-result p1

    mul-float v2, v2, p1

    return v2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unit is static"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSize()F
    .locals 1

    const v0, 0x41cccccd    # 25.6f

    return v0
.end method

.method public onSpawned()V
    .locals 0

    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/Unit;->id:I

    const-class v1, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/math/Vector2;

    iput-object v1, p0, Lcom/prineside/tdi2/Unit;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/Unit;->angle:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/Unit;->type:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/Unit;->speed:F

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/Tile;

    iput-object v0, p0, Lcom/prineside/tdi2/Unit;->startingTile:Lcom/prineside/tdi2/Tile;

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/Tile;

    iput-object v0, p0, Lcom/prineside/tdi2/Unit;->targetTile:Lcom/prineside/tdi2/Tile;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/Unit;->staticPosition:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/Unit;->setUpByUnitSystem:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/Unit;->drawOverEnemies:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/Unit;->sideShiftIndex:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/Unit;->passedTiles:F

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/Tile;

    iput-object v0, p0, Lcom/prineside/tdi2/Unit;->currentTile:Lcom/prineside/tdi2/Tile;

    const-class v0, Lcom/prineside/tdi2/Path;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/Path;

    iput-object p1, p0, Lcom/prineside/tdi2/Unit;->graphPath:Lcom/prineside/tdi2/Path;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/tdi2/Unit;->spawned:Z

    return-void
.end method

.method public update(F)V
    .locals 0

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget v0, p0, Lcom/prineside/tdi2/Unit;->id:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget-object v0, p0, Lcom/prineside/tdi2/Unit;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/Unit;->angle:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/Unit;->type:I

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget v0, p0, Lcom/prineside/tdi2/Unit;->speed:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/Unit;->startingTile:Lcom/prineside/tdi2/Tile;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Unit;->targetTile:Lcom/prineside/tdi2/Tile;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/Unit;->staticPosition:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/Unit;->setUpByUnitSystem:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/Unit;->drawOverEnemies:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget v0, p0, Lcom/prineside/tdi2/Unit;->sideShiftIndex:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget v0, p0, Lcom/prineside/tdi2/Unit;->passedTiles:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/Unit;->currentTile:Lcom/prineside/tdi2/Tile;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Unit;->graphPath:Lcom/prineside/tdi2/Path;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/Unit;->spawned:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    return-void
.end method
