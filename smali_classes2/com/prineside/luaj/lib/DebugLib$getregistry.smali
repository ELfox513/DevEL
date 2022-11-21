.class public final Lcom/prineside/luaj/lib/DebugLib$getregistry;
.super Lcom/prineside/luaj/lib/ZeroArgFunction;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/DebugLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "getregistry"
.end annotation


# instance fields
.field public x:Lcom/prineside/luaj/lib/DebugLib;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/ZeroArgFunction;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/luaj/lib/DebugLib;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/ZeroArgFunction;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/lib/DebugLib$getregistry;->x:Lcom/prineside/luaj/lib/DebugLib;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/luaj/lib/DebugLib;Lcom/prineside/luaj/lib/DebugLib$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/luaj/lib/DebugLib$getregistry;-><init>(Lcom/prineside/luaj/lib/DebugLib;)V

    return-void
.end method


# virtual methods
.method public call()Lcom/prineside/luaj/LuaValue;
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/lib/DebugLib$getregistry;->x:Lcom/prineside/luaj/lib/DebugLib;

    iget-object v0, v0, Lcom/prineside/luaj/lib/DebugLib;->x:Lcom/prineside/luaj/Globals;

    return-object v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/luaj/lib/DebugLib;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/luaj/lib/DebugLib;

    iput-object p1, p0, Lcom/prineside/luaj/lib/DebugLib$getregistry;->x:Lcom/prineside/luaj/lib/DebugLib;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/lib/DebugLib$getregistry;->x:Lcom/prineside/luaj/lib/DebugLib;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
