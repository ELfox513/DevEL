.class public Lcom/esotericsoftware/kryo/serializers/ExternalizableSerializer;
.super Lcom/esotericsoftware/kryo/Serializer;
.source "SourceFile"


# instance fields
.field public c:Lcom/esotericsoftware/kryo/util/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/esotericsoftware/kryo/util/ObjectMap<",
            "Ljava/lang/Class;",
            "Lcom/esotericsoftware/kryo/serializers/JavaSerializer;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/esotericsoftware/kryo/io/KryoObjectInput;

.field public e:Lcom/esotericsoftware/kryo/io/KryoObjectOutput;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Serializer;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/esotericsoftware/kryo/serializers/ExternalizableSerializer;->d:Lcom/esotericsoftware/kryo/io/KryoObjectInput;

    iput-object v0, p0, Lcom/esotericsoftware/kryo/serializers/ExternalizableSerializer;->e:Lcom/esotericsoftware/kryo/io/KryoObjectOutput;

    return-void
.end method

.method public static e(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 2

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    const-class p1, Ljava/lang/Object;

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/serializers/JavaSerializer;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/ExternalizableSerializer;->c:Lcom/esotericsoftware/kryo/util/ObjectMap;

    if-nez v0, :cond_0

    new-instance p1, Lcom/esotericsoftware/kryo/util/ObjectMap;

    invoke-direct {p1}, Lcom/esotericsoftware/kryo/util/ObjectMap;-><init>()V

    iput-object p1, p0, Lcom/esotericsoftware/kryo/serializers/ExternalizableSerializer;->c:Lcom/esotericsoftware/kryo/util/ObjectMap;

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/esotericsoftware/kryo/util/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/esotericsoftware/kryo/serializers/JavaSerializer;

    return-object p1
.end method

.method public final b(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/serializers/JavaSerializer;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/serializers/ExternalizableSerializer;->a(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/serializers/JavaSerializer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/serializers/ExternalizableSerializer;->f(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/esotericsoftware/kryo/serializers/JavaSerializer;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/serializers/JavaSerializer;-><init>()V

    :cond_0
    return-object v0
.end method

.method public final c(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)Ljava/io/ObjectInput;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/ExternalizableSerializer;->d:Lcom/esotericsoftware/kryo/io/KryoObjectInput;

    if-nez v0, :cond_0

    new-instance v0, Lcom/esotericsoftware/kryo/io/KryoObjectInput;

    invoke-direct {v0, p1, p2}, Lcom/esotericsoftware/kryo/io/KryoObjectInput;-><init>(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/serializers/ExternalizableSerializer;->d:Lcom/esotericsoftware/kryo/io/KryoObjectInput;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Lcom/esotericsoftware/kryo/io/KryoDataInput;->setInput(Lcom/esotericsoftware/kryo/io/Input;)V

    :goto_0
    iget-object p1, p0, Lcom/esotericsoftware/kryo/serializers/ExternalizableSerializer;->d:Lcom/esotericsoftware/kryo/io/KryoObjectInput;

    return-object p1
.end method

.method public final d(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)Ljava/io/ObjectOutput;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/ExternalizableSerializer;->e:Lcom/esotericsoftware/kryo/io/KryoObjectOutput;

    if-nez v0, :cond_0

    new-instance v0, Lcom/esotericsoftware/kryo/io/KryoObjectOutput;

    invoke-direct {v0, p1, p2}, Lcom/esotericsoftware/kryo/io/KryoObjectOutput;-><init>(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/serializers/ExternalizableSerializer;->e:Lcom/esotericsoftware/kryo/io/KryoObjectOutput;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Lcom/esotericsoftware/kryo/io/KryoDataOutput;->setOutput(Lcom/esotericsoftware/kryo/io/Output;)V

    :goto_0
    iget-object p1, p0, Lcom/esotericsoftware/kryo/serializers/ExternalizableSerializer;->e:Lcom/esotericsoftware/kryo/io/KryoObjectOutput;

    return-object p1
.end method

.method public final f(Ljava/lang/Class;)Z
    .locals 1

    const-string v0, "writeReplace"

    invoke-static {p1, v0}, Lcom/esotericsoftware/kryo/serializers/ExternalizableSerializer;->e(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "readResolve"

    invoke-static {p1, v0}, Lcom/esotericsoftware/kryo/serializers/ExternalizableSerializer;->e(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final g(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-virtual {p1, p3}, Lcom/esotericsoftware/kryo/Kryo;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/io/Externalizable;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/ExternalizableSerializer;->c(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)Ljava/io/ObjectInput;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/io/Externalizable;->readExternal(Ljava/io/ObjectInput;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p1

    new-instance p2, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {p2, p1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final h(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    :try_start_0
    check-cast p3, Ljava/io/Externalizable;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/ExternalizableSerializer;->d(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)Ljava/io/ObjectOutput;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/io/Externalizable;->writeExternal(Ljava/io/ObjectOutput;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {p2, p1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p3}, Lcom/esotericsoftware/kryo/serializers/ExternalizableSerializer;->b(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/serializers/JavaSerializer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/ExternalizableSerializer;->g(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/JavaSerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/serializers/ExternalizableSerializer;->b(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/serializers/JavaSerializer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/ExternalizableSerializer;->h(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/JavaSerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
