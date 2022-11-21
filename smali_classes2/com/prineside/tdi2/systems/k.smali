.class public final synthetic Lcom/prineside/tdi2/systems/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ScriptProxyCreator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Lcom/prineside/luaj/LuaValue;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/prineside/tdi2/systems/MinerSystem$MinerSystemListener$ListenerScriptProxy;->a(Lcom/prineside/luaj/LuaValue;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
