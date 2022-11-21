.class Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/MapRenderingSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SplatConfig"
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public b:F

.field public c:F

.field public d:F

.field public final synthetic e:Lcom/prineside/tdi2/systems/MapRenderingSystem;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/systems/MapRenderingSystem;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;->e:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/systems/MapRenderingSystem;Lcom/prineside/tdi2/systems/MapRenderingSystem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;-><init>(Lcom/prineside/tdi2/systems/MapRenderingSystem;)V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;)F
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;->b:F

    return p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;F)F
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;->b:F

    return p1
.end method

.method public static synthetic c(Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;->a:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object p0
.end method

.method public static synthetic d(Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;->a:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object p1
.end method

.method public static synthetic e(Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;)F
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;->c:F

    return p0
.end method

.method public static synthetic f(Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;F)F
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;->c:F

    return p1
.end method

.method public static synthetic g(Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;)F
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;->d:F

    return p0
.end method

.method public static synthetic h(Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;F)F
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$SplatConfig;->d:F

    return p1
.end method
