.class public final synthetic Lcom/prineside/tdi2/systems/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectFilter;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/utils/ObjectFilter;

.field public final synthetic b:F

.field public final synthetic c:Lcom/badlogic/gdx/utils/Array;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/utils/ObjectFilter;FLcom/badlogic/gdx/utils/Array;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/systems/i;->a:Lcom/prineside/tdi2/utils/ObjectFilter;

    iput p2, p0, Lcom/prineside/tdi2/systems/i;->b:F

    iput-object p3, p0, Lcom/prineside/tdi2/systems/i;->c:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method


# virtual methods
.method public final passes(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/systems/i;->a:Lcom/prineside/tdi2/utils/ObjectFilter;

    iget v1, p0, Lcom/prineside/tdi2/systems/i;->b:F

    iget-object v2, p0, Lcom/prineside/tdi2/systems/i;->c:Lcom/badlogic/gdx/utils/Array;

    check-cast p1, Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;

    invoke-static {v0, v1, v2, p1}, Lcom/prineside/tdi2/systems/MapSystem;->a(Lcom/prineside/tdi2/utils/ObjectFilter;FLcom/badlogic/gdx/utils/Array;Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;)Z

    move-result p1

    return p1
.end method
