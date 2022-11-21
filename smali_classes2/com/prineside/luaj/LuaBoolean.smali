.class public final Lcom/prineside/luaj/LuaBoolean;
.super Lcom/prineside/luaj/LuaValue;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/luaj/LuaBoolean$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/luaj/LuaBoolean$Serializer;
    }
.end annotation


# static fields
.field public static s_metatable:Lcom/prineside/luaj/LuaValue;

.field public static final u:Lcom/prineside/luaj/LuaBoolean;

.field public static final w:Lcom/prineside/luaj/LuaBoolean;


# instance fields
.field public v:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/prineside/luaj/LuaBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/prineside/luaj/LuaBoolean;-><init>(Z)V

    sput-object v0, Lcom/prineside/luaj/LuaBoolean;->u:Lcom/prineside/luaj/LuaBoolean;

    new-instance v0, Lcom/prineside/luaj/LuaBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/luaj/LuaBoolean;-><init>(Z)V

    sput-object v0, Lcom/prineside/luaj/LuaBoolean;->w:Lcom/prineside/luaj/LuaBoolean;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/LuaValue;-><init>()V

    iput-boolean p1, p0, Lcom/prineside/luaj/LuaBoolean;->v:Z

    return-void
.end method


# virtual methods
.method public booleanValue()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/luaj/LuaBoolean;->v:Z

    return v0
.end method

.method public checkboolean()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/luaj/LuaBoolean;->v:Z

    return v0
.end method

.method public getmetatable()Lcom/prineside/luaj/LuaValue;
    .locals 1

    sget-object v0, Lcom/prineside/luaj/LuaBoolean;->s_metatable:Lcom/prineside/luaj/LuaValue;

    return-object v0
.end method

.method public isboolean()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public not()Lcom/prineside/luaj/LuaValue;
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/luaj/LuaBoolean;->v:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/luaj/LuaValue;->FALSE:Lcom/prineside/luaj/LuaBoolean;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prineside/luaj/LuaValue;->TRUE:Lcom/prineside/luaj/LuaBoolean;

    :goto_0
    return-object v0
.end method

.method public optboolean(Z)Z
    .locals 0

    iget-boolean p1, p0, Lcom/prineside/luaj/LuaBoolean;->v:Z

    return p1
.end method

.method public toboolean()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/luaj/LuaBoolean;->v:Z

    return v0
.end method

.method public tojstring()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/luaj/LuaBoolean;->v:Z

    if-eqz v0, :cond_0

    const-string v0, "true"

    goto :goto_0

    :cond_0
    const-string v0, "false"

    :goto_0
    return-object v0
.end method

.method public type()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public typename()Ljava/lang/String;
    .locals 1

    const-string v0, "boolean"

    return-object v0
.end method
