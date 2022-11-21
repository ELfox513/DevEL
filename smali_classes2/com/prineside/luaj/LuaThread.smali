.class public Lcom/prineside/luaj/LuaThread;
.super Lcom/prineside/luaj/LuaValue;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/luaj/LuaThread$State;
    }
.end annotation


# static fields
.field public static final MAX_CALLSTACK:I = 0x100

.field public static final STATUS_DEAD:I = 0x4

.field public static final STATUS_INITIAL:I = 0x0

.field public static final STATUS_NAMES:[Ljava/lang/String;

.field public static final STATUS_NORMAL:I = 0x3

.field public static final STATUS_RUNNING:I = 0x2

.field public static final STATUS_SUSPENDED:I = 0x1

.field public static coroutine_count:I = 0x0

.field public static s_metatable:Lcom/prineside/luaj/LuaValue; = null

.field public static thread_orphan_check_interval:J = 0x1388L


# instance fields
.field public callstack:Ljava/lang/Object;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public errorfunc:Lcom/prineside/luaj/LuaValue;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public globals:Lcom/prineside/luaj/Globals;

.field public state:Lcom/prineside/luaj/LuaThread$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "suspended"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "running"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "normal"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "dead"

    aput-object v2, v0, v1

    sput-object v0, Lcom/prineside/luaj/LuaThread;->STATUS_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/LuaValue;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/luaj/Globals;)V
    .locals 2

    invoke-direct {p0}, Lcom/prineside/luaj/LuaValue;-><init>()V

    new-instance v0, Lcom/prineside/luaj/LuaThread$State;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/prineside/luaj/LuaThread$State;-><init>(Lcom/prineside/luaj/Globals;Lcom/prineside/luaj/LuaThread;Lcom/prineside/luaj/LuaValue;)V

    iput-object v0, p0, Lcom/prineside/luaj/LuaThread;->state:Lcom/prineside/luaj/LuaThread$State;

    const/4 v1, 0x2

    iput v1, v0, Lcom/prineside/luaj/LuaThread$State;->status:I

    iput-object p1, p0, Lcom/prineside/luaj/LuaThread;->globals:Lcom/prineside/luaj/Globals;

    return-void
.end method

.method public constructor <init>(Lcom/prineside/luaj/Globals;Lcom/prineside/luaj/LuaValue;)V
    .locals 2

    invoke-direct {p0}, Lcom/prineside/luaj/LuaValue;-><init>()V

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "function cannot be null"

    invoke-static {v0, v1}, Lcom/prineside/luaj/LuaValue;->assert_(ZLjava/lang/String;)V

    new-instance v0, Lcom/prineside/luaj/LuaThread$State;

    invoke-direct {v0, p1, p0, p2}, Lcom/prineside/luaj/LuaThread$State;-><init>(Lcom/prineside/luaj/Globals;Lcom/prineside/luaj/LuaThread;Lcom/prineside/luaj/LuaValue;)V

    iput-object v0, p0, Lcom/prineside/luaj/LuaThread;->state:Lcom/prineside/luaj/LuaThread$State;

    iput-object p1, p0, Lcom/prineside/luaj/LuaThread;->globals:Lcom/prineside/luaj/Globals;

    return-void
.end method


# virtual methods
.method public checkthread()Lcom/prineside/luaj/LuaThread;
    .locals 0

    return-object p0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/prineside/luaj/LuaThread;->STATUS_NAMES:[Ljava/lang/String;

    iget-object v1, p0, Lcom/prineside/luaj/LuaThread;->state:Lcom/prineside/luaj/LuaThread$State;

    iget v1, v1, Lcom/prineside/luaj/LuaThread$State;->status:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getmetatable()Lcom/prineside/luaj/LuaValue;
    .locals 1

    sget-object v0, Lcom/prineside/luaj/LuaThread;->s_metatable:Lcom/prineside/luaj/LuaValue;

    return-object v0
.end method

.method public isMainThread()Z
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/LuaThread;->state:Lcom/prineside/luaj/LuaThread$State;

    iget-object v0, v0, Lcom/prineside/luaj/LuaThread$State;->function:Lcom/prineside/luaj/LuaValue;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isthread()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public optthread(Lcom/prineside/luaj/LuaThread;)Lcom/prineside/luaj/LuaThread;
    .locals 0

    return-object p0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/luaj/LuaThread$State;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/luaj/LuaThread$State;

    iput-object v0, p0, Lcom/prineside/luaj/LuaThread;->state:Lcom/prineside/luaj/LuaThread$State;

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/luaj/LuaThread;->callstack:Ljava/lang/Object;

    const-class v0, Lcom/prineside/luaj/Globals;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/luaj/Globals;

    iput-object v0, p0, Lcom/prineside/luaj/LuaThread;->globals:Lcom/prineside/luaj/Globals;

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/luaj/LuaValue;

    iput-object p1, p0, Lcom/prineside/luaj/LuaThread;->errorfunc:Lcom/prineside/luaj/LuaValue;

    return-void
.end method

.method public resume(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 3

    iget-object v0, p0, Lcom/prineside/luaj/LuaThread;->state:Lcom/prineside/luaj/LuaThread$State;

    iget v1, v0, Lcom/prineside/luaj/LuaThread$State;->status:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    sget-object p1, Lcom/prineside/luaj/LuaValue;->FALSE:Lcom/prineside/luaj/LuaBoolean;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot resume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/prineside/luaj/LuaThread$State;->status:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const-string v0, "dead"

    goto :goto_0

    :cond_0
    const-string v0, "non-suspended"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " coroutine"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/prineside/luaj/LuaValue;->varargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {v0, p0, p1}, Lcom/prineside/luaj/LuaThread$State;->lua_resume(Lcom/prineside/luaj/LuaThread;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public type()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public typename()Ljava/lang/String;
    .locals 1

    const-string v0, "thread"

    return-object v0
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/LuaThread;->state:Lcom/prineside/luaj/LuaThread$State;

    const-class v1, Lcom/prineside/luaj/LuaThread$State;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/luaj/LuaThread;->callstack:Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/luaj/LuaThread;->globals:Lcom/prineside/luaj/Globals;

    const-class v1, Lcom/prineside/luaj/Globals;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    sget-object v0, Lcom/prineside/luaj/LuaValue;->NILLABLE_SERIALIZER:Lcom/prineside/luaj/LuaValue$NillableSerializer;

    iget-object v1, p0, Lcom/prineside/luaj/LuaThread;->errorfunc:Lcom/prineside/luaj/LuaValue;

    invoke-virtual {v0, p1, p2, v1}, Lcom/prineside/luaj/LuaValue$NillableSerializer;->writeClassAndObject(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lcom/prineside/luaj/LuaValue;)V

    return-void
.end method
