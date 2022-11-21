.class public final synthetic Lcom/prineside/tdi2/systems/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectFilter;


# instance fields
.field public final synthetic a:F

.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:Lcom/prineside/tdi2/utils/ObjectFilter;


# direct methods
.method public synthetic constructor <init>(FFFFFLcom/prineside/tdi2/utils/ObjectFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/prineside/tdi2/systems/h;->a:F

    iput p2, p0, Lcom/prineside/tdi2/systems/h;->b:F

    iput p3, p0, Lcom/prineside/tdi2/systems/h;->c:F

    iput p4, p0, Lcom/prineside/tdi2/systems/h;->d:F

    iput p5, p0, Lcom/prineside/tdi2/systems/h;->e:F

    iput-object p6, p0, Lcom/prineside/tdi2/systems/h;->f:Lcom/prineside/tdi2/utils/ObjectFilter;

    return-void
.end method


# virtual methods
.method public final passes(Ljava/lang/Object;)Z
    .locals 7

    iget v0, p0, Lcom/prineside/tdi2/systems/h;->a:F

    iget v1, p0, Lcom/prineside/tdi2/systems/h;->b:F

    iget v2, p0, Lcom/prineside/tdi2/systems/h;->c:F

    iget v3, p0, Lcom/prineside/tdi2/systems/h;->d:F

    iget v4, p0, Lcom/prineside/tdi2/systems/h;->e:F

    iget-object v5, p0, Lcom/prineside/tdi2/systems/h;->f:Lcom/prineside/tdi2/utils/ObjectFilter;

    move-object v6, p1

    check-cast v6, Lcom/badlogic/gdx/utils/Array;

    invoke-static/range {v0 .. v6}, Lcom/prineside/tdi2/systems/MapSystem;->c(FFFFFLcom/prineside/tdi2/utils/ObjectFilter;Lcom/badlogic/gdx/utils/Array;)Z

    move-result p1

    return p1
.end method
