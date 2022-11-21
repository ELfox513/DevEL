.class public Lcom/prineside/tdi2/actions/CustomModifierButtonAction;
.super Lcom/prineside/tdi2/Action;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation


# instance fields
.field public mapX:I

.field public mapY:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/Action;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/Action;-><init>()V

    iput p1, p0, Lcom/prineside/tdi2/actions/CustomModifierButtonAction;->x:I

    iput p2, p0, Lcom/prineside/tdi2/actions/CustomModifierButtonAction;->y:I

    iput p3, p0, Lcom/prineside/tdi2/actions/CustomModifierButtonAction;->mapX:I

    iput p4, p0, Lcom/prineside/tdi2/actions/CustomModifierButtonAction;->mapY:I

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 4

    const-string v0, "x"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "y"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "mx"

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "my"

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/prineside/tdi2/actions/CustomModifierButtonAction;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public getType()Lcom/prineside/tdi2/enums/ActionType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ActionType;->CMB:Lcom/prineside/tdi2/enums/ActionType;

    return-object v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readByte()B

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/actions/CustomModifierButtonAction;->x:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readByte()B

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/actions/CustomModifierButtonAction;->y:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/actions/CustomModifierButtonAction;->mapX:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/actions/CustomModifierButtonAction;->mapY:I

    return-void
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/actions/CustomModifierButtonAction;->x:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/actions/CustomModifierButtonAction;->y:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "y"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/actions/CustomModifierButtonAction;->mapX:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "mx"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/actions/CustomModifierButtonAction;->mapY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "my"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CustomModifierButton "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/prineside/tdi2/actions/CustomModifierButtonAction;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/prineside/tdi2/actions/CustomModifierButtonAction;->y:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/prineside/tdi2/actions/CustomModifierButtonAction;->mapX:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/prineside/tdi2/actions/CustomModifierButtonAction;->mapY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 0

    iget p1, p0, Lcom/prineside/tdi2/actions/CustomModifierButtonAction;->x:I

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    iget p1, p0, Lcom/prineside/tdi2/actions/CustomModifierButtonAction;->y:I

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    iget p1, p0, Lcom/prineside/tdi2/actions/CustomModifierButtonAction;->mapX:I

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget p1, p0, Lcom/prineside/tdi2/actions/CustomModifierButtonAction;->mapY:I

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    return-void
.end method
