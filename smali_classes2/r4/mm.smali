.class public final Lr4/mm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:Landroid/graphics/Rect;

.field public final d:Landroid/graphics/Rect;

.field public final e:Landroid/graphics/Rect;

.field public final f:Z

.field public final g:Landroid/graphics/Rect;

.field public final h:Z

.field public final i:Landroid/graphics/Rect;

.field public final j:Z

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JZZILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/graphics/Rect;ZJLandroid/graphics/Rect;FZLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZI",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Z",
            "Landroid/graphics/Rect;",
            "ZJ",
            "Landroid/graphics/Rect;",
            "FZ",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p4

    iput-boolean v1, v0, Lr4/mm;->a:Z

    move v1, p5

    iput v1, v0, Lr4/mm;->b:I

    move-object v1, p6

    iput-object v1, v0, Lr4/mm;->c:Landroid/graphics/Rect;

    move-object v1, p7

    iput-object v1, v0, Lr4/mm;->d:Landroid/graphics/Rect;

    move-object v1, p8

    iput-object v1, v0, Lr4/mm;->e:Landroid/graphics/Rect;

    move v1, p9

    iput-boolean v1, v0, Lr4/mm;->f:Z

    move-object v1, p10

    iput-object v1, v0, Lr4/mm;->g:Landroid/graphics/Rect;

    move v1, p11

    iput-boolean v1, v0, Lr4/mm;->h:Z

    move-object/from16 v1, p14

    iput-object v1, v0, Lr4/mm;->i:Landroid/graphics/Rect;

    move/from16 v1, p16

    iput-boolean v1, v0, Lr4/mm;->j:Z

    move-object/from16 v1, p17

    iput-object v1, v0, Lr4/mm;->k:Ljava/util/List;

    return-void
.end method
