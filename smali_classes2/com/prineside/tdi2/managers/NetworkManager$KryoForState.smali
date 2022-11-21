.class public Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;
.super Lcom/esotericsoftware/kryo/Kryo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/NetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KryoForState"
.end annotation


# instance fields
.field public final synthetic z:Lcom/prineside/tdi2/managers/NetworkManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/NetworkManager;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;->z:Lcom/prineside/tdi2/managers/NetworkManager;

    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Kryo;-><init>()V

    return-void
.end method


# virtual methods
.method public getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;
    .locals 6

    const-class v0, Ljava/lang/Enum;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->getClassResolver()Lcom/esotericsoftware/kryo/ClassResolver;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/esotericsoftware/kryo/ClassResolver;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-static {p1}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-class v0, Ljava/lang/reflect/InvocationHandler;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-class v0, Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->getClassResolver()Lcom/esotericsoftware/kryo/ClassResolver;

    move-result-object v0

    const-class v1, Ljava/util/EnumSet;

    invoke-interface {v0, v1}, Lcom/esotericsoftware/kryo/ClassResolver;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v1

    :cond_2
    :goto_0
    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->isRegistrationRequired()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    const-string v1, "Class is not registered: "

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    const-string p1, "  Registry:\n"

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 p1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;->z:Lcom/prineside/tdi2/managers/NetworkManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/NetworkManager;->registeredClasses:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p1, v3, :cond_3

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/esotericsoftware/kryo/Registration;

    aget-object v2, v2, p1

    const-string v3, "  - "

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/Registration;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/Registration;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/Registration;->getSerializer()Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not registered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/esotericsoftware/kryo/util/Util;->className(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkManager"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->getClassResolver()Lcom/esotericsoftware/kryo/ClassResolver;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/esotericsoftware/kryo/ClassResolver;->registerImplicit(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v1

    :cond_5
    return-object v1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "type cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public hasRegistration(Ljava/lang/Class;)Z
    .locals 3

    const-class v0, Ljava/lang/Enum;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->getClassResolver()Lcom/esotericsoftware/kryo/ClassResolver;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/esotericsoftware/kryo/ClassResolver;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {p1}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-class p1, Ljava/lang/reflect/InvocationHandler;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-class v0, Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/Kryo;->getClassResolver()Lcom/esotericsoftware/kryo/ClassResolver;

    move-result-object p1

    const-class v0, Ljava/util/EnumSet;

    invoke-interface {p1, v0}, Lcom/esotericsoftware/kryo/ClassResolver;->getRegistration(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v1

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "type cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public register(Lcom/esotericsoftware/kryo/Registration;)Lcom/esotericsoftware/kryo/Registration;
    .locals 1

    invoke-super {p0, p1}, Lcom/esotericsoftware/kryo/Kryo;->register(Lcom/esotericsoftware/kryo/Registration;)Lcom/esotericsoftware/kryo/Registration;

    iget-object v0, p0, Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;->z:Lcom/prineside/tdi2/managers/NetworkManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/NetworkManager;->registeredClasses:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-object p1
.end method

.method public register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object p1

    iget-object p2, p0, Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;->z:Lcom/prineside/tdi2/managers/NetworkManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/NetworkManager;->registeredClasses:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-object p1
.end method
