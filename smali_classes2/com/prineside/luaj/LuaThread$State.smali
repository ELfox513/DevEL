.class public final Lcom/prineside/luaj/LuaThread$State;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/LuaThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation


# instance fields
.field public a:Lcom/prineside/luaj/Globals;

.field public b:Ljava/lang/ref/WeakReference;

.field public bytecodes:I

.field public d:Lcom/prineside/luaj/Varargs;

.field public function:Lcom/prineside/luaj/LuaValue;

.field public hookcall:Z

.field public hookcount:I

.field public hookfunc:Lcom/prineside/luaj/LuaValue;

.field public hookline:Z

.field public hookrtrn:Z

.field public inhook:Z

.field public k:Lcom/prineside/luaj/Varargs;

.field public lastline:I

.field public p:Ljava/lang/String;

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    iput-object v0, p0, Lcom/prineside/luaj/LuaThread$State;->d:Lcom/prineside/luaj/Varargs;

    iput-object v0, p0, Lcom/prineside/luaj/LuaThread$State;->k:Lcom/prineside/luaj/Varargs;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/luaj/LuaThread$State;->p:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/luaj/LuaThread$State;->status:I

    return-void
.end method

.method public constructor <init>(Lcom/prineside/luaj/Globals;Lcom/prineside/luaj/LuaThread;Lcom/prineside/luaj/LuaValue;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    iput-object v0, p0, Lcom/prineside/luaj/LuaThread$State;->d:Lcom/prineside/luaj/Varargs;

    iput-object v0, p0, Lcom/prineside/luaj/LuaThread$State;->k:Lcom/prineside/luaj/Varargs;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/luaj/LuaThread$State;->p:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/luaj/LuaThread$State;->status:I

    iput-object p1, p0, Lcom/prineside/luaj/LuaThread$State;->a:Lcom/prineside/luaj/Globals;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/prineside/luaj/LuaThread$State;->b:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/prineside/luaj/LuaThread$State;->function:Lcom/prineside/luaj/LuaValue;

    return-void
.end method


# virtual methods
.method public declared-synchronized lua_resume(Lcom/prineside/luaj/LuaThread;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/prineside/luaj/LuaThread$State;->a:Lcom/prineside/luaj/Globals;

    iget-object v1, v0, Lcom/prineside/luaj/Globals;->running:Lcom/prineside/luaj/LuaThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    const/4 v3, 0x2

    :try_start_1
    iput-object p1, v0, Lcom/prineside/luaj/Globals;->running:Lcom/prineside/luaj/LuaThread;

    iput-object p2, p0, Lcom/prineside/luaj/LuaThread$State;->d:Lcom/prineside/luaj/Varargs;

    iget p1, p0, Lcom/prineside/luaj/LuaThread$State;->status:I

    if-nez p1, :cond_0

    iput v3, p0, Lcom/prineside/luaj/LuaThread$State;->status:I

    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Coroutine-"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/prineside/luaj/LuaThread;->coroutine_count:I

    const/4 v4, 0x1

    add-int/2addr v0, v4

    sput v0, Lcom/prineside/luaj/LuaThread;->coroutine_count:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    invoke-static {p1}, Lcom/prineside/tdi2/Logger;->handleThreadExceptionsForgiving(Ljava/lang/Thread;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    :goto_0
    if-eqz v1, :cond_1

    iget-object p1, v1, Lcom/prineside/luaj/LuaThread;->state:Lcom/prineside/luaj/LuaThread$State;

    const/4 p2, 0x3

    iput p2, p1, Lcom/prineside/luaj/LuaThread$State;->status:I

    :cond_1
    iput v3, p0, Lcom/prineside/luaj/LuaThread$State;->status:I

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    iget-object p1, p0, Lcom/prineside/luaj/LuaThread$State;->p:Ljava/lang/String;

    if-eqz p1, :cond_2

    sget-object p2, Lcom/prineside/luaj/LuaValue;->FALSE:Lcom/prineside/luaj/LuaBoolean;

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/prineside/luaj/LuaValue;->varargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/prineside/luaj/LuaValue;->TRUE:Lcom/prineside/luaj/LuaBoolean;

    iget-object p2, p0, Lcom/prineside/luaj/LuaThread$State;->k:Lcom/prineside/luaj/Varargs;

    invoke-static {p1, p2}, Lcom/prineside/luaj/LuaValue;->varargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    sget-object p2, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    iput-object p2, p0, Lcom/prineside/luaj/LuaThread$State;->d:Lcom/prineside/luaj/Varargs;

    iput-object p2, p0, Lcom/prineside/luaj/LuaThread$State;->k:Lcom/prineside/luaj/Varargs;

    iput-object v2, p0, Lcom/prineside/luaj/LuaThread$State;->p:Ljava/lang/String;

    iget-object p2, p0, Lcom/prineside/luaj/LuaThread$State;->a:Lcom/prineside/luaj/Globals;

    iput-object v1, p2, Lcom/prineside/luaj/Globals;->running:Lcom/prineside/luaj/LuaThread;

    if-eqz v1, :cond_3

    iget-object p2, v1, Lcom/prineside/luaj/LuaThread;->state:Lcom/prineside/luaj/LuaThread$State;

    iput v3, p2, Lcom/prineside/luaj/LuaThread$State;->status:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    :try_start_3
    new-instance p1, Lcom/prineside/luaj/OrphanedThread;

    invoke-direct {p1}, Lcom/prineside/luaj/OrphanedThread;-><init>()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    sget-object p2, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    iput-object p2, p0, Lcom/prineside/luaj/LuaThread$State;->d:Lcom/prineside/luaj/Varargs;

    iput-object p2, p0, Lcom/prineside/luaj/LuaThread$State;->k:Lcom/prineside/luaj/Varargs;

    iput-object v2, p0, Lcom/prineside/luaj/LuaThread$State;->p:Ljava/lang/String;

    iget-object p2, p0, Lcom/prineside/luaj/LuaThread$State;->a:Lcom/prineside/luaj/Globals;

    iput-object v1, p2, Lcom/prineside/luaj/Globals;->running:Lcom/prineside/luaj/LuaThread;

    if-eqz v1, :cond_4

    iget-object p2, v1, Lcom/prineside/luaj/LuaThread;->state:Lcom/prineside/luaj/LuaThread$State;

    iput v3, p2, Lcom/prineside/luaj/LuaThread$State;->status:I

    :cond_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized lua_yield(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 3

    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    iput-object p1, p0, Lcom/prineside/luaj/LuaThread$State;->k:Lcom/prineside/luaj/Varargs;

    const/4 p1, 0x1

    iput p1, p0, Lcom/prineside/luaj/LuaThread$State;->status:I

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    :cond_0
    sget-wide v1, Lcom/prineside/luaj/LuaThread;->thread_orphan_check_interval:J

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V

    iget-object v1, p0, Lcom/prineside/luaj/LuaThread$State;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/prineside/luaj/LuaThread$State;->status:I

    if-eq v1, p1, :cond_0

    iget-object p1, p0, Lcom/prineside/luaj/LuaThread$State;->d:Lcom/prineside/luaj/Varargs;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    iput-object v0, p0, Lcom/prineside/luaj/LuaThread$State;->d:Lcom/prineside/luaj/Varargs;

    iput-object v0, p0, Lcom/prineside/luaj/LuaThread$State;->k:Lcom/prineside/luaj/Varargs;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_2
    iput v0, p0, Lcom/prineside/luaj/LuaThread$State;->status:I

    new-instance p1, Lcom/prineside/luaj/OrphanedThread;

    invoke-direct {p1}, Lcom/prineside/luaj/OrphanedThread;-><init>()V

    throw p1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    :try_start_3
    iput v0, p0, Lcom/prineside/luaj/LuaThread$State;->status:I

    new-instance p1, Lcom/prineside/luaj/OrphanedThread;

    invoke-direct {p1}, Lcom/prineside/luaj/OrphanedThread;-><init>()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    sget-object v0, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    iput-object v0, p0, Lcom/prineside/luaj/LuaThread$State;->d:Lcom/prineside/luaj/Varargs;

    iput-object v0, p0, Lcom/prineside/luaj/LuaThread$State;->k:Lcom/prineside/luaj/Varargs;

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/luaj/Globals;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/luaj/Globals;

    iput-object v0, p0, Lcom/prineside/luaj/LuaThread$State;->a:Lcom/prineside/luaj/Globals;

    const-class v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/prineside/luaj/LuaThread$State;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/luaj/LuaValue;

    iput-object v0, p0, Lcom/prineside/luaj/LuaThread$State;->function:Lcom/prineside/luaj/LuaValue;

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/luaj/Varargs;

    iput-object v0, p0, Lcom/prineside/luaj/LuaThread$State;->d:Lcom/prineside/luaj/Varargs;

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/luaj/Varargs;

    iput-object v0, p0, Lcom/prineside/luaj/LuaThread$State;->k:Lcom/prineside/luaj/Varargs;

    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/prineside/luaj/LuaThread$State;->p:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/luaj/LuaValue;

    iput-object p1, p0, Lcom/prineside/luaj/LuaThread$State;->hookfunc:Lcom/prineside/luaj/LuaValue;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/luaj/LuaThread$State;->hookline:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/luaj/LuaThread$State;->hookcall:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/luaj/LuaThread$State;->hookrtrn:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result p1

    iput p1, p0, Lcom/prineside/luaj/LuaThread$State;->hookcount:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/luaj/LuaThread$State;->inhook:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result p1

    iput p1, p0, Lcom/prineside/luaj/LuaThread$State;->lastline:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result p1

    iput p1, p0, Lcom/prineside/luaj/LuaThread$State;->bytecodes:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result p1

    iput p1, p0, Lcom/prineside/luaj/LuaThread$State;->status:I

    return-void
.end method

.method public declared-synchronized run()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    iget-object v1, p0, Lcom/prineside/luaj/LuaThread$State;->d:Lcom/prineside/luaj/Varargs;

    sget-object v2, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    iput-object v2, p0, Lcom/prineside/luaj/LuaThread$State;->d:Lcom/prineside/luaj/Varargs;

    iget-object v2, p0, Lcom/prineside/luaj/LuaThread$State;->function:Lcom/prineside/luaj/LuaValue;

    invoke-virtual {v2, v1}, Lcom/prineside/luaj/LuaValue;->invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object v1

    iput-object v1, p0, Lcom/prineside/luaj/LuaThread$State;->k:Lcom/prineside/luaj/Varargs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iput v0, p0, Lcom/prineside/luaj/LuaThread$State;->status:I

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/prineside/luaj/LuaThread$State;->p:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iput v0, p0, Lcom/prineside/luaj/LuaThread$State;->status:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v1

    :try_start_4
    iput v0, p0, Lcom/prineside/luaj/LuaThread$State;->status:I

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/luaj/LuaThread$State;->a:Lcom/prineside/luaj/Globals;

    const-class v1, Lcom/prineside/luaj/Globals;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/luaj/LuaThread$State;->b:Ljava/lang/ref/WeakReference;

    const-class v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    sget-object v0, Lcom/prineside/luaj/LuaValue;->NILLABLE_SERIALIZER:Lcom/prineside/luaj/LuaValue$NillableSerializer;

    iget-object v1, p0, Lcom/prineside/luaj/LuaThread$State;->function:Lcom/prineside/luaj/LuaValue;

    invoke-virtual {v0, p1, p2, v1}, Lcom/prineside/luaj/LuaValue$NillableSerializer;->writeClassAndObject(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lcom/prineside/luaj/LuaValue;)V

    iget-object v1, p0, Lcom/prineside/luaj/LuaThread$State;->d:Lcom/prineside/luaj/Varargs;

    invoke-virtual {p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/prineside/luaj/LuaThread$State;->k:Lcom/prineside/luaj/Varargs;

    invoke-virtual {p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/prineside/luaj/LuaThread$State;->p:Ljava/lang/String;

    const-class v2, Ljava/lang/String;

    invoke-virtual {p1, p2, v1, v2}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/prineside/luaj/LuaThread$State;->hookfunc:Lcom/prineside/luaj/LuaValue;

    invoke-virtual {v0, p1, p2, v1}, Lcom/prineside/luaj/LuaValue$NillableSerializer;->writeClassAndObject(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lcom/prineside/luaj/LuaValue;)V

    iget-boolean p1, p0, Lcom/prineside/luaj/LuaThread$State;->hookline:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-boolean p1, p0, Lcom/prineside/luaj/LuaThread$State;->hookcall:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-boolean p1, p0, Lcom/prineside/luaj/LuaThread$State;->hookrtrn:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget p1, p0, Lcom/prineside/luaj/LuaThread$State;->hookcount:I

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget-boolean p1, p0, Lcom/prineside/luaj/LuaThread$State;->inhook:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget p1, p0, Lcom/prineside/luaj/LuaThread$State;->lastline:I

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget p1, p0, Lcom/prineside/luaj/LuaThread$State;->bytecodes:I

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget p1, p0, Lcom/prineside/luaj/LuaThread$State;->status:I

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    return-void
.end method
