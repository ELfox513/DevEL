.class public final Lcom/prineside/luaj/lib/DebugLib$getlocal;
.super Lcom/prineside/luaj/lib/VarArgFunction;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/DebugLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "getlocal"
.end annotation


# instance fields
.field public x:Lcom/prineside/luaj/lib/DebugLib;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/VarArgFunction;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/luaj/lib/DebugLib;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/VarArgFunction;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/lib/DebugLib$getlocal;->x:Lcom/prineside/luaj/lib/DebugLib;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/luaj/lib/DebugLib;Lcom/prineside/luaj/lib/DebugLib$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/luaj/lib/DebugLib$getlocal;-><init>(Lcom/prineside/luaj/lib/DebugLib;)V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/Varargs;->isthread(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/Varargs;->checkthread(I)Lcom/prineside/luaj/LuaThread;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/prineside/luaj/lib/DebugLib$getlocal;->x:Lcom/prineside/luaj/lib/DebugLib;

    iget-object v1, v1, Lcom/prineside/luaj/lib/DebugLib;->x:Lcom/prineside/luaj/Globals;

    iget-object v1, v1, Lcom/prineside/luaj/Globals;->running:Lcom/prineside/luaj/LuaThread;

    move-object v0, v1

    const/4 v1, 0x1

    :goto_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v1}, Lcom/prineside/luaj/Varargs;->checkint(I)I

    move-result v1

    invoke-virtual {p1, v2}, Lcom/prineside/luaj/Varargs;->checkint(I)I

    move-result p1

    iget-object v2, p0, Lcom/prineside/luaj/lib/DebugLib$getlocal;->x:Lcom/prineside/luaj/lib/DebugLib;

    invoke-virtual {v2, v0}, Lcom/prineside/luaj/lib/DebugLib;->u(Lcom/prineside/luaj/LuaThread;)Lcom/prineside/luaj/lib/DebugLib$CallStack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/prineside/luaj/lib/DebugLib$CallStack;->d(I)Lcom/prineside/luaj/lib/DebugLib$CallFrame;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->a(I)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    :goto_1
    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/luaj/lib/DebugLib;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/luaj/lib/DebugLib;

    iput-object p1, p0, Lcom/prineside/luaj/lib/DebugLib$getlocal;->x:Lcom/prineside/luaj/lib/DebugLib;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/lib/DebugLib$getlocal;->x:Lcom/prineside/luaj/lib/DebugLib;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
