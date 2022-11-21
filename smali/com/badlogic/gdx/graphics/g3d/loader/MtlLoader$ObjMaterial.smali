.class Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ObjMaterial"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/badlogic/gdx/graphics/Color;

.field public c:Lcom/badlogic/gdx/graphics/Color;

.field public d:Lcom/badlogic/gdx/graphics/Color;

.field public e:F

.field public f:F

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "default"

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;->reset()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;Ljava/lang/String;I)V
    .locals 1

    if-eqz p2, :cond_1

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;-><init>()V

    iput p3, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->usage:I

    iput-object p2, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelTexture;->fileName:Ljava/lang/String;

    iget-object p2, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->textures:Lcom/badlogic/gdx/utils/Array;

    if-nez p2, :cond_0

    new-instance p2, Lcom/badlogic/gdx/utils/Array;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object p2, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->textures:Lcom/badlogic/gdx/utils/Array;

    :cond_0
    iget-object p1, p1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->textures:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public build()Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;-><init>()V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;->b:Lcom/badlogic/gdx/graphics/Color;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;->b:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->ambient:Lcom/badlogic/gdx/graphics/Color;

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;->c:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->diffuse:Lcom/badlogic/gdx/graphics/Color;

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;->d:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->specular:Lcom/badlogic/gdx/graphics/Color;

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;->e:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->opacity:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;->f:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;->shininess:F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;->g:Ljava/lang/String;

    const/16 v2, 0x9

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;->a(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;->h:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;->a(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;->i:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;->a(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;->k:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;->a(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;->j:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;->a(Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;Ljava/lang/String;I)V

    return-object v0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;->b:Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;->c:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;->d:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;->e:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;->f:F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader$ObjMaterial;->k:Ljava/lang/String;

    return-void
.end method
