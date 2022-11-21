.class public Lcom/esotericsoftware/kryo/util/DefaultClassResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/ClassResolver;


# static fields
.field public static final NAME:B = -0x1t


# instance fields
.field public a:I

.field public b:Lcom/esotericsoftware/kryo/Registration;

.field public c:Ljava/lang/Class;

.field public classToNameId:Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field public final classToRegistration:Lcom/esotericsoftware/kryo/util/IdentityMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/esotericsoftware/kryo/util/IdentityMap<",
            "Ljava/lang/Class;",
            "Lcom/esotericsoftware/kryo/Registration;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/esotericsoftware/kryo/Registration;

.field public final idToRegistration:Lcom/esotericsoftware/kryo/util/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/esotericsoftware/kryo/util/IntMap<",
            "Lcom/esotericsoftware/kryo/Registration;",
            ">;"
        }
    .end annotation
.end field

.field public kryo:Lcom/esotericsoftware/kryo/Kryo;

.field public nameIdToClass:Lcom/esotericsoftware/kryo/util/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/esotericsoftware/kryo/util/IntMap<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field public nameToClass:Lcom/esotericsoftware/kryo/util/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/esotericsoftware/kryo/util/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field public nextNameId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/esotericsoftware/kryo/util/IntMap;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/util/IntMap;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->idToRegistration:Lcom/esotericsoftware/kryo/util/IntMap;

    new-instance v0, Lcom/esotericsoftware/kryo/util/IdentityMap;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/util/IdentityMap;-><init>()V

    iput-object v0, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->classToRegistration:Lcom/esotericsoftware/kryo/util/IdentityMap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->a:I

    return-void
.end method


# virtual methods
.method public getRegistration(I)Lcom/esotericsoftware/kryo/Registration;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->idToRegistration:Lcom/esotericsoftware/kryo/util/IntMap;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/kryo/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/esotericsoftware/kryo/Registration;

    return-object p1
.end method

.method public getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->c:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->d:Lcom/esotericsoftware/kryo/Registration;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->classToRegistration:Lcom/esotericsoftware/kryo/util/IdentityMap;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/kryo/util/IdentityMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/kryo/Registration;

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->c:Ljava/lang/Class;

    iput-object v0, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->d:Lcom/esotericsoftware/kryo/Registration;

    :cond_1
    return-object v0
.end method

.method public getTypeByName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->nameToClass:Lcom/esotericsoftware/kryo/util/ObjectMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/kryo/util/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public readClass(Lcom/esotericsoftware/kryo/io/Input;)Lcom/esotericsoftware/kryo/Registration;
    .locals 7

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v1

    if-eqz v1, :cond_5

    if-eq v1, v0, :cond_4

    iget v0, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->a:I

    const-string v2, ": "

    const-string v3, "Read class "

    const-string v4, "kryo"

    if-ne v1, v0, :cond_1

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->b:Lcom/esotericsoftware/kryo/Registration;

    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/Registration;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Input;->position()I

    move-result p1

    invoke-static {p1}, Lcom/esotericsoftware/kryo/util/Util;->pos(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->b:Lcom/esotericsoftware/kryo/Registration;

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->idToRegistration:Lcom/esotericsoftware/kryo/util/IntMap;

    add-int/lit8 v5, v1, -0x2

    invoke-virtual {v0, v5}, Lcom/esotericsoftware/kryo/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/esotericsoftware/kryo/Registration;

    if-eqz v0, :cond_3

    sget-boolean v6, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/Registration;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Input;->position()I

    move-result p1

    invoke-static {p1}, Lcom/esotericsoftware/kryo/util/Util;->pos(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iput v1, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->a:I

    iput-object v0, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->b:Lcom/esotericsoftware/kryo/Registration;

    return-object v0

    :cond_3
    new-instance p1, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Encountered unregistered class ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->readName(Lcom/esotericsoftware/kryo/io/Input;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object p1

    return-object p1

    :cond_5
    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    const/4 v2, 0x0

    if-nez v1, :cond_6

    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/Kryo;->getDepth()I

    move-result v1

    if-ne v1, v0, :cond_7

    :cond_6
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Input;->position()I

    move-result p1

    const-string v0, "Read"

    invoke-static {v0, v2, p1}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_7
    return-object v2
.end method

.method public readName(Lcom/esotericsoftware/kryo/io/Input;)Lcom/esotericsoftware/kryo/Registration;
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->nameIdToClass:Lcom/esotericsoftware/kryo/util/IntMap;

    if-nez v1, :cond_0

    new-instance v1, Lcom/esotericsoftware/kryo/util/IntMap;

    invoke-direct {v1}, Lcom/esotericsoftware/kryo/util/IntMap;-><init>()V

    iput-object v1, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->nameIdToClass:Lcom/esotericsoftware/kryo/util/IntMap;

    :cond_0
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->nameIdToClass:Lcom/esotericsoftware/kryo/util/IntMap;

    invoke-virtual {v1, v0}, Lcom/esotericsoftware/kryo/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    const-string v2, "kryo"

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Input;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->getTypeByName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    invoke-virtual {v4}, Lcom/esotericsoftware/kryo/Kryo;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v1, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_1
    const-class v5, Lcom/esotericsoftware/kryo/Kryo;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v1, v3, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    iget-object v4, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->nameToClass:Lcom/esotericsoftware/kryo/util/ObjectMap;

    if-nez v4, :cond_1

    new-instance v4, Lcom/esotericsoftware/kryo/util/ObjectMap;

    invoke-direct {v4}, Lcom/esotericsoftware/kryo/util/ObjectMap;-><init>()V

    iput-object v4, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->nameToClass:Lcom/esotericsoftware/kryo/util/ObjectMap;

    :cond_1
    iget-object v4, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->nameToClass:Lcom/esotericsoftware/kryo/util/ObjectMap;

    invoke-virtual {v4, v1, v3}, Lcom/esotericsoftware/kryo/util/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_1
    new-instance p1, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find class: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v4}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->nameIdToClass:Lcom/esotericsoftware/kryo/util/IntMap;

    invoke-virtual {v4, v0, v3}, Lcom/esotericsoftware/kryo/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read class name: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Input;->position()I

    move-result p1

    invoke-static {p1}, Lcom/esotericsoftware/kryo/util/Util;->pos(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object v1, v3

    goto :goto_2

    :cond_4
    sget-boolean v3, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read class name reference "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Input;->position()I

    move-result p1

    invoke-static {p1}, Lcom/esotericsoftware/kryo/util/Util;->pos(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    invoke-virtual {p1, v1}, Lcom/esotericsoftware/kryo/Kryo;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object p1

    return-object p1
.end method

.method public register(Lcom/esotericsoftware/kryo/Registration;)Lcom/esotericsoftware/kryo/Registration;
    .locals 5

    const/4 v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->a:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->c:Ljava/lang/Class;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Registration;->getId()I

    move-result v1

    const-string v2, ")"

    const-string v3, " ("

    const-string v4, "kryo"

    if-eq v1, v0, :cond_1

    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Register class ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Registration;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Registration;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Registration;->getSerializer()Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->idToRegistration:Lcom/esotericsoftware/kryo/util/IntMap;

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Registration;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/esotericsoftware/kryo/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Register class name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Registration;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Registration;->getSerializer()Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->classToRegistration:Lcom/esotericsoftware/kryo/util/IdentityMap;

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Registration;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/esotericsoftware/kryo/util/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Registration;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/esotericsoftware/kryo/util/Util;->getWrapperClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Registration;->getType()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->classToRegistration:Lcom/esotericsoftware/kryo/util/IdentityMap;

    invoke-virtual {v1, v0, p1}, Lcom/esotericsoftware/kryo/util/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "registration cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public registerImplicit(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;
    .locals 3

    new-instance v0, Lcom/esotericsoftware/kryo/Registration;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    invoke-virtual {v1, p1}, Lcom/esotericsoftware/kryo/Kryo;->getDefaultSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/esotericsoftware/kryo/Registration;-><init>(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;I)V

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->register(Lcom/esotericsoftware/kryo/Registration;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object p1

    return-object p1
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/Kryo;->isRegistrationRequired()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->classToNameId:Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap;

    if-eqz v0, :cond_0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->clear(I)V

    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->nameIdToClass:Lcom/esotericsoftware/kryo/util/IntMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/util/IntMap;->clear()V

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->nextNameId:I

    :cond_2
    return-void
.end method

.method public setKryo(Lcom/esotericsoftware/kryo/Kryo;)V
    .locals 0

    iput-object p1, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    return-void
.end method

.method public unregister(I)Lcom/esotericsoftware/kryo/Registration;
    .locals 2

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->idToRegistration:Lcom/esotericsoftware/kryo/util/IntMap;

    invoke-virtual {v0, p1}, Lcom/esotericsoftware/kryo/util/IntMap;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/esotericsoftware/kryo/Registration;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->classToRegistration:Lcom/esotericsoftware/kryo/util/IdentityMap;

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Registration;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/util/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->c:Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Registration;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/esotericsoftware/kryo/util/Util;->getWrapperClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/Registration;->getType()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->classToRegistration:Lcom/esotericsoftware/kryo/util/IdentityMap;

    invoke-virtual {v1, v0}, Lcom/esotericsoftware/kryo/util/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public writeClass(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;
    .locals 4

    const/4 v0, 0x1

    if-nez p2, :cond_2

    sget-boolean p2, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    const/4 v1, 0x0

    if-nez p2, :cond_0

    sget-boolean p2, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/Kryo;->getDepth()I

    move-result p2

    if-ne p2, v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result p2

    const-string v0, "Write"

    invoke-static {v0, v1, p2}, Lcom/esotericsoftware/kryo/util/Util;->log(Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(B)V

    return-object v1

    :cond_2
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    invoke-virtual {v1, p2}, Lcom/esotericsoftware/kryo/Kryo;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/Registration;->getId()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    invoke-virtual {p0, p1, p2, v1}, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->writeName(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Class;Lcom/esotericsoftware/kryo/Registration;)V

    goto :goto_0

    :cond_3
    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Write class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/Registration;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result p2

    invoke-static {p2}, Lcom/esotericsoftware/kryo/util/Util;->pos(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "kryo"

    invoke-static {v2, p2}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/Registration;->getId()I

    move-result p2

    add-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    :goto_0
    return-object v1
.end method

.method public writeName(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Class;Lcom/esotericsoftware/kryo/Registration;)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(I)V

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->classToNameId:Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap;

    const-string v2, "kryo"

    if-eqz v1, :cond_1

    const/4 v3, -0x1

    invoke-virtual {v1, p2, v3}, Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result v1

    if-eq v1, v3, :cond_1

    sget-boolean p3, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Write class name reference "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result p2

    invoke-static {p2}, Lcom/esotericsoftware/kryo/util/Util;->pos(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, v1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    return-void

    :cond_1
    sget-boolean v1, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Write class name: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Output;->position()I

    move-result v3

    invoke-static {v3}, Lcom/esotericsoftware/kryo/util/Util;->pos(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget v1, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->nextNameId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->nextNameId:I

    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->classToNameId:Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap;

    if-nez v2, :cond_3

    new-instance v2, Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap;

    invoke-direct {v2}, Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap;-><init>()V

    iput-object v2, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->classToNameId:Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap;

    :cond_3
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/DefaultClassResolver;->classToNameId:Lcom/esotericsoftware/kryo/util/IdentityObjectIntMap;

    invoke-virtual {v2, p2, v1}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->put(Ljava/lang/Object;I)V

    invoke-virtual {p1, v1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    invoke-virtual {p3}, Lcom/esotericsoftware/kryo/Registration;->isTypeNameAscii()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/io/Output;->writeAscii(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/io/Output;->writeString(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
