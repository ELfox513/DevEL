.class public Lcom/prineside/luaj/lib/DebugLib$CallStack;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/DebugLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallStack"
.end annotation


# static fields
.field public static final d:[Lcom/prineside/luaj/lib/DebugLib$CallFrame;


# instance fields
.field public a:[Lcom/prineside/luaj/lib/DebugLib$CallFrame;

.field public b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/prineside/luaj/lib/DebugLib$CallFrame;

    sput-object v0, Lcom/prineside/luaj/lib/DebugLib$CallStack;->d:[Lcom/prineside/luaj/lib/DebugLib$CallFrame;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/prineside/luaj/lib/DebugLib$CallStack;->d:[Lcom/prineside/luaj/lib/DebugLib$CallFrame;

    iput-object v0, p0, Lcom/prineside/luaj/lib/DebugLib$CallStack;->a:[Lcom/prineside/luaj/lib/DebugLib$CallFrame;

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/luaj/lib/DebugLib$CallStack;->b:I

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Lcom/prineside/luaj/LuaFunction;Lcom/prineside/luaj/lib/DebugLib$CallFrame;)Lcom/prineside/luaj/lib/DebugLib$DebugInfo;
    .locals 7

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/prineside/luaj/lib/DebugLib$DebugInfo;

    invoke-direct {v0}, Lcom/prineside/luaj/lib/DebugLib$DebugInfo;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_a

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x53

    if-eq v4, v5, :cond_8

    const/16 v5, 0x6c

    if-eq v4, v5, :cond_6

    const/16 v5, 0x6e

    if-eq v4, v5, :cond_4

    const/16 v5, 0x74

    if-eq v4, v5, :cond_3

    const/16 v5, 0x75

    if-eq v4, v5, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v4, 0x1

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/prineside/luaj/LuaValue;->isclosure()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p2}, Lcom/prineside/luaj/LuaValue;->checkclosure()Lcom/prineside/luaj/LuaClosure;

    move-result-object v5

    iget-object v5, v5, Lcom/prineside/luaj/LuaClosure;->p:Lcom/prineside/luaj/Prototype;

    iget-object v6, v5, Lcom/prineside/luaj/Prototype;->upvalues:[Lcom/prineside/luaj/Upvaldesc;

    array-length v6, v6

    int-to-short v6, v6

    iput-short v6, v0, Lcom/prineside/luaj/lib/DebugLib$DebugInfo;->h:S

    iget v6, v5, Lcom/prineside/luaj/Prototype;->numparams:I

    int-to-short v6, v6

    iput-short v6, v0, Lcom/prineside/luaj/lib/DebugLib$DebugInfo;->i:S

    iget v5, v5, Lcom/prineside/luaj/Prototype;->is_vararg:I

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    iput-boolean v4, v0, Lcom/prineside/luaj/lib/DebugLib$DebugInfo;->j:Z

    goto :goto_3

    :cond_2
    iput-short v2, v0, Lcom/prineside/luaj/lib/DebugLib$DebugInfo;->h:S

    iput-boolean v4, v0, Lcom/prineside/luaj/lib/DebugLib$DebugInfo;->j:Z

    iput-short v2, v0, Lcom/prineside/luaj/lib/DebugLib$DebugInfo;->i:S

    goto :goto_3

    :cond_3
    iput-boolean v2, v0, Lcom/prineside/luaj/lib/DebugLib$DebugInfo;->k:Z

    goto :goto_3

    :cond_4
    if-eqz p3, :cond_5

    iget-object v4, p3, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->q:Lcom/prineside/luaj/lib/DebugLib$CallFrame;

    if-eqz v4, :cond_5

    iget-object v4, v4, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->a:Lcom/prineside/luaj/LuaFunction;

    invoke-virtual {v4}, Lcom/prineside/luaj/LuaValue;->isclosure()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p3, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->q:Lcom/prineside/luaj/lib/DebugLib$CallFrame;

    invoke-static {v4}, Lcom/prineside/luaj/lib/DebugLib;->x(Lcom/prineside/luaj/lib/DebugLib$CallFrame;)Lcom/prineside/luaj/lib/DebugLib$NameWhat;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v5, v4, Lcom/prineside/luaj/lib/DebugLib$NameWhat;->a:Ljava/lang/String;

    iput-object v5, v0, Lcom/prineside/luaj/lib/DebugLib$DebugInfo;->a:Ljava/lang/String;

    iget-object v4, v4, Lcom/prineside/luaj/lib/DebugLib$NameWhat;->b:Ljava/lang/String;

    iput-object v4, v0, Lcom/prineside/luaj/lib/DebugLib$DebugInfo;->b:Ljava/lang/String;

    :cond_5
    iget-object v4, v0, Lcom/prineside/luaj/lib/DebugLib$DebugInfo;->b:Ljava/lang/String;

    if-nez v4, :cond_9

    const-string v4, ""

    iput-object v4, v0, Lcom/prineside/luaj/lib/DebugLib$DebugInfo;->b:Ljava/lang/String;

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/prineside/luaj/lib/DebugLib$DebugInfo;->a:Ljava/lang/String;

    goto :goto_3

    :cond_6
    if-eqz p3, :cond_7

    iget-object v4, p3, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->a:Lcom/prineside/luaj/LuaFunction;

    invoke-virtual {v4}, Lcom/prineside/luaj/LuaValue;->isclosure()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p3}, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->currentline()I

    move-result v4

    goto :goto_2

    :cond_7
    const/4 v4, -0x1

    :goto_2
    iput v4, v0, Lcom/prineside/luaj/lib/DebugLib$DebugInfo;->e:I

    goto :goto_3

    :cond_8
    invoke-virtual {v0, p2}, Lcom/prineside/luaj/lib/DebugLib$DebugInfo;->funcinfo(Lcom/prineside/luaj/LuaFunction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_a
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public declared-synchronized b()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/prineside/luaj/lib/DebugLib$CallStack;->b:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/prineside/luaj/lib/DebugLib$CallStack;->a:[Lcom/prineside/luaj/lib/DebugLib$CallFrame;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->currentline()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/lib/DebugLib$CallFrame;
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    :goto_0
    :try_start_0
    iget v1, p0, Lcom/prineside/luaj/lib/DebugLib$CallStack;->b:I

    if-gt v0, v1, :cond_1

    iget-object v2, p0, Lcom/prineside/luaj/lib/DebugLib$CallStack;->a:[Lcom/prineside/luaj/lib/DebugLib$CallFrame;

    sub-int/2addr v1, v0

    aget-object v1, v2, v1

    iget-object v1, v1, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->a:Lcom/prineside/luaj/LuaFunction;

    if-ne v1, p1, :cond_0

    aget-object p1, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized d(I)Lcom/prineside/luaj/lib/DebugLib$CallFrame;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    :try_start_0
    iget v0, p0, Lcom/prineside/luaj/lib/DebugLib$CallStack;->b:I

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/prineside/luaj/lib/DebugLib$CallStack;->a:[Lcom/prineside/luaj/lib/DebugLib$CallFrame;

    sub-int/2addr v0, p1

    aget-object p1, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1
.end method

.method public final declared-synchronized e(Lcom/prineside/luaj/LuaClosure;Lcom/prineside/luaj/Varargs;[Lcom/prineside/luaj/LuaValue;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/prineside/luaj/lib/DebugLib$CallStack;->i()Lcom/prineside/luaj/lib/DebugLib$CallFrame;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->f(Lcom/prineside/luaj/LuaClosure;Lcom/prineside/luaj/Varargs;[Lcom/prineside/luaj/LuaValue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized f(Lcom/prineside/luaj/LuaFunction;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/prineside/luaj/lib/DebugLib$CallStack;->i()Lcom/prineside/luaj/lib/DebugLib$CallFrame;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->g(Lcom/prineside/luaj/LuaFunction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized g(ILcom/prineside/luaj/Varargs;I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/prineside/luaj/lib/DebugLib$CallStack;->b:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/prineside/luaj/lib/DebugLib$CallStack;->a:[Lcom/prineside/luaj/lib/DebugLib$CallFrame;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->c(ILcom/prineside/luaj/Varargs;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized h()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/prineside/luaj/lib/DebugLib$CallStack;->b:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/prineside/luaj/lib/DebugLib$CallStack;->a:[Lcom/prineside/luaj/lib/DebugLib$CallFrame;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/prineside/luaj/lib/DebugLib$CallStack;->b:I

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i()Lcom/prineside/luaj/lib/DebugLib$CallFrame;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/prineside/luaj/lib/DebugLib$CallStack;->b:I

    iget-object v1, p0, Lcom/prineside/luaj/lib/DebugLib$CallStack;->a:[Lcom/prineside/luaj/lib/DebugLib$CallFrame;

    array-length v2, v1

    if-lt v0, v2, :cond_1

    const/4 v0, 0x4

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v1, v0, [Lcom/prineside/luaj/lib/DebugLib$CallFrame;

    iget-object v2, p0, Lcom/prineside/luaj/lib/DebugLib$CallStack;->a:[Lcom/prineside/luaj/lib/DebugLib$CallFrame;

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/prineside/luaj/lib/DebugLib$CallStack;->a:[Lcom/prineside/luaj/lib/DebugLib$CallFrame;

    array-length v2, v2

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Lcom/prineside/luaj/lib/DebugLib$CallFrame;

    invoke-direct {v3}, Lcom/prineside/luaj/lib/DebugLib$CallFrame;-><init>()V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/prineside/luaj/lib/DebugLib$CallStack;->a:[Lcom/prineside/luaj/lib/DebugLib$CallFrame;

    const/4 v2, 0x1

    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    add-int/lit8 v4, v2, -0x1

    aget-object v4, v1, v4

    iput-object v4, v3, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->q:Lcom/prineside/luaj/lib/DebugLib$CallFrame;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/prineside/luaj/lib/DebugLib$CallStack;->a:[Lcom/prineside/luaj/lib/DebugLib$CallFrame;

    iget v1, p0, Lcom/prineside/luaj/lib/DebugLib$CallStack;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/prineside/luaj/lib/DebugLib$CallStack;->b:I

    aget-object v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public declared-synchronized j(I)Ljava/lang/String;
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "stack traceback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/lib/DebugLib$CallStack;->d(I)Lcom/prineside/luaj/lib/DebugLib$CallFrame;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v2, "\n\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->shortsource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->currentline()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->currentline()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string v3, " in "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "n"

    iget-object v4, p1, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->a:Lcom/prineside/luaj/LuaFunction;

    invoke-virtual {p0, v3, v4, p1}, Lcom/prineside/luaj/lib/DebugLib$CallStack;->a(Ljava/lang/String;Lcom/prineside/luaj/LuaFunction;Lcom/prineside/luaj/lib/DebugLib$CallFrame;)Lcom/prineside/luaj/lib/DebugLib$DebugInfo;

    move-result-object v3

    invoke-virtual {p1}, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->d()I

    move-result v4

    if-nez v4, :cond_1

    const-string p1, "main chunk"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    iget-object v4, v3, Lcom/prineside/luaj/lib/DebugLib$DebugInfo;->a:Ljava/lang/String;

    if-eqz v4, :cond_2

    const-string p1, "function \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, v3, Lcom/prineside/luaj/lib/DebugLib$DebugInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p1, 0x27

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    const-string v3, "function <"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->shortsource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->d()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 p1, 0x3e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    move p1, v1

    goto/16 :goto_0

    :cond_3
    const-string p1, "\n\t[Java]: in ?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, [Lcom/prineside/luaj/lib/DebugLib$CallFrame;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/prineside/luaj/lib/DebugLib$CallFrame;

    iput-object p1, p0, Lcom/prineside/luaj/lib/DebugLib$CallStack;->a:[Lcom/prineside/luaj/lib/DebugLib$CallFrame;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result p1

    iput p1, p0, Lcom/prineside/luaj/lib/DebugLib$CallStack;->b:I

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/lib/DebugLib$CallStack;->a:[Lcom/prineside/luaj/lib/DebugLib$CallFrame;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget p1, p0, Lcom/prineside/luaj/lib/DebugLib$CallStack;->b:I

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    return-void
.end method
