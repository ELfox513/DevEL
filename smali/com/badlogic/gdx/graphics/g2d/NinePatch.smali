.class public Lcom/badlogic/gdx/graphics/g2d/NinePatch;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BOTTOM_CENTER:I = 0x7

.field public static final BOTTOM_LEFT:I = 0x6

.field public static final BOTTOM_RIGHT:I = 0x8

.field public static final MIDDLE_CENTER:I = 0x4

.field public static final MIDDLE_LEFT:I = 0x3

.field public static final MIDDLE_RIGHT:I = 0x5

.field public static final TOP_CENTER:I = 0x1

.field public static final TOP_LEFT:I = 0x0

.field public static final TOP_RIGHT:I = 0x2

.field public static final x:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public a:Lcom/badlogic/gdx/graphics/Texture;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:F

.field public p:F

.field public q:[F

.field public r:I

.field public final s:Lcom/badlogic/gdx/graphics/Color;

.field public t:F

.field public u:F

.field public v:F

.field public w:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->x:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V
    .locals 6

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V
    .locals 1

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->s:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->q:[F

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->s:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->t:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->u:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->v:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->w:F

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->a:Lcom/badlogic/gdx/graphics/Texture;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->a:Lcom/badlogic/gdx/graphics/Texture;

    iget v1, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->b:I

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->b:I

    iget v1, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->c:I

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->c:I

    iget v1, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->d:I

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->d:I

    iget v1, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->e:I

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->e:I

    iget v1, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->f:I

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->f:I

    iget v1, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->g:I

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->g:I

    iget v1, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->h:I

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->h:I

    iget v1, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->i:I

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->i:I

    iget v1, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->j:I

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->j:I

    iget v1, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->k:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->k:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->l:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->l:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->m:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->m:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->n:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->n:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->o:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->o:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->p:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->p:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->t:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->t:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->v:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->v:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->w:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->w:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->u:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->u:F

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->q:[F

    array-length v1, v1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->q:[F

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->q:[F

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->r:I

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->r:I

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->q:[F

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->s:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->t:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->u:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->v:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->w:F

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object p1, v0, v1

    const/4 p1, 0x5

    aput-object v2, v0, p1

    const/4 p1, 0x6

    aput-object v2, v0, p1

    const/4 p1, 0x7

    aput-object v2, v0, p1

    const/16 p1, 0x8

    aput-object v2, v0, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->b([Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V
    .locals 19

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0xb4

    new-array v1, v1, [F

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->q:[F

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->s:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->t:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->u:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->v:F

    iput v1, v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->w:F

    if-eqz p1, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    sub-int v1, v1, p2

    sub-int v7, v1, p3

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    sub-int v1, v1, p4

    sub-int v8, v1, p5

    const/16 v1, 0x9

    new-array v9, v1, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v10, 0x1

    const/4 v11, 0x2

    if-lez p4, :cond_2

    if-lez p2, :cond_0

    const/4 v12, 0x0

    new-instance v13, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v13

    move-object/from16 v2, p1

    move/from16 v5, p2

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v13, v9, v12

    :cond_0
    if-lez v7, :cond_1

    new-instance v12, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v4, 0x0

    move-object v1, v12

    move-object/from16 v2, p1

    move/from16 v3, p2

    move v5, v7

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v12, v9, v10

    :cond_1
    if-lez p3, :cond_2

    new-instance v12, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    add-int v3, p2, v7

    const/4 v4, 0x0

    move-object v1, v12

    move-object/from16 v2, p1

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v12, v9, v11

    :cond_2
    const/4 v12, 0x3

    const/4 v13, 0x4

    const/4 v14, 0x5

    if-lez v8, :cond_5

    if-lez p2, :cond_3

    new-instance v15, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v3, 0x0

    move-object v1, v15

    move-object/from16 v2, p1

    move/from16 v4, p4

    move/from16 v5, p2

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v15, v9, v12

    :cond_3
    if-lez v7, :cond_4

    new-instance v15, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-object v1, v15

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p4

    move v5, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v15, v9, v13

    :cond_4
    if-lez p3, :cond_5

    new-instance v15, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    add-int v3, p2, v7

    move-object v1, v15

    move-object/from16 v2, p1

    move/from16 v4, p4

    move/from16 v5, p3

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v15, v9, v14

    :cond_5
    const/4 v15, 0x6

    const/16 v16, 0x7

    const/16 v17, 0x8

    if-lez p5, :cond_8

    if-lez p2, :cond_6

    new-instance v18, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v3, 0x0

    add-int v4, p4, v8

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    move/from16 v5, p2

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v18, v9, v15

    :cond_6
    if-lez v7, :cond_7

    new-instance v18, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    add-int v4, p4, v8

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    move/from16 v3, p2

    move v5, v7

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v18, v9, v16

    :cond_7
    if-lez p3, :cond_8

    new-instance v18, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    add-int v3, p2, v7

    add-int v4, p4, v8

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    move/from16 v5, p3

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v18, v9, v17

    :cond_8
    const/4 v1, 0x0

    if-nez p2, :cond_9

    if-nez v7, :cond_9

    aget-object v2, v9, v11

    aput-object v2, v9, v10

    aget-object v2, v9, v14

    aput-object v2, v9, v13

    aget-object v2, v9, v17

    aput-object v2, v9, v16

    aput-object v1, v9, v11

    aput-object v1, v9, v14

    aput-object v1, v9, v17

    :cond_9
    if-nez p4, :cond_a

    if-nez v8, :cond_a

    aget-object v2, v9, v15

    aput-object v2, v9, v12

    aget-object v2, v9, v16

    aput-object v2, v9, v13

    aget-object v2, v9, v17

    aput-object v2, v9, v14

    aput-object v1, v9, v15

    aput-object v1, v9, v16

    aput-object v1, v9, v17

    :cond_a
    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->b([Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    return-void

    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "region cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public varargs constructor <init>([Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->q:[F

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->s:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->t:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->u:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->v:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->w:F

    if-eqz p1, :cond_10

    array-length v0, p1

    const/16 v1, 0x9

    if-ne v0, v1, :cond_10

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->b([Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    const/4 v0, 0x0

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->k:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    :cond_0
    const/4 v1, 0x3

    aget-object v1, p1, v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->k:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x6

    aget-object v2, p1, v1

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->k:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Left side patches must have the same width"

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    const/4 v2, 0x2

    aget-object v3, p1, v2

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->l:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_6

    :cond_4
    const/4 v3, 0x5

    aget-object v3, p1, v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->l:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_6

    :cond_5
    const/16 v3, 0x8

    aget-object v4, p1, v3

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->l:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Right side patches must have the same width"

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_1
    aget-object v1, p1, v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->p:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_a

    :cond_8
    const/4 v1, 0x7

    aget-object v1, p1, v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->p:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_a

    :cond_9
    aget-object v1, p1, v3

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->p:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_a

    goto :goto_2

    :cond_a
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Bottom side patches must have the same height"

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_2
    aget-object v0, p1, v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->o:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    aget-object v0, p1, v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->o:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_e

    :cond_d
    aget-object p1, p1, v2

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->o:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_e

    goto :goto_3

    :cond_e
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Top side patches must have the same height"

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    :goto_3
    return-void

    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "NinePatch needs nine TextureRegions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;ZZ)I
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->a:Lcom/badlogic/gdx/graphics/Texture;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->a:Lcom/badlogic/gdx/graphics/Texture;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    if-ne v0, v1, :cond_4

    :goto_0
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->b:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->e:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->d:F

    iget p1, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->c:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->a:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/GLTexture;->getMagFilter()Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    move-result-object v3

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->a:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/GLTexture;->getMinFilter()Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    move-result-object v3

    if-ne v3, v4, :cond_3

    :cond_1
    const/high16 v3, 0x3f000000    # 0.5f

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->a:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result p2

    int-to-float p2, p2

    div-float p2, v3, p2

    add-float/2addr v0, p2

    sub-float/2addr v2, p2

    :cond_2
    if-eqz p3, :cond_3

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->a:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr v3, p2

    sub-float/2addr v1, v3

    add-float/2addr p1, v3

    :cond_3
    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->q:[F

    iget p3, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->r:I

    add-int/lit8 v3, p3, 0x3

    aput v0, p2, v3

    add-int/lit8 v3, p3, 0x4

    aput v1, p2, v3

    add-int/lit8 v3, p3, 0x8

    aput v0, p2, v3

    add-int/lit8 v0, p3, 0x9

    aput p1, p2, v0

    add-int/lit8 v0, p3, 0xd

    aput v2, p2, v0

    add-int/lit8 v0, p3, 0xe

    aput p1, p2, v0

    add-int/lit8 p1, p3, 0x12

    aput v2, p2, p1

    add-int/lit8 p1, p3, 0x13

    aput v1, p2, p1

    add-int/lit8 p1, p3, 0x14

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->r:I

    return p3

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "All regions must be from the same texture."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b([Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 10

    const/4 v0, 0x6

    aget-object v1, p1, v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1, v3, v3}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->a(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;ZZ)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->b:I

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->k:F

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->p:F

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->b:I

    :goto_0
    const/4 v1, 0x7

    aget-object v4, p1, v1

    const/16 v5, 0x8

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    aget-object v7, p1, v0

    if-nez v7, :cond_2

    aget-object v7, p1, v5

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v7, 0x1

    :goto_2
    invoke-virtual {p0, v4, v7, v3}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->a(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;ZZ)I

    move-result v4

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->c:I

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->m:F

    aget-object v7, p1, v1

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->m:F

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->p:F

    aget-object v7, p1, v1

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->p:F

    goto :goto_3

    :cond_3
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->c:I

    :goto_3
    aget-object v4, p1, v5

    if-eqz v4, :cond_4

    invoke-virtual {p0, v4, v3, v3}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->a(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;ZZ)I

    move-result v4

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->d:I

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->l:F

    aget-object v7, p1, v5

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->l:F

    iget v4, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->p:F

    aget-object v7, p1, v5

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->p:F

    goto :goto_4

    :cond_4
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->d:I

    :goto_4
    const/4 v4, 0x3

    aget-object v7, p1, v4

    if-eqz v7, :cond_7

    aget-object v8, p1, v3

    if-nez v8, :cond_6

    aget-object v0, p1, v0

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    goto :goto_6

    :cond_6
    :goto_5
    const/4 v0, 0x1

    :goto_6
    invoke-virtual {p0, v7, v3, v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->a(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;ZZ)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->e:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->k:F

    aget-object v7, p1, v4

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->k:F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->n:F

    aget-object v7, p1, v4

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->n:F

    goto :goto_7

    :cond_7
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->e:I

    :goto_7
    const/4 v0, 0x4

    aget-object v7, p1, v0

    const/4 v8, 0x5

    if-eqz v7, :cond_c

    aget-object v4, p1, v4

    if-nez v4, :cond_9

    aget-object v4, p1, v8

    if-eqz v4, :cond_8

    goto :goto_8

    :cond_8
    const/4 v4, 0x0

    goto :goto_9

    :cond_9
    :goto_8
    const/4 v4, 0x1

    :goto_9
    aget-object v9, p1, v6

    if-nez v9, :cond_b

    aget-object v1, p1, v1

    if-eqz v1, :cond_a

    goto :goto_a

    :cond_a
    const/4 v1, 0x0

    goto :goto_b

    :cond_b
    :goto_a
    const/4 v1, 0x1

    :goto_b
    invoke-virtual {p0, v7, v4, v1}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->a(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;ZZ)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->f:I

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->m:F

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->m:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->n:F

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->n:F

    goto :goto_c

    :cond_c
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->f:I

    :goto_c
    aget-object v0, p1, v8

    const/4 v1, 0x2

    if-eqz v0, :cond_f

    aget-object v4, p1, v1

    if-nez v4, :cond_e

    aget-object v4, p1, v5

    if-eqz v4, :cond_d

    goto :goto_d

    :cond_d
    const/4 v4, 0x0

    goto :goto_e

    :cond_e
    :goto_d
    const/4 v4, 0x1

    :goto_e
    invoke-virtual {p0, v0, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->a(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;ZZ)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->g:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->l:F

    aget-object v4, p1, v8

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->l:F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->n:F

    aget-object v4, p1, v8

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->n:F

    goto :goto_f

    :cond_f
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->g:I

    :goto_f
    aget-object v0, p1, v3

    if-eqz v0, :cond_10

    invoke-virtual {p0, v0, v3, v3}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->a(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;ZZ)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->h:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->k:F

    aget-object v4, p1, v3

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->k:F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->o:F

    aget-object v4, p1, v3

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->o:F

    goto :goto_10

    :cond_10
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->h:I

    :goto_10
    aget-object v0, p1, v6

    if-eqz v0, :cond_13

    aget-object v4, p1, v3

    if-nez v4, :cond_12

    aget-object v4, p1, v1

    if-eqz v4, :cond_11

    goto :goto_11

    :cond_11
    const/4 v4, 0x0

    goto :goto_12

    :cond_12
    :goto_11
    const/4 v4, 0x1

    :goto_12
    invoke-virtual {p0, v0, v4, v3}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->a(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;ZZ)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->i:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->m:F

    aget-object v4, p1, v6

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->m:F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->o:F

    aget-object v4, p1, v6

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->o:F

    goto :goto_13

    :cond_13
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->i:I

    :goto_13
    aget-object v0, p1, v1

    if-eqz v0, :cond_14

    invoke-virtual {p0, v0, v3, v3}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->a(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;ZZ)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->j:I

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->l:F

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->l:F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->o:F

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->o:F

    goto :goto_14

    :cond_14
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->j:I

    :goto_14
    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->r:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->q:[F

    array-length v1, v0

    if-ge p1, v1, :cond_15

    new-array v1, p1, [F

    invoke-static {v0, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->q:[F

    :cond_15
    return-void
.end method

.method public final c(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V
    .locals 16

    move-object/from16 v7, p0

    iget v0, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->k:F

    add-float v8, p2, v0

    iget v1, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->p:F

    add-float v9, p3, v1

    iget v2, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->l:F

    sub-float v3, p4, v2

    sub-float v10, v3, v0

    iget v0, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->o:F

    sub-float v3, p5, v0

    sub-float v11, v3, v1

    add-float v1, p2, p4

    sub-float v12, v1, v2

    add-float v1, p3, p5

    sub-float v13, v1, v0

    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->x:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->s:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->mul(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v14

    iget v1, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->b:I

    const/4 v15, -0x1

    if-eq v1, v15, :cond_0

    iget v4, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->k:F

    iget v5, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->p:F

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move v6, v14

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->d(IFFFFF)V

    :cond_0
    iget v1, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->c:I

    if-eq v1, v15, :cond_1

    iget v5, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->p:F

    move-object/from16 v0, p0

    move v2, v8

    move/from16 v3, p3

    move v4, v10

    move v6, v14

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->d(IFFFFF)V

    :cond_1
    iget v1, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->d:I

    if-eq v1, v15, :cond_2

    iget v4, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->l:F

    iget v5, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->p:F

    move-object/from16 v0, p0

    move v2, v12

    move/from16 v3, p3

    move v6, v14

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->d(IFFFFF)V

    :cond_2
    iget v1, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->e:I

    if-eq v1, v15, :cond_3

    iget v4, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->k:F

    move-object/from16 v0, p0

    move/from16 v2, p2

    move v3, v9

    move v5, v11

    move v6, v14

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->d(IFFFFF)V

    :cond_3
    iget v1, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->f:I

    if-eq v1, v15, :cond_4

    move-object/from16 v0, p0

    move v2, v8

    move v3, v9

    move v4, v10

    move v5, v11

    move v6, v14

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->d(IFFFFF)V

    :cond_4
    iget v1, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->g:I

    if-eq v1, v15, :cond_5

    iget v4, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->l:F

    move-object/from16 v0, p0

    move v2, v12

    move v3, v9

    move v5, v11

    move v6, v14

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->d(IFFFFF)V

    :cond_5
    iget v1, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->h:I

    if-eq v1, v15, :cond_6

    iget v4, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->k:F

    iget v5, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->o:F

    move-object/from16 v0, p0

    move/from16 v2, p2

    move v3, v13

    move v6, v14

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->d(IFFFFF)V

    :cond_6
    iget v1, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->i:I

    if-eq v1, v15, :cond_7

    iget v5, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->o:F

    move-object/from16 v0, p0

    move v2, v8

    move v3, v13

    move v4, v10

    move v6, v14

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->d(IFFFFF)V

    :cond_7
    iget v1, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->j:I

    if-eq v1, v15, :cond_8

    iget v4, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->l:F

    iget v5, v7, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->o:F

    move-object/from16 v0, p0

    move v2, v12

    move v3, v13

    move v6, v14

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->d(IFFFFF)V

    :cond_8
    return-void
.end method

.method public final d(IFFFFF)V
    .locals 2

    add-float/2addr p4, p2

    add-float/2addr p5, p3

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->q:[F

    aput p2, v0, p1

    add-int/lit8 v1, p1, 0x1

    aput p3, v0, v1

    add-int/lit8 v1, p1, 0x2

    aput p6, v0, v1

    add-int/lit8 v1, p1, 0x5

    aput p2, v0, v1

    add-int/lit8 p2, p1, 0x6

    aput p5, v0, p2

    add-int/lit8 p2, p1, 0x7

    aput p6, v0, p2

    add-int/lit8 p2, p1, 0xa

    aput p4, v0, p2

    add-int/lit8 p2, p1, 0xb

    aput p5, v0, p2

    add-int/lit8 p2, p1, 0xc

    aput p6, v0, p2

    add-int/lit8 p2, p1, 0xf

    aput p4, v0, p2

    add-int/lit8 p2, p1, 0x10

    aput p3, v0, p2

    add-int/lit8 p1, p1, 0x11

    aput p6, v0, p1

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->c(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->a:Lcom/badlogic/gdx/graphics/Texture;

    iget-object p3, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->q:[F

    iget p4, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->r:I

    const/4 p5, 0x0

    invoke-interface {p1, p2, p3, p5, p4}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFFFFFFF)V
    .locals 14

    move-object v6, p0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->c(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    add-float v0, p2, p4

    add-float v1, p3, p5

    iget v2, v6, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->r:I

    iget-object v3, v6, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->q:[F

    const/4 v4, 0x0

    const/4 v5, 0x0

    cmpl-float v5, p10, v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_2

    aget v7, v3, v5

    sub-float/2addr v7, v0

    mul-float v7, v7, p8

    add-int/lit8 v8, v5, 0x1

    aget v9, v3, v8

    sub-float/2addr v9, v1

    mul-float v9, v9, p9

    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v10

    invoke-static/range {p10 .. p10}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v11

    mul-float v12, v10, v7

    mul-float v13, v11, v9

    sub-float/2addr v12, v13

    add-float/2addr v12, v0

    aput v12, v3, v5

    mul-float v11, v11, v7

    mul-float v10, v10, v9

    add-float/2addr v11, v10

    add-float/2addr v11, v1

    aput v11, v3, v8

    add-int/lit8 v5, v5, 0x5

    goto :goto_0

    :cond_0
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v7, p8, v5

    if-nez v7, :cond_1

    cmpl-float v5, p9, v5

    if-eqz v5, :cond_2

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_2

    aget v7, v3, v5

    sub-float/2addr v7, v0

    mul-float v7, v7, p8

    add-float/2addr v7, v0

    aput v7, v3, v5

    add-int/lit8 v7, v5, 0x1

    aget v8, v3, v7

    sub-float/2addr v8, v1

    mul-float v8, v8, p9

    add-float/2addr v8, v1

    aput v8, v3, v7

    add-int/lit8 v5, v5, 0x5

    goto :goto_1

    :cond_2
    iget-object v0, v6, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->a:Lcom/badlogic/gdx/graphics/Texture;

    move-object v1, p1

    invoke-interface {p1, v0, v3, v4, v2}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    return-void
.end method

.method public getBottomHeight()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->p:F

    return v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->s:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getLeftWidth()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->k:F

    return v0
.end method

.method public getMiddleHeight()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->n:F

    return v0
.end method

.method public getMiddleWidth()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->m:F

    return v0
.end method

.method public getPadBottom()F
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->w:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getBottomHeight()F

    move-result v0

    :cond_0
    return v0
.end method

.method public getPadLeft()F
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->t:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getLeftWidth()F

    move-result v0

    :cond_0
    return v0
.end method

.method public getPadRight()F
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->u:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getRightWidth()F

    move-result v0

    :cond_0
    return v0
.end method

.method public getPadTop()F
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->v:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTopHeight()F

    move-result v0

    :cond_0
    return v0
.end method

.method public getRightWidth()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->l:F

    return v0
.end method

.method public getTexture()Lcom/badlogic/gdx/graphics/Texture;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->a:Lcom/badlogic/gdx/graphics/Texture;

    return-object v0
.end method

.method public getTopHeight()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->o:F

    return v0
.end method

.method public getTotalHeight()F
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->o:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->n:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->p:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getTotalWidth()F
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->k:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->m:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->l:F

    add-float/2addr v0, v1

    return v0
.end method

.method public scale(FF)V
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->k:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->k:F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->l:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->l:F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->o:F

    mul-float v0, v0, p2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->o:F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->p:F

    mul-float v0, v0, p2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->p:F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->m:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->m:F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->n:F

    mul-float v0, v0, p2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->n:F

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->t:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    mul-float v0, v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->t:F

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->u:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    mul-float v0, v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->u:F

    :cond_1
    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->v:F

    cmpl-float v0, p1, v1

    if-eqz v0, :cond_2

    mul-float p1, p1, p2

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->v:F

    :cond_2
    iget p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->w:F

    cmpl-float v0, p1, v1

    if-eqz v0, :cond_3

    mul-float p1, p1, p2

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->w:F

    :cond_3
    return-void
.end method

.method public setBottomHeight(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->p:F

    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->s:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public setLeftWidth(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->k:F

    return-void
.end method

.method public setMiddleHeight(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->n:F

    return-void
.end method

.method public setMiddleWidth(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->m:F

    return-void
.end method

.method public setPadBottom(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->w:F

    return-void
.end method

.method public setPadLeft(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->t:F

    return-void
.end method

.method public setPadRight(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->u:F

    return-void
.end method

.method public setPadTop(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->v:F

    return-void
.end method

.method public setPadding(FFFF)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->t:F

    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->u:F

    iput p3, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->v:F

    iput p4, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->w:F

    return-void
.end method

.method public setRightWidth(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->l:F

    return-void
.end method

.method public setTopHeight(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->o:F

    return-void
.end method
