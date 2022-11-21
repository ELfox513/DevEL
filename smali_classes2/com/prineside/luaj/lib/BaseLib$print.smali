.class public final Lcom/prineside/luaj/lib/BaseLib$print;
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
    name = "print"
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

    iput-object p1, p0, Lcom/prineside/luaj/lib/BaseLib$print;->x:Lcom/prineside/luaj/lib/BaseLib;

    return-void
.end method


# virtual methods
.method public invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 6

    iget-object v0, p0, Lcom/prineside/luaj/lib/BaseLib$print;->x:Lcom/prineside/luaj/lib/BaseLib;

    iget-object v0, v0, Lcom/prineside/luaj/lib/BaseLib;->x:Lcom/prineside/luaj/Globals;

    const-string v1, "tostring"

    invoke-virtual {v0, v1}, Lcom/prineside/luaj/LuaValue;->get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {p1}, Lcom/prineside/luaj/Varargs;->narg()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    if-gt v3, v1, :cond_1

    if-le v3, v2, :cond_0

    iget-object v4, p0, Lcom/prineside/luaj/lib/BaseLib$print;->x:Lcom/prineside/luaj/lib/BaseLib;

    iget-object v4, v4, Lcom/prineside/luaj/lib/BaseLib;->x:Lcom/prineside/luaj/Globals;

    iget-object v4, v4, Lcom/prineside/luaj/Globals;->STDOUT:Ljava/io/PrintStream;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(C)V

    :cond_0
    invoke-virtual {p1, v3}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/prineside/luaj/LuaValue;->call(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/prineside/luaj/LuaValue;->strvalue()Lcom/prineside/luaj/LuaString;

    move-result-object v4

    iget-object v5, p0, Lcom/prineside/luaj/lib/BaseLib$print;->x:Lcom/prineside/luaj/lib/BaseLib;

    iget-object v5, v5, Lcom/prineside/luaj/lib/BaseLib;->x:Lcom/prineside/luaj/Globals;

    iget-object v5, v5, Lcom/prineside/luaj/Globals;->STDOUT:Ljava/io/PrintStream;

    invoke-virtual {v4}, Lcom/prineside/luaj/LuaString;->tojstring()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/prineside/luaj/lib/BaseLib$print;->x:Lcom/prineside/luaj/lib/BaseLib;

    iget-object p1, p1, Lcom/prineside/luaj/lib/BaseLib;->x:Lcom/prineside/luaj/Globals;

    iget-object p1, p1, Lcom/prineside/luaj/Globals;->STDOUT:Ljava/io/PrintStream;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(C)V

    sget-object p1, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/luaj/lib/BaseLib;

    iput-object p1, p0, Lcom/prineside/luaj/lib/BaseLib$print;->x:Lcom/prineside/luaj/lib/BaseLib;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/lib/BaseLib$print;->x:Lcom/prineside/luaj/lib/BaseLib;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
