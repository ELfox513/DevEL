.class public Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment$LuaExecutionResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LuaExecutionResult"
.end annotation


# instance fields
.field public a:Lcom/prineside/luaj/LuaValue;

.field public errorMessage:Ljava/lang/String;

.field public scriptTranslations:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/managers/ScriptManager$ScriptEnvironment$LuaExecutionResult;->scriptTranslations:Lcom/badlogic/gdx/utils/ObjectMap;

    return-void
.end method
