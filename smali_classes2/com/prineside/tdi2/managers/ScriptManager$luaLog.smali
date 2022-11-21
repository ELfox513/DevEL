.class public Lcom/prineside/tdi2/managers/ScriptManager$luaLog;
.super Lcom/prineside/luaj/lib/VarArgFunction;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/ScriptManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "luaLog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 7

    invoke-virtual {p1}, Lcom/prineside/luaj/Varargs;->narg()I

    move-result v0

    const-string v1, "Script"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    const-string p1, ""

    invoke-static {v1, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/prineside/tdi2/managers/ScriptManager;->b()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    const/4 v4, 0x1

    :goto_0
    if-gt v4, v0, :cond_2

    if-eq v4, v3, :cond_1

    invoke-static {}, Lcom/prineside/tdi2/managers/ScriptManager;->b()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_1
    invoke-static {}, Lcom/prineside/tdi2/managers/ScriptManager;->b()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v3}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prineside/luaj/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/prineside/tdi2/managers/ScriptManager;->b()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-array p1, v3, [Lcom/prineside/luaj/LuaValue;

    sget-object v0, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    aput-object v0, p1, v2

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->varargsOf([Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1
.end method
