.class public Lcom/prineside/luaj/LuaNil;
.super Lcom/prineside/luaj/LuaValue;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/luaj/LuaNil$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/luaj/LuaNil$Serializer;
    }
.end annotation


# static fields
.field public static s_metatable:Lcom/prineside/luaj/LuaValue;

.field public static final u:Lcom/prineside/luaj/LuaNil;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/prineside/luaj/LuaNil;

    invoke-direct {v0}, Lcom/prineside/luaj/LuaNil;-><init>()V

    sput-object v0, Lcom/prineside/luaj/LuaNil;->u:Lcom/prineside/luaj/LuaNil;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/LuaValue;-><init>()V

    return-void
.end method


# virtual methods
.method public checknotnil()Lcom/prineside/luaj/LuaValue;
    .locals 1

    const-string v0, "value"

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/LuaValue;->b(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Lcom/prineside/luaj/LuaNil;

    return p1
.end method

.method public getmetatable()Lcom/prineside/luaj/LuaValue;
    .locals 1

    sget-object v0, Lcom/prineside/luaj/LuaNil;->s_metatable:Lcom/prineside/luaj/LuaValue;

    return-object v0
.end method

.method public isnil()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isvalidkey()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public not()Lcom/prineside/luaj/LuaValue;
    .locals 1

    sget-object v0, Lcom/prineside/luaj/LuaValue;->TRUE:Lcom/prineside/luaj/LuaBoolean;

    return-object v0
.end method

.method public optboolean(Z)Z
    .locals 0

    return p1
.end method

.method public optclosure(Lcom/prineside/luaj/LuaClosure;)Lcom/prineside/luaj/LuaClosure;
    .locals 0

    return-object p1
.end method

.method public optdouble(D)D
    .locals 0

    return-wide p1
.end method

.method public optfunction(Lcom/prineside/luaj/LuaFunction;)Lcom/prineside/luaj/LuaFunction;
    .locals 0

    return-object p1
.end method

.method public optint(I)I
    .locals 0

    return p1
.end method

.method public optinteger(Lcom/prineside/luaj/LuaInteger;)Lcom/prineside/luaj/LuaInteger;
    .locals 0

    return-object p1
.end method

.method public optjstring(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public optlong(J)J
    .locals 0

    return-wide p1
.end method

.method public optnumber(Lcom/prineside/luaj/LuaNumber;)Lcom/prineside/luaj/LuaNumber;
    .locals 0

    return-object p1
.end method

.method public optstring(Lcom/prineside/luaj/LuaString;)Lcom/prineside/luaj/LuaString;
    .locals 0

    return-object p1
.end method

.method public opttable(Lcom/prineside/luaj/LuaTable;)Lcom/prineside/luaj/LuaTable;
    .locals 0

    return-object p1
.end method

.method public optthread(Lcom/prineside/luaj/LuaThread;)Lcom/prineside/luaj/LuaThread;
    .locals 0

    return-object p1
.end method

.method public optuserdata(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p2
.end method

.method public optuserdata(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public optvalue(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "nil"

    return-object v0
.end method

.method public toboolean()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public tojstring()Ljava/lang/String;
    .locals 1

    const-string v0, "nil"

    return-object v0
.end method

.method public type()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public typename()Ljava/lang/String;
    .locals 1

    const-string v0, "nil"

    return-object v0
.end method
