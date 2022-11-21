.class public final Lcom/prineside/luaj/lib/BaseLib$loadfile;
.super Lcom/prineside/luaj/lib/VarArgFunction;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/BaseLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "loadfile"
.end annotation


# instance fields
.field public x:Lcom/prineside/luaj/lib/BaseLib;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/VarArgFunction;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/luaj/lib/BaseLib;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/VarArgFunction;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/lib/BaseLib$loadfile;->x:Lcom/prineside/luaj/lib/BaseLib;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/luaj/lib/BaseLib;Lcom/prineside/luaj/lib/BaseLib$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/luaj/lib/BaseLib$loadfile;-><init>(Lcom/prineside/luaj/lib/BaseLib;)V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/Varargs;->isstring(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/Varargs;->isnil(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const-string v2, "filename must be string or nil"

    invoke-virtual {p1, v1, v0, v2}, Lcom/prineside/luaj/Varargs;->argcheck(ZILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/Varargs;->isstring(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/Varargs;->tojstring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x2

    const-string v2, "bt"

    invoke-virtual {p1, v1, v2}, Lcom/prineside/luaj/Varargs;->optjstring(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/prineside/luaj/lib/BaseLib$loadfile;->x:Lcom/prineside/luaj/lib/BaseLib;

    iget-object v3, v3, Lcom/prineside/luaj/lib/BaseLib;->x:Lcom/prineside/luaj/Globals;

    invoke-virtual {p1, v2, v3}, Lcom/prineside/luaj/Varargs;->optvalue(ILcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/prineside/luaj/lib/BaseLib$loadfile;->x:Lcom/prineside/luaj/lib/BaseLib;

    iget-object v2, v0, Lcom/prineside/luaj/lib/BaseLib;->x:Lcom/prineside/luaj/Globals;

    iget-object v2, v2, Lcom/prineside/luaj/Globals;->STDIN:Ljava/io/InputStream;

    const-string v3, "=stdin"

    invoke-virtual {v0, v2, v3, v1, p1}, Lcom/prineside/luaj/lib/BaseLib;->loadStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/prineside/luaj/lib/BaseLib$loadfile;->x:Lcom/prineside/luaj/lib/BaseLib;

    invoke-virtual {v2, v0, v1, p1}, Lcom/prineside/luaj/lib/BaseLib;->loadFile(Ljava/lang/String;Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    :goto_3
    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/luaj/lib/BaseLib;

    iput-object p1, p0, Lcom/prineside/luaj/lib/BaseLib$loadfile;->x:Lcom/prineside/luaj/lib/BaseLib;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/lib/BaseLib$loadfile;->x:Lcom/prineside/luaj/lib/BaseLib;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
