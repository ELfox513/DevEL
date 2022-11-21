.class public final synthetic Lcom/prineside/tdi2/ui/shared/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

.field public final synthetic b:Lcom/badlogic/gdx/utils/Array;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/badlogic/gdx/utils/Array;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/q0;->a:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/q0;->b:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/q0;->a:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/q0;->b:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->C(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/badlogic/gdx/utils/Array;)V

    return-void
.end method
