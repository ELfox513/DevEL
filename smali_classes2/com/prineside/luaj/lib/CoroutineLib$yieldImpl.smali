.class public final Lcom/prineside/luaj/lib/CoroutineLib$yieldImpl;
.super Lcom/prineside/luaj/lib/VarArgFunction;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/CoroutineLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "yieldImpl"
.end annotation


# instance fields
.field public x:Lcom/prineside/luaj/lib/CoroutineLib;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/VarArgFunction;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/luaj/lib/CoroutineLib;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/VarArgFunction;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/lib/CoroutineLib$yieldImpl;->x:Lcom/prineside/luaj/lib/CoroutineLib;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/luaj/lib/CoroutineLib;Lcom/prineside/luaj/lib/CoroutineLib$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/luaj/lib/CoroutineLib$yieldImpl;-><init>(Lcom/prineside/luaj/lib/CoroutineLib;)V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/lib/CoroutineLib$yieldImpl;->x:Lcom/prineside/luaj/lib/CoroutineLib;

    iget-object v0, v0, Lcom/prineside/luaj/lib/CoroutineLib;->x:Lcom/prineside/luaj/Globals;

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/Globals;->yield(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/luaj/lib/CoroutineLib;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/luaj/lib/CoroutineLib;

    iput-object p1, p0, Lcom/prineside/luaj/lib/CoroutineLib$yieldImpl;->x:Lcom/prineside/luaj/lib/CoroutineLib;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/lib/CoroutineLib$yieldImpl;->x:Lcom/prineside/luaj/lib/CoroutineLib;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
