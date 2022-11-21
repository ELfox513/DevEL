.class public final Lcom/prineside/luaj/lib/DebugLib$gethook;
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
    name = "gethook"
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

    iput-object p1, p0, Lcom/prineside/luaj/lib/DebugLib$gethook;->x:Lcom/prineside/luaj/lib/DebugLib;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/luaj/lib/DebugLib;Lcom/prineside/luaj/lib/DebugLib$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/luaj/lib/DebugLib$gethook;-><init>(Lcom/prineside/luaj/lib/DebugLib;)V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 4

    invoke-virtual {p1}, Lcom/prineside/luaj/Varargs;->narg()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/Varargs;->checkthread(I)Lcom/prineside/luaj/LuaThread;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/luaj/lib/DebugLib$gethook;->x:Lcom/prineside/luaj/lib/DebugLib;

    iget-object p1, p1, Lcom/prineside/luaj/lib/DebugLib;->x:Lcom/prineside/luaj/Globals;

    iget-object p1, p1, Lcom/prineside/luaj/Globals;->running:Lcom/prineside/luaj/LuaThread;

    :goto_0
    iget-object p1, p1, Lcom/prineside/luaj/LuaThread;->state:Lcom/prineside/luaj/LuaThread$State;

    iget-object v0, p1, Lcom/prineside/luaj/LuaThread$State;->hookfunc:Lcom/prineside/luaj/LuaValue;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p1, Lcom/prineside/luaj/LuaThread$State;->hookcall:Z

    const-string v3, ""

    if-eqz v2, :cond_2

    const-string v2, "c"

    goto :goto_2

    :cond_2
    move-object v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/prineside/luaj/LuaThread$State;->hookline:Z

    if-eqz v2, :cond_3

    const-string v2, "l"

    goto :goto_3

    :cond_3
    move-object v2, v3

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/prineside/luaj/LuaThread$State;->hookrtrn:Z

    if-eqz v2, :cond_4

    const-string v3, "r"

    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v1

    iget p1, p1, Lcom/prineside/luaj/LuaThread$State;->hookcount:I

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/prineside/luaj/LuaValue;->varargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/luaj/lib/DebugLib;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/luaj/lib/DebugLib;

    iput-object p1, p0, Lcom/prineside/luaj/lib/DebugLib$gethook;->x:Lcom/prineside/luaj/lib/DebugLib;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/lib/DebugLib$gethook;->x:Lcom/prineside/luaj/lib/DebugLib;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
