.class public final Lcom/prineside/luaj/lib/DebugLib$CallFrame;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    arrayLevels = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/DebugLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallFrame"
.end annotation


# instance fields
.field public a:Lcom/prineside/luaj/LuaFunction;

.field public b:I

.field public d:I

.field public k:Lcom/prineside/luaj/Varargs;

.field public p:[Lcom/prineside/luaj/LuaValue;

.field public q:Lcom/prineside/luaj/lib/DebugLib$CallFrame;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/prineside/luaj/Varargs;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->b(I)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_1

    iget-object v2, p0, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->p:[Lcom/prineside/luaj/LuaValue;

    array-length v3, v2

    if-gt p1, v3, :cond_1

    sub-int/2addr p1, v1

    aget-object p1, v2, p1

    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    sget-object v0, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    :cond_0
    invoke-static {v0, p1}, Lcom/prineside/luaj/LuaValue;->varargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object p1, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    return-object p1
.end method

.method public b(I)Lcom/prineside/luaj/LuaString;
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->a:Lcom/prineside/luaj/LuaFunction;

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->isclosure()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->a:Lcom/prineside/luaj/LuaFunction;

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->checkclosure()Lcom/prineside/luaj/LuaClosure;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/luaj/LuaClosure;->p:Lcom/prineside/luaj/Prototype;

    iget v1, p0, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->b:I

    invoke-virtual {v0, p1, v1}, Lcom/prineside/luaj/Prototype;->getlocalname(II)Lcom/prineside/luaj/LuaString;

    move-result-object p1

    return-object p1
.end method

.method public c(ILcom/prineside/luaj/Varargs;I)V
    .locals 2

    iput p1, p0, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->b:I

    iput-object p2, p0, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->k:Lcom/prineside/luaj/Varargs;

    iput p3, p0, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->d:I

    sget-boolean v0, Lcom/prineside/luaj/lib/DebugLib;->TRACE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->a:Lcom/prineside/luaj/LuaFunction;

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->checkclosure()Lcom/prineside/luaj/LuaClosure;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->p:[Lcom/prineside/luaj/LuaValue;

    invoke-static {v0, p1, v1, p3, p2}, Lcom/prineside/luaj/Print;->printState(Lcom/prineside/luaj/LuaClosure;I[Lcom/prineside/luaj/LuaValue;ILcom/prineside/luaj/Varargs;)V

    :cond_0
    return-void
.end method

.method public currentline()I
    .locals 4

    iget-object v0, p0, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->a:Lcom/prineside/luaj/LuaFunction;

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->isclosure()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->a:Lcom/prineside/luaj/LuaFunction;

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->checkclosure()Lcom/prineside/luaj/LuaClosure;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/luaj/LuaClosure;->p:Lcom/prineside/luaj/Prototype;

    iget-object v0, v0, Lcom/prineside/luaj/Prototype;->lineinfo:[I

    if-eqz v0, :cond_2

    iget v2, p0, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->b:I

    if-ltz v2, :cond_2

    array-length v3, v0

    if-lt v2, v3, :cond_1

    goto :goto_0

    :cond_1
    aget v1, v0, v2

    :cond_2
    :goto_0
    return v1
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->a:Lcom/prineside/luaj/LuaFunction;

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->isclosure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->a:Lcom/prineside/luaj/LuaFunction;

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->checkclosure()Lcom/prineside/luaj/LuaClosure;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/luaj/LuaClosure;->p:Lcom/prineside/luaj/Prototype;

    iget v0, v0, Lcom/prineside/luaj/Prototype;->linedefined:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->a:Lcom/prineside/luaj/LuaFunction;

    iput-object v0, p0, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->k:Lcom/prineside/luaj/Varargs;

    iput-object v0, p0, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->p:[Lcom/prineside/luaj/LuaValue;

    return-void
.end method

.method public f(Lcom/prineside/luaj/LuaClosure;Lcom/prineside/luaj/Varargs;[Lcom/prineside/luaj/LuaValue;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->a:Lcom/prineside/luaj/LuaFunction;

    iput-object p2, p0, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->k:Lcom/prineside/luaj/Varargs;

    iput-object p3, p0, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->p:[Lcom/prineside/luaj/LuaValue;

    return-void
.end method

.method public g(Lcom/prineside/luaj/LuaFunction;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->a:Lcom/prineside/luaj/LuaFunction;

    return-void
.end method

.method public h(ILcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->b(I)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_1

    iget-object v2, p0, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->p:[Lcom/prineside/luaj/LuaValue;

    array-length v3, v2

    if-gt p1, v3, :cond_1

    sub-int/2addr p1, v1

    aget-object v1, v2, p1

    if-eqz v1, :cond_1

    aput-object p2, v2, p1

    if-nez v0, :cond_0

    sget-object v0, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    :cond_0
    return-object v0

    :cond_1
    sget-object p1, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/luaj/LuaFunction;

    iput-object v0, p0, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->a:Lcom/prineside/luaj/LuaFunction;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v0

    iput v0, p0, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->b:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v0

    iput v0, p0, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->d:I

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/luaj/Varargs;

    iput-object v0, p0, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->k:Lcom/prineside/luaj/Varargs;

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/prineside/luaj/LuaValue;

    iput-object v0, p0, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->p:[Lcom/prineside/luaj/LuaValue;

    const-class v0, Lcom/prineside/luaj/lib/DebugLib$CallFrame;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/luaj/lib/DebugLib$CallFrame;

    iput-object p1, p0, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->q:Lcom/prineside/luaj/lib/DebugLib$CallFrame;

    return-void
.end method

.method public shortsource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->a:Lcom/prineside/luaj/LuaFunction;

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->isclosure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->a:Lcom/prineside/luaj/LuaFunction;

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->checkclosure()Lcom/prineside/luaj/LuaClosure;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/luaj/LuaClosure;->p:Lcom/prineside/luaj/Prototype;

    invoke-virtual {v0}, Lcom/prineside/luaj/Prototype;->shortsource()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "[Java]"

    :goto_0
    return-object v0
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->a:Lcom/prineside/luaj/LuaFunction;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->b:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget v0, p0, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->d:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget-object v0, p0, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->k:Lcom/prineside/luaj/Varargs;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    sget-object v0, Lcom/prineside/luaj/LuaValue;->NILLABLE_SERIALIZER:Lcom/prineside/luaj/LuaValue$NillableSerializer;

    iget-object v1, p0, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->p:[Lcom/prineside/luaj/LuaValue;

    invoke-virtual {v0, p1, p2, v1}, Lcom/prineside/luaj/LuaValue$NillableSerializer;->writeClassAndObject(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;[Lcom/prineside/luaj/LuaValue;)V

    iget-object v0, p0, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->q:Lcom/prineside/luaj/lib/DebugLib$CallFrame;

    const-class v1, Lcom/prineside/luaj/lib/DebugLib$CallFrame;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
