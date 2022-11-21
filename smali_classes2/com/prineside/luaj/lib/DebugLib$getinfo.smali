.class public final Lcom/prineside/luaj/lib/DebugLib$getinfo;
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
    name = "getinfo"
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

    iput-object p1, p0, Lcom/prineside/luaj/lib/DebugLib$getinfo;->x:Lcom/prineside/luaj/lib/DebugLib;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/luaj/lib/DebugLib;Lcom/prineside/luaj/lib/DebugLib$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/luaj/lib/DebugLib$getinfo;-><init>(Lcom/prineside/luaj/lib/DebugLib;)V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 7

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/Varargs;->isthread(I)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/Varargs;->checkthread(I)Lcom/prineside/luaj/LuaThread;

    move-result-object v1

    const/4 v3, 0x2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/prineside/luaj/lib/DebugLib$getinfo;->x:Lcom/prineside/luaj/lib/DebugLib;

    iget-object v1, v1, Lcom/prineside/luaj/lib/DebugLib;->x:Lcom/prineside/luaj/Globals;

    iget-object v1, v1, Lcom/prineside/luaj/Globals;->running:Lcom/prineside/luaj/LuaThread;

    const/4 v3, 0x1

    :goto_0
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v3}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v3

    add-int/lit8 v5, v4, 0x1

    const-string v6, "flnStu"

    invoke-virtual {p1, v4, v6}, Lcom/prineside/luaj/Varargs;->optjstring(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/prineside/luaj/lib/DebugLib$getinfo;->x:Lcom/prineside/luaj/lib/DebugLib;

    invoke-virtual {v4, v1}, Lcom/prineside/luaj/lib/DebugLib;->u(Lcom/prineside/luaj/LuaThread;)Lcom/prineside/luaj/lib/DebugLib$CallStack;

    move-result-object v1

    invoke-virtual {v3}, Lcom/prineside/luaj/LuaValue;->isnumber()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/prineside/luaj/LuaValue;->toint()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/prineside/luaj/lib/DebugLib$CallStack;->d(I)Lcom/prineside/luaj/lib/DebugLib$CallFrame;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object p1, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    return-object p1

    :cond_1
    iget-object v3, v2, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->a:Lcom/prineside/luaj/LuaFunction;

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/prineside/luaj/LuaValue;->isfunction()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v1, v3}, Lcom/prineside/luaj/lib/DebugLib$CallStack;->c(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/lib/DebugLib$CallFrame;

    move-result-object v2

    :goto_1
    move-object v4, v3

    check-cast v4, Lcom/prineside/luaj/LuaFunction;

    invoke-virtual {v1, p1, v4, v2}, Lcom/prineside/luaj/lib/DebugLib$CallStack;->a(Ljava/lang/String;Lcom/prineside/luaj/LuaFunction;Lcom/prineside/luaj/lib/DebugLib$CallFrame;)Lcom/prineside/luaj/lib/DebugLib$DebugInfo;

    move-result-object v2

    new-instance v4, Lcom/prineside/luaj/LuaTable;

    invoke-direct {v4}, Lcom/prineside/luaj/LuaTable;-><init>()V

    const/16 v5, 0x53

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_3

    sget-object v5, Lcom/prineside/luaj/lib/DebugLib;->L:Lcom/prineside/luaj/LuaString;

    sget-object v6, Lcom/prineside/luaj/lib/DebugLib;->y:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v4, v5, v6}, Lcom/prineside/luaj/LuaTable;->set(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    sget-object v5, Lcom/prineside/luaj/lib/DebugLib;->M:Lcom/prineside/luaj/LuaString;

    iget-object v6, v2, Lcom/prineside/luaj/lib/DebugLib$DebugInfo;->d:Ljava/lang/String;

    invoke-static {v6}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/prineside/luaj/LuaTable;->set(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    sget-object v5, Lcom/prineside/luaj/lib/DebugLib;->N:Lcom/prineside/luaj/LuaString;

    iget-object v6, v2, Lcom/prineside/luaj/lib/DebugLib$DebugInfo;->l:Ljava/lang/String;

    invoke-static {v6}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/prineside/luaj/LuaTable;->set(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    sget-object v5, Lcom/prineside/luaj/lib/DebugLib;->O:Lcom/prineside/luaj/LuaString;

    iget v6, v2, Lcom/prineside/luaj/lib/DebugLib$DebugInfo;->f:I

    invoke-static {v6}, Lcom/prineside/luaj/LuaValue;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/prineside/luaj/LuaTable;->set(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    sget-object v5, Lcom/prineside/luaj/lib/DebugLib;->P:Lcom/prineside/luaj/LuaString;

    iget v6, v2, Lcom/prineside/luaj/lib/DebugLib$DebugInfo;->g:I

    invoke-static {v6}, Lcom/prineside/luaj/LuaValue;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/prineside/luaj/LuaTable;->set(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    :cond_3
    const/16 v5, 0x6c

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_4

    sget-object v5, Lcom/prineside/luaj/lib/DebugLib;->Q:Lcom/prineside/luaj/LuaString;

    iget v6, v2, Lcom/prineside/luaj/lib/DebugLib$DebugInfo;->e:I

    invoke-static {v6}, Lcom/prineside/luaj/LuaValue;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/prineside/luaj/LuaTable;->set(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    :cond_4
    const/16 v5, 0x75

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_6

    sget-object v5, Lcom/prineside/luaj/lib/DebugLib;->H:Lcom/prineside/luaj/LuaString;

    iget-short v6, v2, Lcom/prineside/luaj/lib/DebugLib$DebugInfo;->h:S

    invoke-static {v6}, Lcom/prineside/luaj/LuaValue;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/prineside/luaj/LuaTable;->set(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    sget-object v5, Lcom/prineside/luaj/lib/DebugLib;->I:Lcom/prineside/luaj/LuaString;

    iget-short v6, v2, Lcom/prineside/luaj/lib/DebugLib$DebugInfo;->i:S

    invoke-static {v6}, Lcom/prineside/luaj/LuaValue;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/prineside/luaj/LuaTable;->set(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    sget-object v5, Lcom/prineside/luaj/lib/DebugLib;->G:Lcom/prineside/luaj/LuaString;

    iget-boolean v6, v2, Lcom/prineside/luaj/lib/DebugLib$DebugInfo;->j:Z

    if-eqz v6, :cond_5

    sget-object v6, Lcom/prineside/luaj/LuaValue;->ONE:Lcom/prineside/luaj/LuaNumber;

    goto :goto_2

    :cond_5
    sget-object v6, Lcom/prineside/luaj/LuaValue;->ZERO:Lcom/prineside/luaj/LuaNumber;

    :goto_2
    invoke-virtual {v4, v5, v6}, Lcom/prineside/luaj/LuaTable;->set(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    :cond_6
    const/16 v5, 0x6e

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_8

    sget-object v5, Lcom/prineside/luaj/lib/DebugLib;->J:Lcom/prineside/luaj/LuaString;

    iget-object v6, v2, Lcom/prineside/luaj/lib/DebugLib$DebugInfo;->a:Ljava/lang/String;

    if-eqz v6, :cond_7

    goto :goto_3

    :cond_7
    const-string v6, "?"

    :goto_3
    invoke-static {v6}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/prineside/luaj/LuaTable;->set(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    sget-object v5, Lcom/prineside/luaj/lib/DebugLib;->K:Lcom/prineside/luaj/LuaString;

    iget-object v2, v2, Lcom/prineside/luaj/lib/DebugLib$DebugInfo;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lcom/prineside/luaj/LuaTable;->set(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    :cond_8
    const/16 v2, 0x74

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_9

    sget-object v2, Lcom/prineside/luaj/lib/DebugLib;->F:Lcom/prineside/luaj/LuaString;

    sget-object v5, Lcom/prineside/luaj/LuaValue;->ZERO:Lcom/prineside/luaj/LuaNumber;

    invoke-virtual {v4, v2, v5}, Lcom/prineside/luaj/LuaTable;->set(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    :cond_9
    const/16 v2, 0x4c

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_b

    new-instance v2, Lcom/prineside/luaj/LuaTable;

    invoke-direct {v2}, Lcom/prineside/luaj/LuaTable;-><init>()V

    sget-object v5, Lcom/prineside/luaj/lib/DebugLib;->R:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v4, v5, v2}, Lcom/prineside/luaj/LuaTable;->set(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    :goto_4
    invoke-virtual {v1, v0}, Lcom/prineside/luaj/lib/DebugLib$CallStack;->d(I)Lcom/prineside/luaj/lib/DebugLib$CallFrame;

    move-result-object v5

    if-eqz v5, :cond_b

    iget-object v6, v5, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->a:Lcom/prineside/luaj/LuaFunction;

    if-ne v6, v3, :cond_a

    const/4 v6, -0x1

    invoke-virtual {v5}, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->currentline()I

    move-result v5

    invoke-static {v5}, Lcom/prineside/luaj/LuaValue;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Lcom/prineside/luaj/LuaTable;->insert(ILcom/prineside/luaj/LuaValue;)V

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_b
    const/16 v0, 0x66

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_c

    if-eqz v3, :cond_c

    sget-object p1, Lcom/prineside/luaj/lib/DebugLib;->E:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v4, p1, v3}, Lcom/prineside/luaj/LuaTable;->set(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    :cond_c
    return-object v4

    :cond_d
    sub-int/2addr v5, v2

    const-string p1, "function or level"

    invoke-static {v5, p1}, Lcom/prineside/luaj/LuaValue;->argerror(ILjava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/luaj/lib/DebugLib;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/luaj/lib/DebugLib;

    iput-object p1, p0, Lcom/prineside/luaj/lib/DebugLib$getinfo;->x:Lcom/prineside/luaj/lib/DebugLib;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/lib/DebugLib$getinfo;->x:Lcom/prineside/luaj/lib/DebugLib;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
