.class public abstract Lcom/prineside/tdi2/Gate;
.super Lcom/prineside/tdi2/Registrable;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    arrayLevels = 0x3
    classOnly = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/Gate$Side;,
        Lcom/prineside/tdi2/Gate$Factory;
    }
.end annotation


# static fields
.field public static final THICKNESS:F = 28.0f


# instance fields
.field public a:Lcom/prineside/tdi2/enums/GateType;

.field public b:Lcom/prineside/tdi2/Gate$Side;

.field public d:I

.field public highlightParticleA:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public highlightParticleB:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public k:I


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/enums/GateType;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/Registrable;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/Gate;->a:Lcom/prineside/tdi2/enums/GateType;

    return-void
.end method


# virtual methods
.method public addSellItems(Lcom/badlogic/gdx/utils/Array;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract cloneGate()Lcom/prineside/tdi2/Gate;
.end method

.method public drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FII)V
    .locals 0

    return-void
.end method

.method public abstract drawStatic(Lcom/badlogic/gdx/graphics/g2d/SpriteCache;II)V
.end method

.method public abstract generateIcon(FZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
.end method

.method public abstract getPrestigeScore()D
.end method

.method public abstract getRarity()Lcom/prineside/tdi2/enums/RarityType;
.end method

.method public getSide()Lcom/prineside/tdi2/Gate$Side;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Gate;->b:Lcom/prineside/tdi2/Gate$Side;

    if-nez v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Gate$Side;->LEFT:Lcom/prineside/tdi2/Gate$Side;

    iput-object v0, p0, Lcom/prineside/tdi2/Gate;->b:Lcom/prineside/tdi2/Gate$Side;

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/Gate;->b:Lcom/prineside/tdi2/Gate$Side;

    return-object v0
.end method

.method public abstract getSortingScore(Lcom/prineside/tdi2/enums/ItemSortingType;)I
.end method

.method public getType()Lcom/prineside/tdi2/enums/GateType;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Gate;->a:Lcom/prineside/tdi2/enums/GateType;

    return-object v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/Gate;->d:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/Gate;->k:I

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const-class v0, Lcom/prineside/tdi2/enums/GateType;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/enums/GateType;

    iput-object v0, p0, Lcom/prineside/tdi2/Gate;->a:Lcom/prineside/tdi2/enums/GateType;

    const-class v0, Lcom/prineside/tdi2/Gate$Side;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/Gate$Side;

    iput-object p1, p0, Lcom/prineside/tdi2/Gate;->b:Lcom/prineside/tdi2/Gate$Side;

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/Gate;->d:I

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/Gate;->k:I

    return-void
.end method

.method public sameAs(Lcom/prineside/tdi2/Gate;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Gate;->getType()Lcom/prineside/tdi2/enums/GateType;

    move-result-object p1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Gate;->getType()Lcom/prineside/tdi2/enums/GateType;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setPosition(IILcom/prineside/tdi2/Gate$Side;)V
    .locals 0

    if-eqz p3, :cond_0

    iput p1, p0, Lcom/prineside/tdi2/Gate;->d:I

    iput p2, p0, Lcom/prineside/tdi2/Gate;->k:I

    iput-object p3, p0, Lcom/prineside/tdi2/Gate;->b:Lcom/prineside/tdi2/Gate$Side;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Side is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Gate;->a:Lcom/prineside/tdi2/enums/GateType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/Gate;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/Gate;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "y"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/Gate;->getSide()Lcom/prineside/tdi2/Gate$Side;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "side"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Gate;->a:Lcom/prineside/tdi2/enums/GateType;

    const-class v1, Lcom/prineside/tdi2/enums/GateType;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Gate;->b:Lcom/prineside/tdi2/Gate$Side;

    const-class v1, Lcom/prineside/tdi2/Gate$Side;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget p1, p0, Lcom/prineside/tdi2/Gate;->d:I

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget p1, p0, Lcom/prineside/tdi2/Gate;->k:I

    invoke-virtual {p2, p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    return-void
.end method
