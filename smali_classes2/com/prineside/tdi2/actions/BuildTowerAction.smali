.class public Lcom/prineside/tdi2/actions/BuildTowerAction;
.super Lcom/prineside/tdi2/Action;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation


# instance fields
.field public aimStrategy:Lcom/prineside/tdi2/Tower$AimStrategy;

.field public towerType:Lcom/prineside/tdi2/enums/TowerType;

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/Action;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 4

    const-string v0, "tt"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prineside/tdi2/enums/TowerType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/TowerType;

    move-result-object v0

    const-string v1, "aim"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/prineside/tdi2/Tower$AimStrategy;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/Tower$AimStrategy;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "y"

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/prineside/tdi2/actions/BuildTowerAction;-><init>(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/Tower$AimStrategy;II)V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/Tower$AimStrategy;II)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/Action;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/actions/BuildTowerAction;->towerType:Lcom/prineside/tdi2/enums/TowerType;

    iput-object p2, p0, Lcom/prineside/tdi2/actions/BuildTowerAction;->aimStrategy:Lcom/prineside/tdi2/Tower$AimStrategy;

    iput p3, p0, Lcom/prineside/tdi2/actions/BuildTowerAction;->x:I

    iput p4, p0, Lcom/prineside/tdi2/actions/BuildTowerAction;->y:I

    return-void
.end method


# virtual methods
.method public getType()Lcom/prineside/tdi2/enums/ActionType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ActionType;->BT:Lcom/prineside/tdi2/enums/ActionType;

    return-object v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/enums/TowerType;

    iput-object v0, p0, Lcom/prineside/tdi2/actions/BuildTowerAction;->towerType:Lcom/prineside/tdi2/enums/TowerType;

    const-class v0, Lcom/prineside/tdi2/Tower$AimStrategy;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/Tower$AimStrategy;

    iput-object p1, p0, Lcom/prineside/tdi2/actions/BuildTowerAction;->aimStrategy:Lcom/prineside/tdi2/Tower$AimStrategy;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readByte()B

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/actions/BuildTowerAction;->x:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readByte()B

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/actions/BuildTowerAction;->y:I

    return-void
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/actions/BuildTowerAction;->towerType:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tt"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/actions/BuildTowerAction;->aimStrategy:Lcom/prineside/tdi2/Tower$AimStrategy;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aim"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/actions/BuildTowerAction;->x:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/actions/BuildTowerAction;->y:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "y"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BuildTower "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/actions/BuildTowerAction;->towerType:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/prineside/tdi2/actions/BuildTowerAction;->x:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/prineside/tdi2/actions/BuildTowerAction;->y:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/actions/BuildTowerAction;->aimStrategy:Lcom/prineside/tdi2/Tower$AimStrategy;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/actions/BuildTowerAction;->towerType:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/actions/BuildTowerAction;->aimStrategy:Lcom/prineside/tdi2/Tower$AimStrategy;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget p1, p0, Lcom/prineside/tdi2/actions/BuildTowerAction;->x:I

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    iget p1, p0, Lcom/prineside/tdi2/actions/BuildTowerAction;->y:I

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    return-void
.end method
