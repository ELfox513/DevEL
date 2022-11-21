.class public Lcom/prineside/tdi2/Modifier$ModifierSidePair;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModifierSidePair"
.end annotation


# instance fields
.field public modifierId:I

.field public modifierType:Lcom/prineside/tdi2/enums/ModifierType;

.field public side:Lcom/prineside/tdi2/Modifier$ConnectionSide;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILcom/prineside/tdi2/enums/ModifierType;Lcom/prineside/tdi2/Modifier$ConnectionSide;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/prineside/tdi2/Modifier$ModifierSidePair;->modifierId:I

    iput-object p3, p0, Lcom/prineside/tdi2/Modifier$ModifierSidePair;->side:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    iput-object p2, p0, Lcom/prineside/tdi2/Modifier$ModifierSidePair;->modifierType:Lcom/prineside/tdi2/enums/ModifierType;

    return-void
.end method


# virtual methods
.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/Modifier$ModifierSidePair;->modifierId:I

    const-class v0, Lcom/prineside/tdi2/Modifier$ConnectionSide;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/Modifier$ConnectionSide;

    iput-object v0, p0, Lcom/prineside/tdi2/Modifier$ModifierSidePair;->side:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    const-class v0, Lcom/prineside/tdi2/enums/ModifierType;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/enums/ModifierType;

    iput-object p1, p0, Lcom/prineside/tdi2/Modifier$ModifierSidePair;->modifierType:Lcom/prineside/tdi2/enums/ModifierType;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/Modifier$ModifierSidePair;->modifierId:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget-object v0, p0, Lcom/prineside/tdi2/Modifier$ModifierSidePair;->side:Lcom/prineside/tdi2/Modifier$ConnectionSide;

    const-class v1, Lcom/prineside/tdi2/Modifier$ConnectionSide;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Modifier$ModifierSidePair;->modifierType:Lcom/prineside/tdi2/enums/ModifierType;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
