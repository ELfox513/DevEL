.class public Lcom/prineside/luaj/LuaClosure;
.super Lcom/prineside/luaj/LuaFunction;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation


# static fields
.field public static final w:[Lcom/prineside/luaj/UpValue;


# instance fields
.field public p:Lcom/prineside/luaj/Prototype;

.field public u:Lcom/prineside/luaj/Globals;

.field public upValues:[Lcom/prineside/luaj/UpValue;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/prineside/luaj/UpValue;

    sput-object v0, Lcom/prineside/luaj/LuaClosure;->w:[Lcom/prineside/luaj/UpValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/LuaFunction;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/luaj/Prototype;Lcom/prineside/luaj/LuaValue;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/LuaFunction;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/LuaClosure;->p:Lcom/prineside/luaj/Prototype;

    invoke-virtual {p0, p2}, Lcom/prineside/luaj/LuaClosure;->initupvalue1(Lcom/prineside/luaj/LuaValue;)V

    instance-of p1, p2, Lcom/prineside/luaj/Globals;

    if-eqz p1, :cond_0

    check-cast p2, Lcom/prineside/luaj/Globals;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lcom/prineside/luaj/LuaClosure;->u:Lcom/prineside/luaj/Globals;

    return-void
.end method


# virtual methods
.method public final call()Lcom/prineside/luaj/LuaValue;
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaClosure;->t()[Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    sget-object v1, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    invoke-virtual {p0, v0, v1}, Lcom/prineside/luaj/LuaClosure;->r([Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public final call(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaClosure;->t()[Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/luaj/LuaClosure;->p:Lcom/prineside/luaj/Prototype;

    iget v1, v1, Lcom/prineside/luaj/Prototype;->numparams:I

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object p1, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    invoke-virtual {p0, v0, p1}, Lcom/prineside/luaj/LuaClosure;->r([Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/prineside/luaj/LuaClosure;->r([Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public final call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 4

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaClosure;->t()[Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/luaj/LuaClosure;->p:Lcom/prineside/luaj/Prototype;

    iget v2, v1, Lcom/prineside/luaj/Prototype;->numparams:I

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    aput-object p1, v0, v1

    aput-object p2, v0, v3

    sget-object p1, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    invoke-virtual {p0, v0, p1}, Lcom/prineside/luaj/LuaClosure;->r([Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1

    :cond_0
    aput-object p1, v0, v1

    invoke-virtual {p0, v0, p2}, Lcom/prineside/luaj/LuaClosure;->r([Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1

    :cond_1
    iget v1, v1, Lcom/prineside/luaj/Prototype;->is_vararg:I

    if-eqz v1, :cond_2

    invoke-static {p1, p2}, Lcom/prineside/luaj/LuaValue;->varargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/prineside/luaj/LuaClosure;->r([Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public final call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 5

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaClosure;->t()[Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/luaj/LuaClosure;->p:Lcom/prineside/luaj/Prototype;

    iget v2, v1, Lcom/prineside/luaj/Prototype;->numparams:I

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    const/4 v1, 0x2

    if-eq v2, v1, :cond_0

    aput-object p1, v0, v3

    aput-object p2, v0, v4

    aput-object p3, v0, v1

    sget-object p1, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    invoke-virtual {p0, v0, p1}, Lcom/prineside/luaj/LuaClosure;->r([Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1

    :cond_0
    aput-object p1, v0, v3

    aput-object p2, v0, v4

    invoke-virtual {p0, v0, p3}, Lcom/prineside/luaj/LuaClosure;->r([Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1

    :cond_1
    aput-object p1, v0, v3

    iget p1, v1, Lcom/prineside/luaj/Prototype;->is_vararg:I

    if-eqz p1, :cond_2

    invoke-static {p2, p3}, Lcom/prineside/luaj/LuaValue;->varargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/prineside/luaj/LuaClosure;->r([Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1

    :cond_3
    iget v1, v1, Lcom/prineside/luaj/Prototype;->is_vararg:I

    if-eqz v1, :cond_4

    invoke-static {p1, p2, p3}, Lcom/prineside/luaj/LuaValue;->varargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/prineside/luaj/LuaClosure;->r([Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public checkclosure()Lcom/prineside/luaj/LuaClosure;
    .locals 0

    return-object p0
.end method

.method public initupvalue1(Lcom/prineside/luaj/LuaValue;)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/luaj/LuaClosure;->p:Lcom/prineside/luaj/Prototype;

    iget-object v0, v0, Lcom/prineside/luaj/Prototype;->upvalues:[Lcom/prineside/luaj/Upvaldesc;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, v0

    new-array v0, v0, [Lcom/prineside/luaj/UpValue;

    iput-object v0, p0, Lcom/prineside/luaj/LuaClosure;->upValues:[Lcom/prineside/luaj/UpValue;

    new-instance v1, Lcom/prineside/luaj/UpValue;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/prineside/luaj/LuaValue;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, v2, v3}, Lcom/prineside/luaj/UpValue;-><init>([Lcom/prineside/luaj/LuaValue;I)V

    aput-object v1, v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Lcom/prineside/luaj/LuaClosure;->w:[Lcom/prineside/luaj/UpValue;

    iput-object p1, p0, Lcom/prineside/luaj/LuaClosure;->upValues:[Lcom/prineside/luaj/UpValue;

    :goto_1
    return-void
.end method

.method public final invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaClosure;->onInvoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/Varargs;->eval()Lcom/prineside/luaj/Varargs;

    move-result-object p1
    :try_end_0
    .catch Lcom/prineside/luaj/LuaError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LuaError"

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    return-object p1
.end method

.method public isclosure()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/luaj/LuaClosure;->p:Lcom/prineside/luaj/Prototype;

    invoke-virtual {v1}, Lcom/prineside/luaj/Prototype;->shortsource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/luaj/LuaClosure;->p:Lcom/prineside/luaj/Prototype;

    iget v1, v1, Lcom/prineside/luaj/Prototype;->linedefined:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onInvoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 4

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaClosure;->t()[Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/luaj/LuaClosure;->p:Lcom/prineside/luaj/Prototype;

    iget v3, v2, Lcom/prineside/luaj/Prototype;->numparams:I

    if-ge v1, v3, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v3

    aput-object v3, v0, v1

    move v1, v2

    goto :goto_0

    :cond_0
    iget v1, v2, Lcom/prineside/luaj/Prototype;->is_vararg:I

    if-eqz v1, :cond_1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Lcom/prineside/luaj/Varargs;->subargs(I)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/prineside/luaj/LuaClosure;->r([Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public optclosure(Lcom/prineside/luaj/LuaClosure;)Lcom/prineside/luaj/LuaClosure;
    .locals 0

    return-object p0
.end method

.method public q(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/prineside/luaj/LuaClosure;->u:Lcom/prineside/luaj/Globals;

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    iget-object v1, v0, Lcom/prineside/luaj/Globals;->running:Lcom/prineside/luaj/LuaThread;

    iget-object v2, v1, Lcom/prineside/luaj/LuaThread;->errorfunc:Lcom/prineside/luaj/LuaValue;

    if-nez v2, :cond_2

    iget-object v0, v0, Lcom/prineside/luaj/Globals;->debuglib:Lcom/prineside/luaj/lib/DebugLib;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/prineside/luaj/LuaClosure;->u:Lcom/prineside/luaj/Globals;

    iget-object p1, p1, Lcom/prineside/luaj/Globals;->debuglib:Lcom/prineside/luaj/lib/DebugLib;

    invoke-virtual {p1, p2}, Lcom/prineside/luaj/lib/DebugLib;->traceback(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1

    :cond_2
    const/4 p2, 0x0

    iput-object p2, v1, Lcom/prineside/luaj/LuaThread;->errorfunc:Lcom/prineside/luaj/LuaValue;

    :try_start_0
    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/prineside/luaj/LuaValue;->call(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v2, v1, Lcom/prineside/luaj/LuaThread;->errorfunc:Lcom/prineside/luaj/LuaValue;

    return-object p1

    :catchall_0
    :try_start_1
    const-string p1, "error in error handling"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iput-object v2, v1, Lcom/prineside/luaj/LuaThread;->errorfunc:Lcom/prineside/luaj/LuaValue;

    return-object p1

    :catchall_1
    move-exception p1

    iput-object v2, v1, Lcom/prineside/luaj/LuaThread;->errorfunc:Lcom/prineside/luaj/LuaValue;

    throw p1
.end method

.method public r([Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    sget-object v4, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    iget-object v5, v1, Lcom/prineside/luaj/LuaClosure;->p:Lcom/prineside/luaj/Prototype;

    iget-object v6, v5, Lcom/prineside/luaj/Prototype;->code:[I

    iget-object v7, v5, Lcom/prineside/luaj/Prototype;->k:[Lcom/prineside/luaj/LuaValue;

    iget-object v5, v5, Lcom/prineside/luaj/Prototype;->p:[Lcom/prineside/luaj/Prototype;

    array-length v5, v5

    if-lez v5, :cond_0

    array-length v5, v2

    new-array v5, v5, [Lcom/prineside/luaj/UpValue;

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iget-object v9, v1, Lcom/prineside/luaj/LuaClosure;->u:Lcom/prineside/luaj/Globals;

    if-eqz v9, :cond_1

    iget-object v9, v9, Lcom/prineside/luaj/Globals;->debuglib:Lcom/prineside/luaj/lib/DebugLib;

    if-eqz v9, :cond_1

    invoke-virtual {v9, v1, v3, v2}, Lcom/prineside/luaj/lib/DebugLib;->onCall(Lcom/prineside/luaj/LuaClosure;Lcom/prineside/luaj/Varargs;[Lcom/prineside/luaj/LuaValue;)V

    :cond_1
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    :try_start_0
    iget-object v12, v1, Lcom/prineside/luaj/LuaClosure;->u:Lcom/prineside/luaj/Globals;

    if-eqz v12, :cond_2

    iget-object v12, v12, Lcom/prineside/luaj/Globals;->debuglib:Lcom/prineside/luaj/lib/DebugLib;

    if-eqz v12, :cond_2

    invoke-virtual {v12, v10, v4, v11}, Lcom/prineside/luaj/lib/DebugLib;->onInstruction(ILcom/prineside/luaj/Varargs;I)V

    :cond_2
    aget v12, v6, v10

    shr-int/lit8 v13, v12, 0x6

    const/16 v14, 0xff

    and-int/2addr v13, v14

    and-int/lit8 v15, v12, 0x3f

    const v16, 0x7fc000

    const v17, 0x1ffff

    const/4 v8, 0x2

    const/4 v14, 0x1

    packed-switch v15, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    goto/16 :goto_44

    :pswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Uexecutable opcode: OP_EXTRAARG"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_1
    ushr-int/lit8 v8, v12, 0x17

    if-nez v8, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/prineside/luaj/Varargs;->narg()I

    move-result v4

    add-int v11, v13, v4

    :goto_2
    move-object v4, v3

    :goto_3
    move-object/from16 v18, v6

    :goto_4
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x0

    goto/16 :goto_43

    :cond_3
    const/4 v12, 0x1

    :goto_5
    if-ge v12, v8, :cond_a

    add-int v15, v13, v12

    sub-int/2addr v15, v14

    invoke-virtual {v3, v12}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v16

    aput-object v16, v2, v15

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :pswitch_2
    iget-object v8, v1, Lcom/prineside/luaj/LuaClosure;->p:Lcom/prineside/luaj/Prototype;

    iget-object v8, v8, Lcom/prineside/luaj/Prototype;->p:[Lcom/prineside/luaj/Prototype;

    ushr-int/lit8 v12, v12, 0xe

    aget-object v8, v8, v12

    new-instance v12, Lcom/prineside/luaj/LuaClosure;

    iget-object v15, v1, Lcom/prineside/luaj/LuaClosure;->u:Lcom/prineside/luaj/Globals;

    invoke-direct {v12, v8, v15}, Lcom/prineside/luaj/LuaClosure;-><init>(Lcom/prineside/luaj/Prototype;Lcom/prineside/luaj/LuaValue;)V

    iget-object v8, v8, Lcom/prineside/luaj/Prototype;->upvalues:[Lcom/prineside/luaj/Upvaldesc;

    array-length v15, v8

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v15, :cond_5

    aget-object v14, v8, v9

    iget-boolean v3, v14, Lcom/prineside/luaj/Upvaldesc;->instack:Z

    if-eqz v3, :cond_4

    iget-object v3, v12, Lcom/prineside/luaj/LuaClosure;->upValues:[Lcom/prineside/luaj/UpValue;

    iget-short v14, v14, Lcom/prineside/luaj/Upvaldesc;->idx:S

    invoke-virtual {v1, v2, v14, v5}, Lcom/prineside/luaj/LuaClosure;->s([Lcom/prineside/luaj/LuaValue;S[Lcom/prineside/luaj/UpValue;)Lcom/prineside/luaj/UpValue;

    move-result-object v14

    aput-object v14, v3, v9

    move-object/from16 v16, v8

    goto :goto_7

    :cond_4
    iget-object v3, v12, Lcom/prineside/luaj/LuaClosure;->upValues:[Lcom/prineside/luaj/UpValue;

    move-object/from16 v16, v8

    iget-object v8, v1, Lcom/prineside/luaj/LuaClosure;->upValues:[Lcom/prineside/luaj/UpValue;

    iget-short v14, v14, Lcom/prineside/luaj/Upvaldesc;->idx:S

    aget-object v8, v8, v14

    aput-object v8, v3, v9

    :goto_7
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, p2

    move-object/from16 v8, v16

    const/4 v14, 0x1

    goto :goto_6

    :cond_5
    aput-object v12, v2, v13

    goto/16 :goto_b

    :pswitch_3
    shr-int/lit8 v3, v12, 0xe

    and-int/lit16 v3, v3, 0x1ff

    if-nez v3, :cond_6

    add-int/lit8 v10, v10, 0x1

    aget v3, v6, v10
    :try_end_0
    .catch Lcom/prineside/luaj/LuaError; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    const/4 v8, 0x1

    sub-int/2addr v3, v8

    mul-int/lit8 v3, v3, 0x32

    :try_start_1
    aget-object v9, v2, v13

    ushr-int/lit8 v12, v12, 0x17

    if-nez v12, :cond_8

    sub-int v12, v11, v13

    sub-int/2addr v12, v8

    invoke-virtual {v4}, Lcom/prineside/luaj/Varargs;->narg()I

    move-result v8
    :try_end_1
    .catch Lcom/prineside/luaj/LuaError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int v8, v12, v8

    const/4 v14, 0x1

    :goto_8
    if-gt v14, v8, :cond_7

    add-int v15, v3, v14

    add-int v16, v13, v14

    move/from16 v17, v10

    :try_start_2
    aget-object v10, v2, v16

    invoke-virtual {v9, v15, v10}, Lcom/prineside/luaj/LuaValue;->set(ILcom/prineside/luaj/LuaValue;)V

    add-int/lit8 v14, v14, 0x1

    move/from16 v10, v17

    goto :goto_8

    :cond_7
    move/from16 v17, v10

    :goto_9
    if-gt v14, v12, :cond_9

    add-int v10, v3, v14

    sub-int v13, v14, v8

    invoke-virtual {v4, v13}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v13

    invoke-virtual {v9, v10, v13}, Lcom/prineside/luaj/LuaValue;->set(ILcom/prineside/luaj/LuaValue;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    :cond_8
    move/from16 v17, v10

    add-int v8, v3, v12

    invoke-virtual {v9, v8}, Lcom/prineside/luaj/LuaValue;->presize(I)V

    const/4 v8, 0x1

    :goto_a
    if-gt v8, v12, :cond_9

    add-int v10, v3, v8

    add-int v14, v13, v8

    aget-object v14, v2, v14

    invoke-virtual {v9, v10, v14}, Lcom/prineside/luaj/LuaValue;->set(ILcom/prineside/luaj/LuaValue;)V
    :try_end_2
    .catch Lcom/prineside/luaj/LuaError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_9
    move-object/from16 v18, v6

    move/from16 v10, v17

    goto/16 :goto_4

    :catch_0
    move-exception v0

    move-object v2, v0

    move/from16 v10, v17

    goto/16 :goto_46

    :catch_1
    move-exception v0

    move-object v2, v0

    move/from16 v10, v17

    goto/16 :goto_48

    :catch_2
    move-exception v0

    move/from16 v17, v10

    goto/16 :goto_45

    :catch_3
    move-exception v0

    move/from16 v17, v10

    goto/16 :goto_47

    :pswitch_4
    add-int/lit8 v3, v13, 0x1

    :try_start_3
    aget-object v8, v2, v3

    invoke-virtual {v8}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v8

    if-nez v8, :cond_a

    aget-object v3, v2, v3

    aput-object v3, v2, v13

    ushr-int/lit8 v3, v12, 0xe

    sub-int v3, v3, v17

    add-int/2addr v10, v3

    goto/16 :goto_3

    :cond_a
    :goto_b
    move-object/from16 v18, v6

    const/4 v6, 0x0

    const/4 v9, 0x0

    goto/16 :goto_2b

    :pswitch_5
    aget-object v3, v2, v13

    add-int/lit8 v4, v13, 0x1

    aget-object v4, v2, v4

    add-int/lit8 v8, v13, 0x2

    aget-object v8, v2, v8

    invoke-static {v4, v8}, Lcom/prineside/luaj/LuaValue;->varargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/prineside/luaj/LuaValue;->invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object v3

    shr-int/lit8 v4, v12, 0xe

    and-int/lit16 v4, v4, 0x1ff

    :goto_c
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_b

    add-int/lit8 v8, v13, 0x3

    add-int/2addr v8, v4

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v3, v9}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v9

    aput-object v9, v2, v8

    goto :goto_c

    :cond_b
    sget-object v3, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    goto/16 :goto_2

    :pswitch_6
    aget-object v3, v2, v13

    const-string v8, "\'for\' initial value must be a number"

    invoke-virtual {v3, v8}, Lcom/prineside/luaj/LuaValue;->checknumber(Ljava/lang/String;)Lcom/prineside/luaj/LuaNumber;

    move-result-object v3

    add-int/lit8 v8, v13, 0x1

    aget-object v9, v2, v8

    const-string v14, "\'for\' limit must be a number"

    invoke-virtual {v9, v14}, Lcom/prineside/luaj/LuaValue;->checknumber(Ljava/lang/String;)Lcom/prineside/luaj/LuaNumber;

    move-result-object v9

    add-int/lit8 v14, v13, 0x2

    aget-object v15, v2, v14

    move-object/from16 v18, v6

    const-string v6, "\'for\' step must be a number"

    invoke-virtual {v15, v6}, Lcom/prineside/luaj/LuaValue;->checknumber(Ljava/lang/String;)Lcom/prineside/luaj/LuaNumber;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/prineside/luaj/LuaValue;->sub(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v3

    aput-object v3, v2, v13

    aput-object v9, v2, v8

    aput-object v6, v2, v14

    ushr-int/lit8 v3, v12, 0xe

    sub-int v3, v3, v17

    add-int/2addr v10, v3

    goto/16 :goto_4

    :pswitch_7
    move-object/from16 v18, v6

    add-int/lit8 v3, v13, 0x1

    aget-object v3, v2, v3

    add-int/lit8 v6, v13, 0x2

    aget-object v6, v2, v6

    aget-object v8, v2, v13

    invoke-virtual {v8, v6}, Lcom/prineside/luaj/LuaValue;->add(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lcom/prineside/luaj/LuaValue;->gt_b(I)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v8, v3}, Lcom/prineside/luaj/LuaValue;->lteq_b(Lcom/prineside/luaj/LuaValue;)Z

    move-result v3

    if-eqz v3, :cond_35

    goto :goto_d

    :cond_c
    invoke-virtual {v8, v3}, Lcom/prineside/luaj/LuaValue;->gteq_b(Lcom/prineside/luaj/LuaValue;)Z

    move-result v3

    if-eqz v3, :cond_35

    :goto_d
    aput-object v8, v2, v13

    add-int/lit8 v13, v13, 0x3

    aput-object v8, v2, v13

    ushr-int/lit8 v3, v12, 0xe

    sub-int v3, v3, v17

    add-int/2addr v10, v3

    goto/16 :goto_1f

    :pswitch_8
    ushr-int/lit8 v3, v12, 0x17

    if-eqz v3, :cond_18

    const/4 v6, 0x1

    if-eq v3, v6, :cond_14

    if-eq v3, v8, :cond_10

    sub-int/2addr v3, v6

    invoke-static {v2, v13, v3}, Lcom/prineside/luaj/LuaValue;->varargsOf([Lcom/prineside/luaj/LuaValue;II)Lcom/prineside/luaj/Varargs;

    move-result-object v2
    :try_end_3
    .catch Lcom/prineside/luaj/LuaError; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_e

    array-length v3, v5

    :cond_d
    :goto_e
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_e

    aget-object v4, v5, v3

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lcom/prineside/luaj/UpValue;->close()V

    goto :goto_e

    :cond_e
    iget-object v3, v1, Lcom/prineside/luaj/LuaClosure;->u:Lcom/prineside/luaj/Globals;

    if-eqz v3, :cond_f

    iget-object v3, v3, Lcom/prineside/luaj/Globals;->debuglib:Lcom/prineside/luaj/lib/DebugLib;

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Lcom/prineside/luaj/lib/DebugLib;->onReturn()V

    :cond_f
    return-object v2

    :cond_10
    :try_start_4
    aget-object v2, v2, v13
    :try_end_4
    .catch Lcom/prineside/luaj/LuaError; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v5, :cond_12

    array-length v3, v5

    :cond_11
    :goto_f
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_12

    aget-object v4, v5, v3

    if-eqz v4, :cond_11

    invoke-virtual {v4}, Lcom/prineside/luaj/UpValue;->close()V

    goto :goto_f

    :cond_12
    iget-object v3, v1, Lcom/prineside/luaj/LuaClosure;->u:Lcom/prineside/luaj/Globals;

    if-eqz v3, :cond_13

    iget-object v3, v3, Lcom/prineside/luaj/Globals;->debuglib:Lcom/prineside/luaj/lib/DebugLib;

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Lcom/prineside/luaj/lib/DebugLib;->onReturn()V

    :cond_13
    return-object v2

    :cond_14
    :try_start_5
    sget-object v2, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;
    :try_end_5
    .catch Lcom/prineside/luaj/LuaError; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v5, :cond_16

    array-length v3, v5

    :cond_15
    :goto_10
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_16

    aget-object v4, v5, v3

    if-eqz v4, :cond_15

    invoke-virtual {v4}, Lcom/prineside/luaj/UpValue;->close()V

    goto :goto_10

    :cond_16
    iget-object v3, v1, Lcom/prineside/luaj/LuaClosure;->u:Lcom/prineside/luaj/Globals;

    if-eqz v3, :cond_17

    iget-object v3, v3, Lcom/prineside/luaj/Globals;->debuglib:Lcom/prineside/luaj/lib/DebugLib;

    if-eqz v3, :cond_17

    invoke-virtual {v3}, Lcom/prineside/luaj/lib/DebugLib;->onReturn()V

    :cond_17
    return-object v2

    :cond_18
    :try_start_6
    invoke-virtual {v4}, Lcom/prineside/luaj/Varargs;->narg()I

    move-result v3

    sub-int/2addr v11, v3

    sub-int/2addr v11, v13

    invoke-static {v2, v13, v11, v4}, Lcom/prineside/luaj/LuaValue;->varargsOf([Lcom/prineside/luaj/LuaValue;IILcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object v2
    :try_end_6
    .catch Lcom/prineside/luaj/LuaError; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v5, :cond_1a

    array-length v3, v5

    :cond_19
    :goto_11
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_1a

    aget-object v4, v5, v3

    if-eqz v4, :cond_19

    invoke-virtual {v4}, Lcom/prineside/luaj/UpValue;->close()V

    goto :goto_11

    :cond_1a
    iget-object v3, v1, Lcom/prineside/luaj/LuaClosure;->u:Lcom/prineside/luaj/Globals;

    if-eqz v3, :cond_1b

    iget-object v3, v3, Lcom/prineside/luaj/Globals;->debuglib:Lcom/prineside/luaj/lib/DebugLib;

    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Lcom/prineside/luaj/lib/DebugLib;->onReturn()V

    :cond_1b
    return-object v2

    :pswitch_9
    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    and-int/2addr v3, v12

    const/high16 v6, 0x800000

    if-eq v3, v6, :cond_2c

    const/high16 v6, 0x1000000

    if-eq v3, v6, :cond_28

    const/high16 v6, 0x1800000

    if-eq v3, v6, :cond_24

    const/high16 v6, 0x2000000

    if-eq v3, v6, :cond_20

    ushr-int/lit8 v3, v12, 0x17

    if-lez v3, :cond_1c

    add-int/lit8 v4, v13, 0x1

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    :try_start_7
    invoke-static {v2, v4, v3}, Lcom/prineside/luaj/LuaValue;->varargsOf([Lcom/prineside/luaj/LuaValue;II)Lcom/prineside/luaj/Varargs;

    move-result-object v3

    goto :goto_12

    :cond_1c
    add-int/lit8 v3, v13, 0x1

    invoke-virtual {v4}, Lcom/prineside/luaj/Varargs;->narg()I

    move-result v6

    sub-int/2addr v11, v6

    sub-int/2addr v11, v3

    invoke-static {v2, v3, v11, v4}, Lcom/prineside/luaj/LuaValue;->varargsOf([Lcom/prineside/luaj/LuaValue;IILcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object v3

    :goto_12
    new-instance v4, Lcom/prineside/luaj/TailcallVarargs;

    aget-object v2, v2, v13

    invoke-direct {v4, v2, v3}, Lcom/prineside/luaj/TailcallVarargs;-><init>(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)V
    :try_end_7
    .catch Lcom/prineside/luaj/LuaError; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v5, :cond_1e

    array-length v2, v5

    :cond_1d
    :goto_13
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1e

    aget-object v3, v5, v2

    if-eqz v3, :cond_1d

    invoke-virtual {v3}, Lcom/prineside/luaj/UpValue;->close()V

    goto :goto_13

    :cond_1e
    iget-object v2, v1, Lcom/prineside/luaj/LuaClosure;->u:Lcom/prineside/luaj/Globals;

    if-eqz v2, :cond_1f

    iget-object v2, v2, Lcom/prineside/luaj/Globals;->debuglib:Lcom/prineside/luaj/lib/DebugLib;

    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Lcom/prineside/luaj/lib/DebugLib;->onReturn()V

    :cond_1f
    return-object v4

    :cond_20
    :try_start_8
    new-instance v3, Lcom/prineside/luaj/TailcallVarargs;

    aget-object v4, v2, v13

    add-int/lit8 v6, v13, 0x1

    aget-object v6, v2, v6

    add-int/lit8 v7, v13, 0x2

    aget-object v7, v2, v7

    add-int/lit8 v13, v13, 0x3

    aget-object v2, v2, v13

    invoke-static {v6, v7, v2}, Lcom/prineside/luaj/LuaValue;->varargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/prineside/luaj/TailcallVarargs;-><init>(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)V
    :try_end_8
    .catch Lcom/prineside/luaj/LuaError; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v5, :cond_22

    array-length v2, v5

    :cond_21
    :goto_14
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_22

    aget-object v4, v5, v2

    if-eqz v4, :cond_21

    invoke-virtual {v4}, Lcom/prineside/luaj/UpValue;->close()V

    goto :goto_14

    :cond_22
    iget-object v2, v1, Lcom/prineside/luaj/LuaClosure;->u:Lcom/prineside/luaj/Globals;

    if-eqz v2, :cond_23

    iget-object v2, v2, Lcom/prineside/luaj/Globals;->debuglib:Lcom/prineside/luaj/lib/DebugLib;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Lcom/prineside/luaj/lib/DebugLib;->onReturn()V

    :cond_23
    return-object v3

    :cond_24
    :try_start_9
    new-instance v3, Lcom/prineside/luaj/TailcallVarargs;

    aget-object v4, v2, v13

    add-int/lit8 v6, v13, 0x1

    aget-object v6, v2, v6

    add-int/2addr v13, v8

    aget-object v2, v2, v13

    invoke-static {v6, v2}, Lcom/prineside/luaj/LuaValue;->varargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/prineside/luaj/TailcallVarargs;-><init>(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)V
    :try_end_9
    .catch Lcom/prineside/luaj/LuaError; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v5, :cond_26

    array-length v2, v5

    :cond_25
    :goto_15
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_26

    aget-object v4, v5, v2

    if-eqz v4, :cond_25

    invoke-virtual {v4}, Lcom/prineside/luaj/UpValue;->close()V

    goto :goto_15

    :cond_26
    iget-object v2, v1, Lcom/prineside/luaj/LuaClosure;->u:Lcom/prineside/luaj/Globals;

    if-eqz v2, :cond_27

    iget-object v2, v2, Lcom/prineside/luaj/Globals;->debuglib:Lcom/prineside/luaj/lib/DebugLib;

    if-eqz v2, :cond_27

    invoke-virtual {v2}, Lcom/prineside/luaj/lib/DebugLib;->onReturn()V

    :cond_27
    return-object v3

    :cond_28
    :try_start_a
    new-instance v3, Lcom/prineside/luaj/TailcallVarargs;

    aget-object v4, v2, v13

    const/4 v6, 0x1

    add-int/2addr v13, v6

    aget-object v2, v2, v13

    invoke-direct {v3, v4, v2}, Lcom/prineside/luaj/TailcallVarargs;-><init>(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)V
    :try_end_a
    .catch Lcom/prineside/luaj/LuaError; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v5, :cond_2a

    array-length v2, v5

    :cond_29
    :goto_16
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2a

    aget-object v4, v5, v2

    if-eqz v4, :cond_29

    invoke-virtual {v4}, Lcom/prineside/luaj/UpValue;->close()V

    goto :goto_16

    :cond_2a
    iget-object v2, v1, Lcom/prineside/luaj/LuaClosure;->u:Lcom/prineside/luaj/Globals;

    if-eqz v2, :cond_2b

    iget-object v2, v2, Lcom/prineside/luaj/Globals;->debuglib:Lcom/prineside/luaj/lib/DebugLib;

    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Lcom/prineside/luaj/lib/DebugLib;->onReturn()V

    :cond_2b
    return-object v3

    :cond_2c
    :try_start_b
    new-instance v3, Lcom/prineside/luaj/TailcallVarargs;

    aget-object v2, v2, v13

    sget-object v4, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    invoke-direct {v3, v2, v4}, Lcom/prineside/luaj/TailcallVarargs;-><init>(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)V
    :try_end_b
    .catch Lcom/prineside/luaj/LuaError; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v5, :cond_2e

    array-length v2, v5

    :cond_2d
    :goto_17
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2e

    aget-object v4, v5, v2

    if-eqz v4, :cond_2d

    invoke-virtual {v4}, Lcom/prineside/luaj/UpValue;->close()V

    goto :goto_17

    :cond_2e
    iget-object v2, v1, Lcom/prineside/luaj/LuaClosure;->u:Lcom/prineside/luaj/Globals;

    if-eqz v2, :cond_2f

    iget-object v2, v2, Lcom/prineside/luaj/Globals;->debuglib:Lcom/prineside/luaj/lib/DebugLib;

    if-eqz v2, :cond_2f

    invoke-virtual {v2}, Lcom/prineside/luaj/lib/DebugLib;->onReturn()V

    :cond_2f
    return-object v3

    :pswitch_a
    move-object/from16 v18, v6

    const/4 v9, 0x0

    and-int/lit16 v3, v12, -0x4000

    sparse-switch v3, :sswitch_data_0

    ushr-int/lit8 v3, v12, 0x17

    shr-int/lit8 v6, v12, 0xe

    and-int/lit16 v6, v6, 0x1ff

    :try_start_c
    aget-object v8, v2, v13

    goto/16 :goto_1a

    :sswitch_0
    aget-object v3, v2, v13

    add-int/lit8 v6, v13, 0x1

    aget-object v6, v2, v6

    add-int/lit8 v8, v13, 0x2

    aget-object v8, v2, v8

    add-int/lit8 v12, v13, 0x3

    aget-object v12, v2, v12

    invoke-virtual {v3, v6, v8, v12}, Lcom/prineside/luaj/LuaValue;->call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v3

    aput-object v3, v2, v13

    goto/16 :goto_2a

    :sswitch_1
    aget-object v3, v2, v13

    add-int/lit8 v6, v13, 0x1

    aget-object v6, v2, v6

    add-int/lit8 v8, v13, 0x2

    aget-object v8, v2, v8

    add-int/lit8 v13, v13, 0x3

    aget-object v12, v2, v13

    invoke-virtual {v3, v6, v8, v12}, Lcom/prineside/luaj/LuaValue;->call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    goto/16 :goto_2a

    :sswitch_2
    aget-object v3, v2, v13

    add-int/lit8 v6, v13, 0x1

    aget-object v6, v2, v6

    add-int/lit8 v8, v13, 0x2

    aget-object v8, v2, v8

    invoke-virtual {v3, v6, v8}, Lcom/prineside/luaj/LuaValue;->call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v3

    aput-object v3, v2, v13

    goto/16 :goto_2a

    :sswitch_3
    aget-object v3, v2, v13

    add-int/lit8 v6, v13, 0x1

    aget-object v6, v2, v6

    add-int/lit8 v13, v13, 0x2

    aget-object v8, v2, v13

    invoke-virtual {v3, v6, v8}, Lcom/prineside/luaj/LuaValue;->call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    goto/16 :goto_2a

    :sswitch_4
    aget-object v3, v2, v13

    add-int/lit8 v6, v13, 0x1

    aget-object v6, v2, v6

    invoke-virtual {v3, v6}, Lcom/prineside/luaj/LuaValue;->call(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v3

    aput-object v3, v2, v13

    goto/16 :goto_2a

    :sswitch_5
    aget-object v3, v2, v13

    add-int/lit8 v13, v13, 0x1

    aget-object v6, v2, v13

    invoke-virtual {v3, v6}, Lcom/prineside/luaj/LuaValue;->call(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    goto/16 :goto_2a

    :sswitch_6
    aget-object v3, v2, v13

    add-int/lit8 v4, v13, 0x1

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Lcom/prineside/luaj/LuaValue;->invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/luaj/Varargs;->narg()I

    move-result v4

    goto :goto_18

    :sswitch_7
    aget-object v3, v2, v13

    invoke-virtual {v3}, Lcom/prineside/luaj/LuaValue;->call()Lcom/prineside/luaj/LuaValue;

    move-result-object v3

    aput-object v3, v2, v13

    goto/16 :goto_2a

    :sswitch_8
    aget-object v3, v2, v13

    invoke-virtual {v3}, Lcom/prineside/luaj/LuaValue;->call()Lcom/prineside/luaj/LuaValue;

    goto/16 :goto_2a

    :sswitch_9
    aget-object v3, v2, v13

    sget-object v4, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    invoke-virtual {v3, v4}, Lcom/prineside/luaj/LuaValue;->invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/luaj/Varargs;->narg()I

    move-result v4

    :goto_18
    add-int v11, v13, v4

    :goto_19
    move-object v4, v3

    goto :goto_1f

    :goto_1a
    if-lez v3, :cond_30

    add-int/lit8 v4, v13, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v4, v3}, Lcom/prineside/luaj/LuaValue;->varargsOf([Lcom/prineside/luaj/LuaValue;II)Lcom/prineside/luaj/Varargs;

    move-result-object v3

    goto :goto_1b

    :cond_30
    add-int/lit8 v3, v13, 0x1

    invoke-virtual {v4}, Lcom/prineside/luaj/Varargs;->narg()I

    move-result v12

    sub-int v12, v11, v12

    sub-int/2addr v12, v3

    invoke-static {v2, v3, v12, v4}, Lcom/prineside/luaj/LuaValue;->varargsOf([Lcom/prineside/luaj/LuaValue;IILcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object v3

    :goto_1b
    invoke-virtual {v8, v3}, Lcom/prineside/luaj/LuaValue;->invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object v3

    if-lez v6, :cond_31

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v2, v13, v6}, Lcom/prineside/luaj/Varargs;->a([Lcom/prineside/luaj/LuaValue;II)V

    sget-object v3, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    goto :goto_19

    :cond_31
    invoke-virtual {v3}, Lcom/prineside/luaj/Varargs;->narg()I

    move-result v4

    add-int v11, v13, v4

    invoke-virtual {v3}, Lcom/prineside/luaj/Varargs;->dealias()Lcom/prineside/luaj/Varargs;

    move-result-object v3

    goto :goto_19

    :pswitch_b
    move-object/from16 v18, v6

    const/4 v9, 0x0

    ushr-int/lit8 v3, v12, 0x17

    aget-object v3, v2, v3

    invoke-virtual {v3}, Lcom/prineside/luaj/LuaValue;->toboolean()Z

    move-result v6

    and-int v8, v12, v16

    if-eqz v8, :cond_32

    const/4 v8, 0x1

    goto :goto_1c

    :cond_32
    const/4 v8, 0x0

    :goto_1c
    if-eq v6, v8, :cond_33

    goto :goto_1e

    :cond_33
    aput-object v3, v2, v13

    goto/16 :goto_2a

    :pswitch_c
    move-object/from16 v18, v6

    const/4 v9, 0x0

    aget-object v3, v2, v13

    invoke-virtual {v3}, Lcom/prineside/luaj/LuaValue;->toboolean()Z

    move-result v3

    and-int v6, v12, v16

    if-eqz v6, :cond_34

    const/4 v6, 0x1

    goto :goto_1d

    :cond_34
    const/4 v6, 0x0

    :goto_1d
    if-eq v3, v6, :cond_40

    :goto_1e
    add-int/lit8 v10, v10, 0x1

    :cond_35
    :goto_1f
    const/4 v3, 0x1

    const/4 v6, 0x0

    goto/16 :goto_43

    :pswitch_d
    move-object/from16 v18, v6

    const/4 v9, 0x0

    ushr-int/lit8 v3, v12, 0x17

    const/16 v6, 0xff

    if-le v3, v6, :cond_36

    and-int/lit16 v3, v3, 0xff

    aget-object v3, v7, v3

    goto :goto_20

    :cond_36
    aget-object v3, v2, v3

    :goto_20
    shr-int/lit8 v6, v12, 0xe

    and-int/lit16 v6, v6, 0x1ff

    const/16 v8, 0xff

    if-le v6, v8, :cond_37

    and-int/lit16 v6, v6, 0xff

    aget-object v6, v7, v6

    goto :goto_21

    :cond_37
    aget-object v6, v2, v6

    :goto_21
    invoke-virtual {v3, v6}, Lcom/prineside/luaj/LuaValue;->lteq_b(Lcom/prineside/luaj/LuaValue;)Z

    move-result v3

    if-eqz v13, :cond_38

    const/4 v6, 0x1

    goto :goto_22

    :cond_38
    const/4 v6, 0x0

    :goto_22
    if-eq v3, v6, :cond_40

    goto :goto_1e

    :pswitch_e
    move-object/from16 v18, v6

    const/4 v9, 0x0

    ushr-int/lit8 v3, v12, 0x17

    const/16 v6, 0xff

    if-le v3, v6, :cond_39

    and-int/lit16 v3, v3, 0xff

    aget-object v3, v7, v3

    goto :goto_23

    :cond_39
    aget-object v3, v2, v3

    :goto_23
    shr-int/lit8 v6, v12, 0xe

    and-int/lit16 v6, v6, 0x1ff

    const/16 v8, 0xff

    if-le v6, v8, :cond_3a

    and-int/lit16 v6, v6, 0xff

    aget-object v6, v7, v6

    goto :goto_24

    :cond_3a
    aget-object v6, v2, v6

    :goto_24
    invoke-virtual {v3, v6}, Lcom/prineside/luaj/LuaValue;->lt_b(Lcom/prineside/luaj/LuaValue;)Z

    move-result v3

    if-eqz v13, :cond_3b

    const/4 v6, 0x1

    goto :goto_25

    :cond_3b
    const/4 v6, 0x0

    :goto_25
    if-eq v3, v6, :cond_40

    goto :goto_1e

    :pswitch_f
    move-object/from16 v18, v6

    const/4 v9, 0x0

    ushr-int/lit8 v3, v12, 0x17

    const/16 v6, 0xff

    if-le v3, v6, :cond_3c

    and-int/lit16 v3, v3, 0xff

    aget-object v3, v7, v3

    goto :goto_26

    :cond_3c
    aget-object v3, v2, v3

    :goto_26
    shr-int/lit8 v6, v12, 0xe

    and-int/lit16 v6, v6, 0x1ff

    const/16 v8, 0xff

    if-le v6, v8, :cond_3d

    and-int/lit16 v6, v6, 0xff

    aget-object v6, v7, v6

    goto :goto_27

    :cond_3d
    aget-object v6, v2, v6

    :goto_27
    invoke-virtual {v3, v6}, Lcom/prineside/luaj/LuaValue;->eq_b(Lcom/prineside/luaj/LuaValue;)Z

    move-result v3

    if-eqz v13, :cond_3e

    const/4 v6, 0x1

    goto :goto_28

    :cond_3e
    const/4 v6, 0x0

    :goto_28
    if-eq v3, v6, :cond_40

    goto/16 :goto_1e

    :pswitch_10
    move-object/from16 v18, v6

    const/4 v9, 0x0

    ushr-int/lit8 v3, v12, 0xe

    sub-int v3, v3, v17

    add-int/2addr v10, v3

    if-lez v13, :cond_40

    add-int/lit8 v13, v13, -0x1

    array-length v3, v5

    :goto_29
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_40

    aget-object v6, v5, v3

    if-eqz v6, :cond_3f

    iget v8, v6, Lcom/prineside/luaj/UpValue;->b:I

    if-lt v8, v13, :cond_3f

    invoke-virtual {v6}, Lcom/prineside/luaj/UpValue;->close()V

    const/4 v6, 0x0

    aput-object v6, v5, v3

    goto :goto_29

    :cond_3f
    const/4 v6, 0x0

    goto :goto_29

    :cond_40
    :goto_2a
    const/4 v6, 0x0

    :cond_41
    :goto_2b
    const/4 v3, 0x1

    goto/16 :goto_43

    :pswitch_11
    move-object/from16 v18, v6

    const/4 v6, 0x0

    const/4 v9, 0x0

    ushr-int/lit8 v3, v12, 0x17

    shr-int/lit8 v8, v12, 0xe

    and-int/lit16 v8, v8, 0x1ff

    add-int/lit8 v12, v3, 0x1

    if-le v8, v12, :cond_43

    aget-object v12, v2, v8

    invoke-virtual {v12}, Lcom/prineside/luaj/LuaValue;->buffer()Lcom/prineside/luaj/Buffer;

    move-result-object v12

    :goto_2c
    add-int/lit8 v8, v8, -0x1

    if-lt v8, v3, :cond_42

    aget-object v14, v2, v8

    invoke-virtual {v12, v14}, Lcom/prineside/luaj/Buffer;->concatTo(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Buffer;

    goto :goto_2c

    :cond_42
    invoke-virtual {v12}, Lcom/prineside/luaj/Buffer;->value()Lcom/prineside/luaj/LuaValue;

    move-result-object v3

    aput-object v3, v2, v13

    goto :goto_2b

    :cond_43
    add-int/lit8 v3, v8, -0x1

    aget-object v3, v2, v3

    aget-object v8, v2, v8

    invoke-virtual {v3, v8}, Lcom/prineside/luaj/LuaValue;->concat(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v3

    aput-object v3, v2, v13

    goto :goto_2b

    :pswitch_12
    move-object/from16 v18, v6

    const/4 v6, 0x0

    const/4 v9, 0x0

    ushr-int/lit8 v3, v12, 0x17

    aget-object v3, v2, v3

    invoke-virtual {v3}, Lcom/prineside/luaj/LuaValue;->len()Lcom/prineside/luaj/LuaValue;

    move-result-object v3

    aput-object v3, v2, v13

    goto :goto_2b

    :pswitch_13
    move-object/from16 v18, v6

    const/4 v6, 0x0

    const/4 v9, 0x0

    ushr-int/lit8 v3, v12, 0x17

    aget-object v3, v2, v3

    invoke-virtual {v3}, Lcom/prineside/luaj/LuaValue;->not()Lcom/prineside/luaj/LuaValue;

    move-result-object v3

    aput-object v3, v2, v13

    goto :goto_2b

    :pswitch_14
    move-object/from16 v18, v6

    const/4 v6, 0x0

    const/4 v9, 0x0

    ushr-int/lit8 v3, v12, 0x17

    aget-object v3, v2, v3

    invoke-virtual {v3}, Lcom/prineside/luaj/LuaValue;->neg()Lcom/prineside/luaj/LuaValue;

    move-result-object v3

    aput-object v3, v2, v13

    goto :goto_2b

    :pswitch_15
    move-object/from16 v18, v6

    const/4 v6, 0x0

    const/4 v9, 0x0

    ushr-int/lit8 v3, v12, 0x17

    const/16 v8, 0xff

    if-le v3, v8, :cond_44

    and-int/lit16 v3, v3, 0xff

    aget-object v3, v7, v3

    goto :goto_2d

    :cond_44
    aget-object v3, v2, v3

    :goto_2d
    shr-int/lit8 v8, v12, 0xe

    and-int/lit16 v8, v8, 0x1ff

    const/16 v12, 0xff

    if-le v8, v12, :cond_45

    and-int/lit16 v8, v8, 0xff

    aget-object v8, v7, v8

    goto :goto_2e

    :cond_45
    aget-object v8, v2, v8

    :goto_2e
    invoke-virtual {v3, v8}, Lcom/prineside/luaj/LuaValue;->pow(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v3

    aput-object v3, v2, v13

    goto/16 :goto_2b

    :pswitch_16
    move-object/from16 v18, v6

    const/4 v6, 0x0

    const/4 v9, 0x0

    ushr-int/lit8 v3, v12, 0x17

    const/16 v8, 0xff

    if-le v3, v8, :cond_46

    and-int/lit16 v3, v3, 0xff

    aget-object v3, v7, v3

    goto :goto_2f

    :cond_46
    aget-object v3, v2, v3

    :goto_2f
    shr-int/lit8 v8, v12, 0xe

    and-int/lit16 v8, v8, 0x1ff

    const/16 v12, 0xff

    if-le v8, v12, :cond_47

    and-int/lit16 v8, v8, 0xff

    aget-object v8, v7, v8

    goto :goto_30

    :cond_47
    aget-object v8, v2, v8

    :goto_30
    invoke-virtual {v3, v8}, Lcom/prineside/luaj/LuaValue;->mod(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v3

    aput-object v3, v2, v13

    goto/16 :goto_2b

    :pswitch_17
    move-object/from16 v18, v6

    const/4 v6, 0x0

    const/4 v9, 0x0

    ushr-int/lit8 v3, v12, 0x17

    const/16 v8, 0xff

    if-le v3, v8, :cond_48

    and-int/lit16 v3, v3, 0xff

    aget-object v3, v7, v3

    goto :goto_31

    :cond_48
    aget-object v3, v2, v3

    :goto_31
    shr-int/lit8 v8, v12, 0xe

    and-int/lit16 v8, v8, 0x1ff

    const/16 v12, 0xff

    if-le v8, v12, :cond_49

    and-int/lit16 v8, v8, 0xff

    aget-object v8, v7, v8

    goto :goto_32

    :cond_49
    aget-object v8, v2, v8

    :goto_32
    invoke-virtual {v3, v8}, Lcom/prineside/luaj/LuaValue;->div(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v3

    aput-object v3, v2, v13

    goto/16 :goto_2b

    :pswitch_18
    move-object/from16 v18, v6

    const/4 v6, 0x0

    const/4 v9, 0x0

    ushr-int/lit8 v3, v12, 0x17

    const/16 v8, 0xff

    if-le v3, v8, :cond_4a

    and-int/lit16 v3, v3, 0xff

    aget-object v3, v7, v3

    goto :goto_33

    :cond_4a
    aget-object v3, v2, v3

    :goto_33
    shr-int/lit8 v8, v12, 0xe

    and-int/lit16 v8, v8, 0x1ff

    const/16 v12, 0xff

    if-le v8, v12, :cond_4b

    and-int/lit16 v8, v8, 0xff

    aget-object v8, v7, v8

    goto :goto_34

    :cond_4b
    aget-object v8, v2, v8

    :goto_34
    invoke-virtual {v3, v8}, Lcom/prineside/luaj/LuaValue;->mul(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v3

    aput-object v3, v2, v13

    goto/16 :goto_2b

    :pswitch_19
    move-object/from16 v18, v6

    const/4 v6, 0x0

    const/4 v9, 0x0

    ushr-int/lit8 v3, v12, 0x17

    const/16 v8, 0xff

    if-le v3, v8, :cond_4c

    and-int/lit16 v3, v3, 0xff

    aget-object v3, v7, v3

    goto :goto_35

    :cond_4c
    aget-object v3, v2, v3

    :goto_35
    shr-int/lit8 v8, v12, 0xe

    and-int/lit16 v8, v8, 0x1ff

    const/16 v12, 0xff

    if-le v8, v12, :cond_4d

    and-int/lit16 v8, v8, 0xff

    aget-object v8, v7, v8

    goto :goto_36

    :cond_4d
    aget-object v8, v2, v8

    :goto_36
    invoke-virtual {v3, v8}, Lcom/prineside/luaj/LuaValue;->sub(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v3

    aput-object v3, v2, v13

    goto/16 :goto_2b

    :pswitch_1a
    move-object/from16 v18, v6

    const/4 v6, 0x0

    const/4 v9, 0x0

    ushr-int/lit8 v3, v12, 0x17

    const/16 v8, 0xff

    if-le v3, v8, :cond_4e

    and-int/lit16 v3, v3, 0xff

    aget-object v3, v7, v3

    goto :goto_37

    :cond_4e
    aget-object v3, v2, v3

    :goto_37
    shr-int/lit8 v8, v12, 0xe

    and-int/lit16 v8, v8, 0x1ff

    const/16 v12, 0xff

    if-le v8, v12, :cond_4f

    and-int/lit16 v8, v8, 0xff

    aget-object v8, v7, v8

    goto :goto_38

    :cond_4f
    aget-object v8, v2, v8

    :goto_38
    invoke-virtual {v3, v8}, Lcom/prineside/luaj/LuaValue;->add(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v3

    aput-object v3, v2, v13

    goto/16 :goto_2b

    :pswitch_1b
    move-object/from16 v18, v6

    const/4 v6, 0x0

    const/4 v9, 0x0

    add-int/lit8 v3, v13, 0x1

    ushr-int/lit8 v8, v12, 0x17

    aget-object v8, v2, v8

    aput-object v8, v2, v3

    shr-int/lit8 v3, v12, 0xe

    and-int/lit16 v3, v3, 0x1ff

    const/16 v12, 0xff

    if-le v3, v12, :cond_50

    and-int/lit16 v3, v3, 0xff

    aget-object v3, v7, v3

    goto :goto_39

    :cond_50
    aget-object v3, v2, v3

    :goto_39
    invoke-virtual {v8, v3}, Lcom/prineside/luaj/LuaValue;->get(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v3

    aput-object v3, v2, v13

    goto/16 :goto_2b

    :pswitch_1c
    move-object/from16 v18, v6

    const/4 v6, 0x0

    const/4 v9, 0x0

    new-instance v3, Lcom/prineside/luaj/LuaTable;

    ushr-int/lit8 v8, v12, 0x17

    shr-int/lit8 v12, v12, 0xe

    and-int/lit16 v12, v12, 0x1ff

    invoke-direct {v3, v8, v12}, Lcom/prineside/luaj/LuaTable;-><init>(II)V

    aput-object v3, v2, v13

    goto/16 :goto_2b

    :pswitch_1d
    move-object/from16 v18, v6

    const/4 v6, 0x0

    const/4 v9, 0x0

    aget-object v3, v2, v13

    ushr-int/lit8 v8, v12, 0x17

    const/16 v13, 0xff

    if-le v8, v13, :cond_51

    and-int/lit16 v8, v8, 0xff

    aget-object v8, v7, v8

    goto :goto_3a

    :cond_51
    aget-object v8, v2, v8

    :goto_3a
    shr-int/lit8 v12, v12, 0xe

    and-int/lit16 v12, v12, 0x1ff

    const/16 v13, 0xff

    if-le v12, v13, :cond_52

    and-int/lit16 v12, v12, 0xff

    aget-object v12, v7, v12

    goto :goto_3b

    :cond_52
    aget-object v12, v2, v12

    :goto_3b
    invoke-virtual {v3, v8, v12}, Lcom/prineside/luaj/LuaValue;->set(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    goto/16 :goto_2b

    :pswitch_1e
    move-object/from16 v18, v6

    const/4 v6, 0x0

    const/4 v9, 0x0

    iget-object v3, v1, Lcom/prineside/luaj/LuaClosure;->upValues:[Lcom/prineside/luaj/UpValue;

    ushr-int/lit8 v8, v12, 0x17

    aget-object v3, v3, v8

    aget-object v8, v2, v13

    invoke-virtual {v3, v8}, Lcom/prineside/luaj/UpValue;->setValue(Lcom/prineside/luaj/LuaValue;)V

    goto/16 :goto_2b

    :pswitch_1f
    move-object/from16 v18, v6

    const/4 v6, 0x0

    const/4 v9, 0x0

    iget-object v3, v1, Lcom/prineside/luaj/LuaClosure;->upValues:[Lcom/prineside/luaj/UpValue;

    aget-object v3, v3, v13

    invoke-virtual {v3}, Lcom/prineside/luaj/UpValue;->getValue()Lcom/prineside/luaj/LuaValue;

    move-result-object v3

    ushr-int/lit8 v8, v12, 0x17

    const/16 v13, 0xff

    if-le v8, v13, :cond_53

    and-int/lit16 v8, v8, 0xff

    aget-object v8, v7, v8

    goto :goto_3c

    :cond_53
    aget-object v8, v2, v8

    :goto_3c
    shr-int/lit8 v12, v12, 0xe

    and-int/lit16 v12, v12, 0x1ff

    const/16 v13, 0xff

    if-le v12, v13, :cond_54

    and-int/lit16 v12, v12, 0xff

    aget-object v12, v7, v12

    goto :goto_3d

    :cond_54
    aget-object v12, v2, v12

    :goto_3d
    invoke-virtual {v3, v8, v12}, Lcom/prineside/luaj/LuaValue;->set(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    goto/16 :goto_2b

    :pswitch_20
    move-object/from16 v18, v6

    const/4 v6, 0x0

    const/4 v9, 0x0

    ushr-int/lit8 v3, v12, 0x17

    aget-object v3, v2, v3

    shr-int/lit8 v8, v12, 0xe

    and-int/lit16 v8, v8, 0x1ff

    const/16 v12, 0xff

    if-le v8, v12, :cond_55

    and-int/lit16 v8, v8, 0xff

    aget-object v8, v7, v8

    goto :goto_3e

    :cond_55
    aget-object v8, v2, v8

    :goto_3e
    invoke-virtual {v3, v8}, Lcom/prineside/luaj/LuaValue;->get(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v3

    aput-object v3, v2, v13

    goto/16 :goto_2b

    :pswitch_21
    move-object/from16 v18, v6

    const/4 v6, 0x0

    const/4 v9, 0x0

    iget-object v3, v1, Lcom/prineside/luaj/LuaClosure;->upValues:[Lcom/prineside/luaj/UpValue;

    ushr-int/lit8 v8, v12, 0x17

    aget-object v3, v3, v8

    invoke-virtual {v3}, Lcom/prineside/luaj/UpValue;->getValue()Lcom/prineside/luaj/LuaValue;

    move-result-object v3

    shr-int/lit8 v8, v12, 0xe

    and-int/lit16 v8, v8, 0x1ff

    const/16 v12, 0xff

    if-le v8, v12, :cond_56

    and-int/lit16 v8, v8, 0xff

    aget-object v8, v7, v8

    goto :goto_3f

    :cond_56
    aget-object v8, v2, v8

    :goto_3f
    invoke-virtual {v3, v8}, Lcom/prineside/luaj/LuaValue;->get(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v3

    aput-object v3, v2, v13

    goto/16 :goto_2b

    :pswitch_22
    move-object/from16 v18, v6

    const/4 v6, 0x0

    const/4 v9, 0x0

    iget-object v3, v1, Lcom/prineside/luaj/LuaClosure;->upValues:[Lcom/prineside/luaj/UpValue;

    ushr-int/lit8 v8, v12, 0x17

    aget-object v3, v3, v8

    invoke-virtual {v3}, Lcom/prineside/luaj/UpValue;->getValue()Lcom/prineside/luaj/LuaValue;

    move-result-object v3

    aput-object v3, v2, v13

    goto/16 :goto_2b

    :pswitch_23
    move-object/from16 v18, v6

    const/4 v6, 0x0

    const/4 v9, 0x0

    ushr-int/lit8 v3, v12, 0x17

    :goto_40
    add-int/lit8 v8, v3, -0x1

    if-ltz v3, :cond_41

    add-int/lit8 v3, v13, 0x1

    sget-object v12, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    aput-object v12, v2, v13

    move v13, v3

    move v3, v8

    goto :goto_40

    :pswitch_24
    move-object/from16 v18, v6

    const/4 v6, 0x0

    const/4 v9, 0x0

    ushr-int/lit8 v3, v12, 0x17

    if-eqz v3, :cond_57

    sget-object v3, Lcom/prineside/luaj/LuaValue;->TRUE:Lcom/prineside/luaj/LuaBoolean;

    goto :goto_41

    :cond_57
    sget-object v3, Lcom/prineside/luaj/LuaValue;->FALSE:Lcom/prineside/luaj/LuaBoolean;

    :goto_41
    aput-object v3, v2, v13

    and-int v3, v12, v16

    if-eqz v3, :cond_41

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2b

    :pswitch_25
    move-object/from16 v18, v6

    const/4 v6, 0x0

    const/4 v9, 0x0

    add-int/lit8 v10, v10, 0x1

    aget v3, v18, v10

    and-int/lit8 v8, v3, 0x3f

    const/16 v12, 0x27

    if-eq v8, v12, :cond_59

    new-instance v2, Lcom/prineside/luaj/LuaError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OP_EXTRAARG expected after OP_LOADKX, got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/prineside/luaj/Print;->OPNAMES:[Ljava/lang/String;

    array-length v6, v4

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-ge v8, v6, :cond_58

    aget-object v4, v4, v8

    goto :goto_42

    :cond_58
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UNKNOWN_OP_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/prineside/luaj/LuaError;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_59
    ushr-int/lit8 v3, v3, 0x6

    aget-object v3, v7, v3

    aput-object v3, v2, v13

    goto/16 :goto_2b

    :pswitch_26
    move-object/from16 v18, v6

    const/4 v6, 0x0

    const/4 v9, 0x0

    ushr-int/lit8 v3, v12, 0xe

    aget-object v3, v7, v3

    aput-object v3, v2, v13

    goto/16 :goto_2b

    :pswitch_27
    move-object/from16 v18, v6

    const/4 v6, 0x0

    const/4 v9, 0x0

    ushr-int/lit8 v3, v12, 0x17

    aget-object v3, v2, v3

    aput-object v3, v2, v13

    goto/16 :goto_2b

    :goto_43
    add-int/2addr v10, v3

    move-object/from16 v3, p2

    move-object/from16 v6, v18

    goto/16 :goto_1

    :goto_44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal opcode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_c
    .catch Lcom/prineside/luaj/LuaError; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_49

    :catch_4
    move-exception v0

    :goto_45
    move-object v2, v0

    :goto_46
    :try_start_d
    new-instance v3, Lcom/prineside/luaj/LuaError;

    invoke-direct {v3, v2}, Lcom/prineside/luaj/LuaError;-><init>(Ljava/lang/Throwable;)V

    iget-object v2, v1, Lcom/prineside/luaj/LuaClosure;->p:Lcom/prineside/luaj/Prototype;

    invoke-virtual {v1, v3, v2, v10}, Lcom/prineside/luaj/LuaClosure;->u(Lcom/prineside/luaj/LuaError;Lcom/prineside/luaj/Prototype;I)V

    throw v3

    :catch_5
    move-exception v0

    :goto_47
    move-object v2, v0

    :goto_48
    iget-object v3, v2, Lcom/prineside/luaj/LuaError;->d:Ljava/lang/String;

    if-nez v3, :cond_5a

    iget-object v3, v1, Lcom/prineside/luaj/LuaClosure;->p:Lcom/prineside/luaj/Prototype;

    invoke-virtual {v1, v2, v3, v10}, Lcom/prineside/luaj/LuaClosure;->u(Lcom/prineside/luaj/LuaError;Lcom/prineside/luaj/Prototype;I)V

    :cond_5a
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :goto_49
    if-eqz v5, :cond_5c

    array-length v3, v5

    :cond_5b
    :goto_4a
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_5c

    aget-object v4, v5, v3

    if-eqz v4, :cond_5b

    invoke-virtual {v4}, Lcom/prineside/luaj/UpValue;->close()V

    goto :goto_4a

    :cond_5c
    iget-object v3, v1, Lcom/prineside/luaj/LuaClosure;->u:Lcom/prineside/luaj/Globals;

    if-eqz v3, :cond_5d

    iget-object v3, v3, Lcom/prineside/luaj/Globals;->debuglib:Lcom/prineside/luaj/lib/DebugLib;

    if-eqz v3, :cond_5d

    invoke-virtual {v3}, Lcom/prineside/luaj/lib/DebugLib;->onReturn()V

    :cond_5d
    goto :goto_4c

    :goto_4b
    throw v2

    :goto_4c
    goto :goto_4b

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x800000 -> :sswitch_9
        0x804000 -> :sswitch_8
        0x808000 -> :sswitch_7
        0x1000000 -> :sswitch_6
        0x1004000 -> :sswitch_5
        0x1008000 -> :sswitch_4
        0x1804000 -> :sswitch_3
        0x1808000 -> :sswitch_2
        0x2004000 -> :sswitch_1
        0x2008000 -> :sswitch_0
    .end sparse-switch
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/luaj/Prototype;

    iput-object v0, p0, Lcom/prineside/luaj/LuaClosure;->p:Lcom/prineside/luaj/Prototype;

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/luaj/UpValue;

    iput-object v0, p0, Lcom/prineside/luaj/LuaClosure;->upValues:[Lcom/prineside/luaj/UpValue;

    const-class v0, Lcom/prineside/luaj/Globals;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/luaj/Globals;

    iput-object p1, p0, Lcom/prineside/luaj/LuaClosure;->u:Lcom/prineside/luaj/Globals;

    return-void
.end method

.method public final s([Lcom/prineside/luaj/LuaValue;S[Lcom/prineside/luaj/UpValue;)Lcom/prineside/luaj/UpValue;
    .locals 5

    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p3, v2

    if-eqz v3, :cond_0

    iget v4, v3, Lcom/prineside/luaj/UpValue;->b:I

    if-ne v4, p2, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v1, v0, :cond_3

    aget-object v2, p3, v1

    if-nez v2, :cond_2

    new-instance v0, Lcom/prineside/luaj/UpValue;

    invoke-direct {v0, p1, p2}, Lcom/prineside/luaj/UpValue;-><init>([Lcom/prineside/luaj/LuaValue;I)V

    aput-object v0, p3, v1

    return-object v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const-string p1, "No space for upvalue"

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    const/4 p1, 0x0

    return-object p1
.end method

.method public final t()[Lcom/prineside/luaj/LuaValue;
    .locals 4

    iget-object v0, p0, Lcom/prineside/luaj/LuaClosure;->p:Lcom/prineside/luaj/Prototype;

    iget v0, v0, Lcom/prineside/luaj/Prototype;->maxstacksize:I

    new-array v1, v0, [Lcom/prineside/luaj/LuaValue;

    sget-object v2, Lcom/prineside/luaj/LuaValue;->NILS:[Lcom/prineside/luaj/LuaValue;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public tojstring()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "function: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/luaj/LuaClosure;->p:Lcom/prineside/luaj/Prototype;

    invoke-virtual {v1}, Lcom/prineside/luaj/Prototype;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lcom/prineside/luaj/LuaError;Lcom/prineside/luaj/Prototype;I)V
    .locals 5

    iget-object v0, p0, Lcom/prineside/luaj/LuaClosure;->u:Lcom/prineside/luaj/Globals;

    const/4 v1, -0x1

    const-string v2, "?"

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/prineside/luaj/Globals;->debuglib:Lcom/prineside/luaj/lib/DebugLib;

    if-eqz v0, :cond_1

    iget v3, p1, Lcom/prineside/luaj/LuaError;->a:I

    invoke-virtual {v0, v3}, Lcom/prineside/luaj/lib/DebugLib;->getCallFrame(I)Lcom/prineside/luaj/lib/DebugLib$CallFrame;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->shortsource()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v0}, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->currentline()I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :cond_2
    move-object v3, v2

    const/4 v4, -0x1

    :goto_1
    if-nez v0, :cond_5

    iget-object v0, p2, Lcom/prineside/luaj/Prototype;->source:Lcom/prineside/luaj/LuaString;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaString;->tojstring()Ljava/lang/String;

    move-result-object v2

    :cond_3
    iget-object p2, p2, Lcom/prineside/luaj/Prototype;->lineinfo:[I

    if-eqz p2, :cond_4

    if-ltz p3, :cond_4

    array-length v0, p2

    if-ge p3, v0, :cond_4

    aget v1, p2, p3

    :cond_4
    move v4, v1

    move-object v3, v2

    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/prineside/luaj/LuaError;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaError;->getMessage()Ljava/lang/String;

    move-result-object p2

    iget p3, p1, Lcom/prineside/luaj/LuaError;->a:I

    invoke-virtual {p0, p2, p3}, Lcom/prineside/luaj/LuaClosure;->q(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/prineside/luaj/LuaError;->d:Ljava/lang/String;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/LuaClosure;->p:Lcom/prineside/luaj/Prototype;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/luaj/LuaClosure;->upValues:[Lcom/prineside/luaj/UpValue;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/luaj/LuaClosure;->u:Lcom/prineside/luaj/Globals;

    const-class v1, Lcom/prineside/luaj/Globals;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
