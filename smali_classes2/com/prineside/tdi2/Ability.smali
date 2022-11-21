.class public abstract Lcom/prineside/tdi2/Ability;
.super Lcom/prineside/tdi2/Registrable;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    classOnly = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/Ability$Factory;
    }
.end annotation


# instance fields
.field public a:F

.field public type:Lcom/prineside/tdi2/enums/AbilityType;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/enums/AbilityType;)V
    .locals 1

    invoke-direct {p0}, Lcom/prineside/tdi2/Registrable;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/prineside/tdi2/Ability;->a:F

    iput-object p1, p0, Lcom/prineside/tdi2/Ability;->type:Lcom/prineside/tdi2/enums/AbilityType;

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->isFastForwarding()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->abilityManager:Lcom/prineside/tdi2/managers/AbilityManager;

    iget-object v1, p0, Lcom/prineside/tdi2/Ability;->type:Lcom/prineside/tdi2/enums/AbilityType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AbilityManager;->getFactory(Lcom/prineside/tdi2/enums/AbilityType;)Lcom/prineside/tdi2/Ability$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Ability$Factory;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    const v1, 0x3f0f5c29    # 0.56f

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/GraphicsSystem;->screenBorderGradient:Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;

    invoke-virtual {v1, v0, p1}, Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;->flash(Lcom/badlogic/gdx/graphics/Color;F)V

    :cond_0
    return-void
.end method

.method public abstract draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
.end method

.method public drawBatchAdditive(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 0

    return-void
.end method

.method public final getKilledEnemiesCoinMultiplier()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/Ability;->a:F

    return v0
.end method

.method public abstract isDone()Z
.end method

.method public onDone()V
    .locals 0

    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const-class v0, Lcom/prineside/tdi2/enums/AbilityType;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/enums/AbilityType;

    iput-object p1, p0, Lcom/prineside/tdi2/Ability;->type:Lcom/prineside/tdi2/enums/AbilityType;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/Ability;->a:F

    return-void
.end method

.method public abstract start(II)V
.end method

.method public startEffects()V
    .locals 1

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Ability;->a(F)V

    return-void
.end method

.method public abstract update(F)V
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Ability;->type:Lcom/prineside/tdi2/enums/AbilityType;

    const-class v1, Lcom/prineside/tdi2/enums/AbilityType;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget p1, p0, Lcom/prineside/tdi2/Ability;->a:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    return-void
.end method
