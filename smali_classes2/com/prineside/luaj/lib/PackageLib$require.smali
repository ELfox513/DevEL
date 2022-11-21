.class public Lcom/prineside/luaj/lib/PackageLib$require;
.super Lcom/prineside/luaj/lib/OneArgFunction;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/PackageLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "require"
.end annotation


# instance fields
.field public x:Lcom/prineside/luaj/lib/PackageLib;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/OneArgFunction;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/luaj/lib/PackageLib;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/OneArgFunction;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/lib/PackageLib$require;->x:Lcom/prineside/luaj/lib/PackageLib;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/luaj/lib/PackageLib;Lcom/prineside/luaj/lib/PackageLib$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/luaj/lib/PackageLib$require;-><init>(Lcom/prineside/luaj/lib/PackageLib;)V

    return-void
.end method


# virtual methods
.method public call(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 8

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->checkstring()Lcom/prineside/luaj/LuaString;

    move-result-object p1

    iget-object v0, p0, Lcom/prineside/luaj/lib/PackageLib$require;->x:Lcom/prineside/luaj/lib/PackageLib;

    iget-object v0, v0, Lcom/prineside/luaj/lib/PackageLib;->y:Lcom/prineside/luaj/LuaTable;

    sget-object v1, Lcom/prineside/luaj/lib/PackageLib;->z:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v0, v1}, Lcom/prineside/luaj/LuaTable;->get(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/LuaValue;->get(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/luaj/LuaValue;->toboolean()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/prineside/luaj/lib/PackageLib;->s()Lcom/prineside/luaj/LuaString;

    move-result-object v0

    if-ne v1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loop or previous error loading module \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :cond_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/prineside/luaj/lib/PackageLib$require;->x:Lcom/prineside/luaj/lib/PackageLib;

    iget-object v1, v1, Lcom/prineside/luaj/lib/PackageLib;->y:Lcom/prineside/luaj/LuaTable;

    sget-object v2, Lcom/prineside/luaj/lib/PackageLib;->E:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v1, v2}, Lcom/prineside/luaj/LuaTable;->get(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/luaj/LuaValue;->checktable()Lcom/prineside/luaj/LuaTable;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v1, v4}, Lcom/prineside/luaj/LuaTable;->get(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "module \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "\' not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :cond_2
    invoke-virtual {v5, p1}, Lcom/prineside/luaj/LuaValue;->invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/prineside/luaj/Varargs;->isfunction(I)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/prineside/luaj/lib/PackageLib;->s()Lcom/prineside/luaj/LuaString;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/prineside/luaj/LuaValue;->set(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    invoke-virtual {v5}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v5, v2}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/prineside/luaj/LuaValue;->call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0, p1, v1}, Lcom/prineside/luaj/LuaValue;->set(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, p1}, Lcom/prineside/luaj/LuaValue;->get(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v1

    invoke-static {}, Lcom/prineside/luaj/lib/PackageLib;->s()Lcom/prineside/luaj/LuaString;

    move-result-object v2

    if-ne v1, v2, :cond_4

    sget-object v1, Lcom/prineside/luaj/LuaValue;->TRUE:Lcom/prineside/luaj/LuaBoolean;

    invoke-virtual {v0, p1, v1}, Lcom/prineside/luaj/LuaValue;->set(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    :cond_4
    :goto_1
    return-object v1

    :cond_5
    invoke-virtual {v5, v3}, Lcom/prineside/luaj/Varargs;->isstring(I)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v5, v3}, Lcom/prineside/luaj/Varargs;->tojstring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/luaj/lib/PackageLib;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/luaj/lib/PackageLib;

    iput-object p1, p0, Lcom/prineside/luaj/lib/PackageLib$require;->x:Lcom/prineside/luaj/lib/PackageLib;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/lib/PackageLib$require;->x:Lcom/prineside/luaj/lib/PackageLib;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
