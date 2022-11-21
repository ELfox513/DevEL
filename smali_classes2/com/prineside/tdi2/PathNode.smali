.class public Lcom/prineside/tdi2/PathNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Pool$Poolable;
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    arrayLevels = 0x2
.end annotation


# instance fields
.field public connections:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Path$Connection;",
            ">;"
        }
    .end annotation
.end field

.field public cost:F

.field public index:I

.field public teleportIndices:[I

.field public tileCenterX:F
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public tileCenterY:F
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public tileType:Lcom/prineside/tdi2/enums/TileType;

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/Path$Connection;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/PathNode;->connections:Lcom/badlogic/gdx/utils/Array;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/prineside/tdi2/PathNode;->tileCenterX:F

    iput v0, p0, Lcom/prineside/tdi2/PathNode;->tileCenterY:F

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/prineside/tdi2/PathNode;->teleportIndices:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method


# virtual methods
.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 2

    const-class v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    iput-object v0, p0, Lcom/prineside/tdi2/PathNode;->connections:Lcom/badlogic/gdx/utils/Array;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/PathNode;->index:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/PathNode;->x:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/PathNode;->y:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/PathNode;->cost:F

    sget-object v1, Lcom/prineside/tdi2/enums/TileType;->values:[Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/prineside/tdi2/PathNode;->tileType:Lcom/prineside/tdi2/enums/TileType;

    const-class v0, [I

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lcom/prineside/tdi2/PathNode;->teleportIndices:[I

    iget p1, p0, Lcom/prineside/tdi2/PathNode;->x:I

    mul-int/lit16 p1, p1, 0x80

    add-int/lit8 p1, p1, 0x40

    int-to-float p1, p1

    iput p1, p0, Lcom/prineside/tdi2/PathNode;->tileCenterX:F

    iget p1, p0, Lcom/prineside/tdi2/PathNode;->y:I

    mul-int/lit16 p1, p1, 0x80

    add-int/lit8 p1, p1, 0x40

    int-to-float p1, p1

    iput p1, p0, Lcom/prineside/tdi2/PathNode;->tileCenterY:F

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/PathNode;->index:I

    iget-object v1, p0, Lcom/prineside/tdi2/PathNode;->connections:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iput v0, p0, Lcom/prineside/tdi2/PathNode;->x:I

    iput v0, p0, Lcom/prineside/tdi2/PathNode;->y:I

    iget-object v0, p0, Lcom/prineside/tdi2/PathNode;->teleportIndices:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/PathNode;->tileCenterX:F

    iput v0, p0, Lcom/prineside/tdi2/PathNode;->tileCenterY:F

    iput v0, p0, Lcom/prineside/tdi2/PathNode;->cost:F

    return-void
.end method

.method public setup(IIIFLcom/prineside/tdi2/enums/TileType;)V
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/PathNode;->index:I

    iput p2, p0, Lcom/prineside/tdi2/PathNode;->x:I

    iput p3, p0, Lcom/prineside/tdi2/PathNode;->y:I

    iput p4, p0, Lcom/prineside/tdi2/PathNode;->cost:F

    iput-object p5, p0, Lcom/prineside/tdi2/PathNode;->tileType:Lcom/prineside/tdi2/enums/TileType;

    mul-int/lit16 p2, p2, 0x80

    add-int/lit8 p2, p2, 0x40

    int-to-float p1, p2

    iput p1, p0, Lcom/prineside/tdi2/PathNode;->tileCenterX:F

    mul-int/lit16 p3, p3, 0x80

    add-int/lit8 p3, p3, 0x40

    int-to-float p1, p3

    iput p1, p0, Lcom/prineside/tdi2/PathNode;->tileCenterY:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/prineside/tdi2/PathNode;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/prineside/tdi2/PathNode;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " (tp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/PathNode;->teleportIndices:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/prineside/tdi2/PathNode;->teleportIndices:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/prineside/tdi2/PathNode;->teleportIndices:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/PathNode;->teleportIndices:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/PathNode;->connections:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/PathNode;->index:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget v0, p0, Lcom/prineside/tdi2/PathNode;->x:I

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget v0, p0, Lcom/prineside/tdi2/PathNode;->y:I

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget v0, p0, Lcom/prineside/tdi2/PathNode;->cost:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/PathNode;->tileType:Lcom/prineside/tdi2/enums/TileType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget-object v0, p0, Lcom/prineside/tdi2/PathNode;->teleportIndices:[I

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
