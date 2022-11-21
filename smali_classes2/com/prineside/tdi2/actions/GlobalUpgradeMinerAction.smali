.class public Lcom/prineside/tdi2/actions/GlobalUpgradeMinerAction;
.super Lcom/prineside/tdi2/Action;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation


# instance fields
.field public minerType:Lcom/prineside/tdi2/enums/MinerType;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/Action;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 1

    const-string v0, "mt"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prineside/tdi2/enums/MinerType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/MinerType;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/actions/GlobalUpgradeMinerAction;-><init>(Lcom/prineside/tdi2/enums/MinerType;)V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/enums/MinerType;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/Action;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/actions/GlobalUpgradeMinerAction;->minerType:Lcom/prineside/tdi2/enums/MinerType;

    return-void
.end method


# virtual methods
.method public getType()Lcom/prineside/tdi2/enums/ActionType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ActionType;->GUM:Lcom/prineside/tdi2/enums/ActionType;

    return-object v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/enums/MinerType;

    iput-object p1, p0, Lcom/prineside/tdi2/actions/GlobalUpgradeMinerAction;->minerType:Lcom/prineside/tdi2/enums/MinerType;

    return-void
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/actions/GlobalUpgradeMinerAction;->minerType:Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mt"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GlobalUpgradeMiner "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/actions/GlobalUpgradeMinerAction;->minerType:Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/actions/GlobalUpgradeMinerAction;->minerType:Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
