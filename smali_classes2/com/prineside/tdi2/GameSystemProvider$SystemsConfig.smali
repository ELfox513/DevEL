.class public Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/GameSystemProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemsConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;
    }
.end annotation


# instance fields
.field public headless:Z

.field public setup:Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;->setup:Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;

    iput-boolean p2, p0, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;->headless:Z

    return-void
.end method


# virtual methods
.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;->headless:Z

    const-class v0, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;

    iput-object p1, p0, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;->setup:Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;->headless:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;->setup:Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig$Setup;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
