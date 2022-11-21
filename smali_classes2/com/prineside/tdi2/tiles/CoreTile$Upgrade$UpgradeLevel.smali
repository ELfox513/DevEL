.class public Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpgradeLevel"
.end annotation


# instance fields
.field public delta:F

.field public price:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->delta:F

    iput p2, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->price:I

    return-void
.end method

.method public static fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;

    invoke-direct {v0}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;-><init>()V

    const-string v1, "d"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->delta:F

    const-string v1, "p"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->price:I

    return-object v0
.end method


# virtual methods
.method public cpy()Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;

    invoke-direct {v0}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;-><init>()V

    iget v1, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->delta:F

    iput v1, v0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->delta:F

    iget v1, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->price:I

    iput v1, v0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->price:I

    return-object v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->delta:F

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->price:I

    return-void
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->delta:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "d"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->price:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "p"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    iget p1, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->delta:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->price:I

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    return-void
.end method
