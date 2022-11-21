.class public final Lcom/prineside/luaj/lib/DebugLib$sethook;
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
    name = "sethook"
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

    iput-object p1, p0, Lcom/prineside/luaj/lib/DebugLib$sethook;->x:Lcom/prineside/luaj/lib/DebugLib;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/luaj/lib/DebugLib;Lcom/prineside/luaj/lib/DebugLib$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/luaj/lib/DebugLib$sethook;-><init>(Lcom/prineside/luaj/lib/DebugLib;)V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 10

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/Varargs;->isthread(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/Varargs;->checkthread(I)Lcom/prineside/luaj/LuaThread;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/prineside/luaj/lib/DebugLib$sethook;->x:Lcom/prineside/luaj/lib/DebugLib;

    iget-object v1, v1, Lcom/prineside/luaj/lib/DebugLib;->x:Lcom/prineside/luaj/Globals;

    iget-object v2, v1, Lcom/prineside/luaj/Globals;->running:Lcom/prineside/luaj/LuaThread;

    const/4 v1, 0x1

    :goto_0
    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Lcom/prineside/luaj/Varargs;->optfunction(ILcom/prineside/luaj/LuaFunction;)Lcom/prineside/luaj/LuaFunction;

    move-result-object v1

    add-int/lit8 v4, v3, 0x1

    const-string v5, ""

    invoke-virtual {p1, v3, v5}, Lcom/prineside/luaj/Varargs;->optjstring(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Lcom/prineside/luaj/Varargs;->optint(II)I

    move-result p1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_4

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x63

    if-eq v8, v9, :cond_3

    const/16 v9, 0x6c

    if-eq v8, v9, :cond_2

    const/16 v9, 0x72

    if-eq v8, v9, :cond_1

    goto :goto_2

    :cond_1
    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x1

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, v2, Lcom/prineside/luaj/LuaThread;->state:Lcom/prineside/luaj/LuaThread$State;

    iput-object v1, v0, Lcom/prineside/luaj/LuaThread$State;->hookfunc:Lcom/prineside/luaj/LuaValue;

    iput-boolean v4, v0, Lcom/prineside/luaj/LuaThread$State;->hookcall:Z

    iput-boolean v6, v0, Lcom/prineside/luaj/LuaThread$State;->hookline:Z

    iput p1, v0, Lcom/prineside/luaj/LuaThread$State;->hookcount:I

    iput-boolean v7, v0, Lcom/prineside/luaj/LuaThread$State;->hookrtrn:Z

    sget-object p1, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/luaj/lib/DebugLib;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/luaj/lib/DebugLib;

    iput-object p1, p0, Lcom/prineside/luaj/lib/DebugLib$sethook;->x:Lcom/prineside/luaj/lib/DebugLib;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/lib/DebugLib$sethook;->x:Lcom/prineside/luaj/lib/DebugLib;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
