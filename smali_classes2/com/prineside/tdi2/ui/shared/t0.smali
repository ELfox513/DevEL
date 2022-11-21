.class public final synthetic Lcom/prineside/tdi2/ui/shared/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

.field public final synthetic b:Lcom/badlogic/gdx/utils/Array;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/badlogic/gdx/utils/Array;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/t0;->a:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/t0;->b:Lcom/badlogic/gdx/utils/Array;

    iput p3, p0, Lcom/prineside/tdi2/ui/shared/t0;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/t0;->a:Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/t0;->b:Lcom/badlogic/gdx/utils/Array;

    iget v2, p0, Lcom/prineside/tdi2/ui/shared/t0;->d:I

    invoke-static {v0, v1, v2}, Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;->z(Lcom/prineside/tdi2/ui/shared/LevelConfigurationEditor;Lcom/badlogic/gdx/utils/Array;I)V

    return-void
.end method
