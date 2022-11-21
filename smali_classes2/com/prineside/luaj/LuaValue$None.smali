.class public final Lcom/prineside/luaj/LuaValue$None;
.super Lcom/prineside/luaj/LuaNil;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/luaj/LuaValue$None$Serializer;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/LuaValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "None"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/luaj/LuaValue$None$Serializer;
    }
.end annotation


# static fields
.field public static w:Lcom/prineside/luaj/LuaValue$None;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/prineside/luaj/LuaValue$None;

    invoke-direct {v0}, Lcom/prineside/luaj/LuaValue$None;-><init>()V

    sput-object v0, Lcom/prineside/luaj/LuaValue$None;->w:Lcom/prineside/luaj/LuaValue$None;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/LuaNil;-><init>()V

    return-void
.end method


# virtual methods
.method public a([Lcom/prineside/luaj/LuaValue;II)V
    .locals 2

    :goto_0
    if-lez p3, :cond_0

    add-int/lit8 v0, p2, 0x1

    sget-object v1, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    aput-object v1, p1, p2

    add-int/lit8 p3, p3, -0x1

    move p2, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public arg(I)Lcom/prineside/luaj/LuaValue;
    .locals 0

    sget-object p1, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    return-object p1
.end method

.method public arg1()Lcom/prineside/luaj/LuaValue;
    .locals 1

    sget-object v0, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    return-object v0
.end method

.method public narg()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public subargs(I)Lcom/prineside/luaj/Varargs;
    .locals 1

    if-lez p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    const-string v0, "start must be > 0"

    invoke-static {p1, v0}, Lcom/prineside/luaj/LuaValue;->argerror(ILjava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public tojstring()Ljava/lang/String;
    .locals 1

    const-string v0, "none"

    return-object v0
.end method
