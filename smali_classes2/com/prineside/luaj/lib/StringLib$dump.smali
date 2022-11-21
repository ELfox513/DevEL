.class public final Lcom/prineside/luaj/lib/StringLib$dump;
.super Lcom/prineside/luaj/lib/VarArgFunction;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/StringLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dump"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/Varargs;->checkfunction(I)Lcom/prineside/luaj/LuaFunction;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    check-cast v1, Lcom/prineside/luaj/LuaClosure;

    iget-object v1, v1, Lcom/prineside/luaj/LuaClosure;->p:Lcom/prineside/luaj/Prototype;

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v0}, Lcom/prineside/luaj/Varargs;->optboolean(IZ)Z

    move-result p1

    invoke-static {v1, v2, p1}, Lcom/prineside/luaj/compiler/DumpState;->dump(Lcom/prineside/luaj/Prototype;Ljava/io/OutputStream;Z)I

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/prineside/luaj/LuaString;->valueUsing([B)Lcom/prineside/luaj/LuaString;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method
