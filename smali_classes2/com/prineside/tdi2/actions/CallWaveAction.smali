.class public Lcom/prineside/tdi2/actions/CallWaveAction;
.super Lcom/prineside/tdi2/Action;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/Action;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/Action;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Lcom/prineside/tdi2/enums/ActionType;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ActionType;->CW:Lcom/prineside/tdi2/enums/ActionType;

    return-object v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "CallWave"

    return-object v0
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 0

    return-void
.end method
