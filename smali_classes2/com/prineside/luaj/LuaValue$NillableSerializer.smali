.class public Lcom/prineside/luaj/LuaValue$NillableSerializer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/LuaValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NillableSerializer"
.end annotation


# static fields
.field public static final a:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/luaj/LuaValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/luaj/LuaValue;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/prineside/luaj/LuaValue$NillableSerializer;->a:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeClassAndObject(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Lcom/prineside/luaj/LuaValue;)V
    .locals 3

    instance-of v0, p3, Lcom/prineside/luaj/LuaUserdata;

    if-eqz v0, :cond_2

    move-object v0, p3

    check-cast v0, Lcom/prineside/luaj/LuaUserdata;

    iget-object v0, v0, Lcom/prineside/luaj/LuaUserdata;->m_instance:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->networkManager:Lcom/prineside/tdi2/managers/NetworkManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/NetworkManager;->fullKryo:Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;->hasRegistration(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skipping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " - "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " not registered"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "LuaValue"

    invoke-static {v0, p3}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p3, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    invoke-virtual {p1, p2, p3}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p2, p3}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, p2, p3}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public writeClassAndObject(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;[Lcom/prineside/luaj/LuaValue;)V
    .locals 4

    if-nez p3, :cond_0

    invoke-virtual {p1, p2, p3}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    sget-object v0, Lcom/prineside/luaj/LuaValue$NillableSerializer;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    array-length v1, p3

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->setSize(I)[Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_3

    aget-object v2, p3, v1

    instance-of v3, v2, Lcom/prineside/luaj/LuaUserdata;

    if-eqz v3, :cond_2

    check-cast v2, Lcom/prineside/luaj/LuaUserdata;

    iget-object v2, v2, Lcom/prineside/luaj/LuaUserdata;->m_instance:Ljava/lang/Object;

    instance-of v3, v2, Ljava/lang/Class;

    if-eqz v3, :cond_1

    check-cast v2, Ljava/lang/Class;

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :goto_1
    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->networkManager:Lcom/prineside/tdi2/managers/NetworkManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/NetworkManager;->fullKryo:Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;

    invoke-virtual {v3, v2}, Lcom/prineside/tdi2/managers/NetworkManager$KryoForState;->hasRegistration(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/prineside/luaj/LuaValue$NillableSerializer;->a:Lcom/badlogic/gdx/utils/Array;

    aget-object v3, p3, v1

    invoke-virtual {v2, v1, v3}, Lcom/badlogic/gdx/utils/Array;->set(ILjava/lang/Object;)V

    sget-object v2, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    aput-object v2, p3, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1, p2, p3}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    :goto_2
    sget-object p1, Lcom/prineside/luaj/LuaValue$NillableSerializer;->a:Lcom/badlogic/gdx/utils/Array;

    iget p2, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, p2, :cond_5

    iget-object p1, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast p1, [Lcom/prineside/luaj/LuaValue;

    aget-object p1, p1, v0

    if-eqz p1, :cond_4

    aput-object p1, p3, v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    :goto_3
    return-void
.end method
